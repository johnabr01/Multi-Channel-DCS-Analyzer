library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.finish;

entity countCorrelateWrapTest is
--  Port ( );
end countCorrelateWrapTest;

architecture Behavioral of countCorrelateWrapTest is
    component countCorrelateWrapper is
      Port (
        clk100MHz : IN STD_LOGIC;
        clk300MHz : IN STD_LOGIC;
        resetn : IN STD_LOGIC;
        
        detectorIn : IN STD_LOGIC;
        
        dataOut : out STD_LOGIC_VECTOR(31 DOWNTO 0);
        addressOut : out STD_LOGIC_VECTOR(31 DOWNTO 0);
        writeEnable : out STD_LOGIC;
        interrupt : out STD_LOGIC
      );
    end component countCorrelateWrapper;
    
    signal clk100MHz, clk300MHz, resetn : std_logic := '0';
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
    
    signal dataOut, addressOut : std_logic_vector(31 downto 0);
    signal writeEnable, interrupt : std_logic;
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
        resetn <= '1';
        wait for clk100MHzPeriod * 10;
        resetn <= '0';
        
        for I in 1 to 1000 loop
            detector <= '1';
            wait for pulseWidth;
            detector <= '0';
            wait for deadTime;
            
            wait for 1us - pulseWidth - deadTime;
        end loop;
        
        wait for clk100MHzPeriod * 100;
        finish;
    end process;

    DUT : countCorrelateWrapper
    port map(
        clk100MHz => clk100MHz,
        clk300MHz => clk300MHz,
        resetn => resetn,
        detectorIn => detector,
        dataOut => dataOut,
        addressOut => addressOut,
        writeEnable => writeEnable,
        interrupt => interrupt
    );
end Behavioral;
