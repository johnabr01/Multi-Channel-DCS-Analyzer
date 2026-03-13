// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Feb 23 06:10:42 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_bram_ctrl_0_bram_0 -prefix
//               design_1_axi_bram_ctrl_0_bram_0_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-3
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57568)
`pragma protect data_block
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
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
