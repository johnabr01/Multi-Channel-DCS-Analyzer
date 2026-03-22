// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Fri Mar  6 15:08:01 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_uart_aggregator_0_0/design_1_uart_aggregator_0_0_sim_netlist.v
// Design      : design_1_uart_aggregator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_aggregator_0_0,uart_aggregator,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "uart_aggregator,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_uart_aggregator_0_0
   (clk,
    resetn,
    UART_TX,
    UART_RX,
    intensityIn,
    intensityInValid,
    correlationIn,
    correlationInValid,
    correlationInLast,
    analyzerIn,
    analyzerInValid,
    analyzerInLast,
    analyzerInReady,
    start,
    stop,
    error);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF analyzerFIFOInput, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output UART_TX;
  input UART_RX;
  input [15:0]intensityIn;
  input intensityInValid;
  input [31:0]correlationIn;
  input correlationInValid;
  input correlationInLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TDATA" *) (* x_interface_parameter = "XIL_INTERFACENAME analyzerFIFOInput, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]analyzerIn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TVALID" *) input analyzerInValid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TLAST" *) input analyzerInLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY" *) output analyzerInReady;
  output start;
  output stop;
  output error;

  wire UART_RX;
  wire UART_TX;
  wire [31:0]analyzerIn;
  wire analyzerInLast;
  wire analyzerInReady;
  wire analyzerInValid;
  wire clk;
  wire [31:0]correlationIn;
  wire correlationInLast;
  wire correlationInValid;
  wire error;
  wire [15:0]intensityIn;
  wire intensityInValid;
  wire resetn;
  wire start;
  wire stop;

  (* correlationLength = "64" *) 
  design_1_uart_aggregator_0_0_uart_aggregator U0
       (.UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .analyzerIn(analyzerIn),
        .analyzerInLast(analyzerInLast),
        .analyzerInReady(analyzerInReady),
        .analyzerInValid(analyzerInValid),
        .clk(clk),
        .correlationIn(correlationIn),
        .correlationInLast(correlationInLast),
        .correlationInValid(correlationInValid),
        .error(error),
        .intensityIn(intensityIn),
        .intensityInValid(intensityInValid),
        .resetn(resetn),
        .start(start),
        .stop(stop));
endmodule

(* ORIG_REF_NAME = "UART" *) 
module design_1_uart_aggregator_0_0_UART
   (RST,
    UART_TX,
    error,
    DOUT_VLD_reg,
    DOUT_VLD_reg_0,
    rd_en,
    clk,
    full,
    resetn,
    UART_RX,
    D,
    valid);
  output RST;
  output UART_TX;
  output error;
  output DOUT_VLD_reg;
  output DOUT_VLD_reg_0;
  output rd_en;
  input clk;
  input full;
  input resetn;
  input UART_RX;
  input [7:0]D;
  input valid;

  wire [7:0]D;
  wire DEB_OUT;
  wire DOUT_VLD_reg;
  wire DOUT_VLD_reg_0;
  wire RST;
  wire UART_RX;
  wire UART_TX;
  wire clk;
  wire error;
  wire full;
  wire os_clk_en;
  wire rd_en;
  wire resetn;
  wire uart_rxd_debounced;
  wire uart_rxd_meta_n;
  wire uart_rxd_meta_n_i_1_n_0;
  wire uart_rxd_synced_n;
  wire valid;

  design_1_uart_aggregator_0_0_UART_CLK_DIV os_clk_divider_i
       (.E(os_clk_en),
        .SR(RST),
        .clk(clk));
  design_1_uart_aggregator_0_0_UART_RX uart_rx_i
       (.D(uart_rxd_debounced),
        .DEB_OUT(DEB_OUT),
        .DOUT_VLD_reg_0(DOUT_VLD_reg),
        .DOUT_VLD_reg_1(DOUT_VLD_reg_0),
        .E(os_clk_en),
        .SR(RST),
        .clk(clk),
        .error(error),
        .full(full),
        .resetn(resetn));
  LUT1 #(
    .INIT(2'h1)) 
    uart_rxd_meta_n_i_1
       (.I0(UART_RX),
        .O(uart_rxd_meta_n_i_1_n_0));
  FDRE uart_rxd_meta_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_rxd_meta_n_i_1_n_0),
        .Q(uart_rxd_meta_n),
        .R(1'b0));
  FDRE uart_rxd_synced_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_rxd_meta_n),
        .Q(uart_rxd_synced_n),
        .R(1'b0));
  design_1_uart_aggregator_0_0_UART_TX uart_tx_i
       (.D(D),
        .E(os_clk_en),
        .SS(RST),
        .UART_TX(UART_TX),
        .clk(clk),
        .rd_en(rd_en),
        .valid(valid));
  design_1_uart_aggregator_0_0_UART_DEBOUNCER \use_debouncer_g.debouncer_i 
       (.D(uart_rxd_synced_n),
        .DEB_OUT(DEB_OUT),
        .DEB_OUT_reg_0(uart_rxd_debounced),
        .clk(clk));
endmodule

(* ORIG_REF_NAME = "UART_CLK_DIV" *) 
module design_1_uart_aggregator_0_0_UART_CLK_DIV
   (E,
    SR,
    clk);
  output [0:0]E;
  input [0:0]SR;
  input clk;

  wire [0:0]E;
  wire [0:0]SR;
  wire clk;
  wire clk_div_cnt;
  wire \clk_div_cnt[0]_i_1_n_0 ;

  FDRE DIV_MARK_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_cnt),
        .Q(E),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_cnt[0]_i_1 
       (.I0(clk_div_cnt),
        .O(\clk_div_cnt[0]_i_1_n_0 ));
  FDRE \clk_div_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_div_cnt[0]_i_1_n_0 ),
        .Q(clk_div_cnt),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "UART_CLK_DIV" *) 
