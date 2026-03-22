-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Wed Mar 18 22:13:45 2026
-- Host        : JohnWorkstat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/johny/BOILresearch/full_dcs_system_6_23_23.xpr/full_dcs_system/full_dcs_system.gen/sources_1/bd/design_1/ip/design_1_intensityRebin_0_0/design_1_intensityRebin_0_0_sim_netlist.vhdl
-- Design      : design_1_intensityRebin_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a75tfgg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_intensityRebin_0_0_intensityRebin is
  port (
    intensityOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    intensityOutValid : out STD_LOGIC;
    countInValid : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    countIn : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_intensityRebin_0_0_intensityRebin : entity is "intensityRebin";
end design_1_intensityRebin_0_0_intensityRebin;

architecture STRUCTURE of design_1_intensityRebin_0_0_intensityRebin is
  signal \accumReg[15]_i_1_n_0\ : STD_LOGIC;
  signal \accumReg[15]_i_3_n_0\ : STD_LOGIC;
  signal \accumReg[15]_i_4_n_0\ : STD_LOGIC;
  signal \accumReg[15]_i_5_n_0\ : STD_LOGIC;
  signal \accumReg[3]_i_2_n_0\ : STD_LOGIC;
  signal \accumReg[3]_i_3_n_0\ : STD_LOGIC;
  signal \accumReg[3]_i_4_n_0\ : STD_LOGIC;
  signal \accumReg[3]_i_5_n_0\ : STD_LOGIC;
  signal \accumReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \accumReg[7]_i_3_n_0\ : STD_LOGIC;
  signal \accumReg[7]_i_4_n_0\ : STD_LOGIC;
  signal \accumReg[7]_i_5_n_0\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \accumReg_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \accumReg_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \accumReg_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \accumReg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \accumulation[0]_i_1_n_0\ : STD_LOGIC;
  signal \accumulation[0]_i_3_n_0\ : STD_LOGIC;
  signal \accumulation[0]_i_4_n_0\ : STD_LOGIC;
  signal \accumulation[0]_i_5_n_0\ : STD_LOGIC;
  signal \accumulation[0]_i_6_n_0\ : STD_LOGIC;
  signal \accumulation[4]_i_2_n_0\ : STD_LOGIC;
  signal \accumulation[4]_i_3_n_0\ : STD_LOGIC;
  signal \accumulation[4]_i_4_n_0\ : STD_LOGIC;
  signal \accumulation[4]_i_5_n_0\ : STD_LOGIC;
  signal accumulation_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \accumulation_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \accumulation_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \accumulation_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \accumulation_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \accumulation_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal intensityOutValidLocal_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal rebinCounter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \rebinCounter[15]_i_3_n_0\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[10]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[11]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[12]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[13]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[14]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[15]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[7]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[8]\ : STD_LOGIC;
  signal \rebinCounter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_accumReg_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_accumulation_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \accumReg[15]_i_4\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \accumReg_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \accumReg_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \accumReg_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \accumReg_reg[7]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \accumulation_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \accumulation_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \accumulation_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \accumulation_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \rebinCounter[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rebinCounter[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rebinCounter[11]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rebinCounter[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rebinCounter[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rebinCounter[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rebinCounter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rebinCounter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rebinCounter[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rebinCounter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rebinCounter[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rebinCounter[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rebinCounter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rebinCounter[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rebinCounter[9]_i_1\ : label is "soft_lutpair5";
begin
\accumReg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \accumReg[15]_i_3_n_0\,
      I1 => countInValid,
      I2 => \accumReg[15]_i_4_n_0\,
      I3 => resetn,
      O => \accumReg[15]_i_1_n_0\
    );
\accumReg[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \rebinCounter_reg_n_0_[15]\,
      I1 => \rebinCounter_reg_n_0_[1]\,
      I2 => \rebinCounter_reg_n_0_[2]\,
      I3 => \rebinCounter_reg_n_0_[14]\,
      I4 => \rebinCounter_reg_n_0_[10]\,
      I5 => \rebinCounter_reg_n_0_[11]\,
      O => \accumReg[15]_i_3_n_0\
    );
\accumReg[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \rebinCounter_reg_n_0_[5]\,
      I1 => \rebinCounter_reg_n_0_[9]\,
      I2 => \rebinCounter_reg_n_0_[0]\,
      I3 => \rebinCounter_reg_n_0_[6]\,
      I4 => \accumReg[15]_i_5_n_0\,
      O => \accumReg[15]_i_4_n_0\
    );
\accumReg[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => \rebinCounter_reg_n_0_[8]\,
      I1 => \rebinCounter_reg_n_0_[4]\,
      I2 => \rebinCounter_reg_n_0_[7]\,
      I3 => \rebinCounter_reg_n_0_[3]\,
      I4 => \rebinCounter_reg_n_0_[13]\,
      I5 => \rebinCounter_reg_n_0_[12]\,
      O => \accumReg[15]_i_5_n_0\
    );
\accumReg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(3),
      I1 => countIn(3),
      O => \accumReg[3]_i_2_n_0\
    );
\accumReg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(2),
      I1 => countIn(2),
      O => \accumReg[3]_i_3_n_0\
    );
\accumReg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(1),
      I1 => countIn(1),
      O => \accumReg[3]_i_4_n_0\
    );
\accumReg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(0),
      I1 => countIn(0),
      O => \accumReg[3]_i_5_n_0\
    );
\accumReg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(7),
      I1 => countIn(7),
      O => \accumReg[7]_i_2_n_0\
    );
\accumReg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(6),
      I1 => countIn(6),
      O => \accumReg[7]_i_3_n_0\
    );
\accumReg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(5),
      I1 => countIn(5),
      O => \accumReg[7]_i_4_n_0\
    );
\accumReg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => accumulation_reg(4),
      I1 => countIn(4),
      O => \accumReg[7]_i_5_n_0\
    );
\accumReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[3]_i_1_n_7\,
      Q => intensityOut(0),
      R => '0'
    );
