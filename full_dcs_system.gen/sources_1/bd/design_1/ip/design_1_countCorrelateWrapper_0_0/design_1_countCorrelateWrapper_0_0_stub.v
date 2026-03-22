// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Mar 21 00:38:08 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_countCorrelateWrapper_0_0/design_1_countCorrelateWrapper_0_0_stub.v
// Design      : design_1_countCorrelateWrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "countCorrelateWrapper,Vivado 2023.1" *)
module design_1_countCorrelateWrapper_0_0(clk100MHz, clk300MHz, resetn, detectorIn, 
  dataOut, addressOut, writeEnable, interrupt, countOut, countOutValid, correlationOut, 
  correlationOutValid, correlationOutLast)
/* synthesis syn_black_box black_box_pad_pin="resetn,detectorIn,dataOut[31:0],addressOut[31:0],writeEnable,interrupt,countOut[7:0],countOutValid,correlationOut[31:0],correlationOutValid,correlationOutLast" */
/* synthesis syn_force_seq_prim="clk100MHz" */
/* synthesis syn_force_seq_prim="clk300MHz" */;
  input clk100MHz /* synthesis syn_isclock = 1 */;
  input clk300MHz /* synthesis syn_isclock = 1 */;
  input resetn;
  input detectorIn;
  output [31:0]dataOut;
  output [31:0]addressOut;
  output writeEnable;
  output interrupt;
  output [7:0]countOut;
  output countOutValid;
  output [31:0]correlationOut;
  output correlationOutValid;
  output correlationOutLast;
endmodule
