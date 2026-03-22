// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Mar 18 22:15:38 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_s00_mmu_0 -prefix
//               design_1_s00_mmu_0_ design_1_s00_mmu_0_sim_netlist.v
// Design      : design_1_s00_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_s00_mmu_0_axi_mmu_v2_1_26_decerr_slave
   (err_bvalid,
    err_wready,
    err_rvalid,
    err_arready,
    s_axi_rvalid,
    \FSM_sequential_gen_read.r_state_reg[1] ,
    s_axi_wready,
    s_axi_bvalid,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ,
    aclk,
    \gen_axilite.gen_write.s_axi_awready_i_reg_0 ,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_1 ,
    \gen_axilite.gen_read.s_axi_arready_i_reg_0 ,
    r_state,
    m_axi_rvalid,
    s_axi_wready_0,
    m_axi_wready,
    s_axi_wready_1,
    m_axi_bvalid,
    s_axi_bready,
    \gen_axilite.gen_write.s_axi_bvalid_i_reg_0 ,
    s_axi_wvalid);
  output err_bvalid;
  output err_wready;
  output err_rvalid;
  output err_arready;
  output s_axi_rvalid;
  output \FSM_sequential_gen_read.r_state_reg[1] ;
  output s_axi_wready;
  output s_axi_bvalid;
  input \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  input aclk;
  input \gen_axilite.gen_write.s_axi_awready_i_reg_0 ;
  input \gen_axilite.gen_read.s_axi_rvalid_i_reg_1 ;
  input \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  input [1:0]r_state;
  input m_axi_rvalid;
  input s_axi_wready_0;
  input m_axi_wready;
  input s_axi_wready_1;
  input m_axi_bvalid;
  input s_axi_bready;
  input \gen_axilite.gen_write.s_axi_bvalid_i_reg_0 ;
  input s_axi_wvalid;

  wire \FSM_sequential_gen_read.r_state_reg[1] ;
  wire aclk;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg_1 ;
  wire \gen_axilite.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axilite.gen_write.s_axi_bvalid_i_reg_0 ;
  wire m_axi_bvalid;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [1:0]r_state;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rvalid;
  wire s_axi_wready;
  wire s_axi_wready_0;
  wire s_axi_wready_1;
  wire s_axi_wvalid;

  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_read.s_axi_arready_i_reg_0 ),
        .Q(err_arready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_2 
       (.I0(r_state[1]),
        .I1(r_state[0]),
        .O(\FSM_sequential_gen_read.r_state_reg[1] ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_read.s_axi_rvalid_i_reg_1 ),
        .Q(err_rvalid),
        .R(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_write.s_axi_awready_i_reg_0 ),
        .Q(err_wready),
        .R(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ));
  LUT5 #(
    .INIT(32'h5555C000)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_i_1 
       (.I0(s_axi_bready),
        .I1(\gen_axilite.gen_write.s_axi_bvalid_i_reg_0 ),
        .I2(err_wready),
        .I3(s_axi_wvalid),
        .I4(err_bvalid),
        .O(\gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axilite.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(s_axi_wready_1),
        .I2(m_axi_bvalid),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    s_axi_rvalid_INST_0
       (.I0(err_rvalid),
        .I1(r_state[1]),
        .I2(r_state[0]),
        .I3(m_axi_rvalid),
        .O(s_axi_rvalid));
  LUT4 #(
    .INIT(16'hAA30)) 
    s_axi_wready_INST_0
       (.I0(err_wready),
        .I1(s_axi_wready_0),
        .I2(m_axi_wready),
        .I3(s_axi_wready_1),
        .O(s_axi_wready));
endmodule

(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "2" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_BASE_ADDR = "256'b0000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000100010010100000000000000000000000000000000000000000000000000000010000010100000000000000000000000000000000000000000000000000000001000001001000000000000000000000" *) (* C_DEST = "4'b0000" *) (* C_DEST_WIDTH = "1" *) 
(* C_FAMILY = "artix7" *) (* C_M_AXI_ADDR_WIDTH = "32" *) (* C_M_AXI_SUPPORTS_READ = "4'b1111" *) 
(* C_M_AXI_SUPPORTS_WRITE = "4'b1111" *) (* C_NUM_RANGES = "4" *) (* C_PREFIX = "4'b0000" *) 
(* C_PREFIX_WIDTH = "1" *) (* C_RANGE_SIZE = "128'b00000000000000000000000000001100000000000000000000000000000100000000000000000000000000000000110000000000000000000000000000010000" *) (* C_S_AXI_ADDR_WIDTH = "32" *) 
(* C_S_AXI_SUPPORTS_READ = "1" *) (* C_S_AXI_SUPPORTS_WRITE = "1" *) (* C_USES_DEST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_DECERR = "2'b11" *) (* P_NUM_RANGES_LOG = "2" *) 
(* R_DECERR = "2'b11" *) (* R_IDLE = "2'b00" *) (* R_PENDING = "2'b01" *) 
(* W_DECERR = "2'b11" *) (* W_IDLE = "2'b00" *) (* W_PENDING = "2'b01" *) 
module design_1_s00_mmu_0_axi_mmu_v2_1_26_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \FSM_onehot_gen_write.w_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_write.w_state_reg_n_0_[2] ;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_5;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_3_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire \gen_write.w_cnt[5]_i_6_n_0 ;
  wire \gen_write.w_cnt[5]_i_7_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg ;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [1:0]r_state;
  wire register_slice_inst_n_0;
  wire register_slice_inst_n_1;
  wire register_slice_inst_n_10;
  wire register_slice_inst_n_11;
  wire register_slice_inst_n_12;
  wire register_slice_inst_n_14;
  wire register_slice_inst_n_15;
  wire register_slice_inst_n_16;
  wire register_slice_inst_n_17;
  wire register_slice_inst_n_18;
  wire register_slice_inst_n_19;
  wire register_slice_inst_n_2;
  wire register_slice_inst_n_20;
  wire register_slice_inst_n_21;
  wire register_slice_inst_n_22;
  wire register_slice_inst_n_23;
  wire register_slice_inst_n_24;
  wire register_slice_inst_n_25;
  wire register_slice_inst_n_27;
  wire register_slice_inst_n_28;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_6;
  wire register_slice_inst_n_9;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire w_mask;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_2),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .R(register_slice_inst_n_0));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_1),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .R(register_slice_inst_n_0));
  (* FSM_ENCODED_STATES = "R_PENDING:01,iSTATE:00,R_DECERR:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_read.r_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_4),
        .Q(r_state[0]),
        .R(register_slice_inst_n_0));
  (* FSM_ENCODED_STATES = "R_PENDING:01,iSTATE:00,R_DECERR:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_3),
        .Q(r_state[1]),
        .R(register_slice_inst_n_0));
  GND GND
       (.G(\<const0> ));
  design_1_s00_mmu_0_axi_mmu_v2_1_26_decerr_slave decerr_slave_inst
       (.\FSM_sequential_gen_read.r_state_reg[1] (decerr_slave_inst_n_5),
        .aclk(aclk),
        .err_arready(err_arready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_read.s_axi_arready_i_reg_0 (register_slice_inst_n_6),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg_0 (register_slice_inst_n_0),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg_1 (register_slice_inst_n_27),
        .\gen_axilite.gen_write.s_axi_awready_i_reg_0 (register_slice_inst_n_28),
        .\gen_axilite.gen_write.s_axi_bvalid_i_reg_0 (register_slice_inst_n_5),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .r_state(r_state),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wready(s_axi_wready),
        .s_axi_wready_0(register_slice_inst_n_9),
        .s_axi_wready_1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .s_axi_wvalid(s_axi_wvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_20),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_20),
        .D(register_slice_inst_n_25),
        .Q(\gen_read.ar_cnt_reg [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_20),
        .D(register_slice_inst_n_24),
        .Q(\gen_read.ar_cnt_reg [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_20),
        .D(register_slice_inst_n_23),
        .Q(\gen_read.ar_cnt_reg [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_20),
        .D(register_slice_inst_n_22),
        .Q(\gen_read.ar_cnt_reg [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_20),
        .D(register_slice_inst_n_21),
        .Q(\gen_read.ar_cnt_reg [5]),
        .R(register_slice_inst_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_14),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_14),
        .D(register_slice_inst_n_19),
        .Q(\gen_write.aw_cnt_reg [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_14),
        .D(register_slice_inst_n_18),
        .Q(\gen_write.aw_cnt_reg [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_14),
        .D(register_slice_inst_n_17),
        .Q(\gen_write.aw_cnt_reg [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_14),
        .D(register_slice_inst_n_16),
        .Q(\gen_write.aw_cnt_reg [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_14),
        .D(register_slice_inst_n_15),
        .Q(\gen_write.aw_cnt_reg [5]),
        .R(register_slice_inst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I1(\gen_write.w_cnt_reg [0]),
        .I2(\gen_write.w_cnt_reg [1]),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg [0]),
        .I1(\gen_write.w_cnt_reg [1]),
        .I2(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I3(\gen_write.w_cnt_reg [2]),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDFFB2004)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg [2]),
        .I1(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.w_cnt_reg [1]),
        .I3(\gen_write.w_cnt_reg [0]),
        .I4(\gen_write.w_cnt_reg [3]),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFEF08000010)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg [0]),
        .I1(\gen_write.w_cnt_reg [1]),
        .I2(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I3(\gen_write.w_cnt_reg [2]),
        .I4(\gen_write.w_cnt_reg [3]),
        .I5(\gen_write.w_cnt_reg [4]),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I1(register_slice_inst_n_12),
        .I2(s_axi_awvalid),
        .I3(\gen_write.aw_cnt_reg [5]),
        .I4(w_mask),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(register_slice_inst_n_9),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I2(s_axi_wvalid),
        .I3(m_axi_wready),
        .I4(\gen_write.w_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA69A9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg [5]),
        .I1(\gen_write.w_cnt_reg [4]),
        .I2(\gen_write.w_cnt_reg [3]),
        .I3(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I4(\gen_write.w_cnt_reg [2]),
        .I5(\gen_write.w_cnt[5]_i_5_n_0 ),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(w_mask),
        .I1(\gen_write.aw_cnt_reg [5]),
        .I2(s_axi_awvalid),
        .I3(register_slice_inst_n_12),
        .O(\gen_write.w_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt_reg [2]),
        .I1(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I2(register_slice_inst_n_12),
        .I3(\gen_write.w_cnt[5]_i_7_n_0 ),
        .I4(\gen_write.w_cnt_reg [1]),
        .I5(\gen_write.w_cnt_reg [0]),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEF)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(\gen_write.w_cnt_reg [1]),
        .I1(\gen_write.w_cnt_reg [0]),
        .I2(w_mask),
        .I3(register_slice_inst_n_11),
        .I4(register_slice_inst_n_12),
        .I5(\gen_write.w_cnt[5]_i_6_n_0 ),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gen_write.w_cnt[5]_i_6 
       (.I0(m_axi_wready),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I3(register_slice_inst_n_9),
        .O(\gen_write.w_cnt[5]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \gen_write.w_cnt[5]_i_7 
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg [5]),
        .I2(w_mask),
        .O(\gen_write.w_cnt[5]_i_7_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [0]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [1]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [2]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [3]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg [4]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg [5]),
        .R(register_slice_inst_n_0));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_10),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    m_axi_wvalid_INST_0
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(s_axi_wvalid),
        .I2(register_slice_inst_n_9),
        .O(m_axi_wvalid));
  design_1_s00_mmu_0_axi_register_slice_v2_1_28_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_15,register_slice_inst_n_16,register_slice_inst_n_17,register_slice_inst_n_18,register_slice_inst_n_19}),
        .E(register_slice_inst_n_14),
        .\FSM_onehot_gen_write.w_state_reg[1] (register_slice_inst_n_1),
        .\FSM_sequential_gen_read.r_state_reg[0] (register_slice_inst_n_4),
        .Q(\gen_read.ar_cnt_reg ),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (register_slice_inst_n_0),
        .\aresetn_d_reg[1]_0 (register_slice_inst_n_6),
        .err_arready(err_arready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .err_wready(err_wready),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (decerr_slave_inst_n_5),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg (register_slice_inst_n_3),
        .\gen_read.ar_cnt_reg[5] ({register_slice_inst_n_21,register_slice_inst_n_22,register_slice_inst_n_23,register_slice_inst_n_24,register_slice_inst_n_25}),
        .\gen_write.aw_cnt_reg[5] (register_slice_inst_n_11),
        .\gen_write.w_cnt_reg[2] (register_slice_inst_n_9),
        .\gen_write.w_mask_reg (register_slice_inst_n_10),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .m_axi_awvalid_1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[32] (register_slice_inst_n_5),
        .\m_payload_i_reg[32]_0 (register_slice_inst_n_28),
        .\m_payload_i_reg[35] ({m_axi_awprot,m_axi_awaddr}),
        .\m_payload_i_reg[35]_0 ({m_axi_arprot,m_axi_araddr}),
        .\m_payload_i_reg[35]_1 ({s_axi_awprot,s_axi_awaddr}),
        .m_valid_i_reg_inv(register_slice_inst_n_2),
        .r_state(r_state),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(register_slice_inst_n_20),
        .\s_axi_awaddr[28] (register_slice_inst_n_12),
        .s_axi_awready(s_axi_awready),
        .s_axi_awready_0(\gen_write.aw_cnt_reg ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(register_slice_inst_n_27),
        .s_axi_wready(\gen_write.w_cnt_reg ),
        .s_axi_wvalid(s_axi_wvalid),
        .w_mask(w_mask));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(m_axi_bresp[0]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(m_axi_bresp[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(m_axi_rresp[0]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(m_axi_rresp[1]),
        .I1(r_state[0]),
        .I2(r_state[1]),
        .O(s_axi_rresp[1]));
endmodule

module design_1_s00_mmu_0_axi_register_slice_v2_1_28_axi_register_slice
   (\aresetn_d_reg[1] ,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    m_valid_i_reg_inv,
    \gen_axilite.gen_read.s_axi_rvalid_i_reg ,
    \FSM_sequential_gen_read.r_state_reg[0] ,
    \m_payload_i_reg[32] ,
    \aresetn_d_reg[1]_0 ,
    m_axi_arvalid,
    m_axi_awvalid,
    \gen_write.w_cnt_reg[2] ,
    \gen_write.w_mask_reg ,
    \gen_write.aw_cnt_reg[5] ,
    \s_axi_awaddr[28] ,
    s_axi_awready,
    E,
    D,
    s_axi_arvalid_0,
    \gen_read.ar_cnt_reg[5] ,
    s_axi_arready,
    s_axi_rready_0,
    \m_payload_i_reg[32]_0 ,
    \m_payload_i_reg[35] ,
    \m_payload_i_reg[35]_0 ,
    aresetn,
    aclk,
    m_axi_awvalid_0,
    m_axi_awvalid_1,
    err_rvalid,
    s_axi_rready,
    r_state,
    err_arready,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    m_axi_arready,
    s_axi_arvalid,
    Q,
    s_axi_awvalid,
    s_axi_awready_0,
    m_axi_awready,
    err_wready,
    s_axi_bready,
    err_bvalid,
    w_mask,
    m_axi_bvalid,
    \m_payload_i_reg[35]_1 ,
    s_axi_araddr,
    m_axi_rvalid,
    s_axi_wready,
    s_axi_wvalid,
    s_axi_arprot);
  output \aresetn_d_reg[1] ;
  output \FSM_onehot_gen_write.w_state_reg[1] ;
  output m_valid_i_reg_inv;
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  output \FSM_sequential_gen_read.r_state_reg[0] ;
  output \m_payload_i_reg[32] ;
  output \aresetn_d_reg[1]_0 ;
  output m_axi_arvalid;
  output m_axi_awvalid;
  output \gen_write.w_cnt_reg[2] ;
  output \gen_write.w_mask_reg ;
  output \gen_write.aw_cnt_reg[5] ;
  output \s_axi_awaddr[28] ;
  output s_axi_awready;
  output [0:0]E;
  output [4:0]D;
  output [0:0]s_axi_arvalid_0;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output s_axi_arready;
  output s_axi_rready_0;
  output \m_payload_i_reg[32]_0 ;
  output [34:0]\m_payload_i_reg[35] ;
  output [34:0]\m_payload_i_reg[35]_0 ;
  input aresetn;
  input aclk;
  input m_axi_awvalid_0;
  input m_axi_awvalid_1;
  input err_rvalid;
  input s_axi_rready;
  input [1:0]r_state;
  input err_arready;
  input \gen_axilite.gen_read.s_axi_arready_i_reg ;
  input m_axi_arready;
  input s_axi_arvalid;
  input [5:0]Q;
  input s_axi_awvalid;
  input [5:0]s_axi_awready_0;
  input m_axi_awready;
  input err_wready;
  input s_axi_bready;
  input err_bvalid;
  input w_mask;
  input m_axi_bvalid;
  input [34:0]\m_payload_i_reg[35]_1 ;
  input [31:0]s_axi_araddr;
  input m_axi_rvalid;
  input [5:0]s_axi_wready;
  input s_axi_wvalid;
  input [2:0]s_axi_arprot;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire \FSM_sequential_gen_read.r_state_reg[0] ;
  wire [5:0]Q;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aw.aw_pipe_n_0 ;
  wire \aw.aw_pipe_n_1 ;
  wire err_arready;
  wire err_bvalid;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_cnt_reg[2] ;
  wire \gen_write.w_mask_reg ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_awvalid_1;
  wire m_axi_bvalid;
  wire m_axi_rvalid;
  wire \m_payload_i_reg[32] ;
  wire \m_payload_i_reg[32]_0 ;
  wire [34:0]\m_payload_i_reg[35] ;
  wire [34:0]\m_payload_i_reg[35]_0 ;
  wire [34:0]\m_payload_i_reg[35]_1 ;
  wire m_valid_i_reg_inv;
  wire [1:0]r_state;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [0:0]s_axi_arvalid_0;
  wire \s_axi_awaddr[28] ;
  wire s_axi_awready;
  wire [5:0]s_axi_awready_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [5:0]s_axi_wready;
  wire s_axi_wvalid;
  wire w_mask;

  design_1_s00_mmu_0_axi_register_slice_v2_1_28_axic_register_slice \ar.ar_pipe 
       (.D({s_axi_arprot,s_axi_araddr}),
        .\FSM_sequential_gen_read.r_state_reg[0] (\FSM_sequential_gen_read.r_state_reg[0] ),
        .Q(Q),
        .aclk(aclk),
        .\aresetn_d_reg[1] (\aresetn_d_reg[1]_0 ),
        .err_arready(err_arready),
        .err_rvalid(err_rvalid),
        .\gen_axilite.gen_read.s_axi_arready_i_reg (\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .\gen_axilite.gen_read.s_axi_rvalid_i_reg (\gen_axilite.gen_read.s_axi_rvalid_i_reg ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35]_0 ),
        .m_valid_i_reg_inv_0(\aresetn_d_reg[1] ),
        .r_state(r_state),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(s_axi_arvalid_0),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(s_axi_rready_0),
        .s_ready_i_reg_0(\aw.aw_pipe_n_1 ),
        .s_ready_i_reg_1(\aw.aw_pipe_n_0 ));
  design_1_s00_mmu_0_axi_register_slice_v2_1_28_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .E(E),
        .\FSM_onehot_gen_write.w_state_reg[1] (\FSM_onehot_gen_write.w_state_reg[1] ),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aw.aw_pipe_n_0 ),
        .\aresetn_d_reg[1]_0 (\aw.aw_pipe_n_1 ),
        .\aresetn_d_reg[1]_1 (\aresetn_d_reg[1] ),
        .err_bvalid(err_bvalid),
        .err_wready(err_wready),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.w_cnt_reg[2] (\gen_write.w_cnt_reg[2] ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_awvalid_1(m_axi_awvalid_1),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[32]_0 (\m_payload_i_reg[32] ),
        .\m_payload_i_reg[32]_1 (\m_payload_i_reg[32]_0 ),
        .\m_payload_i_reg[35]_0 (\m_payload_i_reg[35] ),
        .\m_payload_i_reg[35]_1 (\m_payload_i_reg[35]_1 ),
        .m_valid_i_reg_inv_0(m_valid_i_reg_inv),
        .\s_axi_awaddr[28] (\s_axi_awaddr[28] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awready_0(s_axi_awready_0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid),
        .w_mask(w_mask));
endmodule

module design_1_s00_mmu_0_axi_register_slice_v2_1_28_axic_register_slice
   (\gen_axilite.gen_read.s_axi_rvalid_i_reg ,
    \FSM_sequential_gen_read.r_state_reg[0] ,
    \aresetn_d_reg[1] ,
    m_axi_arvalid,
    s_axi_arvalid_0,
    \gen_read.ar_cnt_reg[5] ,
    s_axi_arready,
    s_axi_rready_0,
    \m_payload_i_reg[35]_0 ,
    m_valid_i_reg_inv_0,
    aclk,
    err_rvalid,
    s_axi_rready,
    r_state,
    s_ready_i_reg_0,
    err_arready,
    \gen_axilite.gen_read.s_axi_arready_i_reg ,
    m_axi_arready,
    s_axi_arvalid,
    Q,
    D,
    m_axi_rvalid,
    s_ready_i_reg_1);
  output \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  output \FSM_sequential_gen_read.r_state_reg[0] ;
  output \aresetn_d_reg[1] ;
  output m_axi_arvalid;
  output [0:0]s_axi_arvalid_0;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output s_axi_arready;
  output s_axi_rready_0;
  output [34:0]\m_payload_i_reg[35]_0 ;
  input m_valid_i_reg_inv_0;
  input aclk;
  input err_rvalid;
  input s_axi_rready;
  input [1:0]r_state;
  input s_ready_i_reg_0;
  input err_arready;
  input \gen_axilite.gen_read.s_axi_arready_i_reg ;
  input m_axi_arready;
  input s_axi_arvalid;
  input [5:0]Q;
  input [34:0]D;
  input m_axi_rvalid;
  input s_ready_i_reg_1;

  wire [34:0]D;
  wire \FSM_sequential_gen_read.r_state[1]_i_2_n_0 ;
  wire \FSM_sequential_gen_read.r_state[1]_i_3_n_0 ;
  wire \FSM_sequential_gen_read.r_state_reg[0] ;
  wire [5:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1] ;
  wire err_arready;
  wire err_rvalid;
  wire \gen_axilite.gen_read.s_axi_arready_i_reg ;
  wire \gen_axilite.gen_read.s_axi_rvalid_i_reg ;
  wire \gen_read.ar_cnt[4]_i_2_n_0 ;
  wire \gen_read.ar_cnt[5]_i_3_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_5_n_0 ;
  wire \gen_read.ar_cnt[5]_i_6_n_0 ;
  wire \gen_read.ar_cnt[5]_i_7_n_0 ;
  wire \gen_read.ar_cnt[5]_i_8_n_0 ;
  wire \gen_read.ar_cnt[5]_i_9_n_0 ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire m_axi_rvalid;
  wire \m_payload_i[32]_i_10_n_0 ;
  wire \m_payload_i[32]_i_2__0_n_0 ;
  wire \m_payload_i[32]_i_3__0_n_0 ;
  wire \m_payload_i[32]_i_4__0_n_0 ;
  wire \m_payload_i[32]_i_5__0_n_0 ;
  wire \m_payload_i[32]_i_6__0_n_0 ;
  wire \m_payload_i[32]_i_7__0_n_0 ;
  wire \m_payload_i[32]_i_8__0_n_0 ;
  wire \m_payload_i[32]_i_9_n_0 ;
  wire [34:0]\m_payload_i_reg[35]_0 ;
  wire m_valid_i_inv_i_1_n_0;
  wire m_valid_i_inv_i_2_n_0;
  wire m_valid_i_reg_inv_0;
  wire [32:32]mr_axi_araddr;
  wire mr_axi_arvalid;
  wire r_match;
  wire [1:0]r_state;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [0:0]s_axi_arvalid_0;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_i_2_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire sr_axi_arready;

  LUT4 #(
    .INIT(16'hF0CA)) 
    \FSM_sequential_gen_read.r_state[0]_i_1 
       (.I0(\FSM_sequential_gen_read.r_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_gen_read.r_state[1]_i_3_n_0 ),
        .I2(r_state[0]),
        .I3(r_state[1]),
        .O(\FSM_sequential_gen_read.r_state_reg[0] ));
  LUT6 #(
    .INIT(64'h5555BFBF00FF0000)) 
    \FSM_sequential_gen_read.r_state[1]_i_1 
       (.I0(\FSM_sequential_gen_read.r_state[1]_i_2_n_0 ),
        .I1(err_rvalid),
        .I2(s_axi_rready),
        .I3(\FSM_sequential_gen_read.r_state[1]_i_3_n_0 ),
        .I4(r_state[0]),
        .I5(r_state[1]),
        .O(\gen_axilite.gen_read.s_axi_rvalid_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_gen_read.r_state[1]_i_2 
       (.I0(mr_axi_arvalid),
        .I1(mr_axi_araddr),
        .O(\FSM_sequential_gen_read.r_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_gen_read.r_state[1]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[5]),
        .O(\FSM_sequential_gen_read.r_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800AAAAAA00AA)) 
    \gen_axilite.gen_read.s_axi_arready_i_i_1 
       (.I0(s_ready_i_reg_0),
        .I1(mr_axi_arvalid),
        .I2(mr_axi_araddr),
        .I3(err_rvalid),
        .I4(err_arready),
        .I5(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .O(\aresetn_d_reg[1] ));
  LUT6 #(
    .INIT(64'h5503550055005500)) 
    \gen_axilite.gen_read.s_axi_rvalid_i_i_1 
       (.I0(s_axi_rready),
        .I1(mr_axi_arvalid),
        .I2(mr_axi_araddr),
        .I3(err_rvalid),
        .I4(err_arready),
        .I5(\gen_axilite.gen_read.s_axi_arready_i_reg ),
        .O(s_axi_rready_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\gen_read.ar_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5] [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(\gen_read.ar_cnt_reg[5] [2]));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\gen_read.ar_cnt[4]_i_2_n_0 ),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gen_read.ar_cnt_reg[5] [3]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_read.ar_cnt[4]_i_2 
       (.I0(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .I1(\m_payload_i[32]_i_3__0_n_0 ),
        .I2(\gen_read.ar_cnt[5]_i_8_n_0 ),
        .I3(\m_payload_i[32]_i_5__0_n_0 ),
        .I4(\gen_read.ar_cnt[5]_i_7_n_0 ),
        .O(\gen_read.ar_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF70008)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(s_axi_arvalid),
        .I1(sr_axi_arready),
        .I2(Q[5]),
        .I3(\m_payload_i[32]_i_2__0_n_0 ),
        .I4(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .O(s_axi_arvalid_0));
  LUT6 #(
    .INIT(64'h5AAAAAAAAAAAAAA6)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(Q[5]),
        .I1(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I2(Q[2]),
        .I3(\gen_read.ar_cnt[5]_i_5_n_0 ),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\gen_read.ar_cnt_reg[5] [4]));
  LUT3 #(
    .INIT(8'h80)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(s_axi_rready),
        .I1(m_axi_rvalid),
        .I2(\FSM_sequential_gen_read.r_state[1]_i_3_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(\gen_read.ar_cnt[5]_i_6_n_0 ),
        .I1(\gen_read.ar_cnt[5]_i_7_n_0 ),
        .I2(\m_payload_i[32]_i_5__0_n_0 ),
        .I3(\gen_read.ar_cnt[5]_i_8_n_0 ),
        .I4(\m_payload_i[32]_i_3__0_n_0 ),
        .I5(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \gen_read.ar_cnt[5]_i_5 
       (.I0(\gen_read.ar_cnt[5]_i_9_n_0 ),
        .I1(\gen_read.ar_cnt[5]_i_7_n_0 ),
        .I2(\m_payload_i[32]_i_5__0_n_0 ),
        .I3(\gen_read.ar_cnt[5]_i_8_n_0 ),
        .I4(\m_payload_i[32]_i_3__0_n_0 ),
        .I5(\gen_read.ar_cnt[5]_i_3_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_read.ar_cnt[5]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\gen_read.ar_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \gen_read.ar_cnt[5]_i_7 
       (.I0(Q[5]),
        .I1(sr_axi_arready),
        .I2(s_axi_arvalid),
        .O(\gen_read.ar_cnt[5]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \gen_read.ar_cnt[5]_i_8 
       (.I0(D[21]),
        .I1(D[23]),
        .I2(D[22]),
        .I3(\m_payload_i[32]_i_4__0_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_read.ar_cnt[5]_i_9 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\gen_read.ar_cnt[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2002)) 
    m_axi_arvalid_INST_0
       (.I0(mr_axi_araddr),
        .I1(mr_axi_arvalid),
        .I2(r_state[0]),
        .I3(r_state[1]),
        .O(m_axi_arvalid));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_10 
       (.I0(D[29]),
        .I1(D[18]),
        .I2(D[28]),
        .I3(D[20]),
        .O(\m_payload_i[32]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1__0 
       (.I0(\m_payload_i[32]_i_2__0_n_0 ),
        .O(r_match));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFBABABA)) 
    \m_payload_i[32]_i_2__0 
       (.I0(\m_payload_i[32]_i_3__0_n_0 ),
        .I1(D[21]),
        .I2(D[23]),
        .I3(D[22]),
        .I4(\m_payload_i[32]_i_4__0_n_0 ),
        .I5(\m_payload_i[32]_i_5__0_n_0 ),
        .O(\m_payload_i[32]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF6)) 
    \m_payload_i[32]_i_3__0 
       (.I0(\m_payload_i[32]_i_6__0_n_0 ),
        .I1(D[31]),
        .I2(\m_payload_i[32]_i_7__0_n_0 ),
        .I3(\m_payload_i[32]_i_8__0_n_0 ),
        .I4(\m_payload_i[32]_i_9_n_0 ),
        .I5(\m_payload_i[32]_i_10_n_0 ),
        .O(\m_payload_i[32]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_payload_i[32]_i_4__0 
       (.I0(D[21]),
        .I1(D[12]),
        .I2(D[13]),
        .I3(D[14]),
        .I4(D[15]),
        .O(\m_payload_i[32]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h0F44)) 
    \m_payload_i[32]_i_5__0 
       (.I0(D[24]),
        .I1(\m_payload_i[32]_i_4__0_n_0 ),
        .I2(D[26]),
        .I3(D[23]),
        .O(\m_payload_i[32]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[32]_i_6__0 
       (.I0(D[23]),
        .I1(D[24]),
        .O(\m_payload_i[32]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_7__0 
       (.I0(D[16]),
        .I1(D[17]),
        .I2(D[27]),
        .I3(D[19]),
        .O(\m_payload_i[32]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h444444F4)) 
    \m_payload_i[32]_i_8__0 
       (.I0(D[23]),
        .I1(D[26]),
        .I2(D[24]),
        .I3(D[22]),
        .I4(D[21]),
        .O(\m_payload_i[32]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFD8FF)) 
    \m_payload_i[32]_i_9 
       (.I0(D[24]),
        .I1(D[23]),
        .I2(D[22]),
        .I3(D[30]),
        .I4(D[25]),
        .O(\m_payload_i[32]_i_9_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[0]),
        .Q(\m_payload_i_reg[35]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[10]),
        .Q(\m_payload_i_reg[35]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[11]),
        .Q(\m_payload_i_reg[35]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[12]),
        .Q(\m_payload_i_reg[35]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[13]),
        .Q(\m_payload_i_reg[35]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[14]),
        .Q(\m_payload_i_reg[35]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[15]),
        .Q(\m_payload_i_reg[35]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[16]),
        .Q(\m_payload_i_reg[35]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[17]),
        .Q(\m_payload_i_reg[35]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[18]),
        .Q(\m_payload_i_reg[35]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[19]),
        .Q(\m_payload_i_reg[35]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[1]),
        .Q(\m_payload_i_reg[35]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[20]),
        .Q(\m_payload_i_reg[35]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[21]),
        .Q(\m_payload_i_reg[35]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[22]),
        .Q(\m_payload_i_reg[35]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[23]),
        .Q(\m_payload_i_reg[35]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[24]),
        .Q(\m_payload_i_reg[35]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[25]),
        .Q(\m_payload_i_reg[35]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[26]),
        .Q(\m_payload_i_reg[35]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[27]),
        .Q(\m_payload_i_reg[35]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[28]),
        .Q(\m_payload_i_reg[35]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[29]),
        .Q(\m_payload_i_reg[35]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[2]),
        .Q(\m_payload_i_reg[35]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[30]),
        .Q(\m_payload_i_reg[35]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[31]),
        .Q(\m_payload_i_reg[35]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(r_match),
        .Q(mr_axi_araddr),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[32]),
        .Q(\m_payload_i_reg[35]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[33]),
        .Q(\m_payload_i_reg[35]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[34]),
        .Q(\m_payload_i_reg[35]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[3]),
        .Q(\m_payload_i_reg[35]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[4]),
        .Q(\m_payload_i_reg[35]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[5]),
        .Q(\m_payload_i_reg[35]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[6]),
        .Q(\m_payload_i_reg[35]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[7]),
        .Q(\m_payload_i_reg[35]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[8]),
        .Q(\m_payload_i_reg[35]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(mr_axi_arvalid),
        .D(D[9]),
        .Q(\m_payload_i_reg[35]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5515)) 
    m_valid_i_inv_i_1
       (.I0(m_valid_i_inv_i_2_n_0),
        .I1(s_axi_arvalid),
        .I2(sr_axi_arready),
        .I3(Q[5]),
        .O(m_valid_i_inv_i_1_n_0));
  LUT6 #(
    .INIT(64'h0550555555155515)) 
    m_valid_i_inv_i_2
       (.I0(sr_axi_arready),
        .I1(err_arready),
        .I2(r_state[1]),
        .I3(r_state[0]),
        .I4(m_axi_arready),
        .I5(mr_axi_araddr),
        .O(m_valid_i_inv_i_2_n_0));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1_n_0),
        .Q(mr_axi_arvalid),
        .S(m_valid_i_reg_inv_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(sr_axi_arready),
        .I1(Q[5]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hDD5DDDDD00000000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(s_ready_i_i_2_n_0),
        .I2(s_axi_arvalid),
        .I3(Q[5]),
        .I4(mr_axi_arvalid),
        .I5(s_ready_i_reg_1),
        .O(s_ready_i_i_1_n_0));
  LUT6 #(
    .INIT(64'hFAAFAAAAAAEAAAEA)) 
    s_ready_i_i_2
       (.I0(mr_axi_arvalid),
        .I1(err_arready),
        .I2(r_state[1]),
        .I3(r_state[0]),
        .I4(m_axi_arready),
        .I5(mr_axi_araddr),
        .O(s_ready_i_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(sr_axi_arready),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_28_axic_register_slice" *) 
module design_1_s00_mmu_0_axi_register_slice_v2_1_28_axic_register_slice_0
   (\aresetn_d_reg[0]_0 ,
    \aresetn_d_reg[1]_0 ,
    \aresetn_d_reg[1]_1 ,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    m_valid_i_reg_inv_0,
    \m_payload_i_reg[32]_0 ,
    m_axi_awvalid,
    \gen_write.w_cnt_reg[2] ,
    \gen_write.w_mask_reg ,
    \gen_write.aw_cnt_reg[5] ,
    \s_axi_awaddr[28] ,
    s_axi_awready,
    E,
    D,
    \m_payload_i_reg[32]_1 ,
    \m_payload_i_reg[35]_0 ,
    aresetn,
    aclk,
    m_axi_awvalid_0,
    m_axi_awvalid_1,
    s_axi_awvalid,
    s_axi_awready_0,
    m_axi_awready,
    err_wready,
    s_axi_bready,
    err_bvalid,
    w_mask,
    m_axi_bvalid,
    \m_payload_i_reg[35]_1 ,
    s_axi_wready,
    s_axi_wvalid);
  output \aresetn_d_reg[0]_0 ;
  output \aresetn_d_reg[1]_0 ;
  output \aresetn_d_reg[1]_1 ;
  output \FSM_onehot_gen_write.w_state_reg[1] ;
  output m_valid_i_reg_inv_0;
  output \m_payload_i_reg[32]_0 ;
  output m_axi_awvalid;
  output \gen_write.w_cnt_reg[2] ;
  output \gen_write.w_mask_reg ;
  output \gen_write.aw_cnt_reg[5] ;
  output \s_axi_awaddr[28] ;
  output s_axi_awready;
  output [0:0]E;
  output [4:0]D;
  output \m_payload_i_reg[32]_1 ;
  output [34:0]\m_payload_i_reg[35]_0 ;
  input aresetn;
  input aclk;
  input m_axi_awvalid_0;
  input m_axi_awvalid_1;
  input s_axi_awvalid;
  input [5:0]s_axi_awready_0;
  input m_axi_awready;
  input err_wready;
  input s_axi_bready;
  input err_bvalid;
  input w_mask;
  input m_axi_bvalid;
  input [34:0]\m_payload_i_reg[35]_1 ;
  input [5:0]s_axi_wready;
  input s_axi_wvalid;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_gen_write.w_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_write.w_state[2]_i_4_n_0 ;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire aclk;
  wire aresetn;
  wire \aresetn_d[1]_i_1_n_0 ;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg[1]_0 ;
  wire \aresetn_d_reg[1]_1 ;
  wire err_bvalid;
  wire err_wready;
  wire \gen_write.aw_cnt[4]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
  wire \gen_write.aw_cnt[5]_i_4_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt[5]_i_6_n_0 ;
  wire \gen_write.aw_cnt[5]_i_7_n_0 ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.w_cnt_reg[2] ;
  wire \gen_write.w_mask_i_2_n_0 ;
  wire \gen_write.w_mask_reg ;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_awvalid_1;
  wire m_axi_bvalid;
  wire \m_payload_i[32]_i_3_n_0 ;
  wire \m_payload_i[32]_i_4_n_0 ;
  wire \m_payload_i[32]_i_5_n_0 ;
  wire \m_payload_i[32]_i_6_n_0 ;
  wire \m_payload_i[32]_i_7_n_0 ;
  wire \m_payload_i[32]_i_8_n_0 ;
  wire \m_payload_i_reg[32]_0 ;
  wire \m_payload_i_reg[32]_1 ;
  wire [34:0]\m_payload_i_reg[35]_0 ;
  wire [34:0]\m_payload_i_reg[35]_1 ;
  wire m_valid_i_inv_i_1__0_n_0;
  wire m_valid_i_reg_inv_0;
  wire [32:32]mr_axi_awaddr;
  wire mr_axi_awvalid;
  wire \s_axi_awaddr[28] ;
  wire s_axi_awready;
  wire [5:0]s_axi_awready_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [5:0]s_axi_wready;
  wire s_axi_wvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_i_2__0_n_0;
  wire sr_axi_awready;
  wire w_mask;
  wire w_match;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h10FF1F00)) 
    \FSM_onehot_gen_write.w_state[1]_i_1 
       (.I0(mr_axi_awvalid),
        .I1(mr_axi_awaddr),
        .I2(m_axi_awvalid_1),
        .I3(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ),
        .I4(m_axi_awvalid_0),
        .O(m_valid_i_reg_inv_0));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_write.w_state[2]_i_1 
       (.I0(\aresetn_d_reg[1]_0 ),
        .O(\aresetn_d_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_gen_write.w_state[2]_i_2 
       (.I0(m_axi_awvalid_0),
        .I1(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ),
        .I2(m_axi_awvalid_1),
        .O(\FSM_onehot_gen_write.w_state_reg[1] ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_onehot_gen_write.w_state[2]_i_3 
       (.I0(\FSM_onehot_gen_write.w_state[2]_i_4_n_0 ),
        .I1(s_axi_bready),
        .I2(m_axi_awvalid_1),
        .I3(err_bvalid),
        .O(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000101FF000101)) 
    \FSM_onehot_gen_write.w_state[2]_i_4 
       (.I0(m_axi_awvalid_1),
        .I1(mr_axi_awvalid),
        .I2(mr_axi_awaddr),
        .I3(\gen_write.w_cnt_reg[2] ),
        .I4(m_axi_awvalid_0),
        .I5(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .O(\FSM_onehot_gen_write.w_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg[0]_0 ),
        .I1(aresetn),
        .O(\aresetn_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d[1]_i_1_n_0 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000400)) 
    \gen_axilite.gen_write.s_axi_awready_i_i_1 
       (.I0(mr_axi_awaddr),
        .I1(m_axi_awvalid_1),
        .I2(mr_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(err_bvalid),
        .I5(err_wready),
        .O(\m_payload_i_reg[32]_1 ));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_axilite.gen_write.s_axi_bvalid_i_i_2 
       (.I0(mr_axi_awaddr),
        .I1(m_axi_awvalid_1),
        .I2(mr_axi_awvalid),
        .O(\m_payload_i_reg[32]_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I1(s_axi_awready_0[1]),
        .I2(s_axi_awready_0[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(s_axi_awready_0[2]),
        .I1(s_axi_awready_0[1]),
        .I2(s_axi_awready_0[0]),
        .I3(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(s_axi_awready_0[1]),
        .I1(s_axi_awready_0[0]),
        .I2(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I3(s_axi_awready_0[2]),
        .I4(s_axi_awready_0[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(s_axi_awready_0[3]),
        .I1(s_axi_awready_0[1]),
        .I2(s_axi_awready_0[0]),
        .I3(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I4(s_axi_awready_0[2]),
        .I5(s_axi_awready_0[4]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0000007F00000000)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .I1(m_axi_bvalid),
        .I2(s_axi_bready),
        .I3(\s_axi_awaddr[28] ),
        .I4(\gen_write.aw_cnt_reg[5] ),
        .I5(sr_axi_awready),
        .O(\gen_write.aw_cnt[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9555)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .I1(s_axi_bready),
        .I2(m_axi_bvalid),
        .I3(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(s_axi_awready_0[5]),
        .I1(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .I2(s_axi_awready_0[2]),
        .I3(s_axi_awready_0[3]),
        .I4(s_axi_awready_0[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(sr_axi_awready),
        .I1(s_axi_awready_0[5]),
        .I2(s_axi_awvalid),
        .I3(\s_axi_awaddr[28] ),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(s_axi_awready_0[2]),
        .I1(s_axi_awready_0[3]),
        .I2(s_axi_awready_0[1]),
        .I3(s_axi_awready_0[0]),
        .I4(s_axi_awready_0[5]),
        .I5(s_axi_awready_0[4]),
        .O(\gen_write.aw_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5557555555550001)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(s_axi_awready_0[2]),
        .I1(\gen_write.aw_cnt[5]_i_6_n_0 ),
        .I2(\s_axi_awaddr[28] ),
        .I3(\gen_write.aw_cnt[5]_i_7_n_0 ),
        .I4(s_axi_awready_0[0]),
        .I5(s_axi_awready_0[1]),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write.aw_cnt[5]_i_6 
       (.I0(s_axi_bready),
        .I1(m_axi_bvalid),
        .I2(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .O(\gen_write.aw_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \gen_write.aw_cnt[5]_i_7 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready_0[5]),
        .I2(sr_axi_awready),
        .O(\gen_write.aw_cnt[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5100000051005100)) 
    \gen_write.w_mask_i_1 
       (.I0(\gen_write.w_mask_i_2_n_0 ),
        .I1(\gen_write.aw_cnt_reg[5] ),
        .I2(w_mask),
        .I3(\aresetn_d_reg[1]_0 ),
        .I4(\s_axi_awaddr[28] ),
        .I5(s_axi_awready),
        .O(\gen_write.w_mask_reg ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_write.w_mask_i_2 
       (.I0(\gen_write.aw_cnt[5]_i_4_n_0 ),
        .I1(m_axi_awvalid_0),
        .I2(\gen_write.w_cnt_reg[2] ),
        .O(\gen_write.w_mask_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \gen_write.w_mask_i_3 
       (.I0(s_axi_awready_0[5]),
        .I1(s_axi_awvalid),
        .O(\gen_write.aw_cnt_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    m_axi_awvalid_INST_0
       (.I0(mr_axi_awaddr),
        .I1(mr_axi_awvalid),
        .I2(m_axi_awvalid_1),
        .I3(m_axi_awvalid_0),
        .O(m_axi_awvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[32]_i_1 
       (.I0(\s_axi_awaddr[28] ),
        .O(w_match));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEE)) 
    \m_payload_i[32]_i_2 
       (.I0(\m_payload_i[32]_i_3_n_0 ),
        .I1(\m_payload_i[32]_i_4_n_0 ),
        .I2(\m_payload_i[32]_i_5_n_0 ),
        .I3(\m_payload_i[32]_i_6_n_0 ),
        .I4(\m_payload_i[32]_i_7_n_0 ),
        .I5(\m_payload_i[32]_i_8_n_0 ),
        .O(\s_axi_awaddr[28] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[32]_i_3 
       (.I0(\m_payload_i_reg[35]_1 [28]),
        .I1(\m_payload_i_reg[35]_1 [16]),
        .I2(\m_payload_i_reg[35]_1 [29]),
        .I3(\m_payload_i_reg[35]_1 [25]),
        .O(\m_payload_i[32]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF2FFFF)) 
    \m_payload_i[32]_i_4 
       (.I0(\m_payload_i_reg[35]_1 [26]),
        .I1(\m_payload_i_reg[35]_1 [23]),
        .I2(\m_payload_i_reg[35]_1 [18]),
        .I3(\m_payload_i_reg[35]_1 [27]),
        .I4(\m_payload_i_reg[35]_1 [30]),
        .I5(\m_payload_i_reg[35]_1 [19]),
        .O(\m_payload_i[32]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_payload_i[32]_i_5 
       (.I0(\m_payload_i_reg[35]_1 [12]),
        .I1(\m_payload_i_reg[35]_1 [13]),
        .I2(\m_payload_i_reg[35]_1 [14]),
        .I3(\m_payload_i_reg[35]_1 [21]),
        .I4(\m_payload_i_reg[35]_1 [15]),
        .O(\m_payload_i[32]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[32]_i_6 
       (.I0(\m_payload_i_reg[35]_1 [22]),
        .I1(\m_payload_i_reg[35]_1 [31]),
        .O(\m_payload_i[32]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFF5F705)) 
    \m_payload_i[32]_i_7 
       (.I0(\m_payload_i_reg[35]_1 [21]),
        .I1(\m_payload_i_reg[35]_1 [26]),
        .I2(\m_payload_i_reg[35]_1 [31]),
        .I3(\m_payload_i_reg[35]_1 [23]),
        .I4(\m_payload_i_reg[35]_1 [24]),
        .I5(\m_payload_i_reg[35]_1 [22]),
        .O(\m_payload_i[32]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \m_payload_i[32]_i_8 
       (.I0(\m_payload_i_reg[35]_1 [20]),
        .I1(\m_payload_i_reg[35]_1 [17]),
        .I2(\m_payload_i_reg[35]_1 [23]),
        .I3(\m_payload_i_reg[35]_1 [31]),
        .I4(\m_payload_i_reg[35]_1 [24]),
        .O(\m_payload_i[32]_i_8_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [0]),
        .Q(\m_payload_i_reg[35]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [10]),
        .Q(\m_payload_i_reg[35]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [11]),
        .Q(\m_payload_i_reg[35]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [12]),
        .Q(\m_payload_i_reg[35]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [13]),
        .Q(\m_payload_i_reg[35]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [14]),
        .Q(\m_payload_i_reg[35]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [15]),
        .Q(\m_payload_i_reg[35]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [16]),
        .Q(\m_payload_i_reg[35]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [17]),
        .Q(\m_payload_i_reg[35]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [18]),
        .Q(\m_payload_i_reg[35]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [19]),
        .Q(\m_payload_i_reg[35]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [1]),
        .Q(\m_payload_i_reg[35]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [20]),
        .Q(\m_payload_i_reg[35]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [21]),
        .Q(\m_payload_i_reg[35]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [22]),
        .Q(\m_payload_i_reg[35]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [23]),
        .Q(\m_payload_i_reg[35]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [24]),
        .Q(\m_payload_i_reg[35]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [25]),
        .Q(\m_payload_i_reg[35]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [26]),
        .Q(\m_payload_i_reg[35]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [27]),
        .Q(\m_payload_i_reg[35]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [28]),
        .Q(\m_payload_i_reg[35]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [29]),
        .Q(\m_payload_i_reg[35]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [2]),
        .Q(\m_payload_i_reg[35]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [30]),
        .Q(\m_payload_i_reg[35]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [31]),
        .Q(\m_payload_i_reg[35]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(w_match),
        .Q(mr_axi_awaddr),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [32]),
        .Q(\m_payload_i_reg[35]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [33]),
        .Q(\m_payload_i_reg[35]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [34]),
        .Q(\m_payload_i_reg[35]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [3]),
        .Q(\m_payload_i_reg[35]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [4]),
        .Q(\m_payload_i_reg[35]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [5]),
        .Q(\m_payload_i_reg[35]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [6]),
        .Q(\m_payload_i_reg[35]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [7]),
        .Q(\m_payload_i_reg[35]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [8]),
        .Q(\m_payload_i_reg[35]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(mr_axi_awvalid),
        .D(\m_payload_i_reg[35]_1 [9]),
        .Q(\m_payload_i_reg[35]_0 [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hDFD0)) 
    m_valid_i_inv_i_1__0
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready_0[5]),
        .I2(sr_axi_awready),
        .I3(s_ready_i_i_2__0_n_0),
        .O(m_valid_i_inv_i_1__0_n_0));
  (* inverted = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    m_valid_i_reg_inv
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_inv_i_1__0_n_0),
        .Q(mr_axi_awvalid),
        .S(\aresetn_d_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(s_axi_awready_0[5]),
        .O(s_axi_awready));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_wready_INST_0_i_1
       (.I0(s_axi_wready[2]),
        .I1(s_axi_wready[3]),
        .I2(s_axi_wready[0]),
        .I3(s_axi_wready[1]),
        .I4(s_axi_wready[5]),
        .I5(s_axi_wready[4]),
        .O(\gen_write.w_cnt_reg[2] ));
  LUT6 #(
    .INIT(64'hFD5DFDFD00000000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(s_ready_i_i_2__0_n_0),
        .I2(mr_axi_awvalid),
        .I3(s_axi_awready_0[5]),
        .I4(s_axi_awvalid),
        .I5(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1_n_0));
  LUT5 #(
    .INIT(32'h0F400040)) 
    s_ready_i_i_2__0
       (.I0(m_axi_awvalid_0),
        .I1(m_axi_awready),
        .I2(mr_axi_awaddr),
        .I3(m_axi_awvalid_1),
        .I4(err_wready),
        .O(s_ready_i_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(sr_axi_awready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_s00_mmu_0,axi_mmu_v2_1_26_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_26_top,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_s00_mmu_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]s_axi_araddr;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BASE_ADDR = "256'b0000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000100010010100000000000000000000000000000000000000000000000000000010000010100000000000000000000000000000000000000000000000000000001000001001000000000000000000000" *) 
  (* C_DEST = "4'b0000" *) 
  (* C_DEST_WIDTH = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_M_AXI_ADDR_WIDTH = "32" *) 
  (* C_M_AXI_SUPPORTS_READ = "4'b1111" *) 
  (* C_M_AXI_SUPPORTS_WRITE = "4'b1111" *) 
  (* C_NUM_RANGES = "4" *) 
  (* C_PREFIX = "4'b0000" *) 
  (* C_PREFIX_WIDTH = "1" *) 
  (* C_RANGE_SIZE = "128'b00000000000000000000000000001100000000000000000000000000000100000000000000000000000000000000110000000000000000000000000000010000" *) 
  (* C_S_AXI_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_SUPPORTS_READ = "1" *) 
  (* C_S_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_USES_DEST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_NUM_RANGES_LOG = "2" *) 
  (* R_DECERR = "2'b11" *) 
  (* R_IDLE = "2'b00" *) 
  (* R_PENDING = "2'b01" *) 
  (* W_DECERR = "2'b11" *) 
  (* W_IDLE = "2'b00" *) 
  (* W_PENDING = "2'b01" *) 
  design_1_s00_mmu_0_axi_mmu_v2_1_26_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst({1'b0,1'b1}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst({1'b0,1'b1}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b1),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
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
