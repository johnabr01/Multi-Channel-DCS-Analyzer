library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_register is
  generic (
    sr_depth : positive;
    sr_width : positive
  );
  port (
    clk : in std_logic;
    aresetn : in std_logic;
 
    sr_in : in std_logic_vector(sr_width - 1 downto 0);
    sr_out : out std_logic_vector(sr_width - 1 downto 0)
  );
end shift_register;

architecture Behavioral of shift_register is
    type sr_type is array (sr_depth - 1 downto 0) of std_logic_vector(sr_width - 1 downto 0);
    signal sr : sr_type := (others => (others => '0'));
begin
    sr_out <= sr(sr'high);

    process(clk) begin
        if rising_edge(clk) then
            if aresetn = '0' then
                sr <= (others => (others => '0'));
            else
                sr <= sr(sr'high - 1 downto sr'low) & sr_in;
            end if;
        end if;
    end process;
end Behavioral;
