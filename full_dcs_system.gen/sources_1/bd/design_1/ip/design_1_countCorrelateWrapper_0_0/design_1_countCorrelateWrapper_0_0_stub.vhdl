-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Mar 21 00:38:08 2026
-- Host        : JohnWorkstat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_countCorrelateWrapper_0_0/design_1_countCorrelateWrapper_0_0_stub.vhdl
-- Design      : design_1_countCorrelateWrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_countCorrelateWrapper_0_0 is
  Port ( 
    clk100MHz : in STD_LOGIC;
    clk300MHz : in STD_LOGIC;
    resetn : in STD_LOGIC;
    detectorIn : in STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    writeEnable : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    countOut : out STD_LOGIC_VECTOR ( 7 downto 0 );
    countOutValid : out STD_LOGIC;
    correlationOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    correlationOutValid : out STD_LOGIC;
    correlationOutLast : out STD_LOGIC
  );

end design_1_countCorrelateWrapper_0_0;

architecture stub of design_1_countCorrelateWrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk100MHz,clk300MHz,resetn,detectorIn,dataOut[31:0],addressOut[31:0],writeEnable,interrupt,countOut[7:0],countOutValid,correlationOut[31:0],correlationOutValid,correlationOutLast";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "countCorrelateWrapper,Vivado 2023.1";
begin
end;
