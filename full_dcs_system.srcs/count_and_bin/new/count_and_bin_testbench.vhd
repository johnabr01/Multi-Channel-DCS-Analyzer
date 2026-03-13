library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.finish;

entity count_and_bin_testbench is
--  Port ( );
end count_and_bin_testbench;

architecture Behavioral of count_and_bin_testbench is
    component count_and_bin_100 is
        Generic (
            --Size of bins in ns; should be multiple of 10 ns
            binSizeNs : positive := 1000;
            countOutSize : positive := 8;
            binsPerCorrelation : positive := 1e6
        );
        Port (
            clk300MHz : in STD_LOGIC;
            clk100MHz : in STD_LOGIC;
            
            --Async detector input
            --10ns pulse width; 22ns dead time
            detectorIn : in STD_LOGIC;
            
            --Binned count synchronous to 100 MHz clock
            countOut : out STD_LOGIC_VECTOR(countOutSize - 1 downto 0);
            countOutValid : out STD_LOGIC;
            countOutLast : out STD_LOGIC
        );
    end component count_and_bin_100;

    signal clk100MHz, clk300MHz : std_logic := '0';
    constant clk100MHzPeriod : time := 10ns;
    constant clk300MHzPeriod : time := 10ns / 3;
    
    --constant binSize : time := 100ns;
    constant binSizeNs : positive := 100;
    constant countOutSize : positive := 8;
    
    signal detector : std_logic := '0';
    constant pulseWidth : time := 10ns;
    constant deadTime : time := 22ns;
    
    signal count100MHz : std_logic_vector(countOutSize - 1 downto 0);
    signal countValid100MHz, countOutLast100Mhz : std_logic;
begin
    process begin
        clk100MHz <= NOT clk100MHz;
        wait for clk100MHzPeriod / 2;
    end process;
    
    process begin
        clk300MHz <= NOT clk300MHz;
        wait for clk300MHzPeriod / 2;
    end process;
    
    process begin
        wait for clk100MHzPeriod * 10;
        
        for I in 1 to 100 loop
            detector <= '1';
            wait for pulseWidth;
            detector <= '0';
            wait for deadTime;
        end loop;
        
        wait for clk100MHzPeriod * 20;
        finish;
    end process;

    DUT : count_and_bin_100
    generic map(
        binSizeNs => binSizeNs,
        countOutSize => countOutSize,
        binsPerCorrelation => 10
    )
    port map(
        clk100MHz => clk100MHz,
        clk300MHz => clk300MHz,
        detectorIn => detector,
        countOut => count100MHz,
        countOutValid => countValid100MHz,
        countOutLast => countOutLast100Mhz 
    );
end Behavioral;