module design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0
   (rx_clk_en,
    \rx_data_reg[1] ,
    DIV_MARK_reg_0,
    FRAME_ERROR0,
    PARITY_ERROR0,
    D,
    DOUT_VLD0,
    clk,
    \uart_rx_parity_g.rx_parity_error_reg ,
    Q,
    rx_parity_error,
    E,
    FRAME_ERROR_reg,
    DEB_OUT,
    rx_bit_count);
  output rx_clk_en;
  output \rx_data_reg[1] ;
  output [0:0]DIV_MARK_reg_0;
  output FRAME_ERROR0;
  output PARITY_ERROR0;
  output [4:0]D;
  output DOUT_VLD0;
  input clk;
  input \uart_rx_parity_g.rx_parity_error_reg ;
  input [2:0]Q;
  input rx_parity_error;
  input [0:0]E;
  input [4:0]FRAME_ERROR_reg;
  input DEB_OUT;
  input [2:0]rx_bit_count;

  wire [4:0]D;
  wire DEB_OUT;
  wire DIV_MARK_i_1_n_0;
  wire [0:0]DIV_MARK_reg_0;
  wire DOUT_VLD0;
  wire [0:0]E;
  wire FRAME_ERROR0;
  wire [4:0]FRAME_ERROR_reg;
  wire PARITY_ERROR0;
  wire [2:0]Q;
  wire clk;
  wire \clk_div_cnt[0]_i_1__0_n_0 ;
  wire \clk_div_cnt[1]_i_1_n_0 ;
  wire \clk_div_cnt[2]_i_1_n_0 ;
  wire \clk_div_cnt[3]_i_1_n_0 ;
  wire \clk_div_cnt_reg_n_0_[0] ;
  wire \clk_div_cnt_reg_n_0_[1] ;
  wire \clk_div_cnt_reg_n_0_[2] ;
  wire \clk_div_cnt_reg_n_0_[3] ;
  wire [2:0]rx_bit_count;
  wire rx_clk_en;
  wire \rx_data_reg[1] ;
  wire rx_parity_error;
  wire \uart_rx_parity_g.rx_parity_error_reg ;

  LUT5 #(
    .INIT(32'h00000080)) 
    DIV_MARK_i_1
       (.I0(E),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .I2(\clk_div_cnt_reg_n_0_[1] ),
        .I3(\clk_div_cnt_reg_n_0_[3] ),
        .I4(\clk_div_cnt_reg_n_0_[2] ),
        .O(DIV_MARK_i_1_n_0));
  FDRE DIV_MARK_reg
       (.C(clk),
        .CE(1'b1),
        .D(DIV_MARK_i_1_n_0),
        .Q(rx_clk_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    DOUT_VLD_i_1
       (.I0(rx_clk_en),
        .I1(rx_parity_error),
        .I2(DEB_OUT),
        .I3(FRAME_ERROR_reg[4]),
        .O(DOUT_VLD0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    FRAME_ERROR_i_1
       (.I0(rx_clk_en),
        .I1(DEB_OUT),
        .I2(FRAME_ERROR_reg[4]),
        .O(FRAME_ERROR0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h88F8)) 
    \FSM_onehot_fsm_pstate[0]_i_1 
       (.I0(rx_clk_en),
        .I1(FRAME_ERROR_reg[4]),
        .I2(FRAME_ERROR_reg[0]),
        .I3(DEB_OUT),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_fsm_pstate[1]_i_1 
       (.I0(rx_clk_en),
        .I1(FRAME_ERROR_reg[1]),
        .I2(DEB_OUT),
        .I3(FRAME_ERROR_reg[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFF007F00FF00)) 
    \FSM_onehot_fsm_pstate[2]_i_1 
       (.I0(rx_bit_count[0]),
        .I1(rx_bit_count[1]),
        .I2(rx_bit_count[2]),
        .I3(FRAME_ERROR_reg[2]),
        .I4(rx_clk_en),
        .I5(FRAME_ERROR_reg[1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h80008000FFFF0000)) 
    \FSM_onehot_fsm_pstate[3]_i_1 
       (.I0(rx_bit_count[1]),
        .I1(rx_bit_count[0]),
        .I2(rx_bit_count[2]),
        .I3(FRAME_ERROR_reg[2]),
        .I4(FRAME_ERROR_reg[3]),
        .I5(rx_clk_en),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \FSM_onehot_fsm_pstate[4]_i_1 
       (.I0(FRAME_ERROR_reg[4]),
        .I1(FRAME_ERROR_reg[3]),
        .I2(rx_clk_en),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    PARITY_ERROR_i_1
       (.I0(rx_clk_en),
        .I1(rx_parity_error),
        .I2(FRAME_ERROR_reg[4]),
        .O(PARITY_ERROR0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_cnt[0]_i_1__0 
       (.I0(\clk_div_cnt_reg_n_0_[0] ),
        .O(\clk_div_cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div_cnt[1]_i_1 
       (.I0(\clk_div_cnt_reg_n_0_[1] ),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .O(\clk_div_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div_cnt[2]_i_1 
       (.I0(\clk_div_cnt_reg_n_0_[1] ),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .I2(\clk_div_cnt_reg_n_0_[2] ),
        .O(\clk_div_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div_cnt[3]_i_1 
       (.I0(\clk_div_cnt_reg_n_0_[1] ),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .I2(\clk_div_cnt_reg_n_0_[2] ),
        .I3(\clk_div_cnt_reg_n_0_[3] ),
        .O(\clk_div_cnt[3]_i_1_n_0 ));
  FDRE \clk_div_cnt_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[0]_i_1__0_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[0] ),
        .R(FRAME_ERROR_reg[0]));
  FDRE \clk_div_cnt_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[1]_i_1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[1] ),
        .R(FRAME_ERROR_reg[0]));
  FDRE \clk_div_cnt_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[2]_i_1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[2] ),
        .R(FRAME_ERROR_reg[0]));
  FDRE \clk_div_cnt_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[3]_i_1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[3] ),
        .R(FRAME_ERROR_reg[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \rx_data[7]_i_1 
       (.I0(rx_clk_en),
        .I1(FRAME_ERROR_reg[2]),
        .O(DIV_MARK_reg_0));
  LUT6 #(
    .INIT(64'h6996FFFF69960000)) 
    \uart_rx_parity_g.rx_parity_error_i_1 
       (.I0(\uart_rx_parity_g.rx_parity_error_reg ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(rx_clk_en),
        .I5(rx_parity_error),
        .O(\rx_data_reg[1] ));
endmodule

(* ORIG_REF_NAME = "UART_CLK_DIV" *) 
module design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1
   (tx_clk_en,
    D,
    clk,
    E,
    tx_bit_count,
    Q,
    valid);
  output tx_clk_en;
  output [5:0]D;
  input clk;
  input [0:0]E;
  input [2:0]tx_bit_count;
  input [5:0]Q;
  input valid;

  wire [5:0]D;
  wire DIV_MARK_i_1__0_n_0;
  wire [0:0]E;
  wire [5:0]Q;
  wire clk;
  wire \clk_div_cnt[0]_i_1__1_n_0 ;
  wire \clk_div_cnt[1]_i_1_n_0 ;
  wire \clk_div_cnt[2]_i_1_n_0 ;
  wire \clk_div_cnt[3]_i_1_n_0 ;
  wire \clk_div_cnt_reg_n_0_[0] ;
  wire \clk_div_cnt_reg_n_0_[1] ;
  wire \clk_div_cnt_reg_n_0_[2] ;
  wire \clk_div_cnt_reg_n_0_[3] ;
  wire [2:0]tx_bit_count;
  wire tx_clk_en;
  wire valid;

  LUT5 #(
    .INIT(32'h00000020)) 
    DIV_MARK_i_1__0
       (.I0(E),
        .I1(\clk_div_cnt_reg_n_0_[1] ),
        .I2(\clk_div_cnt_reg_n_0_[0] ),
        .I3(\clk_div_cnt_reg_n_0_[3] ),
        .I4(\clk_div_cnt_reg_n_0_[2] ),
        .O(DIV_MARK_i_1__0_n_0));
  FDRE DIV_MARK_reg
       (.C(clk),
        .CE(1'b1),
        .D(DIV_MARK_i_1__0_n_0),
        .Q(tx_clk_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0E0A)) 
    \FSM_onehot_tx_pstate[0]_i_1 
       (.I0(Q[0]),
        .I1(tx_clk_en),
        .I2(valid),
        .I3(Q[5]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF44F444)) 
    \FSM_onehot_tx_pstate[1]_i_1 
       (.I0(tx_clk_en),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(valid),
        .I4(Q[5]),
        .O(D[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_tx_pstate[2]_i_1 
       (.I0(Q[1]),
        .I1(tx_clk_en),
        .I2(Q[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF88888888)) 
    \FSM_onehot_tx_pstate[3]_i_1 
       (.I0(Q[2]),
        .I1(tx_clk_en),
        .I2(tx_bit_count[2]),
        .I3(tx_bit_count[0]),
        .I4(tx_bit_count[1]),
        .I5(Q[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \FSM_onehot_tx_pstate[4]_i_1 
       (.I0(tx_bit_count[2]),
        .I1(tx_bit_count[0]),
        .I2(tx_bit_count[1]),
        .I3(Q[3]),
        .I4(tx_clk_en),
        .I5(Q[4]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    \FSM_onehot_tx_pstate[5]_i_1 
       (.I0(Q[4]),
        .I1(valid),
        .I2(tx_clk_en),
        .I3(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_cnt[0]_i_1__1 
       (.I0(\clk_div_cnt_reg_n_0_[0] ),
        .O(\clk_div_cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div_cnt[1]_i_1 
       (.I0(\clk_div_cnt_reg_n_0_[1] ),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .O(\clk_div_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div_cnt[2]_i_1 
       (.I0(\clk_div_cnt_reg_n_0_[1] ),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .I2(\clk_div_cnt_reg_n_0_[2] ),
        .O(\clk_div_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div_cnt[3]_i_1 
       (.I0(\clk_div_cnt_reg_n_0_[1] ),
        .I1(\clk_div_cnt_reg_n_0_[0] ),
        .I2(\clk_div_cnt_reg_n_0_[2] ),
        .I3(\clk_div_cnt_reg_n_0_[3] ),
        .O(\clk_div_cnt[3]_i_1_n_0 ));
  FDRE \clk_div_cnt_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[0]_i_1__1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[0] ),
        .R(Q[0]));
  FDRE \clk_div_cnt_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[1]_i_1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[1] ),
        .R(Q[0]));
  FDRE \clk_div_cnt_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[2]_i_1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[2] ),
        .R(Q[0]));
  FDRE \clk_div_cnt_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\clk_div_cnt[3]_i_1_n_0 ),
        .Q(\clk_div_cnt_reg_n_0_[3] ),
        .R(Q[0]));
endmodule

(* ORIG_REF_NAME = "UART_DEBOUNCER" *) 
module design_1_uart_aggregator_0_0_UART_DEBOUNCER
   (DEB_OUT,
    DEB_OUT_reg_0,
    clk,
    D);
  output DEB_OUT;
  output [0:0]DEB_OUT_reg_0;
  input clk;
  input [0:0]D;

  wire [0:0]D;
  wire DEB_OUT;
  wire DEB_OUT_i_1_n_0;
  wire [0:0]DEB_OUT_reg_0;
  wire clk;
  wire \input_shreg_reg_n_0_[0] ;
  wire p_1_in;
  wire p_2_in;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEAAAAAA8)) 
    DEB_OUT_i_1
       (.I0(DEB_OUT),
        .I1(p_1_in),
        .I2(\input_shreg_reg_n_0_[0] ),
        .I3(D),
        .I4(p_2_in),
        .O(DEB_OUT_i_1_n_0));
  FDRE DEB_OUT_reg
       (.C(clk),
        .CE(1'b1),
        .D(DEB_OUT_i_1_n_0),
        .Q(DEB_OUT),
        .R(1'b0));
  FDRE \input_shreg_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(D),
        .Q(\input_shreg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \input_shreg_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\input_shreg_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \input_shreg_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_2_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rx_data[7]_i_2 
       (.I0(DEB_OUT),
        .O(DEB_OUT_reg_0));
endmodule

(* ORIG_REF_NAME = "UART_RX" *) 
module design_1_uart_aggregator_0_0_UART_RX
   (SR,
    error,
    DOUT_VLD_reg_0,
    DOUT_VLD_reg_1,
    clk,
    full,
    resetn,
    E,
    DEB_OUT,
    D);
  output [0:0]SR;
  output error;
  output DOUT_VLD_reg_0;
  output DOUT_VLD_reg_1;
  input clk;
  input full;
  input resetn;
  input [0:0]E;
  input DEB_OUT;
  input [0:0]D;

  wire [0:0]D;
  wire DEB_OUT;
  wire DOUT_VLD0;
  wire DOUT_VLD_reg_0;
  wire DOUT_VLD_reg_1;
  wire [0:0]E;
  wire FRAME_ERROR;
  wire FRAME_ERROR0;
  wire \FSM_onehot_fsm_pstate_reg_n_0_[1] ;
  wire \FSM_onehot_fsm_pstate_reg_n_0_[3] ;
  wire PARITY_ERROR;
  wire PARITY_ERROR0;
  wire [0:0]SR;
  wire [7:0]UARTdataOut;
  wire UARTdataOutValid;
  wire clk;
  wire error;
  wire fsm_databits;
  wire fsm_idle;
  wire fsm_stopbit;
  wire full;
  wire resetn;
  wire [2:0]rx_bit_count;
  wire rx_bit_count0;
  wire \rx_bit_count[0]_i_1_n_0 ;
  wire \rx_bit_count[1]_i_1_n_0 ;
  wire \rx_bit_count[2]_i_1_n_0 ;
  wire rx_clk_divider_i_n_1;
  wire rx_clk_divider_i_n_5;
  wire rx_clk_divider_i_n_6;
  wire rx_clk_divider_i_n_7;
  wire rx_clk_divider_i_n_8;
  wire rx_clk_divider_i_n_9;
  wire rx_clk_en;
  wire rx_parity_error;
  wire startLocal_i_2_n_0;
  wire \uart_rx_parity_g.rx_parity_error_i_2_n_0 ;

  FDRE DOUT_VLD_reg
       (.C(clk),
        .CE(1'b1),
        .D(DOUT_VLD0),
        .Q(UARTdataOutValid),
        .R(SR));
  FDRE FRAME_ERROR_reg
       (.C(clk),
        .CE(1'b1),
        .D(FRAME_ERROR0),
        .Q(FRAME_ERROR),
        .R(SR));
  (* FSM_ENCODED_STATES = "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_pstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_clk_divider_i_n_9),
        .Q(fsm_idle),
        .S(SR));
  (* FSM_ENCODED_STATES = "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_pstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_clk_divider_i_n_8),
        .Q(\FSM_onehot_fsm_pstate_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_pstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_clk_divider_i_n_7),
        .Q(fsm_databits),
        .R(SR));
  (* FSM_ENCODED_STATES = "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_pstate_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_clk_divider_i_n_6),
        .Q(\FSM_onehot_fsm_pstate_reg_n_0_[3] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_pstate_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rx_clk_divider_i_n_5),
        .Q(fsm_stopbit),
        .R(SR));
  FDRE PARITY_ERROR_reg
       (.C(clk),
        .CE(1'b1),
        .D(PARITY_ERROR0),
        .Q(PARITY_ERROR),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    UART_TXD_i_1
       (.I0(resetn),
        .O(SR));
  LUT3 #(
    .INIT(8'hFE)) 
    error_INST_0
       (.I0(FRAME_ERROR),
        .I1(PARITY_ERROR),
        .I2(full),
        .O(error));
  LUT3 #(
    .INIT(8'h78)) 
    \rx_bit_count[0]_i_1 
       (.I0(fsm_databits),
        .I1(rx_clk_en),
        .I2(rx_bit_count[0]),
        .O(\rx_bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rx_bit_count[1]_i_1 
       (.I0(rx_bit_count[0]),
        .I1(rx_clk_en),
        .I2(fsm_databits),
        .I3(rx_bit_count[1]),
        .O(\rx_bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rx_bit_count[2]_i_1 
       (.I0(rx_bit_count[1]),
        .I1(rx_bit_count[0]),
        .I2(rx_clk_en),
        .I3(fsm_databits),
        .I4(rx_bit_count[2]),
        .O(\rx_bit_count[2]_i_1_n_0 ));
  FDRE \rx_bit_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_bit_count[0]_i_1_n_0 ),
        .Q(rx_bit_count[0]),
        .R(SR));
  FDRE \rx_bit_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_bit_count[1]_i_1_n_0 ),
        .Q(rx_bit_count[1]),
        .R(SR));
  FDRE \rx_bit_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rx_bit_count[2]_i_1_n_0 ),
        .Q(rx_bit_count[2]),
        .R(SR));
  design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0 rx_clk_divider_i
       (.D({rx_clk_divider_i_n_5,rx_clk_divider_i_n_6,rx_clk_divider_i_n_7,rx_clk_divider_i_n_8,rx_clk_divider_i_n_9}),
        .DEB_OUT(DEB_OUT),
        .DIV_MARK_reg_0(rx_bit_count0),
        .DOUT_VLD0(DOUT_VLD0),
        .E(E),
        .FRAME_ERROR0(FRAME_ERROR0),
        .FRAME_ERROR_reg({fsm_stopbit,\FSM_onehot_fsm_pstate_reg_n_0_[3] ,fsm_databits,\FSM_onehot_fsm_pstate_reg_n_0_[1] ,fsm_idle}),
        .PARITY_ERROR0(PARITY_ERROR0),
        .Q(UARTdataOut[3:1]),
        .clk(clk),
        .rx_bit_count(rx_bit_count),
        .rx_clk_en(rx_clk_en),
        .\rx_data_reg[1] (rx_clk_divider_i_n_1),
        .rx_parity_error(rx_parity_error),
        .\uart_rx_parity_g.rx_parity_error_reg (\uart_rx_parity_g.rx_parity_error_i_2_n_0 ));
  FDRE \rx_data_reg[0] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[1]),
        .Q(UARTdataOut[0]),
        .R(1'b0));
  FDRE \rx_data_reg[1] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[2]),
        .Q(UARTdataOut[1]),
        .R(1'b0));
  FDRE \rx_data_reg[2] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[3]),
        .Q(UARTdataOut[2]),
        .R(1'b0));
  FDRE \rx_data_reg[3] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[4]),
        .Q(UARTdataOut[3]),
        .R(1'b0));
  FDRE \rx_data_reg[4] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[5]),
        .Q(UARTdataOut[4]),
        .R(1'b0));
  FDRE \rx_data_reg[5] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[6]),
        .Q(UARTdataOut[5]),
        .R(1'b0));
  FDRE \rx_data_reg[6] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(UARTdataOut[7]),
        .Q(UARTdataOut[6]),
        .R(1'b0));
  FDRE \rx_data_reg[7] 
       (.C(clk),
        .CE(rx_bit_count0),
        .D(D),
        .Q(UARTdataOut[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    startLocal_i_1
       (.I0(UARTdataOutValid),
        .I1(UARTdataOut[0]),
        .I2(startLocal_i_2_n_0),
        .I3(UARTdataOut[7]),
        .O(DOUT_VLD_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    startLocal_i_2
       (.I0(UARTdataOut[5]),
        .I1(UARTdataOut[3]),
        .I2(UARTdataOut[1]),
        .I3(UARTdataOut[2]),
        .I4(UARTdataOut[4]),
        .I5(UARTdataOut[6]),
        .O(startLocal_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    stopLocal_i_1
       (.I0(UARTdataOutValid),
        .I1(UARTdataOut[0]),
        .I2(startLocal_i_2_n_0),
        .I3(UARTdataOut[7]),
        .O(DOUT_VLD_reg_1));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \uart_rx_parity_g.rx_parity_error_i_2 
       (.I0(UARTdataOut[5]),
        .I1(UARTdataOut[4]),
        .I2(UARTdataOut[7]),
        .I3(DEB_OUT),
        .I4(UARTdataOut[6]),
        .I5(UARTdataOut[0]),
        .O(\uart_rx_parity_g.rx_parity_error_i_2_n_0 ));
  FDRE \uart_rx_parity_g.rx_parity_error_reg 
       (.C(clk),
        .CE(1'b1),
        .D(rx_clk_divider_i_n_1),
        .Q(rx_parity_error),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "UART_TX" *) 
module design_1_uart_aggregator_0_0_UART_TX
   (UART_TX,
    rd_en,
    clk,
    SS,
    E,
    D,
    valid);
  output UART_TX;
  output rd_en;
  input clk;
  input [0:0]SS;
  input [0:0]E;
  input [7:0]D;
  input valid;

  wire [7:0]D;
  wire [0:0]E;
  wire \FSM_onehot_tx_pstate_reg_n_0_[1] ;
  wire \FSM_onehot_tx_pstate_reg_n_0_[2] ;
  wire \FSM_onehot_tx_pstate_reg_n_0_[4] ;
  wire \FSM_onehot_tx_pstate_reg_n_0_[5] ;
  wire [0:0]SS;
  wire UART_TX;
  wire UART_TXD_i_2_n_0;
  wire UART_TXD_i_3_n_0;
  wire UART_TXD_i_4_n_0;
  wire UART_TXD_i_6_n_0;
  wire UART_TXD_i_7_n_0;
  wire UART_TXD_reg_i_5_n_0;
  wire clk;
  wire rd_en;
  wire [2:0]tx_bit_count;
  wire \tx_bit_count[0]_i_1_n_0 ;
  wire \tx_bit_count[1]_i_1_n_0 ;
  wire \tx_bit_count[2]_i_1_n_0 ;
  wire tx_bit_count_en;
  wire tx_clk_div_clr;
  wire tx_clk_divider_i_n_1;
  wire tx_clk_divider_i_n_2;
  wire tx_clk_divider_i_n_3;
  wire tx_clk_divider_i_n_4;
  wire tx_clk_divider_i_n_5;
  wire tx_clk_divider_i_n_6;
  wire tx_clk_en;
  wire [7:0]tx_data;
  wire tx_data0;
  wire valid;

  (* FSM_ENCODED_STATES = "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_tx_pstate_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_clk_divider_i_n_6),
        .Q(tx_clk_div_clr),
        .S(SS));
  (* FSM_ENCODED_STATES = "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_pstate_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_clk_divider_i_n_5),
        .Q(\FSM_onehot_tx_pstate_reg_n_0_[1] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_pstate_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_clk_divider_i_n_4),
        .Q(\FSM_onehot_tx_pstate_reg_n_0_[2] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_pstate_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_clk_divider_i_n_3),
        .Q(tx_bit_count_en),
        .R(SS));
  (* FSM_ENCODED_STATES = "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_pstate_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_clk_divider_i_n_2),
        .Q(\FSM_onehot_tx_pstate_reg_n_0_[4] ),
        .R(SS));
  (* FSM_ENCODED_STATES = "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_tx_pstate_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(tx_clk_divider_i_n_1),
        .Q(\FSM_onehot_tx_pstate_reg_n_0_[5] ),
        .R(SS));
  LUT6 #(
    .INIT(64'h999F9990990F990F)) 
    UART_TXD_i_2
       (.I0(UART_TXD_i_3_n_0),
        .I1(UART_TXD_i_4_n_0),
        .I2(\FSM_onehot_tx_pstate_reg_n_0_[2] ),
        .I3(\FSM_onehot_tx_pstate_reg_n_0_[4] ),
        .I4(UART_TXD_reg_i_5_n_0),
        .I5(tx_bit_count_en),
        .O(UART_TXD_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    UART_TXD_i_3
       (.I0(tx_data[1]),
        .I1(tx_data[2]),
        .I2(tx_data[7]),
        .I3(tx_data[0]),
        .O(UART_TXD_i_3_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    UART_TXD_i_4
       (.I0(tx_data[5]),
        .I1(tx_data[6]),
        .I2(tx_data[3]),
        .I3(tx_data[4]),
        .O(UART_TXD_i_4_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    UART_TXD_i_6
       (.I0(tx_data[3]),
        .I1(tx_data[2]),
        .I2(tx_bit_count[1]),
        .I3(tx_data[1]),
        .I4(tx_bit_count[0]),
        .I5(tx_data[0]),
        .O(UART_TXD_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    UART_TXD_i_7
       (.I0(tx_data[7]),
        .I1(tx_data[6]),
        .I2(tx_bit_count[1]),
        .I3(tx_data[5]),
        .I4(tx_bit_count[0]),
        .I5(tx_data[4]),
        .O(UART_TXD_i_7_n_0));
  FDSE UART_TXD_reg
       (.C(clk),
        .CE(1'b1),
        .D(UART_TXD_i_2_n_0),
        .Q(UART_TX),
        .S(SS));
  MUXF7 UART_TXD_reg_i_5
       (.I0(UART_TXD_i_6_n_0),
        .I1(UART_TXD_i_7_n_0),
        .O(UART_TXD_reg_i_5_n_0),
        .S(tx_bit_count[2]));
  LUT2 #(
    .INIT(4'hE)) 
    main_fifo_i_1
       (.I0(tx_clk_div_clr),
        .I1(\FSM_onehot_tx_pstate_reg_n_0_[5] ),
        .O(rd_en));
  LUT3 #(
    .INIT(8'h78)) 
    \tx_bit_count[0]_i_1 
       (.I0(tx_bit_count_en),
        .I1(tx_clk_en),
        .I2(tx_bit_count[0]),
        .O(\tx_bit_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \tx_bit_count[1]_i_1 
       (.I0(tx_bit_count[0]),
        .I1(tx_bit_count_en),
        .I2(tx_clk_en),
        .I3(tx_bit_count[1]),
        .O(\tx_bit_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \tx_bit_count[2]_i_1 
       (.I0(tx_bit_count[0]),
        .I1(tx_bit_count[1]),
        .I2(tx_bit_count_en),
        .I3(tx_clk_en),
        .I4(tx_bit_count[2]),
        .O(\tx_bit_count[2]_i_1_n_0 ));
  FDRE \tx_bit_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_bit_count[0]_i_1_n_0 ),
        .Q(tx_bit_count[0]),
        .R(SS));
  FDRE \tx_bit_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_bit_count[1]_i_1_n_0 ),
        .Q(tx_bit_count[1]),
        .R(SS));
  FDRE \tx_bit_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\tx_bit_count[2]_i_1_n_0 ),
        .Q(tx_bit_count[2]),
        .R(SS));
  design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1 tx_clk_divider_i
       (.D({tx_clk_divider_i_n_1,tx_clk_divider_i_n_2,tx_clk_divider_i_n_3,tx_clk_divider_i_n_4,tx_clk_divider_i_n_5,tx_clk_divider_i_n_6}),
        .E(E),
        .Q({\FSM_onehot_tx_pstate_reg_n_0_[5] ,\FSM_onehot_tx_pstate_reg_n_0_[4] ,tx_bit_count_en,\FSM_onehot_tx_pstate_reg_n_0_[2] ,\FSM_onehot_tx_pstate_reg_n_0_[1] ,tx_clk_div_clr}),
        .clk(clk),
        .tx_bit_count(tx_bit_count),
        .tx_clk_en(tx_clk_en),
        .valid(valid));
  LUT3 #(
    .INIT(8'hA8)) 
    \tx_data[7]_i_1 
       (.I0(valid),
        .I1(\FSM_onehot_tx_pstate_reg_n_0_[5] ),
        .I2(tx_clk_div_clr),
        .O(tx_data0));
  FDRE \tx_data_reg[0] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[0]),
        .Q(tx_data[0]),
        .R(1'b0));
  FDRE \tx_data_reg[1] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[1]),
        .Q(tx_data[1]),
        .R(1'b0));
  FDRE \tx_data_reg[2] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[2]),
        .Q(tx_data[2]),
        .R(1'b0));
  FDRE \tx_data_reg[3] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[3]),
        .Q(tx_data[3]),
        .R(1'b0));
  FDRE \tx_data_reg[4] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[4]),
        .Q(tx_data[4]),
        .R(1'b0));
  FDRE \tx_data_reg[5] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[5]),
        .Q(tx_data[5]),
        .R(1'b0));
  FDRE \tx_data_reg[6] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[6]),
        .Q(tx_data[6]),
        .R(1'b0));
  FDRE \tx_data_reg[7] 
       (.C(clk),
        .CE(tx_data0),
        .D(D[7]),
        .Q(tx_data[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "correlatorFIFO" *) 
module design_1_uart_aggregator_0_0_correlatorFIFO
   (wr_rst_busy,
    rd_rst_busy,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  output wr_rst_busy;
  output rd_rst_busy;
  input s_aclk;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;


endmodule

(* ORIG_REF_NAME = "intensityFIFO" *) 
module design_1_uart_aggregator_0_0_intensityFIFO
   (wr_rst_busy,
    rd_rst_busy,
    s_aclk,
    s_aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast);
  output wr_rst_busy;
  output rd_rst_busy;
  input s_aclk;
  input s_aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [15:0]s_axis_tdata;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output [15:0]m_axis_tdata;
  output m_axis_tlast;


endmodule

(* ORIG_REF_NAME = "uart_aggregator" *) (* correlationLength = "64" *) 
module design_1_uart_aggregator_0_0_uart_aggregator
   (clk,
    resetn,
    UART_TX,
    UART_RX,
    intensityIn,
    intensityInValid,
    correlationIn,
    correlationInValid,
    correlationInLast,
    analyzerIn,
    analyzerInValid,
    analyzerInLast,
    analyzerInReady,
    start,
    stop,
    error);
  input clk;
  input resetn;
  output UART_TX;
  input UART_RX;
  input [15:0]intensityIn;
  input intensityInValid;
  input [31:0]correlationIn;
  input correlationInValid;
  input correlationInLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TDATA" *) input [31:0]analyzerIn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TVALID" *) input analyzerInValid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TLAST" *) input analyzerInLast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY" *) output analyzerInReady;
  output start;
  output stop;
  output error;

  wire FIFOdataIn;
  wire RST;
  wire UART_RX;
  wire UART_TX;
  wire [7:0]UARTdataIn;
  wire UARTdataInReady;
  wire UARTdataInValid;
  wire \aggregator.FIFOdataInValid_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[0]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[10]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[11]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[12]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[13]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[14]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[15]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[15]_i_2_n_0 ;
  wire \aggregator.FIFOdataIn[16]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[17]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[18]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[19]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[1]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[20]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[21]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[22]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[23]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[24]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[25]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[26]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[27]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[28]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[29]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[2]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[30]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[31]_i_2_n_0 ;
  wire \aggregator.FIFOdataIn[3]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[4]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[5]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[6]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[6]_i_2_n_0 ;
  wire \aggregator.FIFOdataIn[7]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[8]_i_1_n_0 ;
  wire \aggregator.FIFOdataIn[9]_i_1_n_0 ;
  wire \aggregator.analyzerInReadyLocal_i_1_n_0 ;
  wire [31:0]\aggregator.correlationFIFOData ;
  wire \aggregator.correlationFIFOReady_i_1_n_0 ;
  wire \aggregator.correlationFIFOReady_reg_n_0 ;
  wire \aggregator.correlationFIFOValid ;
  wire \aggregator.intensityFIFOReady0 ;
  wire \aggregator.intensityFIFOReady_i_1_n_0 ;
  wire [31:0]analyzerIn;
  wire analyzerInLast;
  wire analyzerInReady;
  wire analyzerInValid;
  wire clk;
  wire [31:0]correlationIn;
  wire correlationInLast;
  wire correlationInValid;
  wire [31:0]din;
  wire error;
  wire full;
  wire [15:0]intensityIn;
  wire intensityInValid;
  wire [15:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;
  wire start;
  wire stop;
  wire uart_controller_n_3;
  wire uart_controller_n_4;
  wire wr_en;
  wire \NLW_aggregator.correlation_fifo_rd_rst_busy_UNCONNECTED ;
  wire \NLW_aggregator.correlation_fifo_s_axis_tready_UNCONNECTED ;
  wire \NLW_aggregator.correlation_fifo_wr_rst_busy_UNCONNECTED ;
  wire \NLW_aggregator.intensity_fifo_m_axis_tlast_UNCONNECTED ;
  wire \NLW_aggregator.intensity_fifo_rd_rst_busy_UNCONNECTED ;
  wire \NLW_aggregator.intensity_fifo_s_axis_tready_UNCONNECTED ;
  wire \NLW_aggregator.intensity_fifo_wr_rst_busy_UNCONNECTED ;
  wire NLW_main_fifo_empty_UNCONNECTED;

  LUT3 #(
    .INIT(8'hBA)) 
    \aggregator.FIFOdataInValid_i_1 
       (.I0(FIFOdataIn),
        .I1(resetn),
        .I2(wr_en),
        .O(\aggregator.FIFOdataInValid_i_1_n_0 ));
  FDRE \aggregator.FIFOdataInValid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\aggregator.FIFOdataInValid_i_1_n_0 ),
        .Q(wr_en),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[0]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[0]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[0]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [0]),
        .O(\aggregator.FIFOdataIn[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[10]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[10]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[10]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [10]),
        .O(\aggregator.FIFOdataIn[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[11]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[11]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[11]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [11]),
        .O(\aggregator.FIFOdataIn[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[12]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[12]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[12]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [12]),
        .O(\aggregator.FIFOdataIn[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[13]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[13]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[13]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [13]),
        .O(\aggregator.FIFOdataIn[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[14]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[14]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[14]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [14]),
        .O(\aggregator.FIFOdataIn[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[15]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[15]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[15]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [15]),
        .O(\aggregator.FIFOdataIn[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \aggregator.FIFOdataIn[15]_i_2 
       (.I0(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I1(analyzerInValid),
        .I2(analyzerInReady),
        .O(\aggregator.FIFOdataIn[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \aggregator.FIFOdataIn[15]_i_3 
       (.I0(m_axis_tvalid),
        .I1(analyzerInReady),
        .I2(\aggregator.correlationFIFOReady_reg_n_0 ),
        .O(\aggregator.intensityFIFOReady0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[16]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [16]),
        .I2(analyzerIn[16]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[17]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [17]),
        .I2(analyzerIn[17]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[18]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [18]),
        .I2(analyzerIn[18]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[19]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [19]),
        .I2(analyzerIn[19]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[1]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[1]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[1]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [1]),
        .O(\aggregator.FIFOdataIn[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[20]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [20]),
        .I2(analyzerIn[20]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[21]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [21]),
        .I2(analyzerIn[21]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[22]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [22]),
        .I2(analyzerIn[22]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCF0CC00CC55CC00)) 
    \aggregator.FIFOdataIn[23]_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOData [23]),
        .I2(analyzerIn[23]),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .I5(analyzerInReady),
        .O(\aggregator.FIFOdataIn[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[24]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[24]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [24]),
        .O(\aggregator.FIFOdataIn[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[25]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[25]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [25]),
        .O(\aggregator.FIFOdataIn[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[26]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[26]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [26]),
        .O(\aggregator.FIFOdataIn[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[27]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[27]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [27]),
        .O(\aggregator.FIFOdataIn[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[28]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[28]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [28]),
        .O(\aggregator.FIFOdataIn[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[29]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[29]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [29]),
        .O(\aggregator.FIFOdataIn[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[2]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[2]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[2]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [2]),
        .O(\aggregator.FIFOdataIn[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[30]_i_1 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[30]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [30]),
        .O(\aggregator.FIFOdataIn[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0F0200000000)) 
    \aggregator.FIFOdataIn[31]_i_1 
       (.I0(m_axis_tvalid),
        .I1(analyzerInReady),
        .I2(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I3(analyzerInValid),
        .I4(\aggregator.correlationFIFOValid ),
        .I5(resetn),
        .O(FIFOdataIn));
  LUT6 #(
    .INIT(64'hFFFFF1510000F151)) 
    \aggregator.FIFOdataIn[31]_i_2 
       (.I0(analyzerInValid),
        .I1(m_axis_tvalid),
        .I2(analyzerInReady),
        .I3(analyzerIn[31]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [31]),
        .O(\aggregator.FIFOdataIn[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[3]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[3]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[3]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [3]),
        .O(\aggregator.FIFOdataIn[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[4]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[4]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[4]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [4]),
        .O(\aggregator.FIFOdataIn[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[5]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[5]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[5]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [5]),
        .O(\aggregator.FIFOdataIn[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hAAAAAAEF)) 
    \aggregator.FIFOdataIn[6]_i_1 
       (.I0(\aggregator.FIFOdataIn[6]_i_2_n_0 ),
        .I1(analyzerInReady),
        .I2(m_axis_tvalid),
        .I3(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I4(analyzerInValid),
        .O(\aggregator.FIFOdataIn[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA400000EA40)) 
    \aggregator.FIFOdataIn[6]_i_2 
       (.I0(analyzerInReady),
        .I1(m_axis_tvalid),
        .I2(m_axis_tdata[6]),
        .I3(analyzerIn[6]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [6]),
        .O(\aggregator.FIFOdataIn[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[7]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[7]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[7]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [7]),
        .O(\aggregator.FIFOdataIn[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[8]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[8]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[8]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [8]),
        .O(\aggregator.FIFOdataIn[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aggregator.FIFOdataIn[9]_i_1 
       (.I0(\aggregator.FIFOdataIn[15]_i_2_n_0 ),
        .I1(analyzerIn[9]),
        .I2(\aggregator.intensityFIFOReady0 ),
        .I3(m_axis_tdata[9]),
        .I4(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I5(\aggregator.correlationFIFOData [9]),
        .O(\aggregator.FIFOdataIn[9]_i_1_n_0 ));
  FDRE \aggregator.FIFOdataIn_reg[0] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[0]_i_1_n_0 ),
        .Q(din[0]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[10] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[10]_i_1_n_0 ),
        .Q(din[10]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[11] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[11]_i_1_n_0 ),
        .Q(din[11]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[12] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[12]_i_1_n_0 ),
        .Q(din[12]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[13] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[13]_i_1_n_0 ),
        .Q(din[13]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[14] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[14]_i_1_n_0 ),
        .Q(din[14]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[15] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[15]_i_1_n_0 ),
        .Q(din[15]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[16] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[16]_i_1_n_0 ),
        .Q(din[16]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[17] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[17]_i_1_n_0 ),
        .Q(din[17]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[18] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[18]_i_1_n_0 ),
        .Q(din[18]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[19] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[19]_i_1_n_0 ),
        .Q(din[19]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[1] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[1]_i_1_n_0 ),
        .Q(din[1]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[20] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[20]_i_1_n_0 ),
        .Q(din[20]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[21] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[21]_i_1_n_0 ),
        .Q(din[21]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[22] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[22]_i_1_n_0 ),
        .Q(din[22]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[23] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[23]_i_1_n_0 ),
        .Q(din[23]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[24] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[24]_i_1_n_0 ),
        .Q(din[24]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[25] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[25]_i_1_n_0 ),
        .Q(din[25]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[26] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[26]_i_1_n_0 ),
        .Q(din[26]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[27] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[27]_i_1_n_0 ),
        .Q(din[27]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[28] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[28]_i_1_n_0 ),
        .Q(din[28]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[29] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[29]_i_1_n_0 ),
        .Q(din[29]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[2] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[2]_i_1_n_0 ),
        .Q(din[2]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[30] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[30]_i_1_n_0 ),
        .Q(din[30]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[31] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[31]_i_2_n_0 ),
        .Q(din[31]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[3] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[3]_i_1_n_0 ),
        .Q(din[3]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[4] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[4]_i_1_n_0 ),
        .Q(din[4]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[5] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[5]_i_1_n_0 ),
        .Q(din[5]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[6] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[6]_i_1_n_0 ),
        .Q(din[6]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[7] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[7]_i_1_n_0 ),
        .Q(din[7]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[8] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[8]_i_1_n_0 ),
        .Q(din[8]),
        .R(1'b0));
  FDRE \aggregator.FIFOdataIn_reg[9] 
       (.C(clk),
        .CE(FIFOdataIn),
        .D(\aggregator.FIFOdataIn[9]_i_1_n_0 ),
        .Q(din[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCFFF1010)) 
    \aggregator.analyzerInReadyLocal_i_1 
       (.I0(m_axis_tvalid),
        .I1(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I2(analyzerInValid),
        .I3(analyzerInLast),
        .I4(analyzerInReady),
        .O(\aggregator.analyzerInReadyLocal_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY" *) 
  FDRE #(
    .INIT(1'b0)) 
    \aggregator.analyzerInReadyLocal_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\aggregator.analyzerInReadyLocal_i_1_n_0 ),
        .Q(analyzerInReady),
        .R(RST));
  LUT6 #(
    .INIT(64'h00FFFFFF0B000B00)) 
    \aggregator.correlationFIFOReady_i_1 
       (.I0(analyzerInReady),
        .I1(m_axis_tvalid),
        .I2(analyzerInValid),
        .I3(\aggregator.correlationFIFOValid ),
        .I4(m_axis_tlast),
        .I5(\aggregator.correlationFIFOReady_reg_n_0 ),
        .O(\aggregator.correlationFIFOReady_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aggregator.correlationFIFOReady_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\aggregator.correlationFIFOReady_i_1_n_0 ),
        .Q(\aggregator.correlationFIFOReady_reg_n_0 ),
        .R(RST));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
  design_1_uart_aggregator_0_0_correlatorFIFO \aggregator.correlation_fifo 
       (.m_axis_tdata(\aggregator.correlationFIFOData ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(\aggregator.correlationFIFOReady_reg_n_0 ),
        .m_axis_tvalid(\aggregator.correlationFIFOValid ),
        .rd_rst_busy(\NLW_aggregator.correlation_fifo_rd_rst_busy_UNCONNECTED ),
        .s_aclk(clk),
        .s_aresetn(resetn),
        .s_axis_tdata(correlationIn),
        .s_axis_tlast(correlationInLast),
        .s_axis_tready(\NLW_aggregator.correlation_fifo_s_axis_tready_UNCONNECTED ),
        .s_axis_tvalid(correlationInValid),
        .wr_rst_busy(\NLW_aggregator.correlation_fifo_wr_rst_busy_UNCONNECTED ));
  LUT3 #(
    .INIT(8'h10)) 
    \aggregator.intensityFIFOReady_i_1 
       (.I0(\aggregator.correlationFIFOReady_reg_n_0 ),
        .I1(analyzerInReady),
        .I2(m_axis_tvalid),
        .O(\aggregator.intensityFIFOReady_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aggregator.intensityFIFOReady_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\aggregator.intensityFIFOReady_i_1_n_0 ),
        .Q(m_axis_tready),
        .R(RST));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
  design_1_uart_aggregator_0_0_intensityFIFO \aggregator.intensity_fifo 
       (.m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(\NLW_aggregator.intensity_fifo_m_axis_tlast_UNCONNECTED ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rd_rst_busy(\NLW_aggregator.intensity_fifo_rd_rst_busy_UNCONNECTED ),
        .s_aclk(clk),
        .s_aresetn(resetn),
        .s_axis_tdata(intensityIn),
        .s_axis_tlast(1'b0),
        .s_axis_tready(\NLW_aggregator.intensity_fifo_s_axis_tready_UNCONNECTED ),
        .s_axis_tvalid(intensityInValid),
        .wr_rst_busy(\NLW_aggregator.intensity_fifo_wr_rst_busy_UNCONNECTED ));
  (* syn_black_box = "TRUE" *) 
  (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
  design_1_uart_aggregator_0_0_uart_fifo main_fifo
       (.clk(clk),
        .din(din),
        .dout(UARTdataIn),
        .empty(NLW_main_fifo_empty_UNCONNECTED),
        .full(full),
        .rd_en(UARTdataInReady),
        .srst(RST),
        .valid(UARTdataInValid),
        .wr_en(wr_en));
  FDRE #(
    .INIT(1'b0)) 
    startLocal_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_controller_n_3),
        .Q(start),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    stopLocal_reg
       (.C(clk),
        .CE(1'b1),
        .D(uart_controller_n_4),
        .Q(stop),
        .R(RST));
  design_1_uart_aggregator_0_0_UART uart_controller
       (.D(UARTdataIn),
        .DOUT_VLD_reg(uart_controller_n_3),
        .DOUT_VLD_reg_0(uart_controller_n_4),
        .RST(RST),
        .UART_RX(UART_RX),
        .UART_TX(UART_TX),
        .clk(clk),
        .error(error),
        .full(full),
        .rd_en(UARTdataInReady),
        .resetn(resetn),
        .valid(UARTdataInValid));
endmodule

(* ORIG_REF_NAME = "uart_fifo" *) 
module design_1_uart_aggregator_0_0_uart_fifo
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    valid);
  input clk;
  input srst;
  input [31:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output empty;
  output valid;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
