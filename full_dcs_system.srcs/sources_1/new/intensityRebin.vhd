library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

entity intensityRebin is
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
end intensityRebin;

architecture Behavioral of intensityRebin is
    signal intensityOutValidLocal : std_logic := '0';
    signal accumulation, accumReg : unsigned(15 downto 0) := (others => '0');
    signal rebinCounter : unsigned(integer(ceil(log2(real(pointsPerIntensity)))) - 1 downto 0) := (others => '0');
begin
    intensityOut <= std_logic_vector(accumReg);
    intensityOutValid <= intensityOutValidLocal;

    process(clk) begin
        if rising_edge(clk) then
            if resetn = '0' then
                accumulation <= (others => '0');
                rebinCounter <= (others => '0');
                intensityOutValidLocal <= '0';
            else
                --Only pulse the valid output
                --Reset accumulation on output
                if intensityOutValidLocal = '1' then
                    intensityOutValidLocal <= '0';
                end if;
            
                if countInValid = '1' then
                    accumulation <= accumulation + unsigned(countIn);
                    rebinCounter <= rebinCounter + 1;
                    
                    if rebinCounter = pointsPerIntensity - 1 then
                        accumReg <= accumulation + unsigned(countIn);
                        intensityOutValidLocal <= '1';
                        
                        accumulation <= (others => '0');
                        rebinCounter <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
