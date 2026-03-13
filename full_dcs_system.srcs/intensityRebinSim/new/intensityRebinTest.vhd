library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.finish;

entity intensityRebinTest is
--  Port ( );
end intensityRebinTest;

architecture Behavioral of intensityRebinTest is
    component intensityRebin is
        Generic(
            countInSize : positive := 8;
            pointsPerIntensity : positive := 50000
        );
        Port(
            clk : in STD_LOGIC;
            resetn : in STD_LOGIC;
            countIn : in STD_LOGIC_VECTOR(countInSize - 1 downto 0);
            countInValid : in STD_LOGIC;
            intensityOut : out STD_LOGIC_VECTOR(15 downto 0);
            intensityOutValid : out STD_LOGIC
        );
    end component intensityRebin;
    
    signal clk, resetn : std_logic := '0';
    constant clkPeriod : time := 10ns;
    
    signal countInValid, countInValidReg, intensityOutValid : std_logic := '0';
    signal countIn, countInReg : unsigned(7 downto 0) := (others => '0');
    signal intensityOut : std_logic_vector(15 downto 0);
begin
    process begin
        clk <= NOT clk;
        wait for clkPeriod / 2;
    end process;
    
    input_regs : process(clk) begin
        if rising_edge(clk) then
            countInReg <= countIn;
            countInValidReg <= countInValid;
        end if;
    end process;
    
    process begin
        wait for clkPeriod * 10;
        resetn <= '1';
        
        for I in 1 to 205 loop
            countIn <= to_unsigned(I, countIn'LENGTH);
            countInValid <= '1';
            wait for clkPeriod;
        end loop;
        
        countInValid <= '0';
        
        wait for clkPeriod * 20;
        finish;
    end process;

    DUT : intensityRebin
    generic map(
        pointsPerIntensity => 100
    )
    port map(
        clk => clk,
        resetn => resetn,
        countIn => std_logic_vector(countInReg),
        countInValid => countInValidReg,
        intensityOut => intensityOut,
        intensityOutValid => intensityOutValid
    );
end Behavioral;
