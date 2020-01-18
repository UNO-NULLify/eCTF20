-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu May 23 15:04:21 2019
-- Host        : MM235512-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/bmarquis/Documents/Cora-Z7-07S-base-linux_backup_20190520/src/bd/system/ip/system_i2s_output_1_0/system_i2s_output_1_0_sim_netlist.vhdl
-- Design      : system_i2s_output_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2s_output_1_0_i2s_output is
  port (
    i2s_mclk : out STD_LOGIC;
    data_accepted : out STD_LOGIC;
    i2s_sd : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    data_r : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_l : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_i2s_output_1_0_i2s_output : entity is "i2s_output";
end system_i2s_output_1_0_i2s_output;

architecture STRUCTURE of system_i2s_output_1_0_i2s_output is
  signal hold_r : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^i2s_sd\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 to 15 );
  signal p_0_in1_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal shift_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \shift_out[15]_i_3_n_0\ : STD_LOGIC;
  signal \shift_out[15]_i_4_n_0\ : STD_LOGIC;
  signal \shift_out[16]_i_1_n_0\ : STD_LOGIC;
  signal \shift_out[16]_i_2_n_0\ : STD_LOGIC;
  signal \step_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mclk_ODDR_R_UNCONNECTED : STD_LOGIC;
  signal NLW_mclk_ODDR_S_UNCONNECTED : STD_LOGIC;
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of mclk_ODDR : label is "TRUE";
  attribute box_type : string;
  attribute box_type of mclk_ODDR : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_out[15]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_out[15]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \step[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \step[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \step[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \step[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \step[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \step[7]_i_1\ : label is "soft_lutpair1";
begin
  i2s_sd <= \^i2s_sd\;
  \out\(1 downto 0) <= \^out\(1 downto 0);
data_accepted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \step_reg__0\(7),
      I1 => \^out\(1),
      I2 => \step_reg__0\(6),
      I3 => \step_reg__0\(5),
      I4 => \step_reg__0\(4),
      I5 => p_0_in(15),
      O => p_0_in1_in
    );
data_accepted_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in1_in,
      Q => data_accepted,
      R => '0'
    );
\hold_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(0),
      Q => hold_r(0),
      R => '0'
    );
\hold_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(10),
      Q => hold_r(10),
      R => '0'
    );
\hold_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(11),
      Q => hold_r(11),
      R => '0'
    );
\hold_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(12),
      Q => hold_r(12),
      R => '0'
    );
\hold_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(13),
      Q => hold_r(13),
      R => '0'
    );
\hold_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(14),
      Q => hold_r(14),
      R => '0'
    );
\hold_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(15),
      Q => hold_r(15),
      R => '0'
    );
\hold_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(1),
      Q => hold_r(1),
      R => '0'
    );
\hold_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(2),
      Q => hold_r(2),
      R => '0'
    );
\hold_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(3),
      Q => hold_r(3),
      R => '0'
    );
\hold_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(4),
      Q => hold_r(4),
      R => '0'
    );
\hold_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(5),
      Q => hold_r(5),
      R => '0'
    );
\hold_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(6),
      Q => hold_r(6),
      R => '0'
    );
\hold_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(7),
      Q => hold_r(7),
      R => '0'
    );
\hold_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(8),
      Q => hold_r(8),
      R => '0'
    );
\hold_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in1_in,
      D => data_r(9),
      Q => hold_r(9),
      R => '0'
    );
mclk_ODDR: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clk,
      CE => '1',
      D1 => '1',
      D2 => '0',
      Q => i2s_mclk,
      R => NLW_mclk_ODDR_R_UNCONNECTED,
      S => NLW_mclk_ODDR_S_UNCONNECTED
    );
\shift_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFF3BFF"
    )
        port map (
      I0 => hold_r(0),
      I1 => \step_reg__0\(7),
      I2 => \^out\(1),
      I3 => \shift_out[16]_i_2_n_0\,
      I4 => data_l(0),
      O => p_1_in(0)
    );
