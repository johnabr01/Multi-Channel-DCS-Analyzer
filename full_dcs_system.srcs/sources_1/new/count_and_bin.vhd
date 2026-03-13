library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity count_and_bin is
    Generic (
        --Size of bins in ns; should be multiple of 10 ns
        binSize : time;
        countOutSize : positive
    );
    Port (
        clk300MHz : in STD_LOGIC;
        resetn : in STD_LOGIC;
        
        --Async detector input
        --10ns pulse width; 22ns dead time
        detectorIn : in STD_LOGIC;
        
        --Binned count synchronous to 300 MHz clock
        countOut : out STD_LOGIC_VECTOR(countOutSize - 1 downto 0);
        countOutValid : out STD_LOGIC
    );
end count_and_bin;

architecture Behavioral of count_and_bin is
    constant clk300MhzPeriod : time := 10ns / 3;
    constant detectorDeadTime : time := 22ns;
    constant practicalDeadTime : time := detectorDeadTime - clk300MhzPeriod;
    
    signal sync_reg0, sync_reg1, syncDetectorIn : std_logic := '0';
    
    attribute ASYNC_REG : string;
    attribute ASYNC_REG of sync_reg0, sync_reg1, syncDetectorIn : signal is "TRUE"; 
    
    signal rawCount : unsigned(countOutSize - 1 downto 0) := (others => '0');
    signal shouldResetRawCount : std_logic := '0';
begin
    --Create 3FF synchronizer
    synchronizer : process(clk300MHz) begin
        if rising_edge(clk300MHz) then
            sync_reg0 <= detectorIn;
            sync_reg1 <= sync_reg0;
            syncDetectorIn <= sync_reg1;
        end if;
    end process;

    sampling_and_count : block
        signal lastSample : std_logic := '0';
        signal risingEdgeDetected, inDeadTime : std_logic := '0';
        signal newValidCount : std_logic;
    begin
        --A count is considered valid when a rising edge is detected
        --and it's not in deadtime
        newValidCount <= risingEdgeDetected AND NOT inDeadTime;
    
        raw_sample : process(clk300MHz) begin
            if rising_edge(clk300MHz) then
                if resetn = '0' then
                    lastSample <= '0';
                    risingEdgeDetected <= '0';
                else
                    lastSample <= syncDetectorIn;
                    
                    --On a rising edge
                    if syncDetectorIn = '1' AND lastSample = '0' then
                        risingEdgeDetected <= '1';
                    else
                        risingEdgeDetected <= '0';
                    end if;
                end if;
            end if;
        end process;
        
        deadTime : block
            constant deadTimeCountMax : integer := practicalDeadTime / clk300MhzPeriod;
            signal deadTimeCount : unsigned(integer(ceil(log2(real(deadTimeCountMax)))) - 1 downto 0) := (others => '0');
        begin
            process(clk300MHz) begin
                if rising_edge(clk300MHz) then
                    if resetn = '0' then
                        inDeadTime <= '0';
                        deadTimeCount <= (others => '0');
                    else
                        if newValidCount = '1' then
                            inDeadTime <= '1';
                        elsif inDeadTime = '1' then
                            if deadTimeCount = deadTimeCountMax - 1 then
                                inDeadTime <= '0';
                                deadTimeCount <= (others => '0');
                            else                        
                                deadTimeCount <= deadTimeCount + 1;
                            end if;
                        end if;
                    end if;
                end if;
            end process;
        end block;
        
        counter : process(clk300MHz) begin
            if rising_edge(clk300MHz) then
                if resetn = '0' then
                    rawCount <= (others => '0');
                else
                    if shouldResetRawCount = '1' then
                        if newValidCount = '0' then
                            rawCount <= TO_UNSIGNED(0, rawCount'length);
                        else
                            rawCount <= TO_UNSIGNED(1, rawCount'length);
                        end if;
                    else
                        if newValidCount = '1' then
                            rawCount <= rawCount + 1;
                        end if;
                    end if;
                end if;
            end if;
        end process;
    end block;
    
    binning : block
        constant binningCounterMax : integer := binSize / clk300MhzPeriod;
        signal binningCounter : unsigned(integer(ceil(log2(real(binningCounterMax)))) - 1 downto 0) := (others => '0');
    begin
        process(clk300MHz) begin
            if rising_edge(clk300MHz) then
                --Only pulse the output valid
                if shouldResetRawCount = '1' then
                    shouldResetRawCount <= '0';
                end if;
            
                if resetn = '0' then
                    binningCounter <= (others => '0');
                else
                    binningCounter <= binningCounter + 1;
                    
                    --When binningCounter reaches threshold, output and reset
                    if binningCounter = binningCounterMax - 1 then 
                        binningCounter <= (others => '0');
                        shouldResetRawCount <= '1';
                    end if;
                end if;
            end if;
        end process;
        
        outputRegs : process(clk300MHz) begin
            if rising_edge(clk300MHz) then
                if resetn = '0' then
                    countOutValid <= '0';
                else
                    countOut <= std_logic_vector(rawCount);
                    countOutValid <= shouldResetRawCount;
                end if;
            end if;
        end process;
    end block;
end Behavioral;
