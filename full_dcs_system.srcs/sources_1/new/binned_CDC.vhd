library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

--Module to convert counts from 300 MHz to 100MHz clock domain
entity binned_CDC is
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
end binned_CDC;

architecture Behavioral of binned_CDC is
    constant clk100MHzPeriod : time := 10ns;
    constant clk300MHzPeriod : time := 10ns / 3;
    constant cyclesToStretch : integer := clk100MhzPeriod / clk300MhzPeriod;
    
    signal stretchedCounts : std_logic_vector(countOut'RANGE) := (others => '0');
    signal stretchedValid : std_logic := '0';
    
    signal counter : unsigned(integer(ceil(log2(real(cyclesToStretch)))) - 1 downto 0) := (others => '0');
    signal counterEnable : std_logic := '0';
begin
    stretching : process(clk300MHz) begin
        if rising_edge(clk300MHz) then
            if resetn = '0' then
                counter <= (others => '0');
                counterEnable <= '0';
                
                stretchedValid <= '0';
            else
                if counterEnable = '1' then
                    counter <= counter + 1;
                    if counter = cyclesToStretch - 1 then
                        stretchedValid <= '0';
                        counterEnable <= '0';
                    end if;
                end if;
                
                if countInValid = '1' then
                    counter <= (others => '0'); 
                    counterEnable <= '1';
                    
                    stretchedCounts <= countIn;
                    stretchedValid <= '1';
                end if;
            end if;
        end if;
    end process;
    
    outputRegs : process(clk100MHz) begin
        if rising_edge(clk100MHz) then
            if resetn = '0' then
                countOutValid <= '0';
            else
                countOut <= stretchedCounts;
                countOutValid <= stretchedValid;
            end if;
        end if;
    end process;
end Behavioral;