\shift_out[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(9),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(10),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(10),
      O => p_1_in(10)
    );
\shift_out[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(10),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(11),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(11),
      O => p_1_in(11)
    );
\shift_out[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(11),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(12),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(12),
      O => p_1_in(12)
    );
\shift_out[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(12),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(13),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(13),
      O => p_1_in(13)
    );
\shift_out[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(13),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(14),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(14),
      O => p_1_in(14)
    );
\shift_out[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^out\(0),
      I1 => \step_reg__0\(2),
      I2 => \step_reg__0\(0),
      I3 => \step_reg__0\(1),
      O => p_0_in(15)
    );
\shift_out[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(14),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(15),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(15),
      O => p_1_in(15)
    );
\shift_out[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \step_reg__0\(4),
      I1 => \step_reg__0\(5),
      I2 => \step_reg__0\(6),
      I3 => \^out\(1),
      I4 => \step_reg__0\(7),
      O => \shift_out[15]_i_3_n_0\
    );
\shift_out[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \step_reg__0\(4),
      I1 => \step_reg__0\(5),
      I2 => \step_reg__0\(6),
      I3 => \^out\(1),
      I4 => \step_reg__0\(7),
      O => \shift_out[15]_i_4_n_0\
    );
\shift_out[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFF2A00"
    )
        port map (
      I0 => shift_out(15),
      I1 => \step_reg__0\(7),
      I2 => \shift_out[16]_i_2_n_0\,
      I3 => p_0_in(15),
      I4 => \^i2s_sd\,
      O => \shift_out[16]_i_1_n_0\
    );
\shift_out[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \step_reg__0\(6),
      I1 => \step_reg__0\(5),
      I2 => \step_reg__0\(4),
      O => \shift_out[16]_i_2_n_0\
    );
\shift_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(0),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(1),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(1),
      O => p_1_in(1)
    );
\shift_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(1),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(2),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(2),
      O => p_1_in(2)
    );
\shift_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(2),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(3),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(3),
      O => p_1_in(3)
    );
\shift_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(3),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(4),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(4),
      O => p_1_in(4)
    );
\shift_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(4),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(5),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(5),
      O => p_1_in(5)
    );
\shift_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(5),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(6),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(6),
      O => p_1_in(6)
    );
\shift_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(6),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(7),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(7),
      O => p_1_in(7)
    );
\shift_out[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(7),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(8),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(8),
      O => p_1_in(8)
    );
\shift_out[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE200E2"
    )
        port map (
      I0 => shift_out(8),
      I1 => \shift_out[15]_i_3_n_0\,
      I2 => hold_r(9),
      I3 => \shift_out[15]_i_4_n_0\,
      I4 => data_l(9),
      O => p_1_in(9)
    );
\shift_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(0),
      Q => shift_out(0),
      R => '0'
    );
\shift_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(10),
      Q => shift_out(10),
      R => '0'
    );
\shift_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(11),
      Q => shift_out(11),
      R => '0'
    );
\shift_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(12),
      Q => shift_out(12),
      R => '0'
    );
\shift_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(13),
      Q => shift_out(13),
      R => '0'
    );
\shift_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(14),
      Q => shift_out(14),
      R => '0'
    );
\shift_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(15),
      Q => shift_out(15),
      R => '0'
    );
\shift_out_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \shift_out[16]_i_1_n_0\,
      Q => \^i2s_sd\,
      R => '0'
    );
\shift_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(1),
      Q => shift_out(1),
      R => '0'
    );
\shift_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(2),
      Q => shift_out(2),
      R => '0'
    );
\shift_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(3),
      Q => shift_out(3),
      R => '0'
    );
\shift_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(4),
      Q => shift_out(4),
      R => '0'
    );
\shift_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(5),
      Q => shift_out(5),
      R => '0'
    );
\shift_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(6),
      Q => shift_out(6),
      R => '0'
    );
