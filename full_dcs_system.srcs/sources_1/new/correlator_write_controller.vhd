library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity correlator_write_controller is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataInValid : in STD_LOGIC;
           dataInLast : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           writeEnable : out STD_LOGIC;
           addressOut : out STD_LOGIC_VECTOR (31 downto 0);
           interrupt : out std_logic);
end correlator_write_controller;

architecture Behavioral of correlator_write_controller is
    signal address : unsigned(addressOut'RANGE) := (others => '0');
begin
    addressOut <= std_logic_vector(address);
    dataOut <= dataIn;
    writeEnable <= dataInValid;

    process(clk) begin
        if rising_edge(clk) then
            if resetn = '0' then
                address <= (others => '0');
            elsif dataInLast = '1' then
                address <= (others => '0');
            elsif dataInValid = '1' then
                address <= address + 1;
            end if;
        end if;
    end process;
    
    interruptGen : process(clk) begin
        if rising_edge(clk) then
            interrupt <= dataInLast;
        end if;
    end process;
end Behavioral;
