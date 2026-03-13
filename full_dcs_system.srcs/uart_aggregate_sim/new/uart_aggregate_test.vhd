library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.finish;

entity uart_aggregate_test is
--  Port ( );
end uart_aggregate_test;

architecture Behavioral of uart_aggregate_test is
    component uart_aggregator is
      Generic(
        correlationLength : positive
      );
      Port (
        clk : in std_logic;
        resetn : in std_logic;
        UART_TX : out std_logic;
        UART_RX : in std_logic;
        
        --Individual intensity points
        intensityIn : in std_logic_vector(15 downto 0);
        intensityInValid : in std_logic;
        
        --Packets of autocorrelations
        correlationIn : in std_logic_vector(31 downto 0);
        correlationInValid : in std_logic;
        correlationInLast : in std_logic;
        
        --Analyzer data is alphaDb, beta, and MSE sent in packets
        --Already externally buffered by FIFO
        analyzerIn : in std_logic_vector(31 downto 0);
        analyzerInValid : in std_logic;
        analyzerInLast : in std_logic;
        analyzerInReady : out std_logic;
        
        --Start/stop commands from RX
        start : out std_logic;
        stop : out std_logic;
        
        --UART error
        error : out std_logic
      );
    end component uart_aggregator;

    signal clk, resetn : std_logic := '0';
    constant clkPeriod : time := 10ns;
    
    signal intensityInValid, intensityInValidReg, correlationInValid, correlationInValidReg, analyzerInValid, analyzerInValidReg : std_logic := '0';
    signal correlationInLast, correlationInLastReg, analyzerInLast, analyzerInLastReg : std_logic := '0';
    signal intensityIn, intensityInReg : unsigned(15 downto 0) := (others => '0');
    signal correlationIn, correlationInReg, analyzerIn, analyzerInReg : unsigned(31 downto 0) := (others => '0');
    
    signal UART_TX, UART_RX, start, stop, error : std_logic := '1';
begin
    process begin
        clk <= NOT clk;
        wait for clkPeriod / 2;
    end process;
    
    input_regs : process(clk) begin
        if rising_edge(clk) then
            intensityInReg <= intensityIn;
            intensityInValidReg <= intensityInValid;
            
            correlationInReg <= correlationIn;
            correlationInValidReg <= correlationInValid;
            correlationInLastReg <= correlationInLast;
            
            analyzerInReg <= analyzerIn;
            analyzerInValidReg <= analyzerInValid;
            analyzerInLastReg <= analyzerInLast;
        end if;
    end process;
    
    process begin
        wait for clkPeriod * 10;
        resetn <= '1';
        
        wait for clkPeriod*15;
        
        intensityIn <= to_unsigned(1, intensityIn'Length);
        intensityInValid <= '1';
        
        wait for clkPeriod;
        intensityInValid <= '0';
        
        for I in 1 to 16 loop
            correlationIn <= to_unsigned(I, correlationIn'Length);
            correlationInValid <= '1';
            if I = 16 then
                correlationInLast <= '1';
            
                intensityIn <= to_unsigned(2, intensityIn'Length);
                intensityInValid <= '1';
            end if;
            
            wait for clkPeriod;
        end loop;
        intensityInValid <= '0';
        correlationInValid <= '0';
        correlationInLast <= '0';
        
        wait for clkPeriod * 30;
        finish;
    end process;
    
--    process(clk) begin
--        if rising_edge(clk) then
            
--        end if;
--    end if;

    DUT : uart_aggregator
    generic map(
        correlationLength => 16
    )
    port map(
        clk => clk,
        resetn => resetn,
        UART_TX => UART_TX,
        UART_RX => UART_RX,
        intensityIn => std_logic_vector(intensityInReg),
        intensityInValid => intensityInValidReg,
        correlationIn => std_logic_vector(correlationInReg),
        correlationInValid => correlationInValidReg,
        correlationInLast => correlationInLastReg,
        analyzerIn => std_logic_vector(analyzerInReg),
        analyzerInValid => analyzerInValidReg,
        analyzerInLast => analyzerInLast,
        analyzerInReady => open,
        start => start,
        stop => stop,
        error => error 
    );
end Behavioral;