\accumReg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[11]_i_1_n_5\,
      Q => intensityOut(10),
      R => '0'
    );
\accumReg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[11]_i_1_n_4\,
      Q => intensityOut(11),
      R => '0'
    );
\accumReg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumReg_reg[7]_i_1_n_0\,
      CO(3) => \accumReg_reg[11]_i_1_n_0\,
      CO(2) => \accumReg_reg[11]_i_1_n_1\,
      CO(1) => \accumReg_reg[11]_i_1_n_2\,
      CO(0) => \accumReg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \accumReg_reg[11]_i_1_n_4\,
      O(2) => \accumReg_reg[11]_i_1_n_5\,
      O(1) => \accumReg_reg[11]_i_1_n_6\,
      O(0) => \accumReg_reg[11]_i_1_n_7\,
      S(3 downto 0) => accumulation_reg(11 downto 8)
    );
\accumReg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[15]_i_2_n_7\,
      Q => intensityOut(12),
      R => '0'
    );
\accumReg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[15]_i_2_n_6\,
      Q => intensityOut(13),
      R => '0'
    );
\accumReg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[15]_i_2_n_5\,
      Q => intensityOut(14),
      R => '0'
    );
\accumReg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[15]_i_2_n_4\,
      Q => intensityOut(15),
      R => '0'
    );
\accumReg_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumReg_reg[11]_i_1_n_0\,
      CO(3) => \NLW_accumReg_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \accumReg_reg[15]_i_2_n_1\,
      CO(1) => \accumReg_reg[15]_i_2_n_2\,
      CO(0) => \accumReg_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \accumReg_reg[15]_i_2_n_4\,
      O(2) => \accumReg_reg[15]_i_2_n_5\,
      O(1) => \accumReg_reg[15]_i_2_n_6\,
      O(0) => \accumReg_reg[15]_i_2_n_7\,
      S(3 downto 0) => accumulation_reg(15 downto 12)
    );
\accumReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[3]_i_1_n_6\,
      Q => intensityOut(1),
      R => '0'
    );
\accumReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[3]_i_1_n_5\,
      Q => intensityOut(2),
      R => '0'
    );
\accumReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[3]_i_1_n_4\,
      Q => intensityOut(3),
      R => '0'
    );
\accumReg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \accumReg_reg[3]_i_1_n_0\,
      CO(2) => \accumReg_reg[3]_i_1_n_1\,
      CO(1) => \accumReg_reg[3]_i_1_n_2\,
      CO(0) => \accumReg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulation_reg(3 downto 0),
      O(3) => \accumReg_reg[3]_i_1_n_4\,
      O(2) => \accumReg_reg[3]_i_1_n_5\,
      O(1) => \accumReg_reg[3]_i_1_n_6\,
      O(0) => \accumReg_reg[3]_i_1_n_7\,
      S(3) => \accumReg[3]_i_2_n_0\,
      S(2) => \accumReg[3]_i_3_n_0\,
      S(1) => \accumReg[3]_i_4_n_0\,
      S(0) => \accumReg[3]_i_5_n_0\
    );
\accumReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[7]_i_1_n_7\,
      Q => intensityOut(4),
      R => '0'
    );
\accumReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[7]_i_1_n_6\,
      Q => intensityOut(5),
      R => '0'
    );
\accumReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[7]_i_1_n_5\,
      Q => intensityOut(6),
      R => '0'
    );
\accumReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[7]_i_1_n_4\,
      Q => intensityOut(7),
      R => '0'
    );
\accumReg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumReg_reg[3]_i_1_n_0\,
      CO(3) => \accumReg_reg[7]_i_1_n_0\,
      CO(2) => \accumReg_reg[7]_i_1_n_1\,
      CO(1) => \accumReg_reg[7]_i_1_n_2\,
      CO(0) => \accumReg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => accumulation_reg(7 downto 4),
      O(3) => \accumReg_reg[7]_i_1_n_4\,
      O(2) => \accumReg_reg[7]_i_1_n_5\,
      O(1) => \accumReg_reg[7]_i_1_n_6\,
      O(0) => \accumReg_reg[7]_i_1_n_7\,
      S(3) => \accumReg[7]_i_2_n_0\,
      S(2) => \accumReg[7]_i_3_n_0\,
      S(1) => \accumReg[7]_i_4_n_0\,
      S(0) => \accumReg[7]_i_5_n_0\
    );
\accumReg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[11]_i_1_n_7\,
      Q => intensityOut(8),
      R => '0'
    );
\accumReg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \accumReg[15]_i_1_n_0\,
      D => \accumReg_reg[11]_i_1_n_6\,
      Q => intensityOut(9),
      R => '0'
    );
\accumulation[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
        port map (
      I0 => \accumReg[15]_i_3_n_0\,
      I1 => countInValid,
      I2 => \accumReg[15]_i_4_n_0\,
      I3 => resetn,
      O => \accumulation[0]_i_1_n_0\
    );
\accumulation[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(3),
      I1 => accumulation_reg(3),
      O => \accumulation[0]_i_3_n_0\
    );
\accumulation[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(2),
      I1 => accumulation_reg(2),
      O => \accumulation[0]_i_4_n_0\
    );
\accumulation[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(1),
      I1 => accumulation_reg(1),
      O => \accumulation[0]_i_5_n_0\
    );
\accumulation[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(0),
      I1 => accumulation_reg(0),
      O => \accumulation[0]_i_6_n_0\
    );
\accumulation[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(7),
      I1 => accumulation_reg(7),
      O => \accumulation[4]_i_2_n_0\
    );
\accumulation[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(6),
      I1 => accumulation_reg(6),
      O => \accumulation[4]_i_3_n_0\
    );
\accumulation[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(5),
      I1 => accumulation_reg(5),
      O => \accumulation[4]_i_4_n_0\
    );
\accumulation[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countIn(4),
      I1 => accumulation_reg(4),
      O => \accumulation[4]_i_5_n_0\
    );
\accumulation_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[0]_i_2_n_7\,
      Q => accumulation_reg(0),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \accumulation_reg[0]_i_2_n_0\,
      CO(2) => \accumulation_reg[0]_i_2_n_1\,
      CO(1) => \accumulation_reg[0]_i_2_n_2\,
      CO(0) => \accumulation_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => countIn(3 downto 0),
      O(3) => \accumulation_reg[0]_i_2_n_4\,
      O(2) => \accumulation_reg[0]_i_2_n_5\,
      O(1) => \accumulation_reg[0]_i_2_n_6\,
      O(0) => \accumulation_reg[0]_i_2_n_7\,
      S(3) => \accumulation[0]_i_3_n_0\,
      S(2) => \accumulation[0]_i_4_n_0\,
      S(1) => \accumulation[0]_i_5_n_0\,
      S(0) => \accumulation[0]_i_6_n_0\
    );
