library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.finish;

entity intensityNormalizeTest is
--  Port ( );
end intensityNormalizeTest;

architecture Behavioral of intensityNormalizeTest is
    component intensity_normalize is
        Generic (
            countSize : positive := 8;
            numCombiners : positive
        );
        Port (
            clk : in STD_LOGIC;
            resetn : in STD_LOGIC;
            countIn : in STD_LOGIC_VECTOR(countSize - 1 downto 0);
            countInValid : in STD_LOGIC;
            countInLast : in STD_LOGIC;
            
            inputCorrelation : in STD_LOGIC_VECTOR(31 downto 0);
            inputCorrelationValid : in STD_LOGIC;
            inputCorrelationLast : in STD_LOGIC;
            
            normalizedCorrelation : out STD_LOGIC_VECTOR(31 downto 0);
            normalizedCorrelationValid : out STD_LOGIC;
            normalizedCorrelationLast : out STD_LOGIC
        );
    end component;
    
    signal clk, resetn : std_logic := '0';
    constant clkPeriod : time := 10ns;
    
    signal countInValid, countInLast, inputCorrelationValid, inputCorrelationLast : std_logic := '0';
    signal countInValidReg, countInLastReg, inputCorrelationValidReg, inputCorrelationLastReg : std_logic := '0';
    signal normalizedCorrelationValid, normalizedCorrelationLast : std_logic;
    
    signal countIn, countInReg : unsigned(7 downto 0) := (others => '0');
    signal inputCorrelation, normalizedCorrelation : std_logic_vector(31 downto 0) := (others => '0');
    signal inputCorrelationReg : std_logic_vector(31 downto 0) := (others => '0');
begin
    process begin
        clk <= NOT clk;
        wait for clkPeriod / 2;
    end process;
    
    input_regs : process(clk) begin
        if rising_edge(clk) then
            countInReg <= countIn;
            inputCorrelationReg <= inputCorrelation;
            countInValidReg <= countInValid;
            countInLastReg <= countInLast;
            inputCorrelationValidReg <= inputCorrelationValid;
            inputCorrelationLastReg <= inputCorrelationLast;
        end if;
    end process;
    
    process begin
        wait for clkPeriod * 50;
        resetn <= '1';
        
        for I in 1 to 100 loop
            countIn <= to_unsigned(I, countIn'LENGTH);
            countInValid <= '1';
            
            if I = 100 then
                countInLast <= '1';
            end if;
            
            wait for clkPeriod;
        end loop;
        
        countInValid <= '0';
        countInLast <= '0';
        wait for clkPeriod * 20;
        
        for I in 1 to 64 loop
            inputCorrelation <= X"3f800000";
            inputCorrelationValid <= '1';
            
            if I = 64 then
                inputCorrelationLast <= '1';
            end if;
            
            wait for clkPeriod;
        end loop;
        inputCorrelationValid <= '0';
        inputCorrelationLast <= '0';
        wait for clkPeriod * 5;
        
        wait for clkPeriod * 20;
        finish;
    end process;
    
    DUT : intensity_normalize
    Generic map(
        countSize => 8,
        numCombiners => 6
    )
    port map(
        clk => clk,
        resetn => resetn,
        countIn => std_logic_vector(countInReg),
        countInValid => countInValidReg,
        countInLast => countInLastReg,
        inputCorrelation => inputCorrelationReg,
        inputCorrelationValid => inputCorrelationValidReg,
        inputCorrelationLast => inputCorrelationLastReg,
        normalizedCorrelation => normalizedCorrelation,
        normalizedCorrelationValid => normalizedCorrelationValid,
        normalizedCorrelationLast => normalizedCorrelationLast 
    );
end Behavioral;
