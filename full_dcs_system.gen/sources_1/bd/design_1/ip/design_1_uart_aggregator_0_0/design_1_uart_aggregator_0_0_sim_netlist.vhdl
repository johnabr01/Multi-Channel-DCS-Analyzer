-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Mar 21 00:37:53 2026
-- Host        : JohnWorkstat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_uart_aggregator_0_0/design_1_uart_aggregator_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_aggregator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a75tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0_UART_CLK_DIV is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_aggregator_0_0_UART_CLK_DIV : entity is "UART_CLK_DIV";
end design_1_uart_aggregator_0_0_UART_CLK_DIV;

architecture STRUCTURE of design_1_uart_aggregator_0_0_UART_CLK_DIV is
  signal clk_div_cnt : STD_LOGIC;
  signal \clk_div_cnt[0]_i_1_n_0\ : STD_LOGIC;
begin
DIV_MARK_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => clk_div_cnt,
      Q => E(0),
      R => '0'
    );
\clk_div_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_div_cnt,
      O => \clk_div_cnt[0]_i_1_n_0\
    );
\clk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \clk_div_cnt[0]_i_1_n_0\,
      Q => clk_div_cnt,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0\ is
  port (
    rx_clk_en : out STD_LOGIC;
    \rx_data_reg[1]\ : out STD_LOGIC;
    DIV_MARK_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    FRAME_ERROR0 : out STD_LOGIC;
    PARITY_ERROR0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    DOUT_VLD0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    \uart_rx_parity_g.rx_parity_error_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rx_parity_error : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    FRAME_ERROR_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    DEB_OUT : in STD_LOGIC;
    rx_bit_count : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0\ : entity is "UART_CLK_DIV";
end \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0\;

architecture STRUCTURE of \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0\ is
  signal DIV_MARK_i_1_n_0 : STD_LOGIC;
  signal \clk_div_cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \^rx_clk_en\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DOUT_VLD_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of FRAME_ERROR_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_pstate[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_pstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_pstate[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of PARITY_ERROR_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_div_cnt[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_div_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \clk_div_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_div_cnt[3]_i_1\ : label is "soft_lutpair2";
begin
  rx_clk_en <= \^rx_clk_en\;
DIV_MARK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => E(0),
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      I2 => \clk_div_cnt_reg_n_0_[1]\,
      I3 => \clk_div_cnt_reg_n_0_[3]\,
      I4 => \clk_div_cnt_reg_n_0_[2]\,
      O => DIV_MARK_i_1_n_0
    );
DIV_MARK_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => DIV_MARK_i_1_n_0,
      Q => \^rx_clk_en\,
      R => '0'
    );
DOUT_VLD_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \^rx_clk_en\,
      I1 => rx_parity_error,
      I2 => DEB_OUT,
      I3 => FRAME_ERROR_reg(4),
      O => DOUT_VLD0
    );
FRAME_ERROR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^rx_clk_en\,
      I1 => DEB_OUT,
      I2 => FRAME_ERROR_reg(4),
      O => FRAME_ERROR0
    );
\FSM_onehot_fsm_pstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^rx_clk_en\,
      I1 => FRAME_ERROR_reg(4),
      I2 => FRAME_ERROR_reg(0),
      I3 => DEB_OUT,
      O => D(0)
    );
\FSM_onehot_fsm_pstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^rx_clk_en\,
      I1 => FRAME_ERROR_reg(1),
      I2 => DEB_OUT,
      I3 => FRAME_ERROR_reg(0),
      O => D(1)
    );
\FSM_onehot_fsm_pstate[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF007F00FF00"
    )
        port map (
      I0 => rx_bit_count(0),
      I1 => rx_bit_count(1),
      I2 => rx_bit_count(2),
      I3 => FRAME_ERROR_reg(2),
      I4 => \^rx_clk_en\,
      I5 => FRAME_ERROR_reg(1),
      O => D(2)
    );
\FSM_onehot_fsm_pstate[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80008000FFFF0000"
    )
        port map (
      I0 => rx_bit_count(1),
      I1 => rx_bit_count(0),
      I2 => rx_bit_count(2),
      I3 => FRAME_ERROR_reg(2),
      I4 => FRAME_ERROR_reg(3),
      I5 => \^rx_clk_en\,
      O => D(3)
    );
\FSM_onehot_fsm_pstate[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => FRAME_ERROR_reg(4),
      I1 => FRAME_ERROR_reg(3),
      I2 => \^rx_clk_en\,
      O => D(4)
    );
PARITY_ERROR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^rx_clk_en\,
      I1 => rx_parity_error,
      I2 => FRAME_ERROR_reg(4),
      O => PARITY_ERROR0
    );
\clk_div_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[0]\,
      O => \clk_div_cnt[0]_i_1__0_n_0\
    );
\clk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[1]\,
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      O => \clk_div_cnt[1]_i_1_n_0\
    );
\clk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[1]\,
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      I2 => \clk_div_cnt_reg_n_0_[2]\,
      O => \clk_div_cnt[2]_i_1_n_0\
    );
\clk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[1]\,
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      I2 => \clk_div_cnt_reg_n_0_[2]\,
      I3 => \clk_div_cnt_reg_n_0_[3]\,
      O => \clk_div_cnt[3]_i_1_n_0\
    );
\clk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[0]_i_1__0_n_0\,
      Q => \clk_div_cnt_reg_n_0_[0]\,
      R => FRAME_ERROR_reg(0)
    );
\clk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[1]_i_1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[1]\,
      R => FRAME_ERROR_reg(0)
    );
\clk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[2]_i_1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[2]\,
      R => FRAME_ERROR_reg(0)
    );
\clk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[3]_i_1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[3]\,
      R => FRAME_ERROR_reg(0)
    );
\rx_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rx_clk_en\,
      I1 => FRAME_ERROR_reg(2),
      O => DIV_MARK_reg_0(0)
    );
