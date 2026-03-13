-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:countCorrelateWrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_countCorrelateWrapper_0_0 IS
  PORT (
    clk100MHz : IN STD_LOGIC;
    clk300MHz : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    detectorIn : IN STD_LOGIC;
    dataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    addressOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    writeEnable : OUT STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    countOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    countOutValid : OUT STD_LOGIC;
    correlationOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    correlationOutValid : OUT STD_LOGIC;
    correlationOutLast : OUT STD_LOGIC
  );
END design_1_countCorrelateWrapper_0_0;

ARCHITECTURE design_1_countCorrelateWrapper_0_0_arch OF design_1_countCorrelateWrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_countCorrelateWrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT countCorrelateWrapper IS
    PORT (
      clk100MHz : IN STD_LOGIC;
      clk300MHz : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      detectorIn : IN STD_LOGIC;
      dataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      addressOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      writeEnable : OUT STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      countOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      countOutValid : OUT STD_LOGIC;
      correlationOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      correlationOutValid : OUT STD_LOGIC;
      correlationOutLast : OUT STD_LOGIC
    );
  END COMPONENT countCorrelateWrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_countCorrelateWrapper_0_0_arch: ARCHITECTURE IS "countCorrelateWrapper,Vivado 2023.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_countCorrelateWrapper_0_0_arch : ARCHITECTURE IS "design_1_countCorrelateWrapper_0_0,countCorrelateWrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_countCorrelateWrapper_0_0_arch: ARCHITECTURE IS "design_1_countCorrelateWrapper_0_0,countCorrelateWrapper,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=countCorrelateWrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_countCorrelateWrapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PORTWIDTH 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn RST";
BEGIN
  U0 : countCorrelateWrapper
    PORT MAP (
      clk100MHz => clk100MHz,
      clk300MHz => clk300MHz,
      resetn => resetn,
      detectorIn => detectorIn,
      dataOut => dataOut,
      addressOut => addressOut,
      writeEnable => writeEnable,
      interrupt => interrupt,
      countOut => countOut,
      countOutValid => countOutValid,
      correlationOut => correlationOut,
      correlationOutValid => correlationOutValid,
      correlationOutLast => correlationOutLast
    );
END design_1_countCorrelateWrapper_0_0_arch;
