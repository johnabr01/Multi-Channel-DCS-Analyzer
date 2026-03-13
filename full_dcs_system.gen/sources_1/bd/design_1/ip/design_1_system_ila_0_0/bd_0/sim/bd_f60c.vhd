--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_f60c.bd
--Design : bd_f60c
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_f60c is
  port (
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of bd_f60c : entity is "bd_f60c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f60c,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of bd_f60c : entity is "design_1_system_ila_0_0.hwdef";
end bd_f60c;

architecture STRUCTURE of bd_f60c is
  component bd_f60c_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe16 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe19 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_f60c_ila_lib_0;
  component bd_f60c_g_inst_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    slot_0_axis_tvalid : in STD_LOGIC;
    slot_0_axis_tready : in STD_LOGIC;
    slot_0_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    slot_0_axis_tlast : in STD_LOGIC;
    m_slot_0_axis_tvalid : out STD_LOGIC;
    m_slot_0_axis_tready : out STD_LOGIC;
    m_slot_0_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_slot_0_axis_tlast : out STD_LOGIC
  );
  end component bd_f60c_g_inst_0;
  signal Conn_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn_TLAST : STD_LOGIC;
  signal Conn_TREADY : STD_LOGIC;
  signal Conn_TVALID : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal net_slot_0_axis_tdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal net_slot_0_axis_tlast : STD_LOGIC;
  signal net_slot_0_axis_tready : STD_LOGIC;
  signal net_slot_0_axis_tvalid : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe10_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe11_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe12_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe13_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal probe14_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe15_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe8_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal probe9_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal resetn_1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of SLOT_0_AXIS_tlast : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TLAST";
  attribute x_interface_info of SLOT_0_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TREADY";
  attribute x_interface_info of SLOT_0_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of SLOT_0_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 SLOT_0_AXIS TDATA";
  attribute x_interface_parameter of SLOT_0_AXIS_tdata : signal is "XIL_INTERFACENAME SLOT_0_AXIS, CLK_DOMAIN /clk_wiz_0_clk_out1, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0";
begin
  Conn_TDATA(31 downto 0) <= SLOT_0_AXIS_tdata(31 downto 0);
  Conn_TLAST <= SLOT_0_AXIS_tlast;
  Conn_TREADY <= SLOT_0_AXIS_tready;
  Conn_TVALID <= SLOT_0_AXIS_tvalid;
  clk_1 <= clk;
  probe0_1(0) <= probe0(0);
  probe10_1(31 downto 0) <= probe10(31 downto 0);
  probe11_1(0) <= probe11(0);
  probe12_1(0) <= probe12(0);
  probe13_1(7 downto 0) <= probe13(7 downto 0);
  probe14_1(0) <= probe14(0);
  probe15_1(0) <= probe15(0);
  probe1_1(0) <= probe1(0);
  probe2_1(15 downto 0) <= probe2(15 downto 0);
  probe3_1(0) <= probe3(0);
  probe4_1(0) <= probe4(0);
  probe5_1(0) <= probe5(0);
  probe6_1(0) <= probe6(0);
  probe7_1(31 downto 0) <= probe7(31 downto 0);
  probe8_1(31 downto 0) <= probe8(31 downto 0);
  probe9_1(0) <= probe9(0);
  resetn_1 <= resetn;
g_inst: component bd_f60c_g_inst_0
     port map (
      aclk => clk_1,
      aresetn => resetn_1,
      m_slot_0_axis_tdata(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      m_slot_0_axis_tlast => net_slot_0_axis_tlast,
      m_slot_0_axis_tready => net_slot_0_axis_tready,
      m_slot_0_axis_tvalid => net_slot_0_axis_tvalid,
      slot_0_axis_tdata(31 downto 0) => Conn_TDATA(31 downto 0),
      slot_0_axis_tlast => Conn_TLAST,
      slot_0_axis_tready => Conn_TREADY,
      slot_0_axis_tvalid => Conn_TVALID
    );
ila_lib: component bd_f60c_ila_lib_0
     port map (
      clk => clk_1,
      probe0(0) => probe0_1(0),
      probe1(0) => probe1_1(0),
      probe10(31 downto 0) => probe10_1(31 downto 0),
      probe11(0) => probe11_1(0),
      probe12(0) => probe12_1(0),
      probe13(7 downto 0) => probe13_1(7 downto 0),
      probe14(0) => probe14_1(0),
      probe15(0) => probe15_1(0),
      probe16(31 downto 0) => net_slot_0_axis_tdata(31 downto 0),
      probe17(0) => net_slot_0_axis_tvalid,
      probe18(0) => net_slot_0_axis_tready,
      probe19(0) => net_slot_0_axis_tlast,
      probe2(15 downto 0) => probe2_1(15 downto 0),
      probe3(0) => probe3_1(0),
      probe4(0) => probe4_1(0),
      probe5(0) => probe5_1(0),
      probe6(0) => probe6_1(0),
      probe7(31 downto 0) => probe7_1(31 downto 0),
      probe8(31 downto 0) => probe8_1(31 downto 0),
      probe9(0) => probe9_1(0)
    );
end STRUCTURE;
