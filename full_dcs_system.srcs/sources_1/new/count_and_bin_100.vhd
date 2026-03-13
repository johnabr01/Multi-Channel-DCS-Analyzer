library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.math_real.all;

entity count_and_bin_100 is
    Generic (
        --Size of bins in ns; should be multiple of 10 ns
        binSizeNs : positive := 1000;
        countOutSize : positive := 8;
        binsPerCorrelation : positive := 1e6 
    );
    Port (
        clk300MHz : in STD_LOGIC;
        clk100MHz : in STD_LOGIC;
        resetn : in STD_LOGIC;
        
        --Async detector input
        --10ns pulse width; 22ns dead time
        detectorIn : in STD_LOGIC;
        
        --Binned count synchronous to 100 MHz clock
        countOut : out STD_LOGIC_VECTOR(countOutSize - 1 downto 0);
        countOutValid : out STD_LOGIC;
        countOutLast : out STD_LOGIC
    );
end count_and_bin_100;

architecture Behavioral of count_and_bin_100 is
    component count_and_bin is
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
    end component count_and_bin;

    component binned_CDC is
        Generic (
            countOutSize : positive
        );
        Port (
            clk300MHz : in STD_LOGIC;
            clk100MHz : in STD_LOGIC;
            resetn : in STD_LOGIC;
            
            --300 MHz domain inputs
            countIn : in STD_LOGIC_VECTOR(countOutSize - 1 downto 0);
            countInValid : in STD_LOGIC;
            
            --100 MHz domain outputs
            countOut : out STD_LOGIC_VECTOR(countOutSize - 1 downto 0);
            countOutValid : out STD_LOGIC
        );
    end component binned_CDC;
    
    constant binSize : time := binSizeNs * 1ns;
    
    signal countOut300MHz, countOut100MHz : std_logic_vector(countOutSize - 1 downto 0);
    signal countOutValid300MHz, countOutValid100MHz : std_logic;
    
    signal countOutLastLocal : std_logic := '0';
    signal lastGeneratorCount : unsigned(integer(ceil(log2(real(binsPerCorrelation)))) - 1 downto 0) := (others => '0');
begin
    countOutLast <= countOutLastLocal; 

    count_binner : count_and_bin
    generic map(
        binSize => binSize,
        countOutSize => countOutSize
    )
    port map(
        clk300MHz => clk300MHz,
        resetn => resetn,
        detectorIn => detectorIn,
        countOut => countOut300MHz,
        countOutValid => countOutValid300MHz
    );
    
    to100Mhz : binned_CDC
    generic map(
        countOutSize => countOutSize
    )
    port map(
        clk300MHz => clk300MHz,
        clk100MHz => clk100MHz,
        resetn => resetn,
        countIn => countOut300MHz,
        countInValid => countOutValid300MHz,
        countOut => countOut100MHz,
        countOutValid => countOutValid100MHz
    );
    
    process(clk100MHz) begin
        if rising_edge(clk100MHz) then
            if resetn = '0' then
                lastGeneratorCount <= (others => '0');
                countOutValid <= '0';
            else
                if countOutValid100Mhz = '1' then
                    lastGeneratorCount <= lastGeneratorCount + 1;
                    
                    if lastGeneratorCount = binsPerCorrelation - 1 then
                        lastGeneratorCount <= (others => '0');
                        countOutLastLocal <= '1';
                    end if;
                end if;
                
                countOut <= countOut100Mhz;
                countOutValid <= countOutValid100Mhz;
            end if;
            
            if countOutLastLocal = '1' then
                countOutLastLocal <= '0';
            end if;
        end if;
    end process;
end Behavioral;