\uart_rx_parity_g.rx_parity_error_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996FFFF69960000"
    )
        port map (
      I0 => \uart_rx_parity_g.rx_parity_error_reg\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => \^rx_clk_en\,
      I5 => rx_parity_error,
      O => \rx_data_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1\ is
  port (
    tx_clk_en : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_bit_count : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1\ : entity is "UART_CLK_DIV";
end \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1\;

architecture STRUCTURE of \design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1\ is
  signal \DIV_MARK_i_1__0_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \clk_div_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \^tx_clk_en\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_tx_pstate[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_pstate[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_div_cnt[0]_i_1__1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_div_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_div_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_div_cnt[3]_i_1\ : label is "soft_lutpair8";
begin
  tx_clk_en <= \^tx_clk_en\;
\DIV_MARK_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => E(0),
      I1 => \clk_div_cnt_reg_n_0_[1]\,
      I2 => \clk_div_cnt_reg_n_0_[0]\,
      I3 => \clk_div_cnt_reg_n_0_[3]\,
      I4 => \clk_div_cnt_reg_n_0_[2]\,
      O => \DIV_MARK_i_1__0_n_0\
    );
DIV_MARK_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \DIV_MARK_i_1__0_n_0\,
      Q => \^tx_clk_en\,
      R => '0'
    );
\FSM_onehot_tx_pstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E0A"
    )
        port map (
      I0 => Q(0),
      I1 => \^tx_clk_en\,
      I2 => valid,
      I3 => Q(5),
      O => D(0)
    );
\FSM_onehot_tx_pstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF44F444"
    )
        port map (
      I0 => \^tx_clk_en\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => valid,
      I4 => Q(5),
      O => D(1)
    );
\FSM_onehot_tx_pstate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Q(1),
      I1 => \^tx_clk_en\,
      I2 => Q(2),
      O => D(2)
    );
\FSM_onehot_tx_pstate[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF88888888"
    )
        port map (
      I0 => Q(2),
      I1 => \^tx_clk_en\,
      I2 => tx_bit_count(2),
      I3 => tx_bit_count(0),
      I4 => tx_bit_count(1),
      I5 => Q(3),
      O => D(3)
    );
\FSM_onehot_tx_pstate[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => tx_bit_count(2),
      I1 => tx_bit_count(0),
      I2 => tx_bit_count(1),
      I3 => Q(3),
      I4 => \^tx_clk_en\,
      I5 => Q(4),
      O => D(4)
    );
\FSM_onehot_tx_pstate[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => Q(4),
      I1 => valid,
      I2 => \^tx_clk_en\,
      I3 => Q(5),
      O => D(5)
    );
\clk_div_cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[0]\,
      O => \clk_div_cnt[0]_i_1__1_n_0\
    );
\clk_div_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[1]\,
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      O => \clk_div_cnt[1]_i_1_n_0\
    );
\clk_div_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[1]\,
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      I2 => \clk_div_cnt_reg_n_0_[2]\,
      O => \clk_div_cnt[2]_i_1_n_0\
    );
\clk_div_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \clk_div_cnt_reg_n_0_[1]\,
      I1 => \clk_div_cnt_reg_n_0_[0]\,
      I2 => \clk_div_cnt_reg_n_0_[2]\,
      I3 => \clk_div_cnt_reg_n_0_[3]\,
      O => \clk_div_cnt[3]_i_1_n_0\
    );
\clk_div_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[0]_i_1__1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[0]\,
      R => Q(0)
    );
\clk_div_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[1]_i_1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[1]\,
      R => Q(0)
    );
\clk_div_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[2]_i_1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[2]\,
      R => Q(0)
    );
\clk_div_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => \clk_div_cnt[3]_i_1_n_0\,
      Q => \clk_div_cnt_reg_n_0_[3]\,
      R => Q(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0_UART_DEBOUNCER is
  port (
    DEB_OUT : out STD_LOGIC;
    DEB_OUT_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_aggregator_0_0_UART_DEBOUNCER : entity is "UART_DEBOUNCER";
end design_1_uart_aggregator_0_0_UART_DEBOUNCER;

architecture STRUCTURE of design_1_uart_aggregator_0_0_UART_DEBOUNCER is
  signal \^deb_out\ : STD_LOGIC;
  signal DEB_OUT_i_1_n_0 : STD_LOGIC;
  signal \input_shreg_reg_n_0_[0]\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of DEB_OUT_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rx_data[7]_i_2\ : label is "soft_lutpair11";
begin
  DEB_OUT <= \^deb_out\;
DEB_OUT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAA8"
    )
        port map (
      I0 => \^deb_out\,
      I1 => p_1_in,
      I2 => \input_shreg_reg_n_0_[0]\,
      I3 => D(0),
      I4 => p_2_in,
      O => DEB_OUT_i_1_n_0
    );
DEB_OUT_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => DEB_OUT_i_1_n_0,
      Q => \^deb_out\,
      R => '0'
    );
\input_shreg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \input_shreg_reg_n_0_[0]\,
      R => '0'
    );
\input_shreg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \input_shreg_reg_n_0_[0]\,
      Q => p_1_in,
      R => '0'
    );
\input_shreg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in,
      Q => p_2_in,
      R => '0'
    );
\rx_data[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^deb_out\,
      O => DEB_OUT_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0_UART_RX is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    error : out STD_LOGIC;
    DOUT_VLD_reg_0 : out STD_LOGIC;
    DOUT_VLD_reg_1 : out STD_LOGIC;
    clk : in STD_LOGIC;
    full : in STD_LOGIC;
    resetn : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    DEB_OUT : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_aggregator_0_0_UART_RX : entity is "UART_RX";
end design_1_uart_aggregator_0_0_UART_RX;

architecture STRUCTURE of design_1_uart_aggregator_0_0_UART_RX is
  signal DOUT_VLD0 : STD_LOGIC;
  signal FRAME_ERROR : STD_LOGIC;
  signal FRAME_ERROR0 : STD_LOGIC;
  signal \FSM_onehot_fsm_pstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_pstate_reg_n_0_[3]\ : STD_LOGIC;
  signal PARITY_ERROR : STD_LOGIC;
  signal PARITY_ERROR0 : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal UARTdataOut : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UARTdataOutValid : STD_LOGIC;
  signal fsm_databits : STD_LOGIC;
  signal fsm_idle : STD_LOGIC;
  signal fsm_stopbit : STD_LOGIC;
  signal rx_bit_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rx_bit_count0 : STD_LOGIC;
  signal \rx_bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \rx_bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \rx_bit_count[2]_i_1_n_0\ : STD_LOGIC;
  signal rx_clk_divider_i_n_1 : STD_LOGIC;
  signal rx_clk_divider_i_n_5 : STD_LOGIC;
  signal rx_clk_divider_i_n_6 : STD_LOGIC;
  signal rx_clk_divider_i_n_7 : STD_LOGIC;
  signal rx_clk_divider_i_n_8 : STD_LOGIC;
  signal rx_clk_divider_i_n_9 : STD_LOGIC;
  signal rx_clk_en : STD_LOGIC;
  signal rx_parity_error : STD_LOGIC;
  signal startLocal_i_2_n_0 : STD_LOGIC;
  signal \uart_rx_parity_g.rx_parity_error_i_2_n_0\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_pstate_reg[0]\ : label is "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_pstate_reg[1]\ : label is "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_pstate_reg[2]\ : label is "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_pstate_reg[3]\ : label is "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_pstate_reg[4]\ : label is "startbit:00010,databits:00100,paritybit:01000,stopbit:10000,idle:00001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx_bit_count[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx_bit_count[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of startLocal_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of stopLocal_i_1 : label is "soft_lutpair6";
begin
  SR(0) <= \^sr\(0);
DOUT_VLD_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => DOUT_VLD0,
      Q => UARTdataOutValid,
      R => \^sr\(0)
    );
