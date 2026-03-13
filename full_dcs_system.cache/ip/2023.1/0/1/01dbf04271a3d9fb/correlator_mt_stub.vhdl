-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Mon Feb 23 06:28:02 2026
-- Host        : JohnWorkstat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ correlator_mt_stub.vhdl
-- Design      : correlator_mt
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    channelSelect : in STD_LOGIC_VECTOR ( 0 to 0 );
    aIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dataInValid : in STD_LOGIC;
    dataInLast : in STD_LOGIC;
    dataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dataOutValid : out STD_LOGIC;
    dataOutLast : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,channelSelect[0:0],aIn[15:0],bIn[15:0],dataInValid,dataInLast,dataOut[31:0],dataOutValid,dataOutLast";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "correlatorTop,Vivado 2023.1";
begin
end;
