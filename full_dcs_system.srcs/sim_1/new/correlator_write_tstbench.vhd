library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.env.finish;

entity correlator_write_tstbench is
--  Port ( );
end correlator_write_tstbench;

architecture Behavioral of correlator_write_tstbench is
    component correlator_write_controller is
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           dataIn : in STD_LOGIC_VECTOR (31 downto 0);
           dataInValid : in STD_LOGIC;
           dataInLast : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           writeEnable : out STD_LOGIC;
           addressOut : out STD_LOGIC_VECTOR (31 downto 0));
    end component correlator_write_controller;
    
    constant CLOCK_PERIOD : time := 10ns;
    
    signal clk, resetn, dataInValid, dataInValidLatched, writeEnable, dataInLast, dataInLastLatched : std_logic := '0';
    signal dataIn, dataInLatched, addressOut, dataOut : std_logic_vector(31 downto 0) := (others => '0');
begin
    process begin
        clk <= NOT clk;
        wait for CLOCK_PERIOD / 2;
    end process;
    
    latches : process(clk) begin
        if rising_edge(clk) then
            dataInValidLatched <= dataInValid;
            dataInLatched <= dataIn;
            dataInLastLatched <= dataInLast;
        end if;
    end process;
    
    process begin
        wait for CLOCK_PERIOD * 5;
        resetn <= '1';
        wait for CLOCK_PERIOD * 5;
        
        for I in 1 to 128 loop
            dataIn <= std_logic_vector(to_unsigned(I, dataIn'LENGTH));
            dataInValid <= '1';
            
            if I = 128 then
                dataInLast <= '1';
            end if;
        
            wait for CLOCK_PERIOD;
        end loop;
        dataInValid <= '0';
        dataInLast <= '0';
        
        wait for CLOCK_PERIOD * 20;
        finish;
    end process;

    DUT : correlator_write_controller
    port map(
        clk => clk,
        resetn => resetn,
        dataIn => dataInLatched,
        dataInValid => dataInValidLatched,
        dataInLast => dataInLastLatched,
        dataOut => dataOut,
        writeEnable => writeEnable,
        addressOut => addressOut
    );
end Behavioral;
