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

-- IP VLNV: xilinx.com:module_ref:uart_aggregator:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_uart_aggregator_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    UART_TX : OUT STD_LOGIC;
    UART_RX : IN STD_LOGIC;
    intensityIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    intensityInValid : IN STD_LOGIC;
    correlationIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    correlationInValid : IN STD_LOGIC;
    correlationInLast : IN STD_LOGIC;
    analyzerIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    analyzerInValid : IN STD_LOGIC;
    analyzerInLast : IN STD_LOGIC;
    analyzerInReady : OUT STD_LOGIC;
    start : OUT STD_LOGIC;
    stop : OUT STD_LOGIC;
    error : OUT STD_LOGIC
  );
END design_1_uart_aggregator_0_0;

ARCHITECTURE design_1_uart_aggregator_0_0_arch OF design_1_uart_aggregator_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_uart_aggregator_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT uart_aggregator IS
    GENERIC (
      correlationLength : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      resetn : IN STD_LOGIC;
      UART_TX : OUT STD_LOGIC;
      UART_RX : IN STD_LOGIC;
      intensityIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      intensityInValid : IN STD_LOGIC;
      correlationIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      correlationInValid : IN STD_LOGIC;
      correlationInLast : IN STD_LOGIC;
      analyzerIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      analyzerInValid : IN STD_LOGIC;
      analyzerInLast : IN STD_LOGIC;
      analyzerInReady : OUT STD_LOGIC;
      start : OUT STD_LOGIC;
      stop : OUT STD_LOGIC;
      error : OUT STD_LOGIC
    );
  END COMPONENT uart_aggregator;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_uart_aggregator_0_0_arch: ARCHITECTURE IS "uart_aggregator,Vivado 2023.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_uart_aggregator_0_0_arch : ARCHITECTURE IS "design_1_uart_aggregator_0_0,uart_aggregator,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_uart_aggregator_0_0_arch: ARCHITECTURE IS "design_1_uart_aggregator_0_0,uart_aggregator,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=uart_aggregator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,correlationLength=64}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_uart_aggregator_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF analyzerIn: SIGNAL IS "XIL_INTERFACENAME analyzerFIFOInput, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF analyzerIn: SIGNAL IS "xilinx.com:interface:axis:1.0 analyzerFIFOInput TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF analyzerInLast: SIGNAL IS "xilinx.com:interface:axis:1.0 analyzerFIFOInput TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF analyzerInReady: SIGNAL IS "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF analyzerInValid: SIGNAL IS "xilinx.com:interface:axis:1.0 analyzerFIFOInput TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF analyzerFIFOInput, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF resetn: SIGNAL IS "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF resetn: SIGNAL IS "xilinx.com:signal:reset:1.0 resetn RST";
BEGIN
  U0 : uart_aggregator
    GENERIC MAP (
      correlationLength => 64
    )
    PORT MAP (
      clk => clk,
      resetn => resetn,
      UART_TX => UART_TX,
      UART_RX => UART_RX,
      intensityIn => intensityIn,
      intensityInValid => intensityInValid,
      correlationIn => correlationIn,
      correlationInValid => correlationInValid,
      correlationInLast => correlationInLast,
      analyzerIn => analyzerIn,
      analyzerInValid => analyzerInValid,
      analyzerInLast => analyzerInLast,
      analyzerInReady => analyzerInReady,
      start => start,
      stop => stop,
      error => error
    );
END design_1_uart_aggregator_0_0_arch;