FRAME_ERROR_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => FRAME_ERROR0,
      Q => FRAME_ERROR,
      R => \^sr\(0)
    );
\FSM_onehot_fsm_pstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_clk_divider_i_n_9,
      Q => fsm_idle,
      S => \^sr\(0)
    );
\FSM_onehot_fsm_pstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_clk_divider_i_n_8,
      Q => \FSM_onehot_fsm_pstate_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\FSM_onehot_fsm_pstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_clk_divider_i_n_7,
      Q => fsm_databits,
      R => \^sr\(0)
    );
\FSM_onehot_fsm_pstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_clk_divider_i_n_6,
      Q => \FSM_onehot_fsm_pstate_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\FSM_onehot_fsm_pstate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx_clk_divider_i_n_5,
      Q => fsm_stopbit,
      R => \^sr\(0)
    );
PARITY_ERROR_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => PARITY_ERROR0,
      Q => PARITY_ERROR,
      R => \^sr\(0)
    );
UART_TXD_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^sr\(0)
    );
error_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => FRAME_ERROR,
      I1 => PARITY_ERROR,
      I2 => full,
      O => error
    );
\rx_bit_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => fsm_databits,
      I1 => rx_clk_en,
      I2 => rx_bit_count(0),
      O => \rx_bit_count[0]_i_1_n_0\
    );
\rx_bit_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rx_bit_count(0),
      I1 => rx_clk_en,
      I2 => fsm_databits,
      I3 => rx_bit_count(1),
      O => \rx_bit_count[1]_i_1_n_0\
    );
\rx_bit_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rx_bit_count(1),
      I1 => rx_bit_count(0),
      I2 => rx_clk_en,
      I3 => fsm_databits,
      I4 => rx_bit_count(2),
      O => \rx_bit_count[2]_i_1_n_0\
    );
\rx_bit_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_bit_count[0]_i_1_n_0\,
      Q => rx_bit_count(0),
      R => \^sr\(0)
    );
\rx_bit_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_bit_count[1]_i_1_n_0\,
      Q => rx_bit_count(1),
      R => \^sr\(0)
    );
\rx_bit_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \rx_bit_count[2]_i_1_n_0\,
      Q => rx_bit_count(2),
      R => \^sr\(0)
    );
rx_clk_divider_i: entity work.\design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized0\
     port map (
      D(4) => rx_clk_divider_i_n_5,
      D(3) => rx_clk_divider_i_n_6,
      D(2) => rx_clk_divider_i_n_7,
      D(1) => rx_clk_divider_i_n_8,
      D(0) => rx_clk_divider_i_n_9,
      DEB_OUT => DEB_OUT,
      DIV_MARK_reg_0(0) => rx_bit_count0,
      DOUT_VLD0 => DOUT_VLD0,
      E(0) => E(0),
      FRAME_ERROR0 => FRAME_ERROR0,
      FRAME_ERROR_reg(4) => fsm_stopbit,
      FRAME_ERROR_reg(3) => \FSM_onehot_fsm_pstate_reg_n_0_[3]\,
      FRAME_ERROR_reg(2) => fsm_databits,
      FRAME_ERROR_reg(1) => \FSM_onehot_fsm_pstate_reg_n_0_[1]\,
      FRAME_ERROR_reg(0) => fsm_idle,
      PARITY_ERROR0 => PARITY_ERROR0,
      Q(2 downto 0) => UARTdataOut(3 downto 1),
      clk => clk,
      rx_bit_count(2 downto 0) => rx_bit_count(2 downto 0),
      rx_clk_en => rx_clk_en,
      \rx_data_reg[1]\ => rx_clk_divider_i_n_1,
      rx_parity_error => rx_parity_error,
      \uart_rx_parity_g.rx_parity_error_reg\ => \uart_rx_parity_g.rx_parity_error_i_2_n_0\
    );
\rx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(1),
      Q => UARTdataOut(0),
      R => '0'
    );
\rx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(2),
      Q => UARTdataOut(1),
      R => '0'
    );
\rx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(3),
      Q => UARTdataOut(2),
      R => '0'
    );
\rx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(4),
      Q => UARTdataOut(3),
      R => '0'
    );
\rx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(5),
      Q => UARTdataOut(4),
      R => '0'
    );
\rx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(6),
      Q => UARTdataOut(5),
      R => '0'
    );
\rx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => UARTdataOut(7),
      Q => UARTdataOut(6),
      R => '0'
    );
\rx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => rx_bit_count0,
      D => D(0),
      Q => UARTdataOut(7),
      R => '0'
    );
startLocal_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => UARTdataOutValid,
      I1 => UARTdataOut(0),
      I2 => startLocal_i_2_n_0,
      I3 => UARTdataOut(7),
      O => DOUT_VLD_reg_0
    );
startLocal_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => UARTdataOut(5),
      I1 => UARTdataOut(3),
      I2 => UARTdataOut(1),
      I3 => UARTdataOut(2),
      I4 => UARTdataOut(4),
      I5 => UARTdataOut(6),
      O => startLocal_i_2_n_0
    );
