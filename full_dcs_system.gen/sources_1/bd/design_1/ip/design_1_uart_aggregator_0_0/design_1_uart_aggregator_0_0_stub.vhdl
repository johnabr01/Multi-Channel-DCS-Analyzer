-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Mar 21 00:37:53 2026
-- Host        : JohnWorkstat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_uart_aggregator_0_0/design_1_uart_aggregator_0_0_stub.vhdl
-- Design      : design_1_uart_aggregator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_uart_aggregator_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    UART_RX : in STD_LOGIC;
    intensityIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    intensityInValid : in STD_LOGIC;
    correlationIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlationInValid : in STD_LOGIC;
    correlationInLast : in STD_LOGIC;
    analyzerIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    analyzerInValid : in STD_LOGIC;
    analyzerInLast : in STD_LOGIC;
    analyzerInReady : out STD_LOGIC;
    start : out STD_LOGIC;
    stop : out STD_LOGIC;
    error : out STD_LOGIC
  );

end design_1_uart_aggregator_0_0;

architecture stub of design_1_uart_aggregator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,UART_TX,UART_RX,intensityIn[15:0],intensityInValid,correlationIn[31:0],correlationInValid,correlationInLast,analyzerIn[31:0],analyzerInValid,analyzerInLast,analyzerInReady,start,stop,error";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "uart_aggregator,Vivado 2023.1";
begin
end;
