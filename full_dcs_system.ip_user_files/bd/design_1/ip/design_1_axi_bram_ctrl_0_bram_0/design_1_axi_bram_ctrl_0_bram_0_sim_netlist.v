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