stopLocal_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => UARTdataOutValid,
      I1 => UARTdataOut(0),
      I2 => startLocal_i_2_n_0,
      I3 => UARTdataOut(7),
      O => DOUT_VLD_reg_1
    );
\uart_rx_parity_g.rx_parity_error_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => UARTdataOut(5),
      I1 => UARTdataOut(4),
      I2 => UARTdataOut(7),
      I3 => DEB_OUT,
      I4 => UARTdataOut(6),
      I5 => UARTdataOut(0),
      O => \uart_rx_parity_g.rx_parity_error_i_2_n_0\
    );
\uart_rx_parity_g.rx_parity_error_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rx_clk_divider_i_n_1,
      Q => rx_parity_error,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0_UART_TX is
  port (
    UART_TX : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_aggregator_0_0_UART_TX : entity is "UART_TX";
end design_1_uart_aggregator_0_0_UART_TX;

architecture STRUCTURE of design_1_uart_aggregator_0_0_UART_TX is
  signal \FSM_onehot_tx_pstate_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_tx_pstate_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_tx_pstate_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_tx_pstate_reg_n_0_[5]\ : STD_LOGIC;
  signal UART_TXD_i_2_n_0 : STD_LOGIC;
  signal UART_TXD_i_3_n_0 : STD_LOGIC;
  signal UART_TXD_i_4_n_0 : STD_LOGIC;
  signal UART_TXD_i_6_n_0 : STD_LOGIC;
  signal UART_TXD_i_7_n_0 : STD_LOGIC;
  signal UART_TXD_reg_i_5_n_0 : STD_LOGIC;
  signal tx_bit_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tx_bit_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \tx_bit_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \tx_bit_count[2]_i_1_n_0\ : STD_LOGIC;
  signal tx_bit_count_en : STD_LOGIC;
  signal tx_clk_div_clr : STD_LOGIC;
  signal tx_clk_divider_i_n_1 : STD_LOGIC;
  signal tx_clk_divider_i_n_2 : STD_LOGIC;
  signal tx_clk_divider_i_n_3 : STD_LOGIC;
  signal tx_clk_divider_i_n_4 : STD_LOGIC;
  signal tx_clk_divider_i_n_5 : STD_LOGIC;
  signal tx_clk_divider_i_n_6 : STD_LOGIC;
  signal tx_clk_en : STD_LOGIC;
  signal tx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_data0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_pstate_reg[0]\ : label is "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_pstate_reg[1]\ : label is "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_pstate_reg[2]\ : label is "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_pstate_reg[3]\ : label is "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_pstate_reg[4]\ : label is "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_tx_pstate_reg[5]\ : label is "startbit:000100,databits:001000,paritybit:010000,txsync:000010,stopbit:100000,idle:000001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \tx_bit_count[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tx_bit_count[2]_i_1\ : label is "soft_lutpair10";
begin
\FSM_onehot_tx_pstate_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clk_divider_i_n_6,
      Q => tx_clk_div_clr,
      S => SS(0)
    );
\FSM_onehot_tx_pstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clk_divider_i_n_5,
      Q => \FSM_onehot_tx_pstate_reg_n_0_[1]\,
      R => SS(0)
    );
\FSM_onehot_tx_pstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clk_divider_i_n_4,
      Q => \FSM_onehot_tx_pstate_reg_n_0_[2]\,
      R => SS(0)
    );
\FSM_onehot_tx_pstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clk_divider_i_n_3,
      Q => tx_bit_count_en,
      R => SS(0)
    );
\FSM_onehot_tx_pstate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clk_divider_i_n_2,
      Q => \FSM_onehot_tx_pstate_reg_n_0_[4]\,
      R => SS(0)
    );
\FSM_onehot_tx_pstate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tx_clk_divider_i_n_1,
      Q => \FSM_onehot_tx_pstate_reg_n_0_[5]\,
      R => SS(0)
    );
UART_TXD_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999F9990990F990F"
    )
        port map (
      I0 => UART_TXD_i_3_n_0,
      I1 => UART_TXD_i_4_n_0,
      I2 => \FSM_onehot_tx_pstate_reg_n_0_[2]\,
      I3 => \FSM_onehot_tx_pstate_reg_n_0_[4]\,
      I4 => UART_TXD_reg_i_5_n_0,
      I5 => tx_bit_count_en,
      O => UART_TXD_i_2_n_0
    );
UART_TXD_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => tx_data(1),
      I1 => tx_data(2),
      I2 => tx_data(7),
      I3 => tx_data(0),
      O => UART_TXD_i_3_n_0
    );
UART_TXD_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => tx_data(5),
      I1 => tx_data(6),
      I2 => tx_data(3),
      I3 => tx_data(4),
      O => UART_TXD_i_4_n_0
    );
UART_TXD_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_data(3),
      I1 => tx_data(2),
      I2 => tx_bit_count(1),
      I3 => tx_data(1),
      I4 => tx_bit_count(0),
      I5 => tx_data(0),
      O => UART_TXD_i_6_n_0
    );
UART_TXD_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => tx_data(7),
      I1 => tx_data(6),
      I2 => tx_bit_count(1),
      I3 => tx_data(5),
      I4 => tx_bit_count(0),
      I5 => tx_data(4),
      O => UART_TXD_i_7_n_0
    );
UART_TXD_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => UART_TXD_i_2_n_0,
      Q => UART_TX,
      S => SS(0)
    );
UART_TXD_reg_i_5: unisim.vcomponents.MUXF7
     port map (
      I0 => UART_TXD_i_6_n_0,
      I1 => UART_TXD_i_7_n_0,
      O => UART_TXD_reg_i_5_n_0,
      S => tx_bit_count(2)
    );
main_fifo_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tx_clk_div_clr,
      I1 => \FSM_onehot_tx_pstate_reg_n_0_[5]\,
      O => rd_en
    );
\tx_bit_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tx_bit_count_en,
      I1 => tx_clk_en,
      I2 => tx_bit_count(0),
      O => \tx_bit_count[0]_i_1_n_0\
    );
\tx_bit_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tx_bit_count(0),
      I1 => tx_bit_count_en,
      I2 => tx_clk_en,
      I3 => tx_bit_count(1),
      O => \tx_bit_count[1]_i_1_n_0\
    );
\tx_bit_count[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => tx_bit_count(0),
      I1 => tx_bit_count(1),
      I2 => tx_bit_count_en,
      I3 => tx_clk_en,
      I4 => tx_bit_count(2),
      O => \tx_bit_count[2]_i_1_n_0\
    );
