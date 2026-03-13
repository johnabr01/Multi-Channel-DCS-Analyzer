// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Feb 27 15:10:56 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_f60c,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, 
  SLOT_0_AXIS_tdata, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, resetn)
/* synthesis syn_black_box black_box_pad_pin="probe0[0:0],probe1[0:0],probe2[15:0],probe3[0:0],probe4[0:0],probe5[0:0],probe6[0:0],probe7[31:0],probe8[31:0],probe9[0:0],probe10[31:0],probe11[0:0],probe12[0:0],probe13[7:0],probe14[0:0],probe15[0:0],SLOT_0_AXIS_tdata[31:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,resetn" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [0:0]probe0;
  input [0:0]probe1;
  input [15:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [31:0]probe7;
  input [31:0]probe8;
  input [0:0]probe9;
  input [31:0]probe10;
  input [0:0]probe11;
  input [0:0]probe12;
  input [7:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [31:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input resetn;
endmodule