\accumulation_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[8]_i_1_n_5\,
      Q => accumulation_reg(10),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[8]_i_1_n_4\,
      Q => accumulation_reg(11),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[12]_i_1_n_7\,
      Q => accumulation_reg(12),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulation_reg[8]_i_1_n_0\,
      CO(3) => \NLW_accumulation_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \accumulation_reg[12]_i_1_n_1\,
      CO(1) => \accumulation_reg[12]_i_1_n_2\,
      CO(0) => \accumulation_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \accumulation_reg[12]_i_1_n_4\,
      O(2) => \accumulation_reg[12]_i_1_n_5\,
      O(1) => \accumulation_reg[12]_i_1_n_6\,
      O(0) => \accumulation_reg[12]_i_1_n_7\,
      S(3 downto 0) => accumulation_reg(15 downto 12)
    );
\accumulation_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[12]_i_1_n_6\,
      Q => accumulation_reg(13),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[12]_i_1_n_5\,
      Q => accumulation_reg(14),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[12]_i_1_n_4\,
      Q => accumulation_reg(15),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[0]_i_2_n_6\,
      Q => accumulation_reg(1),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[0]_i_2_n_5\,
      Q => accumulation_reg(2),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[0]_i_2_n_4\,
      Q => accumulation_reg(3),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[4]_i_1_n_7\,
      Q => accumulation_reg(4),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulation_reg[0]_i_2_n_0\,
      CO(3) => \accumulation_reg[4]_i_1_n_0\,
      CO(2) => \accumulation_reg[4]_i_1_n_1\,
      CO(1) => \accumulation_reg[4]_i_1_n_2\,
      CO(0) => \accumulation_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => countIn(7 downto 4),
      O(3) => \accumulation_reg[4]_i_1_n_4\,
      O(2) => \accumulation_reg[4]_i_1_n_5\,
      O(1) => \accumulation_reg[4]_i_1_n_6\,
      O(0) => \accumulation_reg[4]_i_1_n_7\,
      S(3) => \accumulation[4]_i_2_n_0\,
      S(2) => \accumulation[4]_i_3_n_0\,
      S(1) => \accumulation[4]_i_4_n_0\,
      S(0) => \accumulation[4]_i_5_n_0\
    );
\accumulation_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[4]_i_1_n_6\,
      Q => accumulation_reg(5),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[4]_i_1_n_5\,
      Q => accumulation_reg(6),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[4]_i_1_n_4\,
      Q => accumulation_reg(7),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[8]_i_1_n_7\,
      Q => accumulation_reg(8),
      R => \accumulation[0]_i_1_n_0\
    );
\accumulation_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \accumulation_reg[4]_i_1_n_0\,
      CO(3) => \accumulation_reg[8]_i_1_n_0\,
      CO(2) => \accumulation_reg[8]_i_1_n_1\,
      CO(1) => \accumulation_reg[8]_i_1_n_2\,
      CO(0) => \accumulation_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \accumulation_reg[8]_i_1_n_4\,
      O(2) => \accumulation_reg[8]_i_1_n_5\,
      O(1) => \accumulation_reg[8]_i_1_n_6\,
      O(0) => \accumulation_reg[8]_i_1_n_7\,
      S(3 downto 0) => accumulation_reg(11 downto 8)
    );
\accumulation_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => \accumulation_reg[8]_i_1_n_6\,
      Q => accumulation_reg(9),
      R => \accumulation[0]_i_1_n_0\
    );
intensityOutValidLocal_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \accumReg[15]_i_4_n_0\,
      I1 => countInValid,
      I2 => \accumReg[15]_i_3_n_0\,
      I3 => resetn,
      O => intensityOutValidLocal_i_1_n_0
    );
intensityOutValidLocal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => intensityOutValidLocal_i_1_n_0,
      Q => intensityOutValid,
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \rebinCounter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \rebinCounter_reg_n_0_[4]\,
      S(2) => \rebinCounter_reg_n_0_[3]\,
      S(1) => \rebinCounter_reg_n_0_[2]\,
      S(0) => \rebinCounter_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \rebinCounter_reg_n_0_[8]\,
      S(2) => \rebinCounter_reg_n_0_[7]\,
      S(1) => \rebinCounter_reg_n_0_[6]\,
      S(0) => \rebinCounter_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \rebinCounter_reg_n_0_[12]\,
      S(2) => \rebinCounter_reg_n_0_[11]\,
      S(1) => \rebinCounter_reg_n_0_[10]\,
      S(0) => \rebinCounter_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2) => \rebinCounter_reg_n_0_[15]\,
      S(1) => \rebinCounter_reg_n_0_[14]\,
      S(0) => \rebinCounter_reg_n_0_[13]\
    );
\rebinCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rebinCounter_reg_n_0_[0]\,
      O => rebinCounter(0)
    );
\rebinCounter[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(10)
    );
\rebinCounter[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(11)
    );
\rebinCounter[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(12),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(12)
    );
\rebinCounter[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(13),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(13)
    );
\rebinCounter[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(14),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(14)
    );
\rebinCounter[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => p_0_in
    );
\rebinCounter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(15),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(15)
    );
\rebinCounter[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \accumReg[15]_i_5_n_0\,
      I1 => \rebinCounter_reg_n_0_[6]\,
      I2 => \rebinCounter_reg_n_0_[0]\,
      I3 => \rebinCounter_reg_n_0_[9]\,
      I4 => \rebinCounter_reg_n_0_[5]\,
      I5 => \accumReg[15]_i_3_n_0\,
      O => \rebinCounter[15]_i_3_n_0\
    );
\rebinCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(1)
    );
\rebinCounter[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(2)
    );
\rebinCounter[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(3)
    );
\rebinCounter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(4)
    );
\rebinCounter[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(5)
    );
\rebinCounter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(6)
    );
\rebinCounter[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(7)
    );
\rebinCounter[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(8)
    );
\rebinCounter[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \rebinCounter[15]_i_3_n_0\,
      O => rebinCounter(9)
    );
\rebinCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(0),
      Q => \rebinCounter_reg_n_0_[0]\,
      R => p_0_in
    );
\rebinCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(10),
      Q => \rebinCounter_reg_n_0_[10]\,
      R => p_0_in
    );
\rebinCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(11),
      Q => \rebinCounter_reg_n_0_[11]\,
      R => p_0_in
    );
\rebinCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(12),
      Q => \rebinCounter_reg_n_0_[12]\,
      R => p_0_in
    );
\rebinCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(13),
      Q => \rebinCounter_reg_n_0_[13]\,
      R => p_0_in
    );
\rebinCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(14),
      Q => \rebinCounter_reg_n_0_[14]\,
      R => p_0_in
    );
\rebinCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(15),
      Q => \rebinCounter_reg_n_0_[15]\,
      R => p_0_in
    );
\rebinCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(1),
      Q => \rebinCounter_reg_n_0_[1]\,
      R => p_0_in
    );
\rebinCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(2),
      Q => \rebinCounter_reg_n_0_[2]\,
      R => p_0_in
    );
\rebinCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(3),
      Q => \rebinCounter_reg_n_0_[3]\,
      R => p_0_in
    );
\rebinCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(4),
      Q => \rebinCounter_reg_n_0_[4]\,
      R => p_0_in
    );
\rebinCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(5),
      Q => \rebinCounter_reg_n_0_[5]\,
      R => p_0_in
    );
\rebinCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(6),
      Q => \rebinCounter_reg_n_0_[6]\,
      R => p_0_in
    );
\rebinCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(7),
      Q => \rebinCounter_reg_n_0_[7]\,
      R => p_0_in
    );
\rebinCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(8),
      Q => \rebinCounter_reg_n_0_[8]\,
      R => p_0_in
    );
\rebinCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => countInValid,
      D => rebinCounter(9),
      Q => \rebinCounter_reg_n_0_[9]\,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_intensityRebin_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    countIn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    countInValid : in STD_LOGIC;
    intensityOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    intensityOutValid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_intensityRebin_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_intensityRebin_0_0 : entity is "design_1_intensityRebin_0_0,intensityRebin,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_intensityRebin_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_intensityRebin_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_intensityRebin_0_0 : entity is "intensityRebin,Vivado 2023.1";
end design_1_intensityRebin_0_0;

architecture STRUCTURE of design_1_intensityRebin_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk100MHz, INSERT_VIP 0";
  attribute x_interface_info of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute x_interface_parameter of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_intensityRebin_0_0_intensityRebin
     port map (
      clk => clk,
      countIn(7 downto 0) => countIn(7 downto 0),
      countInValid => countInValid,
      intensityOut(15 downto 0) => intensityOut(15 downto 0),
      intensityOutValid => intensityOutValid,
      resetn => resetn
    );
end STRUCTURE;