\tx_bit_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_bit_count[0]_i_1_n_0\,
      Q => tx_bit_count(0),
      R => SS(0)
    );
\tx_bit_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_bit_count[1]_i_1_n_0\,
      Q => tx_bit_count(1),
      R => SS(0)
    );
\tx_bit_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \tx_bit_count[2]_i_1_n_0\,
      Q => tx_bit_count(2),
      R => SS(0)
    );
tx_clk_divider_i: entity work.\design_1_uart_aggregator_0_0_UART_CLK_DIV__parameterized1\
     port map (
      D(5) => tx_clk_divider_i_n_1,
      D(4) => tx_clk_divider_i_n_2,
      D(3) => tx_clk_divider_i_n_3,
      D(2) => tx_clk_divider_i_n_4,
      D(1) => tx_clk_divider_i_n_5,
      D(0) => tx_clk_divider_i_n_6,
      E(0) => E(0),
      Q(5) => \FSM_onehot_tx_pstate_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_tx_pstate_reg_n_0_[4]\,
      Q(3) => tx_bit_count_en,
      Q(2) => \FSM_onehot_tx_pstate_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_tx_pstate_reg_n_0_[1]\,
      Q(0) => tx_clk_div_clr,
      clk => clk,
      tx_bit_count(2 downto 0) => tx_bit_count(2 downto 0),
      tx_clk_en => tx_clk_en,
      valid => valid
    );
\tx_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => valid,
      I1 => \FSM_onehot_tx_pstate_reg_n_0_[5]\,
      I2 => tx_clk_div_clr,
      O => tx_data0
    );
\tx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(0),
      Q => tx_data(0),
      R => '0'
    );
\tx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(1),
      Q => tx_data(1),
      R => '0'
    );
\tx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(2),
      Q => tx_data(2),
      R => '0'
    );
\tx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(3),
      Q => tx_data(3),
      R => '0'
    );
\tx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(4),
      Q => tx_data(4),
      R => '0'
    );
\tx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(5),
      Q => tx_data(5),
      R => '0'
    );
\tx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(6),
      Q => tx_data(6),
      R => '0'
    );
\tx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => tx_data0,
      D => D(7),
      Q => tx_data(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0_UART is
  port (
    RST : out STD_LOGIC;
    UART_TX : out STD_LOGIC;
    error : out STD_LOGIC;
    DOUT_VLD_reg : out STD_LOGIC;
    DOUT_VLD_reg_0 : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    clk : in STD_LOGIC;
    full : in STD_LOGIC;
    resetn : in STD_LOGIC;
    UART_RX : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    valid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_aggregator_0_0_UART : entity is "UART";
end design_1_uart_aggregator_0_0_UART;

architecture STRUCTURE of design_1_uart_aggregator_0_0_UART is
  signal DEB_OUT : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal os_clk_en : STD_LOGIC;
  signal uart_rxd_debounced : STD_LOGIC;
  signal uart_rxd_meta_n : STD_LOGIC;
  signal uart_rxd_meta_n_i_1_n_0 : STD_LOGIC;
  signal uart_rxd_synced_n : STD_LOGIC;
begin
  RST <= \^rst\;
os_clk_divider_i: entity work.design_1_uart_aggregator_0_0_UART_CLK_DIV
     port map (
      E(0) => os_clk_en,
      SR(0) => \^rst\,
      clk => clk
    );
uart_rx_i: entity work.design_1_uart_aggregator_0_0_UART_RX
     port map (
      D(0) => uart_rxd_debounced,
      DEB_OUT => DEB_OUT,
      DOUT_VLD_reg_0 => DOUT_VLD_reg,
      DOUT_VLD_reg_1 => DOUT_VLD_reg_0,
      E(0) => os_clk_en,
      SR(0) => \^rst\,
      clk => clk,
      error => error,
      full => full,
      resetn => resetn
    );
uart_rxd_meta_n_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => UART_RX,
      O => uart_rxd_meta_n_i_1_n_0
    );
uart_rxd_meta_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_rxd_meta_n_i_1_n_0,
      Q => uart_rxd_meta_n,
      R => '0'
    );
uart_rxd_synced_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => uart_rxd_meta_n,
      Q => uart_rxd_synced_n,
      R => '0'
    );
uart_tx_i: entity work.design_1_uart_aggregator_0_0_UART_TX
     port map (
      D(7 downto 0) => D(7 downto 0),
      E(0) => os_clk_en,
      SS(0) => \^rst\,
      UART_TX => UART_TX,
      clk => clk,
      rd_en => rd_en,
      valid => valid
    );
