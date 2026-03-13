library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.logb2Func.all;

entity ram_single_port_no_change is
    Generic (
        dataWidthBits : positive;
        dataDepth : positive
    );
    Port (
        aclk : in STD_LOGIC;
        
        addr : in std_logic_vector(logb2(dataDepth) - 1 downto 0);
        dataIn : in std_logic_vector(dataWidthBits - 1 downto 0);
        dataOut : out std_logic_vector(dataWidthBits - 1 downto 0);
        writeEnable : in std_logic
    );
end ram_single_port_no_change;

architecture Behavioral of ram_single_port_no_change is
    type ram_type is array (dataDepth - 1 downto 0) of std_logic_vector(dataWidthBits - 1 downto 0);
    signal ram : ram_type;
begin
    process(aclk) begin
        if rising_edge(aclk) then
            if writeEnable = '1' then
                ram(to_integer(unsigned(addr))) <= dataIn;
            else
                dataOut <= ram(to_integer(unsigned(addr)));
            end if;
        end if;
    end process;
end Behavioral;
