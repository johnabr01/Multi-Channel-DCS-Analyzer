// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Feb 23 06:28:06 2026
// Host        : JohnWorkstat running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_intensityRebin_0_0_sim_netlist.v
// Design      : design_1_intensityRebin_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_intensityRebin_0_0,intensityRebin,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "intensityRebin,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    countIn,
    countInValid,
    intensityOut,
    intensityOutValid);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 resetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [7:0]countIn;
  input countInValid;
  output [15:0]intensityOut;
  output intensityOutValid;

  wire clk;
  wire [7:0]countIn;
  wire countInValid;
  wire [15:0]intensityOut;
  wire intensityOutValid;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_intensityRebin U0
       (.clk(clk),
        .countIn(countIn),
        .countInValid(countInValid),
        .intensityOut(intensityOut),
        .intensityOutValid(intensityOutValid),
        .resetn(resetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_intensityRebin
   (intensityOut,
    intensityOutValid,
    countInValid,
    resetn,
    clk,
    countIn);
  output [15:0]intensityOut;
  output intensityOutValid;
  input countInValid;
  input resetn;
  input clk;
  input [7:0]countIn;

  wire \accumReg[15]_i_1_n_0 ;
  wire \accumReg[15]_i_3_n_0 ;
  wire \accumReg[15]_i_4_n_0 ;
  wire \accumReg[15]_i_5_n_0 ;
  wire \accumReg[3]_i_2_n_0 ;
  wire \accumReg[3]_i_3_n_0 ;
  wire \accumReg[3]_i_4_n_0 ;
  wire \accumReg[3]_i_5_n_0 ;
  wire \accumReg[7]_i_2_n_0 ;
  wire \accumReg[7]_i_3_n_0 ;
  wire \accumReg[7]_i_4_n_0 ;
  wire \accumReg[7]_i_5_n_0 ;
  wire \accumReg_reg[11]_i_1_n_0 ;
  wire \accumReg_reg[11]_i_1_n_1 ;
  wire \accumReg_reg[11]_i_1_n_2 ;
  wire \accumReg_reg[11]_i_1_n_3 ;
  wire \accumReg_reg[11]_i_1_n_4 ;
  wire \accumReg_reg[11]_i_1_n_5 ;
  wire \accumReg_reg[11]_i_1_n_6 ;
  wire \accumReg_reg[11]_i_1_n_7 ;
  wire \accumReg_reg[15]_i_2_n_1 ;
  wire \accumReg_reg[15]_i_2_n_2 ;
  wire \accumReg_reg[15]_i_2_n_3 ;
  wire \accumReg_reg[15]_i_2_n_4 ;
  wire \accumReg_reg[15]_i_2_n_5 ;
  wire \accumReg_reg[15]_i_2_n_6 ;
  wire \accumReg_reg[15]_i_2_n_7 ;
  wire \accumReg_reg[3]_i_1_n_0 ;
  wire \accumReg_reg[3]_i_1_n_1 ;
  wire \accumReg_reg[3]_i_1_n_2 ;
  wire \accumReg_reg[3]_i_1_n_3 ;
  wire \accumReg_reg[3]_i_1_n_4 ;
  wire \accumReg_reg[3]_i_1_n_5 ;
  wire \accumReg_reg[3]_i_1_n_6 ;
  wire \accumReg_reg[3]_i_1_n_7 ;
  wire \accumReg_reg[7]_i_1_n_0 ;
  wire \accumReg_reg[7]_i_1_n_1 ;
  wire \accumReg_reg[7]_i_1_n_2 ;
  wire \accumReg_reg[7]_i_1_n_3 ;
  wire \accumReg_reg[7]_i_1_n_4 ;
  wire \accumReg_reg[7]_i_1_n_5 ;
  wire \accumReg_reg[7]_i_1_n_6 ;
  wire \accumReg_reg[7]_i_1_n_7 ;
  wire \accumulation[0]_i_1_n_0 ;
  wire \accumulation[0]_i_3_n_0 ;
  wire \accumulation[0]_i_4_n_0 ;
  wire \accumulation[0]_i_5_n_0 ;
  wire \accumulation[0]_i_6_n_0 ;
  wire \accumulation[4]_i_2_n_0 ;
  wire \accumulation[4]_i_3_n_0 ;
  wire \accumulation[4]_i_4_n_0 ;
  wire \accumulation[4]_i_5_n_0 ;
  wire [15:0]accumulation_reg;
  wire \accumulation_reg[0]_i_2_n_0 ;
  wire \accumulation_reg[0]_i_2_n_1 ;
  wire \accumulation_reg[0]_i_2_n_2 ;
  wire \accumulation_reg[0]_i_2_n_3 ;
  wire \accumulation_reg[0]_i_2_n_4 ;
  wire \accumulation_reg[0]_i_2_n_5 ;
  wire \accumulation_reg[0]_i_2_n_6 ;
  wire \accumulation_reg[0]_i_2_n_7 ;
  wire \accumulation_reg[12]_i_1_n_1 ;
  wire \accumulation_reg[12]_i_1_n_2 ;
  wire \accumulation_reg[12]_i_1_n_3 ;
  wire \accumulation_reg[12]_i_1_n_4 ;
  wire \accumulation_reg[12]_i_1_n_5 ;
  wire \accumulation_reg[12]_i_1_n_6 ;
  wire \accumulation_reg[12]_i_1_n_7 ;
  wire \accumulation_reg[4]_i_1_n_0 ;
  wire \accumulation_reg[4]_i_1_n_1 ;
  wire \accumulation_reg[4]_i_1_n_2 ;
  wire \accumulation_reg[4]_i_1_n_3 ;
  wire \accumulation_reg[4]_i_1_n_4 ;
  wire \accumulation_reg[4]_i_1_n_5 ;
  wire \accumulation_reg[4]_i_1_n_6 ;
  wire \accumulation_reg[4]_i_1_n_7 ;
  wire \accumulation_reg[8]_i_1_n_0 ;
  wire \accumulation_reg[8]_i_1_n_1 ;
  wire \accumulation_reg[8]_i_1_n_2 ;
  wire \accumulation_reg[8]_i_1_n_3 ;
  wire \accumulation_reg[8]_i_1_n_4 ;
  wire \accumulation_reg[8]_i_1_n_5 ;
  wire \accumulation_reg[8]_i_1_n_6 ;
  wire \accumulation_reg[8]_i_1_n_7 ;
  wire clk;
  wire [7:0]countIn;
  wire countInValid;
  wire [15:1]data0;
  wire [15:0]intensityOut;
  wire intensityOutValid;
  wire intensityOutValidLocal_i_1_n_0;
  wire p_0_in;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [15:0]rebinCounter;
  wire \rebinCounter[15]_i_3_n_0 ;
  wire \rebinCounter_reg_n_0_[0] ;
  wire \rebinCounter_reg_n_0_[10] ;
  wire \rebinCounter_reg_n_0_[11] ;
  wire \rebinCounter_reg_n_0_[12] ;
  wire \rebinCounter_reg_n_0_[13] ;
  wire \rebinCounter_reg_n_0_[14] ;
  wire \rebinCounter_reg_n_0_[15] ;
  wire \rebinCounter_reg_n_0_[1] ;
  wire \rebinCounter_reg_n_0_[2] ;
  wire \rebinCounter_reg_n_0_[3] ;
  wire \rebinCounter_reg_n_0_[4] ;
  wire \rebinCounter_reg_n_0_[5] ;
  wire \rebinCounter_reg_n_0_[6] ;
  wire \rebinCounter_reg_n_0_[7] ;
  wire \rebinCounter_reg_n_0_[8] ;
  wire \rebinCounter_reg_n_0_[9] ;
  wire resetn;
  wire [3:3]\NLW_accumReg_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_accumulation_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h4000)) 
    \accumReg[15]_i_1 
       (.I0(\accumReg[15]_i_3_n_0 ),
        .I1(countInValid),
        .I2(\accumReg[15]_i_4_n_0 ),
        .I3(resetn),
        .O(\accumReg[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \accumReg[15]_i_3 
       (.I0(\rebinCounter_reg_n_0_[15] ),
        .I1(\rebinCounter_reg_n_0_[1] ),
        .I2(\rebinCounter_reg_n_0_[2] ),
        .I3(\rebinCounter_reg_n_0_[14] ),
        .I4(\rebinCounter_reg_n_0_[10] ),
        .I5(\rebinCounter_reg_n_0_[11] ),
        .O(\accumReg[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \accumReg[15]_i_4 
       (.I0(\rebinCounter_reg_n_0_[5] ),
        .I1(\rebinCounter_reg_n_0_[9] ),
        .I2(\rebinCounter_reg_n_0_[0] ),
        .I3(\rebinCounter_reg_n_0_[6] ),
        .I4(\accumReg[15]_i_5_n_0 ),
        .O(\accumReg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \accumReg[15]_i_5 
       (.I0(\rebinCounter_reg_n_0_[8] ),
        .I1(\rebinCounter_reg_n_0_[4] ),
        .I2(\rebinCounter_reg_n_0_[7] ),
        .I3(\rebinCounter_reg_n_0_[3] ),
        .I4(\rebinCounter_reg_n_0_[13] ),
        .I5(\rebinCounter_reg_n_0_[12] ),
        .O(\accumReg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[3]_i_2 
       (.I0(accumulation_reg[3]),
        .I1(countIn[3]),
        .O(\accumReg[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[3]_i_3 
       (.I0(accumulation_reg[2]),
        .I1(countIn[2]),
        .O(\accumReg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[3]_i_4 
       (.I0(accumulation_reg[1]),
        .I1(countIn[1]),
        .O(\accumReg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[3]_i_5 
       (.I0(accumulation_reg[0]),
        .I1(countIn[0]),
        .O(\accumReg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[7]_i_2 
       (.I0(accumulation_reg[7]),
        .I1(countIn[7]),
        .O(\accumReg[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[7]_i_3 
       (.I0(accumulation_reg[6]),
        .I1(countIn[6]),
        .O(\accumReg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[7]_i_4 
       (.I0(accumulation_reg[5]),
        .I1(countIn[5]),
        .O(\accumReg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumReg[7]_i_5 
       (.I0(accumulation_reg[4]),
        .I1(countIn[4]),
        .O(\accumReg[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[0] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[3]_i_1_n_7 ),
        .Q(intensityOut[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[10] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[11]_i_1_n_5 ),
        .Q(intensityOut[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[11] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[11]_i_1_n_4 ),
        .Q(intensityOut[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accumReg_reg[11]_i_1 
       (.CI(\accumReg_reg[7]_i_1_n_0 ),
        .CO({\accumReg_reg[11]_i_1_n_0 ,\accumReg_reg[11]_i_1_n_1 ,\accumReg_reg[11]_i_1_n_2 ,\accumReg_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumReg_reg[11]_i_1_n_4 ,\accumReg_reg[11]_i_1_n_5 ,\accumReg_reg[11]_i_1_n_6 ,\accumReg_reg[11]_i_1_n_7 }),
        .S(accumulation_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[12] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[15]_i_2_n_7 ),
        .Q(intensityOut[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[13] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[15]_i_2_n_6 ),
        .Q(intensityOut[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[14] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[15]_i_2_n_5 ),
        .Q(intensityOut[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[15] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[15]_i_2_n_4 ),
        .Q(intensityOut[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accumReg_reg[15]_i_2 
       (.CI(\accumReg_reg[11]_i_1_n_0 ),
        .CO({\NLW_accumReg_reg[15]_i_2_CO_UNCONNECTED [3],\accumReg_reg[15]_i_2_n_1 ,\accumReg_reg[15]_i_2_n_2 ,\accumReg_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumReg_reg[15]_i_2_n_4 ,\accumReg_reg[15]_i_2_n_5 ,\accumReg_reg[15]_i_2_n_6 ,\accumReg_reg[15]_i_2_n_7 }),
        .S(accumulation_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[1] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[3]_i_1_n_6 ),
        .Q(intensityOut[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[2] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[3]_i_1_n_5 ),
        .Q(intensityOut[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[3] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[3]_i_1_n_4 ),
        .Q(intensityOut[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accumReg_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\accumReg_reg[3]_i_1_n_0 ,\accumReg_reg[3]_i_1_n_1 ,\accumReg_reg[3]_i_1_n_2 ,\accumReg_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(accumulation_reg[3:0]),
        .O({\accumReg_reg[3]_i_1_n_4 ,\accumReg_reg[3]_i_1_n_5 ,\accumReg_reg[3]_i_1_n_6 ,\accumReg_reg[3]_i_1_n_7 }),
        .S({\accumReg[3]_i_2_n_0 ,\accumReg[3]_i_3_n_0 ,\accumReg[3]_i_4_n_0 ,\accumReg[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[4] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[7]_i_1_n_7 ),
        .Q(intensityOut[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[5] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[7]_i_1_n_6 ),
        .Q(intensityOut[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[6] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[7]_i_1_n_5 ),
        .Q(intensityOut[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[7] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[7]_i_1_n_4 ),
        .Q(intensityOut[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \accumReg_reg[7]_i_1 
       (.CI(\accumReg_reg[3]_i_1_n_0 ),
        .CO({\accumReg_reg[7]_i_1_n_0 ,\accumReg_reg[7]_i_1_n_1 ,\accumReg_reg[7]_i_1_n_2 ,\accumReg_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(accumulation_reg[7:4]),
        .O({\accumReg_reg[7]_i_1_n_4 ,\accumReg_reg[7]_i_1_n_5 ,\accumReg_reg[7]_i_1_n_6 ,\accumReg_reg[7]_i_1_n_7 }),
        .S({\accumReg[7]_i_2_n_0 ,\accumReg[7]_i_3_n_0 ,\accumReg[7]_i_4_n_0 ,\accumReg[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[8] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[11]_i_1_n_7 ),
        .Q(intensityOut[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \accumReg_reg[9] 
       (.C(clk),
        .CE(\accumReg[15]_i_1_n_0 ),
        .D(\accumReg_reg[11]_i_1_n_6 ),
        .Q(intensityOut[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h40FF)) 
    \accumulation[0]_i_1 
       (.I0(\accumReg[15]_i_3_n_0 ),
        .I1(countInValid),
        .I2(\accumReg[15]_i_4_n_0 ),
        .I3(resetn),
        .O(\accumulation[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[0]_i_3 
       (.I0(countIn[3]),
        .I1(accumulation_reg[3]),
        .O(\accumulation[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[0]_i_4 
       (.I0(countIn[2]),
        .I1(accumulation_reg[2]),
        .O(\accumulation[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[0]_i_5 
       (.I0(countIn[1]),
        .I1(accumulation_reg[1]),
        .O(\accumulation[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[0]_i_6 
       (.I0(countIn[0]),
        .I1(accumulation_reg[0]),
        .O(\accumulation[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[4]_i_2 
       (.I0(countIn[7]),
        .I1(accumulation_reg[7]),
        .O(\accumulation[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[4]_i_3 
       (.I0(countIn[6]),
        .I1(accumulation_reg[6]),
        .O(\accumulation[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[4]_i_4 
       (.I0(countIn[5]),
        .I1(accumulation_reg[5]),
        .O(\accumulation[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \accumulation[4]_i_5 
       (.I0(countIn[4]),
        .I1(accumulation_reg[4]),
        .O(\accumulation[4]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[0] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[0]_i_2_n_7 ),
        .Q(accumulation_reg[0]),
        .R(\accumulation[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulation_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\accumulation_reg[0]_i_2_n_0 ,\accumulation_reg[0]_i_2_n_1 ,\accumulation_reg[0]_i_2_n_2 ,\accumulation_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(countIn[3:0]),
        .O({\accumulation_reg[0]_i_2_n_4 ,\accumulation_reg[0]_i_2_n_5 ,\accumulation_reg[0]_i_2_n_6 ,\accumulation_reg[0]_i_2_n_7 }),
        .S({\accumulation[0]_i_3_n_0 ,\accumulation[0]_i_4_n_0 ,\accumulation[0]_i_5_n_0 ,\accumulation[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[10] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[8]_i_1_n_5 ),
        .Q(accumulation_reg[10]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[11] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[8]_i_1_n_4 ),
        .Q(accumulation_reg[11]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[12] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[12]_i_1_n_7 ),
        .Q(accumulation_reg[12]),
        .R(\accumulation[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulation_reg[12]_i_1 
       (.CI(\accumulation_reg[8]_i_1_n_0 ),
        .CO({\NLW_accumulation_reg[12]_i_1_CO_UNCONNECTED [3],\accumulation_reg[12]_i_1_n_1 ,\accumulation_reg[12]_i_1_n_2 ,\accumulation_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulation_reg[12]_i_1_n_4 ,\accumulation_reg[12]_i_1_n_5 ,\accumulation_reg[12]_i_1_n_6 ,\accumulation_reg[12]_i_1_n_7 }),
        .S(accumulation_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[13] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[12]_i_1_n_6 ),
        .Q(accumulation_reg[13]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[14] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[12]_i_1_n_5 ),
        .Q(accumulation_reg[14]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[15] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[12]_i_1_n_4 ),
        .Q(accumulation_reg[15]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[1] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[0]_i_2_n_6 ),
        .Q(accumulation_reg[1]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[2] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[0]_i_2_n_5 ),
        .Q(accumulation_reg[2]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[3] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[0]_i_2_n_4 ),
        .Q(accumulation_reg[3]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[4] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[4]_i_1_n_7 ),
        .Q(accumulation_reg[4]),
        .R(\accumulation[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulation_reg[4]_i_1 
       (.CI(\accumulation_reg[0]_i_2_n_0 ),
        .CO({\accumulation_reg[4]_i_1_n_0 ,\accumulation_reg[4]_i_1_n_1 ,\accumulation_reg[4]_i_1_n_2 ,\accumulation_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(countIn[7:4]),
        .O({\accumulation_reg[4]_i_1_n_4 ,\accumulation_reg[4]_i_1_n_5 ,\accumulation_reg[4]_i_1_n_6 ,\accumulation_reg[4]_i_1_n_7 }),
        .S({\accumulation[4]_i_2_n_0 ,\accumulation[4]_i_3_n_0 ,\accumulation[4]_i_4_n_0 ,\accumulation[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[5] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[4]_i_1_n_6 ),
        .Q(accumulation_reg[5]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[6] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[4]_i_1_n_5 ),
        .Q(accumulation_reg[6]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[7] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[4]_i_1_n_4 ),
        .Q(accumulation_reg[7]),
        .R(\accumulation[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[8] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[8]_i_1_n_7 ),
        .Q(accumulation_reg[8]),
        .R(\accumulation[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \accumulation_reg[8]_i_1 
       (.CI(\accumulation_reg[4]_i_1_n_0 ),
        .CO({\accumulation_reg[8]_i_1_n_0 ,\accumulation_reg[8]_i_1_n_1 ,\accumulation_reg[8]_i_1_n_2 ,\accumulation_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\accumulation_reg[8]_i_1_n_4 ,\accumulation_reg[8]_i_1_n_5 ,\accumulation_reg[8]_i_1_n_6 ,\accumulation_reg[8]_i_1_n_7 }),
        .S(accumulation_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \accumulation_reg[9] 
       (.C(clk),
        .CE(countInValid),
        .D(\accumulation_reg[8]_i_1_n_6 ),
        .Q(accumulation_reg[9]),
        .R(\accumulation[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    intensityOutValidLocal_i_1
       (.I0(\accumReg[15]_i_4_n_0 ),
        .I1(countInValid),
        .I2(\accumReg[15]_i_3_n_0 ),
        .I3(resetn),
        .O(intensityOutValidLocal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    intensityOutValidLocal_reg
       (.C(clk),
        .CE(1'b1),
        .D(intensityOutValidLocal_i_1_n_0),
        .Q(intensityOutValid),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\rebinCounter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\rebinCounter_reg_n_0_[4] ,\rebinCounter_reg_n_0_[3] ,\rebinCounter_reg_n_0_[2] ,\rebinCounter_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\rebinCounter_reg_n_0_[8] ,\rebinCounter_reg_n_0_[7] ,\rebinCounter_reg_n_0_[6] ,\rebinCounter_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\rebinCounter_reg_n_0_[12] ,\rebinCounter_reg_n_0_[11] ,\rebinCounter_reg_n_0_[10] ,\rebinCounter_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],data0[15:13]}),
        .S({1'b0,\rebinCounter_reg_n_0_[15] ,\rebinCounter_reg_n_0_[14] ,\rebinCounter_reg_n_0_[13] }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rebinCounter[0]_i_1 
       (.I0(\rebinCounter_reg_n_0_[0] ),
        .O(rebinCounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[10]_i_1 
       (.I0(data0[10]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[11]_i_1 
       (.I0(data0[11]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[12]_i_1 
       (.I0(data0[12]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[13]_i_1 
       (.I0(data0[13]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[14]_i_1 
       (.I0(data0[14]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \rebinCounter[15]_i_1 
       (.I0(resetn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[15]_i_2 
       (.I0(data0[15]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[15]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \rebinCounter[15]_i_3 
       (.I0(\accumReg[15]_i_5_n_0 ),
        .I1(\rebinCounter_reg_n_0_[6] ),
        .I2(\rebinCounter_reg_n_0_[0] ),
        .I3(\rebinCounter_reg_n_0_[9] ),
        .I4(\rebinCounter_reg_n_0_[5] ),
        .I5(\accumReg[15]_i_3_n_0 ),
        .O(\rebinCounter[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[1]_i_1 
       (.I0(data0[1]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[2]_i_1 
       (.I0(data0[2]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[3]_i_1 
       (.I0(data0[3]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[4]_i_1 
       (.I0(data0[4]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[5]_i_1 
       (.I0(data0[5]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[6]_i_1 
       (.I0(data0[6]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[7]_i_1 
       (.I0(data0[7]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[8]_i_1 
       (.I0(data0[8]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rebinCounter[9]_i_1 
       (.I0(data0[9]),
        .I1(\rebinCounter[15]_i_3_n_0 ),
        .O(rebinCounter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[0] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[0]),
        .Q(\rebinCounter_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[10] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[10]),
        .Q(\rebinCounter_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[11] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[11]),
        .Q(\rebinCounter_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[12] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[12]),
        .Q(\rebinCounter_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[13] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[13]),
        .Q(\rebinCounter_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[14] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[14]),
        .Q(\rebinCounter_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[15] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[15]),
        .Q(\rebinCounter_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[1] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[1]),
        .Q(\rebinCounter_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[2] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[2]),
        .Q(\rebinCounter_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[3] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[3]),
        .Q(\rebinCounter_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[4] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[4]),
        .Q(\rebinCounter_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[5] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[5]),
        .Q(\rebinCounter_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[6] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[6]),
        .Q(\rebinCounter_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[7] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[7]),
        .Q(\rebinCounter_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[8] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[8]),
        .Q(\rebinCounter_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \rebinCounter_reg[9] 
       (.C(clk),
        .CE(countInValid),
        .D(rebinCounter[9]),
        .Q(\rebinCounter_reg_n_0_[9] ),
        .R(p_0_in));
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
