// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Mar 18 22:12:53 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
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