\use_debouncer_g.debouncer_i\: entity work.design_1_uart_aggregator_0_0_UART_DEBOUNCER
     port map (
      D(0) => uart_rxd_synced_n,
      DEB_OUT => DEB_OUT,
      DEB_OUT_reg_0(0) => uart_rxd_debounced,
      clk => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0_uart_aggregator is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    UART_RX : in STD_LOGIC;
    intensityIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    intensityInValid : in STD_LOGIC;
    correlationIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlationInValid : in STD_LOGIC;
    correlationInLast : in STD_LOGIC;
    analyzerIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    analyzerInValid : in STD_LOGIC;
    analyzerInLast : in STD_LOGIC;
    analyzerInReady : out STD_LOGIC;
    start : out STD_LOGIC;
    stop : out STD_LOGIC;
    error : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uart_aggregator_0_0_uart_aggregator : entity is "uart_aggregator";
  attribute correlationLength : integer;
  attribute correlationLength of design_1_uart_aggregator_0_0_uart_aggregator : entity is 64;
end design_1_uart_aggregator_0_0_uart_aggregator;

architecture STRUCTURE of design_1_uart_aggregator_0_0_uart_aggregator is
  component design_1_uart_aggregator_0_0_correlatorFIFO is
  port (
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_uart_aggregator_0_0_correlatorFIFO;
  component design_1_uart_aggregator_0_0_intensityFIFO is
  port (
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_uart_aggregator_0_0_intensityFIFO;
  component design_1_uart_aggregator_0_0_uart_fifo is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  end component design_1_uart_aggregator_0_0_uart_fifo;
  signal FIFOdataIn : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal UARTdataIn : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UARTdataInReady : STD_LOGIC;
  signal UARTdataInValid : STD_LOGIC;
  signal \aggregator.FIFOdataInValid_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[0]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[10]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[11]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[12]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[13]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[14]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[15]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[15]_i_2_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[16]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[17]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[18]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[19]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[1]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[20]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[21]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[22]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[23]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[24]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[25]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[26]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[27]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[28]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[29]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[2]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[30]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[31]_i_2_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[3]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[4]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[5]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[6]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[6]_i_2_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[7]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[8]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.FIFOdataIn[9]_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.analyzerInReadyLocal_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.correlationFIFOData\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \aggregator.correlationFIFOReady_i_1_n_0\ : STD_LOGIC;
  signal \aggregator.correlationFIFOReady_reg_n_0\ : STD_LOGIC;
  signal \aggregator.correlationFIFOValid\ : STD_LOGIC;
  signal \aggregator.intensityFIFOReady0\ : STD_LOGIC;
  signal \aggregator.intensityFIFOReady_i_1_n_0\ : STD_LOGIC;
  signal \^analyzerinready\ : STD_LOGIC;
  signal din : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal full : STD_LOGIC;
  signal m_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_axis_tlast : STD_LOGIC;
  signal m_axis_tready : STD_LOGIC;
  signal m_axis_tvalid : STD_LOGIC;
  signal uart_controller_n_3 : STD_LOGIC;
  signal uart_controller_n_4 : STD_LOGIC;
  signal wr_en : STD_LOGIC;
  signal \NLW_aggregator.correlation_fifo_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_aggregator.correlation_fifo_s_axis_tready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_aggregator.correlation_fifo_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_aggregator.intensity_fifo_m_axis_tlast_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_aggregator.intensity_fifo_rd_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_aggregator.intensity_fifo_s_axis_tready_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_aggregator.intensity_fifo_wr_rst_busy_UNCONNECTED\ : STD_LOGIC;
  signal NLW_main_fifo_empty_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \aggregator.FIFOdataIn[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \aggregator.FIFOdataIn[15]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \aggregator.FIFOdataIn[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \aggregator.analyzerInReadyLocal_i_1\ : label is "soft_lutpair13";
  attribute x_interface_info : string;
  attribute x_interface_info of \aggregator.analyzerInReadyLocal_reg\ : label is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY";
  attribute syn_black_box : string;
  attribute syn_black_box of \aggregator.correlation_fifo\ : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of \aggregator.correlation_fifo\ : label is "fifo_generator_v13_2_8,Vivado 2023.1";
  attribute syn_black_box of \aggregator.intensity_fifo\ : label is "TRUE";
  attribute x_core_info of \aggregator.intensity_fifo\ : label is "fifo_generator_v13_2_8,Vivado 2023.1";
  attribute syn_black_box of main_fifo : label is "TRUE";
  attribute x_core_info of main_fifo : label is "fifo_generator_v13_2_8,Vivado 2023.1";
  attribute x_interface_info of analyzerInLast : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TLAST";
  attribute x_interface_info of analyzerInReady : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY";
  attribute x_interface_info of analyzerInValid : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TVALID";
  attribute x_interface_info of analyzerIn : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TDATA";
begin
  analyzerInReady <= \^analyzerinready\;
\aggregator.FIFOdataInValid_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => FIFOdataIn,
      I1 => resetn,
      I2 => wr_en,
      O => \aggregator.FIFOdataInValid_i_1_n_0\
    );
\aggregator.FIFOdataInValid_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \aggregator.FIFOdataInValid_i_1_n_0\,
      Q => wr_en,
      R => '0'
    );
\aggregator.FIFOdataIn[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(0),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(0),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(0),
      O => \aggregator.FIFOdataIn[0]_i_1_n_0\
    );
\aggregator.FIFOdataIn[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(10),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(10),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(10),
      O => \aggregator.FIFOdataIn[10]_i_1_n_0\
    );
\aggregator.FIFOdataIn[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(11),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(11),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(11),
      O => \aggregator.FIFOdataIn[11]_i_1_n_0\
    );
\aggregator.FIFOdataIn[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(12),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(12),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(12),
      O => \aggregator.FIFOdataIn[12]_i_1_n_0\
    );
\aggregator.FIFOdataIn[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(13),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(13),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(13),
      O => \aggregator.FIFOdataIn[13]_i_1_n_0\
    );
\aggregator.FIFOdataIn[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(14),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(14),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(14),
      O => \aggregator.FIFOdataIn[14]_i_1_n_0\
    );
\aggregator.FIFOdataIn[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(15),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(15),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(15),
      O => \aggregator.FIFOdataIn[15]_i_1_n_0\
    );
\aggregator.FIFOdataIn[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \aggregator.correlationFIFOReady_reg_n_0\,
      I1 => analyzerInValid,
      I2 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[15]_i_2_n_0\
    );
\aggregator.FIFOdataIn[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \^analyzerinready\,
      I2 => \aggregator.correlationFIFOReady_reg_n_0\,
      O => \aggregator.intensityFIFOReady0\
    );
\aggregator.FIFOdataIn[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(16),
      I2 => analyzerIn(16),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[16]_i_1_n_0\
    );
\aggregator.FIFOdataIn[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(17),
      I2 => analyzerIn(17),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[17]_i_1_n_0\
    );
\aggregator.FIFOdataIn[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(18),
      I2 => analyzerIn(18),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[18]_i_1_n_0\
    );
\aggregator.FIFOdataIn[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(19),
      I2 => analyzerIn(19),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[19]_i_1_n_0\
    );
\aggregator.FIFOdataIn[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(1),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(1),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(1),
      O => \aggregator.FIFOdataIn[1]_i_1_n_0\
    );
\aggregator.FIFOdataIn[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(20),
      I2 => analyzerIn(20),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[20]_i_1_n_0\
    );
\aggregator.FIFOdataIn[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(21),
      I2 => analyzerIn(21),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[21]_i_1_n_0\
    );
\aggregator.FIFOdataIn[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(22),
      I2 => analyzerIn(22),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[22]_i_1_n_0\
    );
\aggregator.FIFOdataIn[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCF0CC00CC55CC00"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOData\(23),
      I2 => analyzerIn(23),
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      I5 => \^analyzerinready\,
      O => \aggregator.FIFOdataIn[23]_i_1_n_0\
    );
\aggregator.FIFOdataIn[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(24),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(24),
      O => \aggregator.FIFOdataIn[24]_i_1_n_0\
    );
\aggregator.FIFOdataIn[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(25),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(25),
      O => \aggregator.FIFOdataIn[25]_i_1_n_0\
    );
\aggregator.FIFOdataIn[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(26),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(26),
      O => \aggregator.FIFOdataIn[26]_i_1_n_0\
    );
\aggregator.FIFOdataIn[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(27),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(27),
      O => \aggregator.FIFOdataIn[27]_i_1_n_0\
    );
\aggregator.FIFOdataIn[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(28),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(28),
      O => \aggregator.FIFOdataIn[28]_i_1_n_0\
    );
\aggregator.FIFOdataIn[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(29),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(29),
      O => \aggregator.FIFOdataIn[29]_i_1_n_0\
    );
\aggregator.FIFOdataIn[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(2),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(2),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(2),
      O => \aggregator.FIFOdataIn[2]_i_1_n_0\
    );
\aggregator.FIFOdataIn[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(30),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(30),
      O => \aggregator.FIFOdataIn[30]_i_1_n_0\
    );
\aggregator.FIFOdataIn[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0200000000"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \^analyzerinready\,
      I2 => \aggregator.correlationFIFOReady_reg_n_0\,
      I3 => analyzerInValid,
      I4 => \aggregator.correlationFIFOValid\,
      I5 => resetn,
      O => FIFOdataIn
    );
\aggregator.FIFOdataIn[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF1510000F151"
    )
        port map (
      I0 => analyzerInValid,
      I1 => m_axis_tvalid,
      I2 => \^analyzerinready\,
      I3 => analyzerIn(31),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(31),
      O => \aggregator.FIFOdataIn[31]_i_2_n_0\
    );
\aggregator.FIFOdataIn[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(3),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(3),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(3),
      O => \aggregator.FIFOdataIn[3]_i_1_n_0\
    );
\aggregator.FIFOdataIn[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(4),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(4),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(4),
      O => \aggregator.FIFOdataIn[4]_i_1_n_0\
    );
\aggregator.FIFOdataIn[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(5),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(5),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(5),
      O => \aggregator.FIFOdataIn[5]_i_1_n_0\
    );
\aggregator.FIFOdataIn[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAEF"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[6]_i_2_n_0\,
      I1 => \^analyzerinready\,
      I2 => m_axis_tvalid,
      I3 => \aggregator.correlationFIFOReady_reg_n_0\,
      I4 => analyzerInValid,
      O => \aggregator.FIFOdataIn[6]_i_1_n_0\
    );
\aggregator.FIFOdataIn[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA400000EA40"
    )
        port map (
      I0 => \^analyzerinready\,
      I1 => m_axis_tvalid,
      I2 => m_axis_tdata(6),
      I3 => analyzerIn(6),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(6),
      O => \aggregator.FIFOdataIn[6]_i_2_n_0\
    );
\aggregator.FIFOdataIn[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(7),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(7),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(7),
      O => \aggregator.FIFOdataIn[7]_i_1_n_0\
    );
\aggregator.FIFOdataIn[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(8),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(8),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(8),
      O => \aggregator.FIFOdataIn[8]_i_1_n_0\
    );
\aggregator.FIFOdataIn[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aggregator.FIFOdataIn[15]_i_2_n_0\,
      I1 => analyzerIn(9),
      I2 => \aggregator.intensityFIFOReady0\,
      I3 => m_axis_tdata(9),
      I4 => \aggregator.correlationFIFOReady_reg_n_0\,
      I5 => \aggregator.correlationFIFOData\(9),
      O => \aggregator.FIFOdataIn[9]_i_1_n_0\
    );
\aggregator.FIFOdataIn_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[0]_i_1_n_0\,
      Q => din(0),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[10]_i_1_n_0\,
      Q => din(10),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[11]_i_1_n_0\,
      Q => din(11),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[12]_i_1_n_0\,
      Q => din(12),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[13]_i_1_n_0\,
      Q => din(13),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[14]_i_1_n_0\,
      Q => din(14),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[15]_i_1_n_0\,
      Q => din(15),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[16]_i_1_n_0\,
      Q => din(16),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[17]_i_1_n_0\,
      Q => din(17),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[18]_i_1_n_0\,
      Q => din(18),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[19]_i_1_n_0\,
      Q => din(19),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[1]_i_1_n_0\,
      Q => din(1),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[20]_i_1_n_0\,
      Q => din(20),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[21]_i_1_n_0\,
      Q => din(21),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[22]_i_1_n_0\,
      Q => din(22),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[23]_i_1_n_0\,
      Q => din(23),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[24]_i_1_n_0\,
      Q => din(24),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[25]_i_1_n_0\,
      Q => din(25),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[26]_i_1_n_0\,
      Q => din(26),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[27]_i_1_n_0\,
      Q => din(27),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[28]_i_1_n_0\,
      Q => din(28),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[29]_i_1_n_0\,
      Q => din(29),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[2]_i_1_n_0\,
      Q => din(2),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[30]_i_1_n_0\,
      Q => din(30),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[31]_i_2_n_0\,
      Q => din(31),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[3]_i_1_n_0\,
      Q => din(3),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[4]_i_1_n_0\,
      Q => din(4),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[5]_i_1_n_0\,
      Q => din(5),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[6]_i_1_n_0\,
      Q => din(6),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[7]_i_1_n_0\,
      Q => din(7),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[8]_i_1_n_0\,
      Q => din(8),
      R => '0'
    );
\aggregator.FIFOdataIn_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => FIFOdataIn,
      D => \aggregator.FIFOdataIn[9]_i_1_n_0\,
      Q => din(9),
      R => '0'
    );
\aggregator.analyzerInReadyLocal_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFFF1010"
    )
        port map (
      I0 => m_axis_tvalid,
      I1 => \aggregator.correlationFIFOReady_reg_n_0\,
      I2 => analyzerInValid,
      I3 => analyzerInLast,
      I4 => \^analyzerinready\,
      O => \aggregator.analyzerInReadyLocal_i_1_n_0\
    );