\shift_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(7),
      Q => shift_out(7),
      R => '0'
    );
\shift_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(8),
      Q => shift_out(8),
      R => '0'
    );
\shift_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(15),
      D => p_1_in(9),
      Q => shift_out(9),
      R => '0'
    );
\step[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \step_reg__0\(0),
      O => plusOp(0)
    );
\step[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \step_reg__0\(0),
      I1 => \step_reg__0\(1),
      O => plusOp(1)
    );
\step[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \step_reg__0\(2),
      I1 => \step_reg__0\(1),
      I2 => \step_reg__0\(0),
      O => plusOp(2)
    );
\step[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \step_reg__0\(2),
      I1 => \step_reg__0\(0),
      I2 => \step_reg__0\(1),
      I3 => \^out\(0),
      O => plusOp(3)
    );
\step[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \step_reg__0\(1),
      I1 => \step_reg__0\(0),
      I2 => \step_reg__0\(2),
      I3 => \^out\(0),
      I4 => \step_reg__0\(4),
      O => plusOp(4)
    );
\step[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^out\(0),
      I1 => \step_reg__0\(2),
      I2 => \step_reg__0\(0),
      I3 => \step_reg__0\(1),
      I4 => \step_reg__0\(4),
      I5 => \step_reg__0\(5),
      O => plusOp(5)
    );
\step[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \step_reg__0\(4),
      I1 => p_0_in(15),
      I2 => \step_reg__0\(5),
      I3 => \step_reg__0\(6),
      O => plusOp(6)
    );
\step[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \step_reg__0\(5),
      I1 => p_0_in(15),
      I2 => \step_reg__0\(4),
      I3 => \step_reg__0\(6),
      I4 => \step_reg__0\(7),
      O => plusOp(7)
    );
\step[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \step_reg__0\(7),
      I1 => \step_reg__0\(6),
      I2 => \step_reg__0\(4),
      I3 => p_0_in(15),
      I4 => \step_reg__0\(5),
      I5 => \^out\(1),
      O => plusOp(8)
    );
\step_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(0),
      Q => \step_reg__0\(0),
      R => '0'
    );
\step_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(1),
      Q => \step_reg__0\(1),
      R => '0'
    );
\step_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(2),
      Q => \step_reg__0\(2),
      R => '0'
    );
\step_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(3),
      Q => \^out\(0),
      R => '0'
    );
\step_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(4),
      Q => \step_reg__0\(4),
      R => '0'
    );
\step_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(5),
      Q => \step_reg__0\(5),
      R => '0'
    );
\step_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(6),
      Q => \step_reg__0\(6),
      R => '0'
    );
\step_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(7),
      Q => \step_reg__0\(7),
      R => '0'
    );
\step_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => plusOp(8),
      Q => \^out\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_i2s_output_1_0 is
  port (
    clk : in STD_LOGIC;
    data_l : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_r : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_accepted : out STD_LOGIC;
    i2s_sd : out STD_LOGIC;
    i2s_lrclk : out STD_LOGIC;
    i2s_sclk : out STD_LOGIC;
    i2s_mclk : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_i2s_output_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_i2s_output_1_0 : entity is "system_i2s_output_1_0,i2s_output,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_i2s_output_1_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_i2s_output_1_0 : entity is "i2s_output,Vivado 2017.4";
end system_i2s_output_1_0;

architecture STRUCTURE of system_i2s_output_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 24573991, PHASE 0.0, CLK_DOMAIN /clk_wiz_25M_clk_out1";
begin
U0: entity work.system_i2s_output_1_0_i2s_output
     port map (
      clk => clk,
      data_accepted => data_accepted,
      data_l(15 downto 0) => data_l(15 downto 0),
      data_r(15 downto 0) => data_r(15 downto 0),
      i2s_mclk => i2s_mclk,
      i2s_sd => i2s_sd,
      \out\(1) => i2s_lrclk,
      \out\(0) => i2s_sclk
    );
end STRUCTURE;
