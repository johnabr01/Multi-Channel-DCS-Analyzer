// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Feb 23 06:10:42 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57728)
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
