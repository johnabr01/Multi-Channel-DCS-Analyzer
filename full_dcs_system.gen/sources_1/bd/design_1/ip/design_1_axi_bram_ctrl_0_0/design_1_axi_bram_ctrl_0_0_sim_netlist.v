// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Feb 23 06:10:16 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_bram_ctrl_0_0 -prefix
//               design_1_axi_bram_ctrl_0_0_ design_1_axi_bram_ctrl_0_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_BRAM_ADDR_WIDTH = "10" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "artix7" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "1024" *) (* C_RD_CMD_OPTIMIZATION = "1" *) 
(* C_READ_LATENCY = "1" *) (* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "12" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_axi_bram_ctrl_0_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
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
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [11:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [11:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [11:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [11:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [11:2]\^bram_addr_a ;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[11:2] = \^bram_addr_a [11:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rdata[31:0] = bram_rddata_a;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_bram_ctrl_0_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.S_AXI_ARREADY(s_axi_arready),
        .S_AXI_RVALID(s_axi_rvalid),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .bram_addr_a(\^bram_addr_a ),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[11:2]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(bram_rst_a),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[11:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_axi_bram_ctrl_0_0_axi_bram_ctrl_top
   (S_AXI_RVALID,
    S_AXI_ARREADY,
    s_axi_aresetn_0,
    s_axi_awready,
    axi_bvalid_int_reg,
    bram_wrdata_a,
    bram_en_a,
    s_axi_rlast,
    bram_addr_a,
    bram_we_a,
    s_axi_wready,
    s_axi_aresetn,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awvalid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_arburst,
    s_axi_awlen,
    s_axi_awburst);
  output S_AXI_RVALID;
  output S_AXI_ARREADY;
  output s_axi_aresetn_0;
  output s_axi_awready;
  output axi_bvalid_int_reg;
  output [31:0]bram_wrdata_a;
  output bram_en_a;
  output s_axi_rlast;
  output [9:0]bram_addr_a;
  output [3:0]bram_we_a;
  output s_axi_wready;
  input s_axi_aresetn;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input [9:0]s_axi_araddr;
  input s_axi_awvalid;
  input s_axi_wlast;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_arlen;
  input [9:0]s_axi_awaddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;

  wire S_AXI_ARREADY;
  wire S_AXI_RVALID;
  wire axi_bvalid_int_reg;
  wire [9:0]bram_addr_a;
  wire bram_en_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire [9:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  design_1_axi_bram_ctrl_0_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.SR(s_axi_aresetn_0),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [11:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [11:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [11:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;

  wire \<const0> ;
  wire [11:2]\^bram_addr_a ;
  wire bram_clk_a;
  wire bram_en_a;
  wire [31:0]bram_rddata_a;
  wire bram_rst_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [1:0]NLW_U0_bram_addr_a_UNCONNECTED;
  wire [11:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [3:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [31:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign bram_addr_a[11:2] = \^bram_addr_a [11:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BRAM_ADDR_WIDTH = "10" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "1024" *) 
  (* C_RD_CMD_OPTIMIZATION = "1" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "12" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "1" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  design_1_axi_bram_ctrl_0_0_axi_bram_ctrl U0
       (.bram_addr_a({\^bram_addr_a ,NLW_U0_bram_addr_a_UNCONNECTED[1:0]}),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[11:0]),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(bram_en_a),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(bram_we_a),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[3:0]),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[31:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[11:2],1'b0,1'b0}),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[11:2],1'b0,1'b0}),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,s_axi_awlen[3:0]}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_axi_bram_ctrl_0_0_full_axi
   (S_AXI_RVALID,
    S_AXI_ARREADY,
    SR,
    s_axi_awready,
    axi_bvalid_int_reg,
    bram_wrdata_a,
    bram_en_a,
    s_axi_rlast,
    bram_addr_a,
    bram_we_a,
    s_axi_wready,
    s_axi_aresetn,
    s_axi_aclk,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_araddr,
    s_axi_awvalid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_arburst,
    s_axi_awlen,
    s_axi_awburst);
  output S_AXI_RVALID;
  output S_AXI_ARREADY;
  output [0:0]SR;
  output s_axi_awready;
  output axi_bvalid_int_reg;
  output [31:0]bram_wrdata_a;
  output bram_en_a;
  output s_axi_rlast;
  output [9:0]bram_addr_a;
  output [3:0]bram_we_a;
  output s_axi_wready;
  input s_axi_aresetn;
  input s_axi_aclk;
  input s_axi_wvalid;
  input s_axi_rready;
  input s_axi_arvalid;
  input [9:0]s_axi_araddr;
  input s_axi_awvalid;
  input s_axi_wlast;
  input s_axi_bready;
  input [3:0]s_axi_wstrb;
  input [31:0]s_axi_wdata;
  input [7:0]s_axi_arlen;
  input [9:0]s_axi_awaddr;
  input [1:0]s_axi_arburst;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ;
  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire BRAM_En_A_i;
  wire [3:0]BRAM_WE_A_i;
  wire \GEN_ARB.I_SNG_PORT_n_10 ;
  wire \GEN_ARB.I_SNG_PORT_n_11 ;
  wire \GEN_ARB.I_SNG_PORT_n_12 ;
  wire \GEN_ARB.I_SNG_PORT_n_13 ;
  wire \GEN_ARB.I_SNG_PORT_n_14 ;
  wire \GEN_ARB.I_SNG_PORT_n_15 ;
  wire \GEN_ARB.I_SNG_PORT_n_16 ;
  wire \GEN_ARB.I_SNG_PORT_n_17 ;
  wire \GEN_ARB.I_SNG_PORT_n_18 ;
  wire \GEN_ARB.I_SNG_PORT_n_19 ;
  wire \GEN_ARB.I_SNG_PORT_n_20 ;
  wire \GEN_ARB.I_SNG_PORT_n_21 ;
  wire \GEN_ARB.I_SNG_PORT_n_22 ;
  wire \GEN_ARB.I_SNG_PORT_n_23 ;
  wire \GEN_ARB.I_SNG_PORT_n_26 ;
  wire \GEN_ARB.I_SNG_PORT_n_28 ;
  wire \GEN_ARB.I_SNG_PORT_n_29 ;
  wire \GEN_ARB.I_SNG_PORT_n_36 ;
  wire \GEN_ARB.I_SNG_PORT_n_37 ;
  wire \GEN_ARB.I_SNG_PORT_n_4 ;
  wire \GEN_ARB.I_SNG_PORT_n_5 ;
  wire \GEN_ARB.I_SNG_PORT_n_6 ;
  wire \GEN_ARB.I_SNG_PORT_n_8 ;
  wire \GEN_ARB.I_SNG_PORT_n_9 ;
  wire [2:0]\GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg ;
  wire I_RD_CHNL_n_10;
  wire I_RD_CHNL_n_11;
  wire I_RD_CHNL_n_21;
  wire I_RD_CHNL_n_22;
  wire I_RD_CHNL_n_23;
  wire I_RD_CHNL_n_24;
  wire I_RD_CHNL_n_25;
  wire I_RD_CHNL_n_26;
  wire I_RD_CHNL_n_28;
  wire I_RD_CHNL_n_29;
  wire I_RD_CHNL_n_3;
  wire I_RD_CHNL_n_31;
  wire I_RD_CHNL_n_4;
  wire I_RD_CHNL_n_41;
  wire I_RD_CHNL_n_42;
  wire I_RD_CHNL_n_5;
  wire I_RD_CHNL_n_6;
  wire I_RD_CHNL_n_7;
  wire I_RD_CHNL_n_8;
  wire I_RD_CHNL_n_9;
  wire I_WR_CHNL_n_37;
  wire I_WR_CHNL_n_38;
  wire I_WR_CHNL_n_39;
  wire I_WR_CHNL_n_40;
  wire I_WR_CHNL_n_41;
  wire I_WR_CHNL_n_42;
  wire I_WR_CHNL_n_43;
  wire I_WR_CHNL_n_44;
  wire I_WR_CHNL_n_45;
  wire I_WR_CHNL_n_46;
  wire I_WR_CHNL_n_47;
  wire I_WR_CHNL_n_48;
  wire I_WR_CHNL_n_49;
  wire I_WR_CHNL_n_50;
  wire I_WR_CHNL_n_52;
  wire I_WR_CHNL_n_53;
  wire I_WR_CHNL_n_54;
  wire I_WR_CHNL_n_55;
  wire [0:0]SR;
  wire S_AXI_ARREADY;
  wire S_AXI_RVALID;
  wire [1:0]arb_sm_cs;
  wire aw_active_cmb;
  wire aw_active_d1;
  wire aw_active_re;
  wire axi_bvalid_int_reg;
  wire [9:0]bram_addr_a;
  wire bram_en_a;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire [9:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [11:6]save_init_bram_addr_ld;
  wire [11:6]save_init_bram_addr_ld_reg;
  wire wrap_addr_assign;

  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_9 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_10 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_9 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_17 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(I_RD_CHNL_n_23),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_16 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_15 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_14 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_13 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_12 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ),
        .R(I_WR_CHNL_n_38));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_ARB.I_SNG_PORT_n_6 ),
        .D(\GEN_ARB.I_SNG_PORT_n_11 ),
        .Q(\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ),
        .R(I_WR_CHNL_n_38));
  design_1_axi_bram_ctrl_0_0_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.\ADDR_SNG_PORT.bram_addr_int[5]_i_6 (I_WR_CHNL_n_37),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10] ({I_RD_CHNL_n_5,I_RD_CHNL_n_6,I_RD_CHNL_n_7,I_RD_CHNL_n_8,I_RD_CHNL_n_9,I_RD_CHNL_n_10}),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 (\ADDR_SNG_PORT.bram_addr_int[11]_i_9_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ({I_WR_CHNL_n_45,I_WR_CHNL_n_46,I_WR_CHNL_n_47,I_WR_CHNL_n_48,I_WR_CHNL_n_49}),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_2 (I_WR_CHNL_n_43),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (I_RD_CHNL_n_25),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (I_RD_CHNL_n_11),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (I_WR_CHNL_n_42),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 (I_RD_CHNL_n_41),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_1 (I_RD_CHNL_n_3),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (I_WR_CHNL_n_40),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 (I_WR_CHNL_n_39),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (I_RD_CHNL_n_24),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (I_RD_CHNL_n_22),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_1 (I_RD_CHNL_n_26),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_2 (I_WR_CHNL_n_41),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_3 (I_RD_CHNL_n_42),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_4 (I_RD_CHNL_n_21),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 (I_RD_CHNL_n_4),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[8] (\ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0 ),
        .AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .D({\GEN_ARB.I_SNG_PORT_n_9 ,\GEN_ARB.I_SNG_PORT_n_10 ,\GEN_ARB.I_SNG_PORT_n_11 ,\GEN_ARB.I_SNG_PORT_n_12 ,\GEN_ARB.I_SNG_PORT_n_13 ,\GEN_ARB.I_SNG_PORT_n_14 ,\GEN_ARB.I_SNG_PORT_n_15 ,\GEN_ARB.I_SNG_PORT_n_16 ,\GEN_ARB.I_SNG_PORT_n_17 }),
        .E(\GEN_ARB.I_SNG_PORT_n_6 ),
        .\FSM_sequential_arb_sm_cs_reg[0]_0 (I_RD_CHNL_n_28),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg (I_RD_CHNL_n_31),
        .Q({\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] }),
        .ar_active_reg_0(\GEN_ARB.I_SNG_PORT_n_5 ),
        .ar_active_reg_1(\GEN_ARB.I_SNG_PORT_n_18 ),
        .ar_active_reg_2(SR),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_cmb(aw_active_cmb),
        .aw_active_d1(aw_active_d1),
        .aw_active_re(aw_active_re),
        .aw_active_reg_0(\GEN_ARB.I_SNG_PORT_n_4 ),
        .axi_arready_int_reg_0(S_AXI_ARREADY),
        .axi_arready_int_reg_1(\GEN_ARB.I_SNG_PORT_n_36 ),
        .bram_addr_a(bram_addr_a[0]),
        .bram_we_a(bram_we_a),
        .\bram_we_a[3] (BRAM_WE_A_i),
        .last_arb_won_reg_0(I_RD_CHNL_n_29),
        .last_arb_won_reg_1(I_WR_CHNL_n_52),
        .last_arb_won_reg_2(I_WR_CHNL_n_50),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .\s_axi_araddr[11] (\GEN_ARB.I_SNG_PORT_n_22 ),
        .\s_axi_araddr[11]_0 (save_init_bram_addr_ld),
        .\s_axi_araddr[4]_0 (\GEN_ARB.I_SNG_PORT_n_23 ),
        .s_axi_araddr_2_sp_1(\GEN_ARB.I_SNG_PORT_n_37 ),
        .s_axi_araddr_3_sp_1(\GEN_ARB.I_SNG_PORT_n_19 ),
        .s_axi_araddr_4_sp_1(\GEN_ARB.I_SNG_PORT_n_20 ),
        .s_axi_araddr_5_sp_1(\GEN_ARB.I_SNG_PORT_n_21 ),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .\s_axi_arlen[1] ({\GEN_ARB.I_SNG_PORT_n_28 ,\GEN_ARB.I_SNG_PORT_n_29 }),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(\GEN_ARB.I_SNG_PORT_n_8 ),
        .s_axi_arvalid_1(\GEN_ARB.I_SNG_PORT_n_26 ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg_reg[11] (save_init_bram_addr_ld_reg),
        .wrap_addr_assign(wrap_addr_assign),
        .\wrap_burst_total_reg_reg[2] (\GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg ));
  design_1_axi_bram_ctrl_0_0_rd_chnl I_RD_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int[4]_i_2 (\GEN_ARB.I_SNG_PORT_n_26 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (I_WR_CHNL_n_43),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\GEN_ARB.I_SNG_PORT_n_22 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (I_WR_CHNL_n_44),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (\GEN_ARB.I_SNG_PORT_n_18 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 (\GEN_ARB.I_SNG_PORT_n_4 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_1 (\GEN_ARB.I_SNG_PORT_n_19 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_2 (I_WR_CHNL_n_54),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (I_WR_CHNL_n_55),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\GEN_ARB.I_SNG_PORT_n_20 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\GEN_ARB.I_SNG_PORT_n_21 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (I_WR_CHNL_n_53),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\GEN_ARB.I_SNG_PORT_n_5 ),
        .Arb2AR_Active(Arb2AR_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .D(I_RD_CHNL_n_23),
        .\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 (I_RD_CHNL_n_29),
        .\FSM_sequential_arb_sm_cs_reg[1] (I_RD_CHNL_n_28),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 (\GEN_ARB.I_SNG_PORT_n_8 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 (I_RD_CHNL_n_25),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 (I_RD_CHNL_n_11),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 (\GEN_ARB.I_SNG_PORT_n_37 ),
        .\GEN_RD_CMD_OPT.arsize_reg_reg[1]_0 (I_RD_CHNL_n_4),
        .\GEN_RD_CMD_OPT.arsize_reg_reg[1]_1 (I_RD_CHNL_n_42),
        .\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 (S_AXI_RVALID),
        .\GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 (I_RD_CHNL_n_3),
        .\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 (I_RD_CHNL_n_41),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 (\GEN_ARB.I_SNG_PORT_n_23 ),
        .Q({I_RD_CHNL_n_5,I_RD_CHNL_n_6,I_RD_CHNL_n_7,I_RD_CHNL_n_8,I_RD_CHNL_n_9,I_RD_CHNL_n_10}),
        .arb_sm_cs(arb_sm_cs),
        .bram_addr_a(bram_addr_a[9:1]),
        .\bram_addr_a[11] ({\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[11] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[10] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[9] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[8] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[7] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[6] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] }),
        .bram_en_a(bram_en_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlen_2_sp_1(I_RD_CHNL_n_31),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .\save_init_bram_addr_ld_reg_reg[11] (save_init_bram_addr_ld_reg),
        .\save_init_bram_addr_ld_reg_reg[11]_0 (save_init_bram_addr_ld),
        .\save_init_bram_addr_ld_reg_reg[3] (\GEN_ARB.I_SNG_PORT_n_36 ),
        .wrap_addr_assign(wrap_addr_assign),
        .\wrap_burst_total_reg[2] (I_RD_CHNL_n_24),
        .\wrap_burst_total_reg_reg[0] (I_RD_CHNL_n_22),
        .\wrap_burst_total_reg_reg[0]_0 (S_AXI_ARREADY),
        .\wrap_burst_total_reg_reg[2] (\GEN_RD_CMD_OPT.I_WRAP_BRST/wrap_burst_total_reg ),
        .\wrap_burst_total_reg_reg[2]_0 (I_RD_CHNL_n_21),
        .\wrap_burst_total_reg_reg[2]_1 (I_RD_CHNL_n_26),
        .\wrap_burst_total_reg_reg[2]_2 ({\GEN_ARB.I_SNG_PORT_n_28 ,\GEN_ARB.I_SNG_PORT_n_29 }));
  design_1_axi_bram_ctrl_0_0_wr_chnl I_WR_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int[11]_i_15 ({\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[5] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[4] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[3] ,\ADDR_SNG_PORT.bram_addr_int_reg_n_0_[2] }),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10] (\GEN_ARB.I_SNG_PORT_n_4 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (I_WR_CHNL_n_54),
        .AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .E(aw_active_re),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 (I_WR_CHNL_n_37),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 (I_WR_CHNL_n_39),
        .\FSM_sequential_arb_sm_cs_reg[0] (I_WR_CHNL_n_50),
        .\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 (BRAM_WE_A_i),
        .Q({I_WR_CHNL_n_44,I_WR_CHNL_n_45,I_WR_CHNL_n_46,I_WR_CHNL_n_47,I_WR_CHNL_n_48,I_WR_CHNL_n_49}),
        .SR(I_WR_CHNL_n_38),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_cmb(aw_active_cmb),
        .aw_active_d1(aw_active_d1),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[9:1]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(I_WR_CHNL_n_52),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(I_WR_CHNL_n_42),
        .\save_init_bram_addr_ld_reg[3] (SR),
        .\save_init_bram_addr_ld_reg[4] (I_WR_CHNL_n_55),
        .\save_init_bram_addr_ld_reg[5] (I_WR_CHNL_n_53),
        .\wrap_burst_total_reg[2] (I_WR_CHNL_n_40),
        .\wrap_burst_total_reg[2]_0 (I_WR_CHNL_n_41),
        .\wrap_burst_total_reg[2]_1 (I_WR_CHNL_n_43));
endmodule

module design_1_axi_bram_ctrl_0_0_rd_chnl
   (\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    s_axi_aresetn_0,
    wrap_addr_assign,
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 ,
    \GEN_RD_CMD_OPT.arsize_reg_reg[1]_0 ,
    Q,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ,
    \save_init_bram_addr_ld_reg_reg[11] ,
    \wrap_burst_total_reg_reg[2] ,
    \wrap_burst_total_reg_reg[2]_0 ,
    \wrap_burst_total_reg_reg[0] ,
    D,
    \wrap_burst_total_reg[2] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ,
    \wrap_burst_total_reg_reg[2]_1 ,
    bram_en_a,
    \FSM_sequential_arb_sm_cs_reg[1] ,
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ,
    s_axi_rlast,
    s_axi_arlen_2_sp_1,
    bram_addr_a,
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ,
    \GEN_RD_CMD_OPT.arsize_reg_reg[1]_1 ,
    s_axi_aresetn,
    s_axi_aclk,
    s_axi_rready,
    \wrap_burst_total_reg_reg[0]_0 ,
    s_axi_arvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    \bram_addr_a[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ,
    BRAM_En_A_i,
    s_axi_arburst,
    s_axi_arlen,
    arb_sm_cs,
    Arb2AR_Active,
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ,
    \save_init_bram_addr_ld_reg_reg[11]_0 ,
    \save_init_bram_addr_ld_reg_reg[3] ,
    \wrap_burst_total_reg_reg[2]_2 );
  output \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output s_axi_aresetn_0;
  output wrap_addr_assign;
  output \GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 ;
  output \GEN_RD_CMD_OPT.arsize_reg_reg[1]_0 ;
  output [5:0]Q;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ;
  output [5:0]\save_init_bram_addr_ld_reg_reg[11] ;
  output [2:0]\wrap_burst_total_reg_reg[2] ;
  output \wrap_burst_total_reg_reg[2]_0 ;
  output \wrap_burst_total_reg_reg[0] ;
  output [0:0]D;
  output \wrap_burst_total_reg[2] ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ;
  output \wrap_burst_total_reg_reg[2]_1 ;
  output bram_en_a;
  output \FSM_sequential_arb_sm_cs_reg[1] ;
  output \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  output s_axi_rlast;
  output s_axi_arlen_2_sp_1;
  output [8:0]bram_addr_a;
  output \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ;
  output \GEN_RD_CMD_OPT.arsize_reg_reg[1]_1 ;
  input s_axi_aresetn;
  input s_axi_aclk;
  input s_axi_rready;
  input \wrap_burst_total_reg_reg[0]_0 ;
  input s_axi_arvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ;
  input [9:0]s_axi_araddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input [9:0]\bram_addr_a[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ;
  input BRAM_En_A_i;
  input [1:0]s_axi_arburst;
  input [7:0]s_axi_arlen;
  input [1:0]arb_sm_cs;
  input Arb2AR_Active;
  input \ADDR_SNG_PORT.bram_addr_int[4]_i_2 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  input [5:0]\save_init_bram_addr_ld_reg_reg[11]_0 ;
  input \save_init_bram_addr_ld_reg_reg[3] ;
  input [1:0]\wrap_burst_total_reg_reg[2]_2 ;

  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_9_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire Arb2AR_Active;
  wire BRAM_En_A_i;
  wire [0:0]D;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[1] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5] ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_10 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_2 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_3 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_38 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_4 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_5 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_6 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_7 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_8 ;
  wire \GEN_RD_CMD_OPT.I_WRAP_BRST_n_9 ;
  wire \GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.arsize_reg_reg[1]_0 ;
  wire \GEN_RD_CMD_OPT.arsize_reg_reg[1]_1 ;
  wire \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ;
  wire [7:0]\GEN_RD_CMD_OPT.brst_cnt_addr_reg ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ;
  wire [7:0]\GEN_RD_CMD_OPT.brst_cnt_data_reg ;
  wire \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ;
  wire \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_9_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  wire [5:0]Q;
  wire [1:0]arb_sm_cs;
  wire [1:0]arburst_reg;
  wire [7:0]arlen_reg;
  wire [2:1]arlen_temp;
  wire [1:1]arsize_reg;
  wire axi_aresetn_d3;
  wire axi_rlast_cmb_reg;
  wire axi_rvalid_cmb;
  wire [8:0]bram_addr_a;
  wire [9:0]\bram_addr_a[11] ;
  wire \bram_addr_a[4]_INST_0_i_1_n_0 ;
  wire bram_en_a;
  wire curr_wrap_burst_reg;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire rd_addr_sm_cs;
  wire [1:0]rd_data_sm_cs;
  wire [0:0]rd_data_sm_ns;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arvalid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [5:0]\save_init_bram_addr_ld_reg_reg[11] ;
  wire [5:0]\save_init_bram_addr_ld_reg_reg[11]_0 ;
  wire \save_init_bram_addr_ld_reg_reg[3] ;
  wire wrap_addr_assign;
  wire \wrap_burst_total_reg[2] ;
  wire \wrap_burst_total_reg_reg[0] ;
  wire \wrap_burst_total_reg_reg[0]_0 ;
  wire [2:0]\wrap_burst_total_reg_reg[2] ;
  wire \wrap_burst_total_reg_reg[2]_0 ;
  wire \wrap_burst_total_reg_reg[2]_1 ;
  wire [1:0]\wrap_burst_total_reg_reg[2]_2 ;

  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_16 
       (.I0(arsize_reg),
        .I1(wrap_addr_assign),
        .I2(Q[0]),
        .I3(curr_wrap_burst_reg),
        .O(\GEN_RD_CMD_OPT.arsize_reg_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_8 
       (.I0(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(rd_addr_sm_cs),
        .O(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_9 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I1(Arb2AR_Active),
        .I2(curr_wrap_burst_reg),
        .I3(Q[0]),
        .I4(wrap_addr_assign),
        .I5(arsize_reg),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4744676400000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ),
        .I1(rd_addr_sm_cs),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ),
        .I5(axi_aresetn_d3),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2 
       (.I0(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 ),
        .I1(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4_n_0 ),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3 
       (.I0(arlen_reg[0]),
        .I1(arlen_reg[4]),
        .I2(arlen_reg[1]),
        .I3(arlen_reg[5]),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [7]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5 
       (.I0(arlen_reg[7]),
        .I1(arlen_reg[6]),
        .I2(arlen_reg[3]),
        .I3(arlen_reg[2]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "next_addr:1,idle:0" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_1_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hECFFC0C000000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I4(rd_data_sm_ns),
        .I5(axi_aresetn_d3),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C550C000C55FC)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(\FSM_sequential_GEN_RD_CMD_OPT.rd_addr_sm_cs_i_3_n_0 ),
        .O(rd_data_sm_ns));
  LUT6 #(
    .INIT(64'hDCCCD0C000000000)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ),
        .I5(axi_aresetn_d3),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [7]),
        .I4(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4 
       (.I0(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "last_data:10,read_data_one:01,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[0]_i_1_n_0 ),
        .Q(rd_data_sm_cs[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "last_data:10,read_data_one:01,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ),
        .Q(rd_data_sm_cs[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF0F0F0F4F4F4F4)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0 ),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(s_axi_rready),
        .I5(rd_addr_sm_cs),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arlen[4]),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h011101110111F111)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4 
       (.I0(arburst_reg[0]),
        .I1(arburst_reg[1]),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arburst[0]),
        .I5(s_axi_arburst[1]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[2]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF22202220DDDFDDD)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_1 
       (.I0(Q[0]),
        .I1(wrap_addr_assign),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[0]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0DDDFDDD)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_2 
       (.I0(Q[0]),
        .I1(wrap_addr_assign),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arvalid),
        .I4(s_axi_araddr[0]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEF00EFEFEFEFEFEF)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5]_0 ),
        .I2(s_axi_araddr[2]),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_5_n_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF8FFF8FFFFFF)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_5 
       (.I0(s_axi_arvalid),
        .I1(\wrap_burst_total_reg_reg[0]_0 ),
        .I2(wrap_addr_assign),
        .I3(Q[0]),
        .I4(arburst_reg[1]),
        .I5(arburst_reg[0]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_3 ),
        .Q(Q[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_2 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[2]_i_1_n_0 ),
        .Q(Q[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_10 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_9 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_8 ),
        .Q(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_7 ),
        .Q(Q[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_6 ),
        .Q(Q[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_5 ),
        .Q(Q[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_1_n_0 ),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_4 ),
        .Q(Q[4]),
        .R(s_axi_aresetn_0));
  design_1_axi_bram_ctrl_0_0_wrap_brst_rd \GEN_RD_CMD_OPT.I_WRAP_BRST 
       (.\ADDR_SNG_PORT.bram_addr_int[4]_i_2_0 (\ADDR_SNG_PORT.bram_addr_int[4]_i_2 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3] (D),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_2 (\ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[3]_3 (\ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\ADDR_SNG_PORT.bram_addr_int[5]_i_9_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_1 (\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .Arb2AR_Active(Arb2AR_Active),
        .D({\GEN_RD_CMD_OPT.I_WRAP_BRST_n_2 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_3 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_4 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_5 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_6 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_7 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_8 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_9 ,\GEN_RD_CMD_OPT.I_WRAP_BRST_n_10 }),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] (wrap_addr_assign),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11]_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_4_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] (\bram_addr_a[4]_INST_0_i_1_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4]_0 (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_2_n_0 ),
        .\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] (\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_2_n_0 ),
        .\GEN_RD_CMD_OPT.arsize_reg_reg[1] (\GEN_RD_CMD_OPT.arsize_reg_reg[1]_0 ),
        .\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg (\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg (\GEN_RD_CMD_OPT.I_WRAP_BRST_n_38 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 (\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 (\GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 (\GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0 ),
        .\GEN_RD_CMD_OPT.wrap_addr_assign_reg_3 (\GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0 ),
        .Q({\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[11] ,Q[5:1],\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[5] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ,\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[3] ,Q[0]}),
        .SR(s_axi_aresetn_0),
        .arsize_reg(arsize_reg),
        .bram_addr_a(bram_addr_a),
        .\bram_addr_a[11] (\bram_addr_a[11] ),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arlen_2_sp_1(s_axi_arlen_2_sn_1),
        .s_axi_arvalid(s_axi_arvalid),
        .\save_init_bram_addr_ld_reg_reg[11]_0 (\save_init_bram_addr_ld_reg_reg[11] ),
        .\save_init_bram_addr_ld_reg_reg[11]_1 (\save_init_bram_addr_ld_reg_reg[11]_0 ),
        .\save_init_bram_addr_ld_reg_reg[3]_0 (\save_init_bram_addr_ld_reg_reg[3] ),
        .\wrap_burst_total_reg[2] (\wrap_burst_total_reg[2] ),
        .\wrap_burst_total_reg_reg[0]_0 (\wrap_burst_total_reg_reg[0] ),
        .\wrap_burst_total_reg_reg[0]_1 (\wrap_burst_total_reg_reg[0]_0 ),
        .\wrap_burst_total_reg_reg[0]_2 (arlen_reg[2:1]),
        .\wrap_burst_total_reg_reg[2]_0 (\wrap_burst_total_reg_reg[2] ),
        .\wrap_burst_total_reg_reg[2]_1 (\wrap_burst_total_reg_reg[2]_0 ),
        .\wrap_burst_total_reg_reg[2]_2 (\wrap_burst_total_reg_reg[2]_1 ),
        .\wrap_burst_total_reg_reg[2]_3 (\wrap_burst_total_reg_reg[2]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arburst_reg[0]_i_1 
       (.I0(arburst_reg[0]),
        .I1(s_axi_arvalid),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arburst[0]),
        .O(\GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arburst_reg[1]_i_1 
       (.I0(arburst_reg[1]),
        .I1(s_axi_arvalid),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arburst[1]),
        .O(\GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arburst_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arburst_reg[0]_i_1_n_0 ),
        .Q(arburst_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arburst_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arburst_reg[1]_i_1_n_0 ),
        .Q(arburst_reg[1]),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arlen_reg[1]_i_1 
       (.I0(arlen_reg[1]),
        .I1(\wrap_burst_total_reg_reg[0]_0 ),
        .I2(s_axi_arvalid),
        .I3(s_axi_arlen[1]),
        .O(arlen_temp[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    \GEN_RD_CMD_OPT.arlen_reg[2]_i_1 
       (.I0(arlen_reg[2]),
        .I1(s_axi_arvalid),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arlen[2]),
        .O(arlen_temp[2]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3] ),
        .D(s_axi_arlen[0]),
        .Q(arlen_reg[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[1]),
        .Q(arlen_reg[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(arlen_temp[2]),
        .Q(arlen_reg[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3] ),
        .D(s_axi_arlen[3]),
        .Q(arlen_reg[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3] ),
        .D(s_axi_arlen[4]),
        .Q(arlen_reg[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3] ),
        .D(s_axi_arlen[5]),
        .Q(arlen_reg[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3] ),
        .D(s_axi_arlen[6]),
        .Q(arlen_reg[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arlen_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3] ),
        .D(s_axi_arlen[7]),
        .Q(arlen_reg[7]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \GEN_RD_CMD_OPT.arsize_reg[1]_i_1 
       (.I0(arsize_reg),
        .I1(\wrap_burst_total_reg_reg[0]_0 ),
        .I2(s_axi_arvalid),
        .O(\GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.arsize_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.arsize_reg[1]_i_1_n_0 ),
        .Q(arsize_reg),
        .R(s_axi_aresetn_0));
  (* srl_name = "U0/\\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_RD_CHNL/GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_axi_aclk),
        .D(s_axi_aresetn),
        .Q(\GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.axi_aresetn_d2_reg_srl2_n_0 ),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFFFDDDD00001111)) 
    \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_3_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(s_axi_rready),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I5(axi_rlast_cmb_reg),
        .O(\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rlast_cmb_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.axi_rlast_cmb_reg_i_1_n_0 ),
        .Q(axi_rlast_cmb_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0F0F0F0F88FF8888)) 
    \GEN_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(\wrap_burst_total_reg_reg[0]_0 ),
        .I1(s_axi_arvalid),
        .I2(rd_data_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(rd_data_sm_cs[0]),
        .O(axi_rvalid_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_cmb),
        .Q(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hD515)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[0]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I1(s_axi_arvalid),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arlen[0]),
        .O(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'hF9990999)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[1]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[1]),
        .O(p_0_in__0[1]));
  LUT6 #(
    .INIT(64'hFFA9A9A900A9A9A9)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[2]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(s_axi_arvalid),
        .I4(\wrap_burst_total_reg_reg[0]_0 ),
        .I5(s_axi_arlen[2]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[3]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I5(s_axi_arlen[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[4]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[6]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[6]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1 
       (.I0(rd_addr_sm_cs),
        .I1(s_axi_rready),
        .I2(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arvalid),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9A9A9A009A9A9A)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [7]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ),
        .I3(s_axi_arvalid),
        .I4(\wrap_burst_total_reg_reg[0]_0 ),
        .I5(s_axi_arlen[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_addr[7]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_addr_reg [7]),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hD515)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[0]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I1(s_axi_arvalid),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arlen[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hF9990999)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[1]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFA9A9A900A9A9A9)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[2]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(s_axi_arvalid),
        .I4(\wrap_burst_total_reg_reg[0]_0 ),
        .I5(s_axi_arlen[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[3]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I5(s_axi_arlen[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[6]_i_1 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_arlen[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFF200020002000)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(s_axi_rready),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(\wrap_burst_total_reg_reg[0]_0 ),
        .I5(s_axi_arvalid),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF9A9A9A009A9A9A)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_2 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [7]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ),
        .I3(s_axi_arvalid),
        .I4(\wrap_burst_total_reg_reg[0]_0 ),
        .I5(s_axi_arlen[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3 
       (.I0(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .I1(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .I2(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .I3(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .I4(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .I5(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .O(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.brst_cnt_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RD_CMD_OPT.brst_cnt_data[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\GEN_RD_CMD_OPT.brst_cnt_data_reg [7]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h04F4040400000000)) 
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I3(arburst_reg[0]),
        .I4(arburst_reg[1]),
        .I5(axi_aresetn_d3),
        .O(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_i_1_n_0 ),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBFBFBFBFFFFFFFF)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_3 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .I2(rd_addr_sm_cs),
        .I3(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I4(s_axi_rready),
        .I5(s_axi_arlen[0]),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002220000)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_5 
       (.I0(arburst_reg[1]),
        .I1(arburst_reg[0]),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_1 ),
        .I5(\GEN_RD_CMD_OPT.wrap_addr_assign_i_9_n_0 ),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h8888F000)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_6 
       (.I0(s_axi_rready),
        .I1(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(rd_addr_sm_cs),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_9 
       (.I0(Q[0]),
        .I1(wrap_addr_assign),
        .I2(arsize_reg),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RD_CMD_OPT.I_WRAP_BRST_n_38 ),
        .Q(wrap_addr_assign),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFFFF0DFF)) 
    axi_arready_int_i_3
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(axi_rlast_cmb_reg),
        .I3(s_axi_rready),
        .I4(arb_sm_cs[0]),
        .O(\FSM_sequential_GEN_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2000202020002000)) 
    axi_awready_int_i_3
       (.I0(arb_sm_cs[1]),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_rready),
        .I3(axi_rlast_cmb_reg),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs_reg[1] ));
  LUT5 #(
    .INIT(32'hF4440444)) 
    \bram_addr_a[4]_INST_0_i_1 
       (.I0(wrap_addr_assign),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg_n_0_[4] ),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_0 ),
        .I4(s_axi_araddr[2]),
        .O(\bram_addr_a[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEBAAABAAABAAA)) 
    bram_en_a_INST_0
       (.I0(BRAM_En_A_i),
        .I1(rd_addr_sm_cs),
        .I2(\wrap_burst_total_reg_reg[0]_0 ),
        .I3(s_axi_arvalid),
        .I4(\GEN_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_rready),
        .O(bram_en_a));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    s_axi_rlast_INST_0
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(axi_rlast_cmb_reg),
        .O(s_axi_rlast));
endmodule

module design_1_axi_bram_ctrl_0_0_sng_port_arb
   (s_axi_awready,
    axi_arready_int_reg_0,
    Arb2AW_Active,
    Arb2AR_Active,
    aw_active_reg_0,
    ar_active_reg_0,
    E,
    aw_active_re,
    s_axi_arvalid_0,
    D,
    ar_active_reg_1,
    s_axi_araddr_3_sp_1,
    s_axi_araddr_4_sp_1,
    s_axi_araddr_5_sp_1,
    \s_axi_araddr[11] ,
    \s_axi_araddr[4]_0 ,
    arb_sm_cs,
    s_axi_arvalid_1,
    bram_addr_a,
    \s_axi_arlen[1] ,
    \s_axi_araddr[11]_0 ,
    axi_arready_int_reg_1,
    s_axi_araddr_2_sp_1,
    bram_we_a,
    ar_active_reg_2,
    s_axi_aclk,
    aw_active_d1,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int[5]_i_6 ,
    s_axi_arvalid,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_1 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_2 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_3 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_4 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[8] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ,
    s_axi_awaddr,
    s_axi_arlen,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg ,
    last_arb_won_reg_0,
    s_axi_awvalid,
    last_arb_won_reg_1,
    \FSM_sequential_arb_sm_cs_reg[0]_0 ,
    aw_active_cmb,
    AW2Arb_Active_Clr,
    \wrap_burst_total_reg_reg[2] ,
    wrap_addr_assign,
    \save_init_bram_addr_ld_reg_reg[11] ,
    \bram_we_a[3] ,
    last_arb_won_reg_2);
  output s_axi_awready;
  output axi_arready_int_reg_0;
  output Arb2AW_Active;
  output Arb2AR_Active;
  output aw_active_reg_0;
  output ar_active_reg_0;
  output [0:0]E;
  output aw_active_re;
  output s_axi_arvalid_0;
  output [8:0]D;
  output ar_active_reg_1;
  output s_axi_araddr_3_sp_1;
  output s_axi_araddr_4_sp_1;
  output s_axi_araddr_5_sp_1;
  output \s_axi_araddr[11] ;
  output \s_axi_araddr[4]_0 ;
  output [1:0]arb_sm_cs;
  output s_axi_arvalid_1;
  output [0:0]bram_addr_a;
  output [1:0]\s_axi_arlen[1] ;
  output [5:0]\s_axi_araddr[11]_0 ;
  output axi_arready_int_reg_1;
  output s_axi_araddr_2_sp_1;
  output [3:0]bram_we_a;
  input ar_active_reg_2;
  input s_axi_aclk;
  input aw_active_d1;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int[5]_i_6 ;
  input s_axi_arvalid;
  input [9:0]s_axi_araddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2]_1 ;
  input [9:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_2 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_3 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_4 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input [5:0]\ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  input [4:0]\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  input [9:0]s_axi_awaddr;
  input [3:0]s_axi_arlen;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg ;
  input last_arb_won_reg_0;
  input s_axi_awvalid;
  input last_arb_won_reg_1;
  input \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  input aw_active_cmb;
  input AW2Arb_Active_Clr;
  input [2:0]\wrap_burst_total_reg_reg[2] ;
  input wrap_addr_assign;
  input [5:0]\save_init_bram_addr_ld_reg_reg[11] ;
  input [3:0]\bram_we_a[3] ;
  input last_arb_won_reg_2;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[2]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_6 ;
  wire \ADDR_SNG_PORT.bram_addr_int[6]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[6]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[8]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[9]_i_5_n_0 ;
  wire [5:0]\ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  wire [4:0]\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_3 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_4 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[8] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire [8:0]D;
  wire [0:0]E;
  wire \FSM_sequential_arb_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_i_8_n_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg ;
  wire [9:0]Q;
  wire ar_active_i_1_n_0;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire ar_active_reg_2;
  wire [1:0]arb_sm_cs;
  wire aw_active_cmb;
  wire aw_active_d1;
  wire aw_active_i_1_n_0;
  wire aw_active_re;
  wire aw_active_reg_0;
  wire axi_arready_cmb;
  wire axi_arready_int_i_2_n_0;
  wire axi_arready_int_reg_0;
  wire axi_arready_int_reg_1;
  wire axi_awready_cmb;
  wire [0:0]bram_addr_a;
  wire [3:0]bram_we_a;
  wire [3:0]\bram_we_a[3] ;
  wire last_arb_won;
  wire last_arb_won_cmb;
  wire last_arb_won_i_1_n_0;
  wire last_arb_won_reg_0;
  wire last_arb_won_reg_1;
  wire last_arb_won_reg_2;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire \s_axi_araddr[11] ;
  wire [5:0]\s_axi_araddr[11]_0 ;
  wire \s_axi_araddr[4]_0 ;
  wire s_axi_araddr_2_sn_1;
  wire s_axi_araddr_3_sn_1;
  wire s_axi_araddr_4_sn_1;
  wire s_axi_araddr_5_sn_1;
  wire [3:0]s_axi_arlen;
  wire [1:0]\s_axi_arlen[1] ;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire s_axi_arvalid_1;
  wire [9:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire [5:0]\save_init_bram_addr_ld_reg_reg[11] ;
  wire wrap_addr_assign;
  wire [2:0]\wrap_burst_total_reg_reg[2] ;

  assign s_axi_araddr_2_sp_1 = s_axi_araddr_2_sn_1;
  assign s_axi_araddr_3_sp_1 = s_axi_araddr_3_sn_1;
  assign s_axi_araddr_4_sp_1 = s_axi_araddr_4_sn_1;
  assign s_axi_araddr_5_sp_1 = s_axi_araddr_5_sn_1;
  LUT6 #(
    .INIT(64'hFF60FF60FFFFFF60)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(Q[8]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 [4]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] [5]),
        .I2(aw_active_re),
        .I3(s_axi_awaddr[8]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int[10]_i_4_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_4 
       (.I0(s_axi_araddr[8]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF2FFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_6 
       (.I0(Arb2AW_Active),
        .I1(aw_active_d1),
        .I2(Arb2AR_Active),
        .I3(s_axi_wvalid),
        .I4(\ADDR_SNG_PORT.bram_addr_int[5]_i_6 ),
        .O(aw_active_reg_0));
  LUT6 #(
    .INIT(64'hFF220022F0220022)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_10 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[5]_2 ),
        .I1(aw_active_re),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[5]_3 ),
        .I3(Arb2AR_Active),
        .I4(s_axi_arvalid_0),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h20202F2020202020)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_17 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid_0),
        .I2(Arb2AR_Active),
        .I3(s_axi_awaddr[9]),
        .I4(aw_active_d1),
        .I5(Arb2AW_Active),
        .O(\s_axi_araddr[11] ));
  LUT6 #(
    .INIT(64'h5151FF55FFFFFF55)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[2]_1 ),
        .I3(aw_active_re),
        .I4(Arb2AR_Active),
        .I5(s_axi_arvalid_0),
        .O(E));
  LUT5 #(
    .INIT(32'hFFFF6A00)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(Q[9]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .I2(Q[8]),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF888FD8DFFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0 ),
        .I1(s_axi_araddr[0]),
        .I2(\ADDR_SNG_PORT.bram_addr_int[2]_i_3_n_0 ),
        .I3(s_axi_awaddr[0]),
        .I4(Q[0]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_2 
       (.I0(Arb2AR_Active),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \ADDR_SNG_PORT.bram_addr_int[2]_i_3 
       (.I0(aw_active_d1),
        .I1(Arb2AW_Active),
        .I2(Arb2AR_Active),
        .O(\ADDR_SNG_PORT.bram_addr_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h808F8080808F808F)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_2 
       (.I0(s_axi_arvalid_0),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[5]_3 ),
        .I2(Arb2AR_Active),
        .I3(aw_active_re),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[3] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ),
        .O(ar_active_reg_1));
  LUT6 #(
    .INIT(64'h44440F0044440000)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_6 
       (.I0(s_axi_arvalid_0),
        .I1(s_axi_araddr[1]),
        .I2(aw_active_d1),
        .I3(Arb2AW_Active),
        .I4(Arb2AR_Active),
        .I5(s_axi_awaddr[1]),
        .O(s_axi_araddr_3_sn_1));
  LUT5 #(
    .INIT(32'hFFFF6A00)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h44440F0044440000)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_6 
       (.I0(s_axi_arvalid_0),
        .I1(s_axi_araddr[2]),
        .I2(aw_active_d1),
        .I3(Arb2AW_Active),
        .I4(Arb2AR_Active),
        .I5(s_axi_awaddr[2]),
        .O(s_axi_araddr_4_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h70007070)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_7 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_int_reg_0),
        .I2(Arb2AR_Active),
        .I3(\wrap_burst_total_reg_reg[2] [1]),
        .I4(\wrap_burst_total_reg_reg[2] [0]),
        .O(s_axi_arvalid_1));
  LUT6 #(
    .INIT(64'hFFFFFFFF90909990)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(Q[3]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0 ),
        .I3(ar_active_reg_0),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[5]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h22220F0022220000)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_10 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid_0),
        .I2(aw_active_d1),
        .I3(Arb2AW_Active),
        .I4(Arb2AR_Active),
        .I5(s_axi_awaddr[3]),
        .O(s_axi_araddr_5_sn_1));
  LUT6 #(
    .INIT(64'hFF220022F0220022)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[5]_2 ),
        .I1(aw_active_re),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[5]_3 ),
        .I3(Arb2AR_Active),
        .I4(s_axi_arvalid_0),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[5]_4 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_4 
       (.I0(Arb2AR_Active),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(ar_active_reg_0));
  LUT6 #(
    .INIT(64'hFF90FF90FFFFFF90)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(Q[4]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[6]_i_3_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[10] [1]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 [0]),
        .I2(aw_active_re),
        .I3(s_axi_awaddr[4]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int[6]_i_4_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_4 
       (.I0(s_axi_araddr[4]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF90FF90FFFFFF90)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(Q[5]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[7]_i_3_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[10] [2]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 [1]),
        .I2(aw_active_re),
        .I3(s_axi_awaddr[5]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int[7]_i_4_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_4 
       (.I0(s_axi_araddr[5]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF90FF90FFFFFF90)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(Q[6]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[8] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[10] [3]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 [2]),
        .I2(aw_active_re),
        .I3(s_axi_awaddr[6]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int[8]_i_4_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_4 
       (.I0(s_axi_araddr[6]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFF60FF60FFFFFF60)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(Q[7]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_10_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[10] [4]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6]_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFF4444444F444)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[10]_2 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10]_1 [3]),
        .I2(aw_active_re),
        .I3(s_axi_awaddr[7]),
        .I4(Arb2AR_Active),
        .I5(\ADDR_SNG_PORT.bram_addr_int[9]_i_5_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_5 
       (.I0(s_axi_araddr[7]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA000FFF00110A)) 
    \FSM_sequential_arb_sm_cs[0]_i_1 
       (.I0(aw_active_cmb),
        .I1(AW2Arb_Active_Clr),
        .I2(\FSM_sequential_arb_sm_cs[0]_i_3_n_0 ),
        .I3(arb_sm_cs[0]),
        .I4(arb_sm_cs[1]),
        .I5(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .O(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \FSM_sequential_arb_sm_cs[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(last_arb_won),
        .I2(s_axi_arvalid),
        .O(\FSM_sequential_arb_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0500FFFFF7000000)) 
    \FSM_sequential_arb_sm_cs[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(last_arb_won),
        .I2(arb_sm_cs[0]),
        .I3(s_axi_arvalid),
        .I4(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ),
        .I5(arb_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00EA)) 
    \FSM_sequential_arb_sm_cs[1]_i_2 
       (.I0(aw_active_cmb),
        .I1(AW2Arb_Active_Clr),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(\FSM_sequential_arb_sm_cs[1]_i_3_n_0 ),
        .I5(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .O(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    \FSM_sequential_arb_sm_cs[1]_i_3 
       (.I0(arb_sm_cs[1]),
        .I1(arb_sm_cs[0]),
        .I2(s_axi_arvalid),
        .I3(last_arb_won),
        .I4(s_axi_awvalid),
        .O(\FSM_sequential_arb_sm_cs[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ),
        .Q(arb_sm_cs[0]),
        .R(ar_active_reg_2));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ),
        .Q(arb_sm_cs[1]),
        .R(ar_active_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_4 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(axi_arready_int_reg_0),
        .I3(s_axi_araddr[1]),
        .O(s_axi_araddr_2_sn_1));
  LUT6 #(
    .INIT(64'hBBBBBBB0AAAAAAAA)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_2 
       (.I0(\GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ),
        .I1(s_axi_araddr[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[3]),
        .I4(\GEN_RD_CMD_OPT.wrap_addr_assign_i_8_n_0 ),
        .I5(\GEN_RD_CMD_OPT.wrap_addr_assign_reg ),
        .O(\s_axi_araddr[4]_0 ));
  LUT6 #(
    .INIT(64'hBBFBFBFBFBFBFBFB)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_7 
       (.I0(s_axi_araddr_2_sn_1),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_araddr[3]),
        .I5(s_axi_araddr[2]),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_8 
       (.I0(axi_arready_int_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_araddr[0]),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    ar_active_i_1
       (.I0(last_arb_won_cmb),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I2(axi_arready_int_i_2_n_0),
        .I3(Arb2AR_Active),
        .O(ar_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_i_1_n_0),
        .Q(Arb2AR_Active),
        .R(ar_active_reg_2));
  LUT6 #(
    .INIT(64'hAAAAFFBFAAAA0080)) 
    aw_active_i_1
       (.I0(aw_active_cmb),
        .I1(AW2Arb_Active_Clr),
        .I2(arb_sm_cs[0]),
        .I3(arb_sm_cs[1]),
        .I4(axi_awready_cmb),
        .I5(Arb2AW_Active),
        .O(aw_active_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_i_1_n_0),
        .Q(Arb2AW_Active),
        .R(ar_active_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAABA)) 
    axi_arready_int_i_1
       (.I0(axi_arready_int_i_2_n_0),
        .I1(last_arb_won_reg_0),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .O(axi_arready_cmb));
  LUT6 #(
    .INIT(64'h00000000F0770000)) 
    axi_arready_int_i_2
       (.I0(s_axi_awvalid),
        .I1(last_arb_won),
        .I2(AW2Arb_Active_Clr),
        .I3(arb_sm_cs[0]),
        .I4(s_axi_arvalid),
        .I5(arb_sm_cs[1]),
        .O(axi_arready_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(axi_arready_int_reg_0),
        .R(ar_active_reg_2));
  LUT6 #(
    .INIT(64'h888888888888A8AA)) 
    axi_awready_int_i_1
       (.I0(last_arb_won_reg_1),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I2(last_arb_won),
        .I3(s_axi_arvalid),
        .I4(arb_sm_cs[1]),
        .I5(arb_sm_cs[0]),
        .O(axi_awready_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(ar_active_reg_2));
  LUT6 #(
    .INIT(64'h0CFC0C0CAAAAAAAA)) 
    \bram_addr_a[2]_INST_0 
       (.I0(Q[0]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_arvalid_0),
        .I3(wrap_addr_assign),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[10] [0]),
        .I5(Arb2AR_Active),
        .O(bram_addr_a));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \bram_addr_a[2]_INST_0_i_1 
       (.I0(s_axi_arvalid),
        .I1(axi_arready_int_reg_0),
        .O(s_axi_arvalid_0));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[0]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [0]),
        .O(bram_we_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[1]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [1]),
        .O(bram_we_a[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[2]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [2]),
        .O(bram_we_a[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bram_we_a[3]_INST_0 
       (.I0(Arb2AW_Active),
        .I1(\bram_we_a[3] [3]),
        .O(bram_we_a[3]));
  LUT6 #(
    .INIT(64'hAAAABBABAAAA88A8)) 
    last_arb_won_i_1
       (.I0(last_arb_won_cmb),
        .I1(axi_arready_cmb),
        .I2(last_arb_won_reg_1),
        .I3(last_arb_won_reg_0),
        .I4(last_arb_won_reg_2),
        .I5(last_arb_won),
        .O(last_arb_won_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0500F700)) 
    last_arb_won_i_2
       (.I0(s_axi_awvalid),
        .I1(last_arb_won),
        .I2(arb_sm_cs[0]),
        .I3(s_axi_arvalid),
        .I4(arb_sm_cs[1]),
        .O(last_arb_won_cmb));
  FDRE #(
    .INIT(1'b0)) 
    last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_arb_won_i_1_n_0),
        .Q(last_arb_won),
        .R(ar_active_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(Arb2AW_Active),
        .I1(aw_active_d1),
        .O(aw_active_re));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \save_init_bram_addr_ld_reg[10]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .I3(\save_init_bram_addr_ld_reg_reg[11] [4]),
        .O(\s_axi_araddr[11]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \save_init_bram_addr_ld_reg[11]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .I3(\save_init_bram_addr_ld_reg_reg[11] [5]),
        .O(\s_axi_araddr[11]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \save_init_bram_addr_ld_reg[5]_i_1 
       (.I0(axi_arready_int_reg_0),
        .I1(s_axi_arvalid),
        .O(axi_arready_int_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \save_init_bram_addr_ld_reg[6]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .I3(\save_init_bram_addr_ld_reg_reg[11] [0]),
        .O(\s_axi_araddr[11]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \save_init_bram_addr_ld_reg[7]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .I3(\save_init_bram_addr_ld_reg_reg[11] [1]),
        .O(\s_axi_araddr[11]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \save_init_bram_addr_ld_reg[8]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .I3(\save_init_bram_addr_ld_reg_reg[11] [2]),
        .O(\s_axi_araddr[11]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \save_init_bram_addr_ld_reg[9]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(axi_arready_int_reg_0),
        .I2(s_axi_arvalid),
        .I3(\save_init_bram_addr_ld_reg_reg[11] [3]),
        .O(\s_axi_araddr[11]_0 [3]));
  LUT6 #(
    .INIT(64'h40FFFFFF40000000)) 
    \wrap_burst_total_reg[1]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arvalid),
        .I4(axi_arready_int_reg_0),
        .I5(\wrap_burst_total_reg_reg[2] [1]),
        .O(\s_axi_arlen[1] [0]));
  LUT6 #(
    .INIT(64'hFFFF800000008000)) 
    \wrap_burst_total_reg[2]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arvalid_0),
        .I5(\wrap_burst_total_reg_reg[2] [2]),
        .O(\s_axi_arlen[1] [1]));
endmodule

module design_1_axi_bram_ctrl_0_0_wr_chnl
   (aw_active_d1,
    BRAM_En_A_i,
    bram_wrdata_a,
    s_axi_wready,
    axi_bvalid_int_reg_0,
    AW2Arb_Active_Clr,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ,
    SR,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 ,
    \wrap_burst_total_reg[2] ,
    \wrap_burst_total_reg[2]_0 ,
    s_axi_wvalid_0,
    \wrap_burst_total_reg[2]_1 ,
    Q,
    \FSM_sequential_arb_sm_cs_reg[0] ,
    aw_active_cmb,
    s_axi_awvalid_0,
    \save_init_bram_addr_ld_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    \save_init_bram_addr_ld_reg[4] ,
    \GEN_WR_NO_ECC.bram_we_int_reg[3]_0 ,
    \save_init_bram_addr_ld_reg[3] ,
    s_axi_aclk,
    Arb2AW_Active,
    s_axi_wdata,
    s_axi_aresetn,
    s_axi_wvalid,
    E,
    s_axi_wlast,
    Arb2AR_Active,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    s_axi_bready,
    s_axi_awaddr,
    arb_sm_cs,
    s_axi_awvalid,
    \ADDR_SNG_PORT.bram_addr_int[11]_i_15 ,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_wstrb);
  output aw_active_d1;
  output BRAM_En_A_i;
  output [31:0]bram_wrdata_a;
  output s_axi_wready;
  output axi_bvalid_int_reg_0;
  output AW2Arb_Active_Clr;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ;
  output [0:0]SR;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 ;
  output \wrap_burst_total_reg[2] ;
  output \wrap_burst_total_reg[2]_0 ;
  output s_axi_wvalid_0;
  output \wrap_burst_total_reg[2]_1 ;
  output [5:0]Q;
  output \FSM_sequential_arb_sm_cs_reg[0] ;
  output aw_active_cmb;
  output s_axi_awvalid_0;
  output \save_init_bram_addr_ld_reg[5] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output \save_init_bram_addr_ld_reg[4] ;
  output [3:0]\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 ;
  input \save_init_bram_addr_ld_reg[3] ;
  input s_axi_aclk;
  input Arb2AW_Active;
  input [31:0]s_axi_wdata;
  input s_axi_aresetn;
  input s_axi_wvalid;
  input [0:0]E;
  input s_axi_wlast;
  input Arb2AR_Active;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input s_axi_bready;
  input [8:0]s_axi_awaddr;
  input [1:0]arb_sm_cs;
  input s_axi_awvalid;
  input [3:0]\ADDR_SNG_PORT.bram_addr_int[11]_i_15 ;
  input [3:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [3:0]s_axi_wstrb;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_5_n_0 ;
  wire [3:0]\ADDR_SNG_PORT.bram_addr_int[11]_i_15 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire AW2Arb_Active_Clr;
  wire [2:0]AW2Arb_BVALID_Cnt;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire BRAM_En_A_i;
  wire [0:0]E;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_4_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ;
  wire \FSM_sequential_arb_sm_cs_reg[0] ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_3_n_0 ;
  wire \GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ;
  wire [3:0]\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 ;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire [5:0]Q;
  wire [0:0]SR;
  wire [1:0]arb_sm_cs;
  wire aw_active_cmb;
  wire aw_active_d1;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_2_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bram_en_cmb;
  wire [31:0]bram_wrdata_a;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire bvalid_cnt_inc;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [8:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire s_axi_bready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire s_axi_wvalid_0;
  wire \save_init_bram_addr_ld_reg[3] ;
  wire \save_init_bram_addr_ld_reg[4] ;
  wire \save_init_bram_addr_ld_reg[5] ;
  wire \wrap_burst_total_reg[2] ;
  wire \wrap_burst_total_reg[2]_0 ;
  wire \wrap_burst_total_reg[2]_1 ;

  LUT2 #(
    .INIT(4'h7)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_5 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_15 [0]),
        .I1(curr_wrap_burst_reg),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I1(s_axi_wvalid),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(AW2Arb_Active_Clr),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA202FFFFA2020000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ),
        .I4(AW2Arb_Active_Clr),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2 
       (.I0(axi_wr_burst),
        .I1(axi_wdata_full_reg),
        .I2(s_axi_wlast),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF8C8C8C8)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3 
       (.I0(axi_wdata_full_reg),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_4_n_0 ),
        .I2(s_axi_wvalid),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I4(s_axi_wlast),
        .I5(AW2Arb_Active_Clr),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_4 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(Arb2AW_Active),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .S(\save_init_bram_addr_ld_reg[3] ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ),
        .Q(AW2Arb_Active_Clr),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00007F00)) 
    \FSM_sequential_arb_sm_cs[0]_i_2 
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(s_axi_awvalid),
        .I4(arb_sm_cs[0]),
        .O(aw_active_cmb));
  LUT6 #(
    .INIT(64'hECA0ECA0FFF0ECA0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(AW2Arb_Active_Clr),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I5(Arb2AW_Active),
        .O(axi_wdata_full_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hFC888888)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .I1(s_axi_wvalid),
        .I2(axi_wdata_full_reg),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I4(Arb2AW_Active),
        .O(bram_en_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(BRAM_En_A_i),
        .R(\save_init_bram_addr_ld_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFF88C800C000C0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2_n_0 ),
        .I1(Arb2AW_Active),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I3(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_3_n_0 ),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 ),
        .I5(s_axi_wlast),
        .O(bvalid_cnt_inc));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(axi_wdata_full_reg),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_3 
       (.I0(axi_wr_burst),
        .I1(axi_wdata_full_reg),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF00AE00)) 
    \GEN_WRDATA[31].bram_wrdata_int[31]_i_1 
       (.I0(AW2Arb_Active_Clr),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wvalid),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .O(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .I1(clr_bram_we),
        .I2(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[0]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[1]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[2]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_WRDATA[31].bram_wrdata_int[31]_i_1_n_0 ),
        .D(s_axi_wstrb[3]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[3]_0 [3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  design_1_axi_bram_ctrl_0_0_wrap_brst I_WRAP_BRST
       (.\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 (\ADDR_SNG_PORT.bram_addr_int[11]_i_15 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int[10]_i_5_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (AW2Arb_Active_Clr),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_1 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2] (\ADDR_SNG_PORT.bram_addr_int_reg[2] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]_0 ),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .E(E),
        .Q(Q),
        .SR(SR),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(I_WRAP_BRST_n_15),
        .curr_fixed_burst_reg_reg_0(aw_active_d1),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_14),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axi_wvalid_0(s_axi_wvalid_0),
        .\save_init_bram_addr_ld_reg[3]_0 (\save_init_bram_addr_ld_reg[3] ),
        .\save_init_bram_addr_ld_reg[4]_0 (\save_init_bram_addr_ld_reg[4] ),
        .\save_init_bram_addr_ld_reg[5]_0 (\save_init_bram_addr_ld_reg[5] ),
        .\wrap_burst_total_reg[2]_0 (\wrap_burst_total_reg[2] ),
        .\wrap_burst_total_reg[2]_1 (\wrap_burst_total_reg[2]_0 ),
        .\wrap_burst_total_reg[2]_2 (\wrap_burst_total_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(Arb2AW_Active),
        .Q(aw_active_d1),
        .R(\save_init_bram_addr_ld_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    axi_awready_int_i_2
       (.I0(s_axi_awvalid),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .O(s_axi_awvalid_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA20)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_bvalid_int_i_2_n_0),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(AW2Arb_BVALID_Cnt[1]),
        .I5(bvalid_cnt_inc),
        .O(axi_bvalid_int_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_int_i_2
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .O(axi_bvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h55557FFF55554000)) 
    axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(Arb2AW_Active),
        .I3(axi_wdata_full_reg),
        .I4(axi_wr_burst_i_2_n_0),
        .I5(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF400)) 
    axi_wr_burst_i_2
       (.I0(axi_wdata_full_reg),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(AW2Arb_Active_Clr),
        .I3(s_axi_wvalid),
        .O(axi_wr_burst_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(\save_init_bram_addr_ld_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88887777777F8880)) 
    \bvalid_cnt[0]_i_1 
       (.I0(s_axi_bready),
        .I1(axi_bvalid_int_reg_0),
        .I2(AW2Arb_BVALID_Cnt[2]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(bvalid_cnt_inc),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE1E0787878787878)) 
    \bvalid_cnt[1]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(axi_bvalid_int_reg_0),
        .I5(s_axi_bready),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE007F807F807F80)) 
    \bvalid_cnt[2]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(axi_bvalid_int_reg_0),
        .I5(s_axi_bready),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(\save_init_bram_addr_ld_reg[3] ));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_15),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_14),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000004444444)) 
    last_arb_won_i_3
       (.I0(arb_sm_cs[0]),
        .I1(s_axi_awvalid),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(AW2Arb_BVALID_Cnt[2]),
        .I5(arb_sm_cs[1]),
        .O(\FSM_sequential_arb_sm_cs_reg[0] ));
endmodule

module design_1_axi_bram_ctrl_0_0_wrap_brst
   (SR,
    \wrap_burst_total_reg[2]_0 ,
    \wrap_burst_total_reg[2]_1 ,
    s_axi_wvalid_0,
    \wrap_burst_total_reg[2]_2 ,
    Q,
    \save_init_bram_addr_ld_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[2] ,
    \save_init_bram_addr_ld_reg[4]_0 ,
    curr_wrap_burst_reg_reg,
    curr_fixed_burst_reg_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    E,
    curr_fixed_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    s_axi_aresetn,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ,
    Arb2AR_Active,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ,
    s_axi_awaddr,
    curr_fixed_burst_reg_reg_0,
    Arb2AW_Active,
    \ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 ,
    curr_wrap_burst_reg,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awburst,
    \save_init_bram_addr_ld_reg[3]_0 ,
    s_axi_aclk);
  output [0:0]SR;
  output \wrap_burst_total_reg[2]_0 ;
  output \wrap_burst_total_reg[2]_1 ;
  output s_axi_wvalid_0;
  output \wrap_burst_total_reg[2]_2 ;
  output [5:0]Q;
  output \save_init_bram_addr_ld_reg[5]_0 ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  output \save_init_bram_addr_ld_reg[4]_0 ;
  output curr_wrap_burst_reg_reg;
  output curr_fixed_burst_reg_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input [0:0]E;
  input curr_fixed_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input s_axi_aresetn;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  input Arb2AR_Active;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  input [8:0]s_axi_awaddr;
  input curr_fixed_burst_reg_reg_0;
  input Arb2AW_Active;
  input [3:0]\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 ;
  input curr_wrap_burst_reg;
  input [3:0]s_axi_awlen;
  input s_axi_awvalid;
  input [1:0]s_axi_awburst;
  input \save_init_bram_addr_ld_reg[3]_0 ;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ;
  wire [3:0]\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_12_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire [0:0]E;
  wire [5:0]Q;
  wire [0:0]SR;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_fixed_burst_reg_reg_0;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire [8:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [8:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire s_axi_wvalid_0;
  wire \save_init_bram_addr_ld[11]_i_3_n_0 ;
  wire \save_init_bram_addr_ld_reg[3]_0 ;
  wire \save_init_bram_addr_ld_reg[4]_0 ;
  wire \save_init_bram_addr_ld_reg[5]_0 ;
  wire \save_init_bram_addr_ld_reg_n_0_[3] ;
  wire \save_init_bram_addr_ld_reg_n_0_[4] ;
  wire \save_init_bram_addr_ld_reg_n_0_[5] ;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;
  wire \wrap_burst_total_reg[2]_0 ;
  wire \wrap_burst_total_reg[2]_1 ;
  wire \wrap_burst_total_reg[2]_2 ;
  wire \wrap_burst_total_reg_n_0_[0] ;
  wire \wrap_burst_total_reg_n_0_[1] ;
  wire \wrap_burst_total_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hFFFFFFFFF7F7F7F4)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ),
        .I4(\wrap_burst_total_reg_n_0_[2] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .O(\wrap_burst_total_reg[2]_2 ));
  LUT6 #(
    .INIT(64'h20220022FFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(E),
        .I2(curr_fixed_burst_reg),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I4(\wrap_burst_total_reg[2]_0 ),
        .I5(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h7033)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_12 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [2]),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [1]),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\wrap_burst_total_reg_n_0_[0] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_13 
       (.I0(\wrap_burst_total_reg_n_0_[1] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_14 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [1]),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [3]),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [2]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF7F7F7F4FFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_15 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ),
        .I4(\wrap_burst_total_reg_n_0_[2] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .O(\wrap_burst_total_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0FFFEFFFFFFFEFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_12_n_0 ),
        .I2(curr_wrap_burst_reg),
        .I3(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [0]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_13_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_14_n_0 ),
        .O(\wrap_burst_total_reg[2]_0 ));
  LUT5 #(
    .INIT(32'h0000BF3F)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(\wrap_burst_total_reg[2]_0 ),
        .I1(s_axi_wvalid),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[2]_0 ),
        .I3(curr_fixed_burst_reg),
        .I4(Arb2AR_Active),
        .O(s_axi_wvalid_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_7 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [0]),
        .I1(curr_wrap_burst_reg),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\wrap_burst_total_reg_n_0_[0] ),
        .I4(\wrap_burst_total_reg_n_0_[1] ),
        .I5(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[2] ));
  LUT4 #(
    .INIT(16'hA82A)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_3 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\wrap_burst_total_reg_n_0_[2] ),
        .O(\save_init_bram_addr_ld_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h00A8002800080008)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_11 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\wrap_burst_total_reg_n_0_[1] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[5]_i_12_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [2]),
        .I5(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [1]),
        .O(\save_init_bram_addr_ld_reg[5]_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_12 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(curr_wrap_burst_reg),
        .I2(\ADDR_SNG_PORT.bram_addr_int[11]_i_15_0 [0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000008A8A8ABA)) 
    curr_fixed_burst_reg_i_1
       (.I0(curr_fixed_burst_reg),
        .I1(curr_fixed_burst_reg_reg_0),
        .I2(Arb2AW_Active),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .I5(SR),
        .O(curr_fixed_burst_reg_reg));
  LUT6 #(
    .INIT(64'h000000008ABA8A8A)) 
    curr_wrap_burst_reg_i_1
       (.I0(curr_wrap_burst_reg),
        .I1(curr_fixed_burst_reg_reg_0),
        .I2(Arb2AW_Active),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(SR),
        .O(curr_wrap_burst_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(Q[4]),
        .I1(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I2(s_axi_awaddr[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_2 
       (.I0(Q[5]),
        .I1(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I2(s_axi_awaddr[8]),
        .O(p_1_in[8]));
  LUT3 #(
    .INIT(8'h0B)) 
    \save_init_bram_addr_ld[11]_i_3 
       (.I0(curr_fixed_burst_reg_reg_0),
        .I1(Arb2AW_Active),
        .I2(\wrap_burst_total_reg[2]_0 ),
        .O(\save_init_bram_addr_ld[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I1(s_axi_awaddr[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hA82AFFFFA82A0000)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .I3(\wrap_burst_total_reg_n_0_[2] ),
        .I4(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I5(s_axi_awaddr[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I1(s_axi_awaddr[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(Q[0]),
        .I1(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I2(s_axi_awaddr[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(Q[1]),
        .I1(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I2(s_axi_awaddr[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(Q[2]),
        .I1(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I2(s_axi_awaddr[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(Q[3]),
        .I1(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I2(s_axi_awaddr[6]),
        .O(p_1_in[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[7]),
        .Q(Q[4]),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[8]),
        .Q(Q[5]),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[0]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[1]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[2]),
        .Q(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[3]),
        .Q(Q[0]),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[4]),
        .Q(Q[1]),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[5]),
        .Q(Q[2]),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(p_1_in[6]),
        .Q(Q[3]),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h40000040)) 
    \wrap_burst_total[0]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[2]),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \wrap_burst_total[1]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[3]),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[0] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[1] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[2] ),
        .R(\save_init_bram_addr_ld_reg[3]_0 ));
endmodule

module design_1_axi_bram_ctrl_0_0_wrap_brst_rd
   (\GEN_RD_CMD_OPT.arsize_reg_reg[1] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ,
    D,
    \save_init_bram_addr_ld_reg_reg[11]_0 ,
    \wrap_burst_total_reg_reg[2]_0 ,
    \wrap_burst_total_reg_reg[2]_1 ,
    \wrap_burst_total_reg_reg[0]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3] ,
    \wrap_burst_total_reg[2] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ,
    \wrap_burst_total_reg_reg[2]_2 ,
    s_axi_arlen_2_sp_1,
    bram_addr_a,
    \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ,
    SR,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg ,
    arsize_reg,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ,
    Q,
    curr_wrap_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ,
    \bram_addr_a[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[3]_3 ,
    Arb2AR_Active,
    \wrap_burst_total_reg_reg[0]_1 ,
    s_axi_arvalid,
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4]_0 ,
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ,
    s_axi_arlen,
    \wrap_burst_total_reg_reg[0]_2 ,
    s_axi_aresetn,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ,
    \GEN_RD_CMD_OPT.wrap_addr_assign_reg_3 ,
    \save_init_bram_addr_ld_reg_reg[11]_1 ,
    s_axi_aclk,
    \save_init_bram_addr_ld_reg_reg[3]_0 ,
    \wrap_burst_total_reg_reg[2]_3 );
  output \GEN_RD_CMD_OPT.arsize_reg_reg[1] ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ;
  output [8:0]D;
  output [5:0]\save_init_bram_addr_ld_reg_reg[11]_0 ;
  output [2:0]\wrap_burst_total_reg_reg[2]_0 ;
  output \wrap_burst_total_reg_reg[2]_1 ;
  output \wrap_burst_total_reg_reg[0]_0 ;
  output [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  output \wrap_burst_total_reg[2] ;
  output \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ;
  output \wrap_burst_total_reg_reg[2]_2 ;
  output s_axi_arlen_2_sp_1;
  output [8:0]bram_addr_a;
  output \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ;
  output [0:0]SR;
  output \GEN_RD_CMD_OPT.wrap_addr_assign_reg ;
  input [0:0]arsize_reg;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ;
  input [9:0]Q;
  input curr_wrap_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ;
  input [9:0]s_axi_araddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  input [9:0]\bram_addr_a[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[3]_3 ;
  input Arb2AR_Active;
  input \wrap_burst_total_reg_reg[0]_1 ;
  input s_axi_arvalid;
  input \ADDR_SNG_PORT.bram_addr_int[4]_i_2_0 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4]_0 ;
  input \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ;
  input [3:0]s_axi_arlen;
  input [1:0]\wrap_burst_total_reg_reg[0]_2 ;
  input s_axi_aresetn;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ;
  input \GEN_RD_CMD_OPT.wrap_addr_assign_reg_3 ;
  input [5:0]\save_init_bram_addr_ld_reg_reg[11]_1 ;
  input s_axi_aclk;
  input \save_init_bram_addr_ld_reg_reg[3]_0 ;
  input [1:0]\wrap_burst_total_reg_reg[2]_3 ;

  wire \ADDR_SNG_PORT.bram_addr_int[3]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[3]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[3]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[5]_i_8_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire [0:0]\ADDR_SNG_PORT.bram_addr_int_reg[3] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[3]_3 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire Arb2AR_Active;
  wire [8:0]D;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2_n_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4]_0 ;
  wire \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ;
  wire \GEN_RD_CMD_OPT.arsize_reg_reg[1] ;
  wire \GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ;
  wire \GEN_RD_CMD_OPT.wrap_addr_assign_reg_3 ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [0:0]arsize_reg;
  wire [8:0]bram_addr_a;
  wire \bram_addr_a[10]_INST_0_i_1_n_0 ;
  wire [9:0]\bram_addr_a[11] ;
  wire \bram_addr_a[11]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[3]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[3]_INST_0_i_2_n_0 ;
  wire \bram_addr_a[4]_INST_0_i_2_n_0 ;
  wire \bram_addr_a[4]_INST_0_i_3_n_0 ;
  wire \bram_addr_a[4]_INST_0_i_4_n_0 ;
  wire \bram_addr_a[4]_INST_0_i_5_n_0 ;
  wire \bram_addr_a[5]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[5]_INST_0_i_2_n_0 ;
  wire \bram_addr_a[6]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[7]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[8]_INST_0_i_1_n_0 ;
  wire \bram_addr_a[9]_INST_0_i_1_n_0 ;
  wire curr_wrap_burst_reg;
  wire s_axi_aclk;
  wire [9:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arvalid;
  wire [5:3]save_init_bram_addr_ld_reg;
  wire [5:0]\save_init_bram_addr_ld_reg_reg[11]_0 ;
  wire [5:0]\save_init_bram_addr_ld_reg_reg[11]_1 ;
  wire \save_init_bram_addr_ld_reg_reg[3]_0 ;
  wire \wrap_burst_total_reg[0]_i_1_n_0 ;
  wire \wrap_burst_total_reg[2] ;
  wire \wrap_burst_total_reg_reg[0]_0 ;
  wire \wrap_burst_total_reg_reg[0]_1 ;
  wire [1:0]\wrap_burst_total_reg_reg[0]_2 ;
  wire [2:0]\wrap_burst_total_reg_reg[2]_0 ;
  wire \wrap_burst_total_reg_reg[2]_1 ;
  wire \wrap_burst_total_reg_reg[2]_2 ;
  wire [1:0]\wrap_burst_total_reg_reg[2]_3 ;

  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_11 
       (.I0(\GEN_RD_CMD_OPT.arsize_reg_reg[1] ),
        .I1(Q[9]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[11] ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_7 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ),
        .I1(curr_wrap_burst_reg),
        .I2(Q[0]),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I4(arsize_reg),
        .O(\GEN_RD_CMD_OPT.curr_wrap_burst_reg_reg ));
  LUT5 #(
    .INIT(32'hFFFF0EE0)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[3]_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int[3]_i_3_n_0 ),
        .I2(\bram_addr_a[11] [1]),
        .I3(\bram_addr_a[11] [0]),
        .I4(\ADDR_SNG_PORT.bram_addr_int[3]_i_4_n_0 ),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[3] ));
  LUT6 #(
    .INIT(64'h0000FB00FB00FB00)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_3 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I1(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I3(Arb2AR_Active),
        .I4(\wrap_burst_total_reg_reg[0]_1 ),
        .I5(s_axi_arvalid),
        .O(\ADDR_SNG_PORT.bram_addr_int[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_4 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[3]_i_5_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[3]_2 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[3]_3 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7300FFFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[3]_i_5 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I3(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I4(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I5(Q[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF44F4)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ),
        .O(\wrap_burst_total_reg[2] ));
  LUT6 #(
    .INIT(64'hCCC7FFFFFFCFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_4 
       (.I0(Q[3]),
        .I1(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I3(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00A2A200A200A200)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_5 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_0 ),
        .I1(Q[1]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I3(\bram_addr_a[11] [2]),
        .I4(\bram_addr_a[11] [0]),
        .I5(\bram_addr_a[11] [1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hD0FF)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_5 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\wrap_burst_total_reg_reg[2]_0 [1]),
        .O(\wrap_burst_total_reg_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hF4F4FFF4)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_6 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[5]_i_8_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[5]_0 ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[3]_1 ),
        .O(\wrap_burst_total_reg_reg[2]_2 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_7 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I1(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [1]),
        .O(\wrap_burst_total_reg_reg[2]_1 ));
  LUT6 #(
    .INIT(64'hAEEE9FBFFFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_8 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I1(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I5(Q[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_4 
       (.I0(arsize_reg),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I2(Q[0]),
        .I3(curr_wrap_burst_reg),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .O(\GEN_RD_CMD_OPT.arsize_reg_reg[1] ));
  LUT6 #(
    .INIT(64'h0437C4F7FBC83B08)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[10]_i_1 
       (.I0(Q[8]),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(s_axi_araddr[8]),
        .I4(\save_init_bram_addr_ld_reg_reg[11]_0 [4]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_2 
       (.I0(\bram_addr_a[11]_INST_0_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0 ),
        .I2(\bram_addr_a[10]_INST_0_i_1_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5 
       (.I0(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .I1(\bram_addr_a[7]_INST_0_i_1_n_0 ),
        .I2(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I4(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I5(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5565666555655565)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[3]_i_1 
       (.I0(\bram_addr_a[3]_INST_0_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3]_0 ),
        .I2(s_axi_araddr[0]),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I5(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hDDD2)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[4]_i_1 
       (.I0(\bram_addr_a[4]_INST_0_i_2_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4]_0 ),
        .I3(\bram_addr_a[3]_INST_0_i_1_n_0 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[5]_i_1 
       (.I0(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFBC83B080437C4F7)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_1 
       (.I0(Q[4]),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(s_axi_araddr[4]),
        .I4(\save_init_bram_addr_ld_reg_reg[11]_0 [0]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2 
       (.I0(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBC83B080437C4F7)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_1 
       (.I0(Q[5]),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(s_axi_araddr[5]),
        .I4(\save_init_bram_addr_ld_reg_reg[11]_0 [1]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2 
       (.I0(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I2(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBC83B080437C4F7)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_1 
       (.I0(Q[6]),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(s_axi_araddr[6]),
        .I4(\save_init_bram_addr_ld_reg_reg[11]_0 [2]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2 
       (.I0(\bram_addr_a[7]_INST_0_i_1_n_0 ),
        .I1(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I3(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBC83B080437C4F7)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_1 
       (.I0(Q[7]),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(s_axi_araddr[7]),
        .I4(\save_init_bram_addr_ld_reg_reg[11]_0 [3]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2 
       (.I0(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .I1(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[5] ),
        .I3(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .I4(\bram_addr_a[7]_INST_0_i_1_n_0 ),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1F11FFFF1F110000)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_1 
       (.I0(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_0 ),
        .I1(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_1 ),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ),
        .I3(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_2 ),
        .I4(\GEN_RD_CMD_OPT.wrap_addr_assign_reg_3 ),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .O(\GEN_RD_CMD_OPT.wrap_addr_assign_reg ));
  LUT6 #(
    .INIT(64'hFF5FFF00FF557FFF)) 
    \GEN_RD_CMD_OPT.wrap_addr_assign_i_4 
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I4(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I5(\wrap_burst_total_reg_reg[2]_0 [0]),
        .O(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[10]_INST_0 
       (.I0(\bram_addr_a[10]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(\bram_addr_a[11] [8]),
        .O(bram_addr_a[7]));
  LUT6 #(
    .INIT(64'hCCAFAFAFCCA0A0A0)) 
    \bram_addr_a[10]_INST_0_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[11]_0 [4]),
        .I1(s_axi_araddr[8]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(Q[8]),
        .O(\bram_addr_a[10]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[11]_INST_0 
       (.I0(\bram_addr_a[11]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(\bram_addr_a[11] [9]),
        .O(bram_addr_a[8]));
  LUT6 #(
    .INIT(64'hCCAFAFAFCCA0A0A0)) 
    \bram_addr_a[11]_INST_0_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[11]_0 [5]),
        .I1(s_axi_araddr[9]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(Q[9]),
        .O(\bram_addr_a[11]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h5C)) 
    \bram_addr_a[3]_INST_0 
       (.I0(\bram_addr_a[3]_INST_0_i_1_n_0 ),
        .I1(\bram_addr_a[11] [1]),
        .I2(Arb2AR_Active),
        .O(bram_addr_a[0]));
  LUT6 #(
    .INIT(64'h0555011155555111)) 
    \bram_addr_a[3]_INST_0_i_1 
       (.I0(\bram_addr_a[3]_INST_0_i_2_n_0 ),
        .I1(Q[1]),
        .I2(s_axi_arvalid),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I5(s_axi_araddr[1]),
        .O(\bram_addr_a[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC80C000000000000)) 
    \bram_addr_a[3]_INST_0_i_2 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I1(save_init_bram_addr_ld_reg[3]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I3(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I4(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .O(\bram_addr_a[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBFB0)) 
    \bram_addr_a[4]_INST_0 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[4] ),
        .I1(\bram_addr_a[4]_INST_0_i_2_n_0 ),
        .I2(Arb2AR_Active),
        .I3(\bram_addr_a[11] [2]),
        .O(bram_addr_a[1]));
  LUT6 #(
    .INIT(64'h7F7777F7FFFFFFFF)) 
    \bram_addr_a[4]_INST_0_i_2 
       (.I0(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I2(\bram_addr_a[4]_INST_0_i_3_n_0 ),
        .I3(\bram_addr_a[4]_INST_0_i_4_n_0 ),
        .I4(\bram_addr_a[4]_INST_0_i_5_n_0 ),
        .I5(save_init_bram_addr_ld_reg[4]),
        .O(\bram_addr_a[4]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4777777777777777)) 
    \bram_addr_a[4]_INST_0_i_3 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [2]),
        .I1(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arlen[1]),
        .O(\bram_addr_a[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCF555555FF555555)) 
    \bram_addr_a[4]_INST_0_i_4 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arvalid),
        .I4(\wrap_burst_total_reg_reg[0]_1 ),
        .I5(s_axi_arlen_2_sn_1),
        .O(\bram_addr_a[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5D5D515D5D5D5)) 
    \bram_addr_a[4]_INST_0_i_5 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I1(\wrap_burst_total_reg_reg[0]_1 ),
        .I2(s_axi_arvalid),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[1]),
        .I5(s_axi_arlen[3]),
        .O(\bram_addr_a[4]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h5C)) 
    \bram_addr_a[5]_INST_0 
       (.I0(\bram_addr_a[5]_INST_0_i_1_n_0 ),
        .I1(\bram_addr_a[11] [3]),
        .I2(Arb2AR_Active),
        .O(bram_addr_a[2]));
  LUT6 #(
    .INIT(64'h770F770F000FFF0F)) 
    \bram_addr_a[5]_INST_0_i_1 
       (.I0(save_init_bram_addr_ld_reg[5]),
        .I1(\bram_addr_a[5]_INST_0_i_2_n_0 ),
        .I2(s_axi_araddr[3]),
        .I3(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10]_0 ),
        .I4(Q[3]),
        .I5(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .O(\bram_addr_a[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \bram_addr_a[5]_INST_0_i_2 
       (.I0(\wrap_burst_total_reg_reg[2]_0 [0]),
        .I1(\wrap_burst_total_reg_reg[2]_0 [1]),
        .I2(\wrap_burst_total_reg_reg[2]_0 [2]),
        .O(\bram_addr_a[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bram_addr_a[6]_INST_0 
       (.I0(\bram_addr_a[6]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(\bram_addr_a[11] [4]),
        .O(bram_addr_a[3]));
  LUT6 #(
    .INIT(64'h33505050335F5F5F)) 
    \bram_addr_a[6]_INST_0_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[11]_0 [0]),
        .I1(s_axi_araddr[4]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(Q[4]),
        .O(\bram_addr_a[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bram_addr_a[7]_INST_0 
       (.I0(\bram_addr_a[7]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(\bram_addr_a[11] [5]),
        .O(bram_addr_a[4]));
  LUT6 #(
    .INIT(64'h33505050335F5F5F)) 
    \bram_addr_a[7]_INST_0_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[11]_0 [1]),
        .I1(s_axi_araddr[5]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(Q[5]),
        .O(\bram_addr_a[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \bram_addr_a[8]_INST_0 
       (.I0(\bram_addr_a[8]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(\bram_addr_a[11] [6]),
        .O(bram_addr_a[5]));
  LUT6 #(
    .INIT(64'h33505050335F5F5F)) 
    \bram_addr_a[8]_INST_0_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[11]_0 [2]),
        .I1(s_axi_araddr[6]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(Q[6]),
        .O(\bram_addr_a[8]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \bram_addr_a[9]_INST_0 
       (.I0(\bram_addr_a[9]_INST_0_i_1_n_0 ),
        .I1(Arb2AR_Active),
        .I2(\bram_addr_a[11] [7]),
        .O(bram_addr_a[6]));
  LUT6 #(
    .INIT(64'hCCAFAFAFCCA0A0A0)) 
    \bram_addr_a[9]_INST_0_i_1 
       (.I0(\save_init_bram_addr_ld_reg_reg[11]_0 [3]),
        .I1(s_axi_araddr[7]),
        .I2(\GEN_RD_CMD_OPT.GEN_WO_NARROW.bram_addr_int_reg[10] ),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(Q[7]),
        .O(\bram_addr_a[9]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_a_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\save_init_bram_addr_ld_reg_reg[11]_1 [4]),
        .Q(\save_init_bram_addr_ld_reg_reg[11]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\save_init_bram_addr_ld_reg_reg[11]_1 [5]),
        .Q(\save_init_bram_addr_ld_reg_reg[11]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_araddr[1]),
        .Q(save_init_bram_addr_ld_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_araddr[2]),
        .Q(save_init_bram_addr_ld_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\save_init_bram_addr_ld_reg_reg[3]_0 ),
        .D(s_axi_araddr[3]),
        .Q(save_init_bram_addr_ld_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\save_init_bram_addr_ld_reg_reg[11]_1 [0]),
        .Q(\save_init_bram_addr_ld_reg_reg[11]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\save_init_bram_addr_ld_reg_reg[11]_1 [1]),
        .Q(\save_init_bram_addr_ld_reg_reg[11]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\save_init_bram_addr_ld_reg_reg[11]_1 [2]),
        .Q(\save_init_bram_addr_ld_reg_reg[11]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\save_init_bram_addr_ld_reg_reg[11]_1 [3]),
        .Q(\save_init_bram_addr_ld_reg_reg[11]_0 [3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h3F3FBF3F00008000)) 
    \wrap_burst_total_reg[0]_i_1 
       (.I0(s_axi_arlen_2_sn_1),
        .I1(\wrap_burst_total_reg_reg[0]_1 ),
        .I2(s_axi_arvalid),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[3]),
        .I5(\wrap_burst_total_reg_reg[2]_0 [0]),
        .O(\wrap_burst_total_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAC3C3C355C3C3C3)) 
    \wrap_burst_total_reg[0]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(\wrap_burst_total_reg_reg[0]_2 [1]),
        .I2(\wrap_burst_total_reg_reg[0]_2 [0]),
        .I3(\wrap_burst_total_reg_reg[0]_1 ),
        .I4(s_axi_arvalid),
        .I5(s_axi_arlen[1]),
        .O(s_axi_arlen_2_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wrap_burst_total_reg[0]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_reg[2]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wrap_burst_total_reg_reg[2]_3 [0]),
        .Q(\wrap_burst_total_reg_reg[2]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\wrap_burst_total_reg_reg[2]_3 [1]),
        .Q(\wrap_burst_total_reg_reg[2]_0 [2]),
        .R(SR));
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