\aggregator.analyzerInReadyLocal_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aggregator.analyzerInReadyLocal_i_1_n_0\,
      Q => \^analyzerinready\,
      R => RST
    );
\aggregator.correlationFIFOReady_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF0B000B00"
    )
        port map (
      I0 => \^analyzerinready\,
      I1 => m_axis_tvalid,
      I2 => analyzerInValid,
      I3 => \aggregator.correlationFIFOValid\,
      I4 => m_axis_tlast,
      I5 => \aggregator.correlationFIFOReady_reg_n_0\,
      O => \aggregator.correlationFIFOReady_i_1_n_0\
    );
\aggregator.correlationFIFOReady_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aggregator.correlationFIFOReady_i_1_n_0\,
      Q => \aggregator.correlationFIFOReady_reg_n_0\,
      R => RST
    );
\aggregator.correlation_fifo\: component design_1_uart_aggregator_0_0_correlatorFIFO
     port map (
      m_axis_tdata(31 downto 0) => \aggregator.correlationFIFOData\(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \aggregator.correlationFIFOReady_reg_n_0\,
      m_axis_tvalid => \aggregator.correlationFIFOValid\,
      rd_rst_busy => \NLW_aggregator.correlation_fifo_rd_rst_busy_UNCONNECTED\,
      s_aclk => clk,
      s_aresetn => resetn,
      s_axis_tdata(31 downto 0) => correlationIn(31 downto 0),
      s_axis_tlast => correlationInLast,
      s_axis_tready => \NLW_aggregator.correlation_fifo_s_axis_tready_UNCONNECTED\,
      s_axis_tvalid => correlationInValid,
      wr_rst_busy => \NLW_aggregator.correlation_fifo_wr_rst_busy_UNCONNECTED\
    );
\aggregator.intensityFIFOReady_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \aggregator.correlationFIFOReady_reg_n_0\,
      I1 => \^analyzerinready\,
      I2 => m_axis_tvalid,
      O => \aggregator.intensityFIFOReady_i_1_n_0\
    );
