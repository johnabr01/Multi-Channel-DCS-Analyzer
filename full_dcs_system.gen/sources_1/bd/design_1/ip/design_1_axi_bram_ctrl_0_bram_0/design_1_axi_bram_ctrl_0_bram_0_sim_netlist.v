// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Mar 18 22:12:54 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 4096, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_1_axi_bram_ctrl_0_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_6 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57856)
`pragma protect data_block
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
Tw==
`pragma protect end_protected
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
