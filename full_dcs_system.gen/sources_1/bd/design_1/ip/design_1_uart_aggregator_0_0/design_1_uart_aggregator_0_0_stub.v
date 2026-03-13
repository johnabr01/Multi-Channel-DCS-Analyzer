// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Mar  6 15:08:01 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_uart_aggregator_0_0/design_1_uart_aggregator_0_0_stub.v
// Design      : design_1_uart_aggregator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "uart_aggregator,Vivado 2023.1" *)
module design_1_uart_aggregator_0_0(clk, resetn, UART_TX, UART_RX, intensityIn, 
  intensityInValid, correlationIn, correlationInValid, correlationInLast, analyzerIn, 
  analyzerInValid, analyzerInLast, analyzerInReady, start, stop, error)
/* synthesis syn_black_box black_box_pad_pin="resetn,UART_TX,UART_RX,intensityIn[15:0],intensityInValid,correlationIn[31:0],correlationInValid,correlationInLast,analyzerIn[31:0],analyzerInValid,analyzerInLast,analyzerInReady,start,stop,error" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input resetn;
  output UART_TX;
  input UART_RX;
  input [15:0]intensityIn;
  input intensityInValid;
  input [31:0]correlationIn;
  input correlationInValid;
  input correlationInLast;
  input [31:0]analyzerIn;
  input analyzerInValid;
  input analyzerInLast;
  output analyzerInReady;
  output start;
  output stop;
  output error;
endmodule