\aggregator.intensityFIFOReady_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \aggregator.intensityFIFOReady_i_1_n_0\,
      Q => m_axis_tready,
      R => RST
    );
\aggregator.intensity_fifo\: component design_1_uart_aggregator_0_0_intensityFIFO
     port map (
      m_axis_tdata(15 downto 0) => m_axis_tdata(15 downto 0),
      m_axis_tlast => \NLW_aggregator.intensity_fifo_m_axis_tlast_UNCONNECTED\,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      rd_rst_busy => \NLW_aggregator.intensity_fifo_rd_rst_busy_UNCONNECTED\,
      s_aclk => clk,
      s_aresetn => resetn,
      s_axis_tdata(15 downto 0) => intensityIn(15 downto 0),
      s_axis_tlast => '0',
      s_axis_tready => \NLW_aggregator.intensity_fifo_s_axis_tready_UNCONNECTED\,
      s_axis_tvalid => intensityInValid,
      wr_rst_busy => \NLW_aggregator.intensity_fifo_wr_rst_busy_UNCONNECTED\
    );
main_fifo: component design_1_uart_aggregator_0_0_uart_fifo
     port map (
      clk => clk,
      din(31 downto 0) => din(31 downto 0),
      dout(7 downto 0) => UARTdataIn(7 downto 0),
      empty => NLW_main_fifo_empty_UNCONNECTED,
      full => full,
      rd_en => UARTdataInReady,
      srst => RST,
      valid => UARTdataInValid,
      wr_en => wr_en
    );
startLocal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_controller_n_3,
      Q => start,
      R => RST
    );
stopLocal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => uart_controller_n_4,
      Q => stop,
      R => RST
    );
uart_controller: entity work.design_1_uart_aggregator_0_0_UART
     port map (
      D(7 downto 0) => UARTdataIn(7 downto 0),
      DOUT_VLD_reg => uart_controller_n_3,
      DOUT_VLD_reg_0 => uart_controller_n_4,
      RST => RST,
      UART_RX => UART_RX,
      UART_TX => UART_TX,
      clk => clk,
      error => error,
      full => full,
      rd_en => UARTdataInReady,
      resetn => resetn,
      valid => UARTdataInValid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uart_aggregator_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    UART_RX : in STD_LOGIC;
    intensityIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    intensityInValid : in STD_LOGIC;
    correlationIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlationInValid : in STD_LOGIC;
    correlationInLast : in STD_LOGIC;
    analyzerIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    analyzerInValid : in STD_LOGIC;
    analyzerInLast : in STD_LOGIC;
    analyzerInReady : out STD_LOGIC;
    start : out STD_LOGIC;
    stop : out STD_LOGIC;
    error : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uart_aggregator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uart_aggregator_0_0 : entity is "design_1_uart_aggregator_0_0,uart_aggregator,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_uart_aggregator_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_uart_aggregator_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_uart_aggregator_0_0 : entity is "uart_aggregator,Vivado 2023.1";
end design_1_uart_aggregator_0_0;

architecture STRUCTURE of design_1_uart_aggregator_0_0 is
  attribute correlationLength : integer;
  attribute correlationLength of U0 : label is 64;
  attribute x_interface_info : string;
  attribute x_interface_info of analyzerInLast : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TLAST";
  attribute x_interface_info of analyzerInReady : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TREADY";
  attribute x_interface_info of analyzerInValid : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TVALID";
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF analyzerFIFOInput, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of analyzerIn : signal is "xilinx.com:interface:axis:1.0 analyzerFIFOInput TDATA";
  attribute x_interface_parameter of analyzerIn : signal is "XIL_INTERFACENAME analyzerFIFOInput, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, LAYERED_METADATA undef, INSERT_VIP 0";
begin
U0: entity work.design_1_uart_aggregator_0_0_uart_aggregator
     port map (
      UART_RX => UART_RX,
      UART_TX => UART_TX,
      analyzerIn(31 downto 0) => analyzerIn(31 downto 0),
      analyzerInLast => analyzerInLast,
      analyzerInReady => analyzerInReady,
      analyzerInValid => analyzerInValid,
      clk => clk,
      correlationIn(31 downto 0) => correlationIn(31 downto 0),
      correlationInLast => correlationInLast,
      correlationInValid => correlationInValid,
      error => error,
      intensityIn(15 downto 0) => intensityIn(15 downto 0),
      intensityInValid => intensityInValid,
      resetn => resetn,
      start => start,
      stop => stop
    );
end STRUCTURE;
