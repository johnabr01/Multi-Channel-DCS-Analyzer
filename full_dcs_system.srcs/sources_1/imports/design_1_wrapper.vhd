--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Wed Jun 21 15:48:11 2023
--Host        : Topher-Spectre running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    detectorIn : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_clkp   : in STD_LOGIC;
    sys_clkn   : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    sys_clkp   : in STD_LOGIC;
    sys_clkn   : in STD_LOGIC;
    reset : in STD_LOGIC;
    detectorIn : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    UART_TX : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      UART_RX => UART_RX,
      UART_TX => UART_TX,
      detectorIn => detectorIn,
      reset => reset,
      sys_clkp   => sys_clkp,
      sys_clkn   => sys_clkn
    );
end STRUCTURE;
