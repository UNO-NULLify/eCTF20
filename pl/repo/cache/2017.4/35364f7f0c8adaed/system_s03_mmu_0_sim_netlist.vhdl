-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun Feb 16 18:34:11 2020
-- Host        : ssg0 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s03_mmu_0_sim_netlist.vhdl
-- Design      : system_s03_mmu_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave is
  port (
    err_rvalid : out STD_LOGIC;
    err_arready : out STD_LOGIC;
    r_state0 : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]\ : in STD_LOGIC;
    \gen_read.r_state_reg[0]\ : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC;
    \aresetn_d_reg[1]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave is
  signal \^err_arready\ : STD_LOGIC;
  signal \^err_rvalid\ : STD_LOGIC;
  signal \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axilite.gen_read.s_axi_rvalid_i_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_valid_i_i_2 : label is "soft_lutpair0";
begin
  err_arready <= \^err_arready\;
  err_rvalid <= \^err_rvalid\;
  \gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ <= \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\;
\gen_axilite.gen_read.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]\,
      Q => \^err_arready\,
      R => '0'
    );
\gen_axilite.gen_read.s_axi_rvalid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000EAAA00000000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\,
      I2 => m_valid_i_reg_0,
      I3 => \^err_arready\,
      I4 => s_axi_rready,
      I5 => \aresetn_d_reg[1]_0\,
      O => \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0\
    );
\gen_axilite.gen_read.s_axi_rvalid_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_read.r_state_reg[1]\,
      I1 => \gen_read.r_state_reg[0]\,
      O => \^gen_axilite.gen_read.s_axi_rvalid_i_reg_0\
    );
\gen_axilite.gen_read.s_axi_rvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axilite.gen_read.s_axi_rvalid_i_i_1_n_0\,
      Q => \^err_rvalid\,
      R => '0'
    );
\gen_read.r_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0FFFF88F00000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => s_axi_rready,
      I2 => \gen_read.ar_cnt_reg[0]\,
      I3 => \gen_read.r_state_reg[1]\,
      I4 => \gen_read.r_state_reg[0]\,
      I5 => m_valid_i_reg_0,
      O => r_state0
    );
m_valid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F07FFF7F"
    )
        port map (
      I0 => \^err_arready\,
      I1 => \gen_read.r_state_reg[1]\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => Q(0),
      I4 => m_axi_arready,
      O => m_valid_i_reg
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \gen_read.r_state_reg[1]\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rvalid,
      O => s_axi_rvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\ is
  port (
    \m_payload_i_reg[0]_0\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_axilite.gen_read.s_axi_arready_i_reg\ : out STD_LOGIC;
    \m_axi_arprot[2]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    \gen_axilite.gen_read.s_axi_rvalid_i_reg\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_read.ar_cnt_reg[0]_0\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_1\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_2\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_3\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_4\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_5\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_6\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_7\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \gen_axilite.gen_read.s_axi_arready_i_reg_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    err_arready : in STD_LOGIC;
    \gen_read.r_state_reg[1]\ : in STD_LOGIC;
    err_rvalid : in STD_LOGIC;
    \gen_read.r_state_reg[0]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_8\ : in STD_LOGIC;
    \s_axi_araddr[19]\ : in STD_LOGIC;
    \s_axi_araddr[19]_0\ : in STD_LOGIC;
    \s_axi_araddr[27]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[1]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[1]_0\ : in STD_LOGIC;
    \s_axi_arprot[2]\ : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\ is
  signal \aresetn_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_read.ar_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_0\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_1\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_2\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_3\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_4\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_5\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_6\ : STD_LOGIC;
  signal \^gen_read.ar_cnt_reg[0]_7\ : STD_LOGIC;
  signal \^m_axi_arprot[2]\ : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal \m_payload_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_2_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_5_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_7_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[0]_0\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal r_match : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_axi_arready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axilite.gen_read.s_axi_rvalid_i_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_13\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_14\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_9\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of m_valid_i_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0 : label is "soft_lutpair3";
begin
  \gen_read.ar_cnt_reg[0]\ <= \^gen_read.ar_cnt_reg[0]\;
  \gen_read.ar_cnt_reg[0]_0\ <= \^gen_read.ar_cnt_reg[0]_0\;
  \gen_read.ar_cnt_reg[0]_1\ <= \^gen_read.ar_cnt_reg[0]_1\;
  \gen_read.ar_cnt_reg[0]_2\ <= \^gen_read.ar_cnt_reg[0]_2\;
  \gen_read.ar_cnt_reg[0]_3\ <= \^gen_read.ar_cnt_reg[0]_3\;
  \gen_read.ar_cnt_reg[0]_4\ <= \^gen_read.ar_cnt_reg[0]_4\;
  \gen_read.ar_cnt_reg[0]_5\ <= \^gen_read.ar_cnt_reg[0]_5\;
  \gen_read.ar_cnt_reg[0]_6\ <= \^gen_read.ar_cnt_reg[0]_6\;
  \gen_read.ar_cnt_reg[0]_7\ <= \^gen_read.ar_cnt_reg[0]_7\;
  \m_axi_arprot[2]\(35 downto 0) <= \^m_axi_arprot[2]\(35 downto 0);
  \m_payload_i_reg[0]_0\ <= \^m_payload_i_reg[0]_0\;
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d[1]_i_1_n_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d[1]_i_1_n_0\,
      Q => \^gen_read.ar_cnt_reg[0]\,
      R => '0'
    );
\gen_axilite.gen_read.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888A2AAAAAA"
    )
        port map (
      I0 => \^gen_read.ar_cnt_reg[0]\,
      I1 => err_arready,
      I2 => \^m_axi_arprot[2]\(32),
      I3 => \^m_payload_i_reg[0]_0\,
      I4 => \gen_read.r_state_reg[1]\,
      I5 => err_rvalid,
      O => \gen_axilite.gen_read.s_axi_arready_i_reg\
    );
\gen_axilite.gen_read.s_axi_rvalid_i_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      I1 => \^m_axi_arprot[2]\(32),
      O => \gen_axilite.gen_read.s_axi_rvalid_i_reg\
    );
\gen_read.ar_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I1 => Q(0),
      I2 => Q(1),
      O => D(0)
    );
\gen_read.ar_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => Q(2),
      I1 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      O => D(1)
    );
\gen_read.ar_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      I4 => Q(3),
      O => D(2)
    );
\gen_read.ar_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => Q(4),
      I1 => \gen_read.ar_cnt[4]_i_2_n_0\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(3),
      I5 => Q(2),
      O => D(3)
    );
\gen_read.ar_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000045554545"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[0]_8\,
      I1 => \s_axi_araddr[27]\,
      I2 => \s_axi_araddr[19]_0\,
      I3 => \m_payload_i[32]_i_7_n_0\,
      I4 => \^gen_read.ar_cnt_reg[0]_0\,
      I5 => \gen_read.ar_cnt[5]_i_7_n_0\,
      O => \gen_read.ar_cnt[4]_i_2_n_0\
    );
\gen_read.ar_cnt[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_read.ar_cnt_reg[0]\,
      O => SR(0)
    );
\gen_read.ar_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDF0020"
    )
        port map (
      I0 => sr_axi_arready,
      I1 => Q(5),
      I2 => s_axi_arvalid,
      I3 => \m_payload_i[32]_i_2_n_0\,
      I4 => \gen_read.ar_cnt_reg[0]_8\,
      O => E(0)
    );
\gen_read.ar_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAA96AAAAAAA"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => \gen_read.ar_cnt[5]_i_5_n_0\,
      I5 => \gen_read.ar_cnt[5]_i_6_n_0\,
      O => D(4)
    );
\gen_read.ar_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005545"
    )
        port map (
      I0 => \gen_read.ar_cnt[5]_i_7_n_0\,
      I1 => \s_axi_araddr[19]\,
      I2 => \s_axi_araddr[19]_0\,
      I3 => \s_axi_araddr[27]\,
      I4 => \gen_read.ar_cnt_reg[0]_8\,
      I5 => \gen_read.ar_cnt_reg[1]\,
      O => \gen_read.ar_cnt[5]_i_5_n_0\
    );
\gen_read.ar_cnt[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA88888A88"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[1]_0\,
      I1 => \gen_read.ar_cnt[5]_i_7_n_0\,
      I2 => \s_axi_araddr[19]\,
      I3 => \s_axi_araddr[19]_0\,
      I4 => \s_axi_araddr[27]\,
      I5 => \gen_read.ar_cnt_reg[0]_8\,
      O => \gen_read.ar_cnt[5]_i_6_n_0\
    );
\gen_read.ar_cnt[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => Q(5),
      I2 => sr_axi_arready,
      O => \gen_read.ar_cnt[5]_i_7_n_0\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      I1 => \^m_axi_arprot[2]\(32),
      I2 => \gen_read.r_state_reg[0]\,
      O => m_axi_arvalid
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      O => \m_payload_i[31]_i_1_n_0\
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_payload_i[32]_i_2_n_0\,
      O => r_match
    );
\m_payload_i[32]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \s_axi_arprot[2]\(21),
      I1 => \s_axi_arprot[2]\(26),
      I2 => \s_axi_arprot[2]\(29),
      I3 => \s_axi_arprot[2]\(30),
      O => \^gen_read.ar_cnt_reg[0]_6\
    );
\m_payload_i[32]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => \s_axi_arprot[2]\(27),
      I1 => \s_axi_arprot[2]\(25),
      I2 => \s_axi_arprot[2]\(30),
      I3 => \s_axi_arprot[2]\(31),
      I4 => \s_axi_arprot[2]\(26),
      I5 => \s_axi_arprot[2]\(23),
      O => \^gen_read.ar_cnt_reg[0]_7\
    );
\m_payload_i[32]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \s_axi_arprot[2]\(16),
      I1 => \s_axi_arprot[2]\(15),
      O => \^gen_read.ar_cnt_reg[0]_3\
    );
\m_payload_i[32]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \s_axi_arprot[2]\(31),
      I1 => \s_axi_arprot[2]\(17),
      I2 => \s_axi_arprot[2]\(16),
      I3 => \s_axi_arprot[2]\(18),
      I4 => \s_axi_arprot[2]\(19),
      O => \^gen_read.ar_cnt_reg[0]_4\
    );
\m_payload_i[32]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5554"
    )
        port map (
      I0 => \s_axi_arprot[2]\(17),
      I1 => \s_axi_arprot[2]\(13),
      I2 => \s_axi_arprot[2]\(14),
      I3 => \s_axi_arprot[2]\(15),
      I4 => \s_axi_arprot[2]\(16),
      O => \^gen_read.ar_cnt_reg[0]_5\
    );
\m_payload_i[32]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000055505550"
    )
        port map (
      I0 => \^gen_read.ar_cnt_reg[0]_1\,
      I1 => \m_payload_i[32]_i_4_n_0\,
      I2 => \m_payload_i[32]_i_5_n_0\,
      I3 => \m_payload_i[32]_i_6_n_0\,
      I4 => \m_payload_i[32]_i_7_n_0\,
      I5 => \^gen_read.ar_cnt_reg[0]_0\,
      O => \m_payload_i[32]_i_2_n_0\
    );
\m_payload_i[32]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \s_axi_arprot[2]\(30),
      I1 => \s_axi_arprot[2]\(29),
      I2 => \s_axi_arprot[2]\(31),
      O => \^gen_read.ar_cnt_reg[0]_1\
    );
\m_payload_i[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => \^gen_read.ar_cnt_reg[0]_2\,
      I1 => \s_axi_arprot[2]\(20),
      I2 => \s_axi_arprot[2]\(31),
      I3 => \^gen_read.ar_cnt_reg[0]_6\,
      I4 => \s_axi_arprot[2]\(16),
      I5 => \s_axi_arprot[2]\(17),
      O => \m_payload_i[32]_i_4_n_0\
    );
\m_payload_i[32]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^gen_read.ar_cnt_reg[0]_7\,
      I1 => \s_axi_arprot[2]\(24),
      I2 => \s_axi_arprot[2]\(22),
      I3 => \s_axi_arprot[2]\(28),
      O => \m_payload_i[32]_i_5_n_0\
    );
\m_payload_i[32]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555545"
    )
        port map (
      I0 => \s_axi_arprot[2]\(29),
      I1 => \^gen_read.ar_cnt_reg[0]_2\,
      I2 => \^gen_read.ar_cnt_reg[0]_3\,
      I3 => \s_axi_arprot[2]\(21),
      I4 => \s_axi_arprot[2]\(20),
      I5 => \s_axi_arprot[2]\(17),
      O => \m_payload_i[32]_i_6_n_0\
    );
\m_payload_i[32]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAF8FAFA"
    )
        port map (
      I0 => \^gen_read.ar_cnt_reg[0]_4\,
      I1 => \^gen_read.ar_cnt_reg[0]_5\,
      I2 => \^gen_read.ar_cnt_reg[0]_6\,
      I3 => \s_axi_arprot[2]\(31),
      I4 => \s_axi_arprot[2]\(20),
      I5 => \^gen_read.ar_cnt_reg[0]_2\,
      O => \m_payload_i[32]_i_7_n_0\
    );
\m_payload_i[32]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \s_axi_arprot[2]\(24),
      I1 => \s_axi_arprot[2]\(22),
      I2 => \s_axi_arprot[2]\(28),
      I3 => \s_axi_arprot[2]\(23),
      I4 => \s_axi_arprot[2]\(25),
      I5 => \s_axi_arprot[2]\(27),
      O => \^gen_read.ar_cnt_reg[0]_0\
    );
\m_payload_i[32]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_axi_arprot[2]\(18),
      I1 => \s_axi_arprot[2]\(19),
      O => \^gen_read.ar_cnt_reg[0]_2\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(0),
      Q => \^m_axi_arprot[2]\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(10),
      Q => \^m_axi_arprot[2]\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(11),
      Q => \^m_axi_arprot[2]\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(12),
      Q => \^m_axi_arprot[2]\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(13),
      Q => \^m_axi_arprot[2]\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(14),
      Q => \^m_axi_arprot[2]\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(15),
      Q => \^m_axi_arprot[2]\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(16),
      Q => \^m_axi_arprot[2]\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(17),
      Q => \^m_axi_arprot[2]\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(18),
      Q => \^m_axi_arprot[2]\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(19),
      Q => \^m_axi_arprot[2]\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(1),
      Q => \^m_axi_arprot[2]\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(20),
      Q => \^m_axi_arprot[2]\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(21),
      Q => \^m_axi_arprot[2]\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(22),
      Q => \^m_axi_arprot[2]\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(23),
      Q => \^m_axi_arprot[2]\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(24),
      Q => \^m_axi_arprot[2]\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(25),
      Q => \^m_axi_arprot[2]\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(26),
      Q => \^m_axi_arprot[2]\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(27),
      Q => \^m_axi_arprot[2]\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(28),
      Q => \^m_axi_arprot[2]\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(29),
      Q => \^m_axi_arprot[2]\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(2),
      Q => \^m_axi_arprot[2]\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(30),
      Q => \^m_axi_arprot[2]\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(31),
      Q => \^m_axi_arprot[2]\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => r_match,
      Q => \^m_axi_arprot[2]\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(32),
      Q => \^m_axi_arprot[2]\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(33),
      Q => \^m_axi_arprot[2]\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(34),
      Q => \^m_axi_arprot[2]\(35),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(3),
      Q => \^m_axi_arprot[2]\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(4),
      Q => \^m_axi_arprot[2]\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(5),
      Q => \^m_axi_arprot[2]\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(6),
      Q => \^m_axi_arprot[2]\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(7),
      Q => \^m_axi_arprot[2]\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(8),
      Q => \^m_axi_arprot[2]\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[31]_i_1_n_0\,
      D => \s_axi_arprot[2]\(9),
      Q => \^m_axi_arprot[2]\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E220000"
    )
        port map (
      I0 => \gen_axilite.gen_read.s_axi_arready_i_reg_0\,
      I1 => sr_axi_arready,
      I2 => Q(5),
      I3 => s_axi_arvalid,
      I4 => \^gen_read.ar_cnt_reg[0]\,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_payload_i_reg[0]_0\,
      R => '0'
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_axi_arready,
      I1 => Q(5),
      O => s_axi_arready
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA2A222AAA"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => \^gen_read.ar_cnt_reg[0]\,
      I2 => \gen_axilite.gen_read.s_axi_arready_i_reg_0\,
      I3 => \^m_payload_i_reg[0]_0\,
      I4 => s_axi_arvalid,
      I5 => Q(5),
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => sr_axi_arready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice is
  port (
    mr_axi_arvalid : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_axilite.gen_read.s_axi_arready_i_reg\ : out STD_LOGIC;
    \m_axi_arprot[2]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    \gen_axilite.gen_read.s_axi_rvalid_i_reg\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_read.ar_cnt_reg[0]_0\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_1\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_2\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_3\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_4\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_5\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_6\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_7\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    \gen_axilite.gen_read.s_axi_arready_i_reg_0\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    err_arready : in STD_LOGIC;
    \gen_read.r_state_reg[1]\ : in STD_LOGIC;
    err_rvalid : in STD_LOGIC;
    \gen_read.r_state_reg[0]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_8\ : in STD_LOGIC;
    \s_axi_araddr[19]\ : in STD_LOGIC;
    \s_axi_araddr[19]_0\ : in STD_LOGIC;
    \s_axi_araddr[27]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[1]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[1]_0\ : in STD_LOGIC;
    \s_axi_arprot[2]\ : in STD_LOGIC_VECTOR ( 34 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice is
begin
\ar.ar_pipe\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice__parameterized1\
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => SR(0),
      aclk => aclk,
      aresetn => aresetn,
      err_arready => err_arready,
      err_rvalid => err_rvalid,
      \gen_axilite.gen_read.s_axi_arready_i_reg\ => \gen_axilite.gen_read.s_axi_arready_i_reg\,
      \gen_axilite.gen_read.s_axi_arready_i_reg_0\ => \gen_axilite.gen_read.s_axi_arready_i_reg_0\,
      \gen_axilite.gen_read.s_axi_rvalid_i_reg\ => \gen_axilite.gen_read.s_axi_rvalid_i_reg\,
      \gen_read.ar_cnt_reg[0]\ => \gen_read.ar_cnt_reg[0]\,
      \gen_read.ar_cnt_reg[0]_0\ => \gen_read.ar_cnt_reg[0]_0\,
      \gen_read.ar_cnt_reg[0]_1\ => \gen_read.ar_cnt_reg[0]_1\,
      \gen_read.ar_cnt_reg[0]_2\ => \gen_read.ar_cnt_reg[0]_2\,
      \gen_read.ar_cnt_reg[0]_3\ => \gen_read.ar_cnt_reg[0]_3\,
      \gen_read.ar_cnt_reg[0]_4\ => \gen_read.ar_cnt_reg[0]_4\,
      \gen_read.ar_cnt_reg[0]_5\ => \gen_read.ar_cnt_reg[0]_5\,
      \gen_read.ar_cnt_reg[0]_6\ => \gen_read.ar_cnt_reg[0]_6\,
      \gen_read.ar_cnt_reg[0]_7\ => \gen_read.ar_cnt_reg[0]_7\,
      \gen_read.ar_cnt_reg[0]_8\ => \gen_read.ar_cnt_reg[0]_8\,
      \gen_read.ar_cnt_reg[1]\ => \gen_read.ar_cnt_reg[1]\,
      \gen_read.ar_cnt_reg[1]_0\ => \gen_read.ar_cnt_reg[1]_0\,
      \gen_read.r_state_reg[0]\ => \gen_read.r_state_reg[0]\,
      \gen_read.r_state_reg[1]\ => \gen_read.r_state_reg[1]\,
      \m_axi_arprot[2]\(35 downto 0) => \m_axi_arprot[2]\(35 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      \m_payload_i_reg[0]_0\ => mr_axi_arvalid,
      \s_axi_araddr[19]\ => \s_axi_araddr[19]\,
      \s_axi_araddr[19]_0\ => \s_axi_araddr[19]_0\,
      \s_axi_araddr[27]\ => \s_axi_araddr[27]\,
      \s_axi_arprot[2]\(34 downto 0) => \s_axi_arprot[2]\(34 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 34 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 34 downto 0 );
    aclk : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top is
  signal decerr_slave_inst_n_4 : STD_LOGIC;
  signal decerr_slave_inst_n_5 : STD_LOGIC;
  signal err_arready : STD_LOGIC;
  signal err_rvalid : STD_LOGIC;
  signal \gen_read.ar_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_10_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_11_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_12_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_13_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_14_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_15_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_9_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_read.r_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.r_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.r_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_read.r_state_reg_n_0_[1]\ : STD_LOGIC;
  signal mr_axi_araddr : STD_LOGIC_VECTOR ( 32 to 32 );
  signal mr_axi_arvalid : STD_LOGIC;
  signal r_state0 : STD_LOGIC;
  signal register_slice_inst_n_1 : STD_LOGIC;
  signal register_slice_inst_n_2 : STD_LOGIC;
  signal register_slice_inst_n_3 : STD_LOGIC;
  signal register_slice_inst_n_4 : STD_LOGIC;
  signal register_slice_inst_n_44 : STD_LOGIC;
  signal register_slice_inst_n_46 : STD_LOGIC;
  signal register_slice_inst_n_47 : STD_LOGIC;
  signal register_slice_inst_n_48 : STD_LOGIC;
  signal register_slice_inst_n_49 : STD_LOGIC;
  signal register_slice_inst_n_5 : STD_LOGIC;
  signal register_slice_inst_n_50 : STD_LOGIC;
  signal register_slice_inst_n_51 : STD_LOGIC;
  signal register_slice_inst_n_52 : STD_LOGIC;
  signal register_slice_inst_n_53 : STD_LOGIC;
  signal register_slice_inst_n_54 : STD_LOGIC;
  signal register_slice_inst_n_56 : STD_LOGIC;
  signal register_slice_inst_n_6 : STD_LOGIC;
  signal register_slice_inst_n_7 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_11\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_12\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair24";
begin
decerr_slave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave
     port map (
      Q(0) => mr_axi_araddr(32),
      aclk => aclk,
      \aresetn_d_reg[1]\ => register_slice_inst_n_7,
      \aresetn_d_reg[1]_0\ => register_slice_inst_n_1,
      err_arready => err_arready,
      err_rvalid => err_rvalid,
      \gen_axilite.gen_read.s_axi_rvalid_i_reg_0\ => decerr_slave_inst_n_5,
      \gen_read.ar_cnt_reg[0]\ => \gen_read.r_state[1]_i_3_n_0\,
      \gen_read.r_state_reg[0]\ => \gen_read.r_state_reg_n_0_[0]\,
      \gen_read.r_state_reg[1]\ => \gen_read.r_state_reg_n_0_[1]\,
      m_axi_arready => m_axi_arready,
      m_axi_rvalid => m_axi_rvalid,
      m_valid_i_reg => decerr_slave_inst_n_4,
      m_valid_i_reg_0 => register_slice_inst_n_44,
      r_state0 => r_state0,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\gen_read.ar_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(0),
      O => \gen_read.ar_cnt[0]_i_1_n_0\
    );
\gen_read.ar_cnt[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => register_slice_inst_n_48,
      I1 => \gen_read.ar_cnt[5]_i_13_n_0\,
      I2 => register_slice_inst_n_53,
      I3 => D(16),
      I4 => D(17),
      I5 => register_slice_inst_n_47,
      O => \gen_read.ar_cnt[5]_i_10_n_0\
    );
\gen_read.ar_cnt[5]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(1),
      I1 => \gen_read.ar_cnt_reg__0\(0),
      O => \gen_read.ar_cnt[5]_i_11_n_0\
    );
\gen_read.ar_cnt[5]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(1),
      I1 => \gen_read.ar_cnt_reg__0\(0),
      O => \gen_read.ar_cnt[5]_i_12_n_0\
    );
\gen_read.ar_cnt[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => D(19),
      I1 => D(18),
      I2 => D(20),
      I3 => D(31),
      O => \gen_read.ar_cnt[5]_i_13_n_0\
    );
\gen_read.ar_cnt[5]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => D(28),
      I1 => D(22),
      I2 => D(24),
      O => \gen_read.ar_cnt[5]_i_14_n_0\
    );
\gen_read.ar_cnt[5]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => D(21),
      I1 => D(20),
      I2 => D(17),
      O => \gen_read.ar_cnt[5]_i_15_n_0\
    );
\gen_read.ar_cnt[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \gen_read.r_state[1]_i_3_n_0\,
      I1 => m_axi_rvalid,
      I2 => s_axi_rready,
      O => \gen_read.ar_cnt[5]_i_4_n_0\
    );
\gen_read.ar_cnt[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020A0A"
    )
        port map (
      I0 => register_slice_inst_n_47,
      I1 => \gen_read.ar_cnt[5]_i_13_n_0\,
      I2 => register_slice_inst_n_53,
      I3 => register_slice_inst_n_52,
      I4 => register_slice_inst_n_51,
      O => \gen_read.ar_cnt[5]_i_8_n_0\
    );
\gen_read.ar_cnt[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDFFFFDFFF"
    )
        port map (
      I0 => \gen_read.ar_cnt[5]_i_14_n_0\,
      I1 => register_slice_inst_n_54,
      I2 => \gen_read.ar_cnt[5]_i_15_n_0\,
      I3 => register_slice_inst_n_50,
      I4 => register_slice_inst_n_49,
      I5 => D(29),
      O => \gen_read.ar_cnt[5]_i_9_n_0\
    );
\gen_read.ar_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_46,
      D => \gen_read.ar_cnt[0]_i_1_n_0\,
      Q => \gen_read.ar_cnt_reg__0\(0),
      R => register_slice_inst_n_56
    );
\gen_read.ar_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_46,
      D => register_slice_inst_n_6,
      Q => \gen_read.ar_cnt_reg__0\(1),
      R => register_slice_inst_n_56
    );
\gen_read.ar_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_46,
      D => register_slice_inst_n_5,
      Q => \gen_read.ar_cnt_reg__0\(2),
      R => register_slice_inst_n_56
    );
\gen_read.ar_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_46,
      D => register_slice_inst_n_4,
      Q => \gen_read.ar_cnt_reg__0\(3),
      R => register_slice_inst_n_56
    );
\gen_read.ar_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_46,
      D => register_slice_inst_n_3,
      Q => \gen_read.ar_cnt_reg__0\(4),
      R => register_slice_inst_n_56
    );
\gen_read.ar_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_46,
      D => register_slice_inst_n_2,
      Q => \gen_read.ar_cnt_reg__0\(5),
      R => register_slice_inst_n_56
    );
\gen_read.r_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6E6EEE6E00000000"
    )
        port map (
      I0 => \gen_read.r_state_reg_n_0_[0]\,
      I1 => r_state0,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      I3 => mr_axi_arvalid,
      I4 => mr_axi_araddr(32),
      I5 => register_slice_inst_n_1,
      O => \gen_read.r_state[0]_i_1_n_0\
    );
\gen_read.r_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"62E2626200000000"
    )
        port map (
      I0 => \gen_read.r_state_reg_n_0_[1]\,
      I1 => r_state0,
      I2 => \gen_read.r_state_reg_n_0_[0]\,
      I3 => mr_axi_araddr(32),
      I4 => mr_axi_arvalid,
      I5 => register_slice_inst_n_1,
      O => \gen_read.r_state[1]_i_1_n_0\
    );
\gen_read.r_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(0),
      I1 => \gen_read.ar_cnt_reg__0\(1),
      I2 => \gen_read.ar_cnt_reg__0\(4),
      I3 => \gen_read.ar_cnt_reg__0\(5),
      I4 => \gen_read.ar_cnt_reg__0\(2),
      I5 => \gen_read.ar_cnt_reg__0\(3),
      O => \gen_read.r_state[1]_i_3_n_0\
    );
\gen_read.r_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_read.r_state[0]_i_1_n_0\,
      Q => \gen_read.r_state_reg_n_0_[0]\,
      R => '0'
    );
\gen_read.r_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_read.r_state[1]_i_1_n_0\,
      Q => \gen_read.r_state_reg_n_0_[1]\,
      R => '0'
    );
register_slice_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice
     port map (
      D(4) => register_slice_inst_n_2,
      D(3) => register_slice_inst_n_3,
      D(2) => register_slice_inst_n_4,
      D(1) => register_slice_inst_n_5,
      D(0) => register_slice_inst_n_6,
      E(0) => register_slice_inst_n_46,
      Q(5 downto 0) => \gen_read.ar_cnt_reg__0\(5 downto 0),
      SR(0) => register_slice_inst_n_56,
      aclk => aclk,
      aresetn => aresetn,
      err_arready => err_arready,
      err_rvalid => err_rvalid,
      \gen_axilite.gen_read.s_axi_arready_i_reg\ => register_slice_inst_n_7,
      \gen_axilite.gen_read.s_axi_arready_i_reg_0\ => decerr_slave_inst_n_4,
      \gen_axilite.gen_read.s_axi_rvalid_i_reg\ => register_slice_inst_n_44,
      \gen_read.ar_cnt_reg[0]\ => register_slice_inst_n_1,
      \gen_read.ar_cnt_reg[0]_0\ => register_slice_inst_n_47,
      \gen_read.ar_cnt_reg[0]_1\ => register_slice_inst_n_48,
      \gen_read.ar_cnt_reg[0]_2\ => register_slice_inst_n_49,
      \gen_read.ar_cnt_reg[0]_3\ => register_slice_inst_n_50,
      \gen_read.ar_cnt_reg[0]_4\ => register_slice_inst_n_51,
      \gen_read.ar_cnt_reg[0]_5\ => register_slice_inst_n_52,
      \gen_read.ar_cnt_reg[0]_6\ => register_slice_inst_n_53,
      \gen_read.ar_cnt_reg[0]_7\ => register_slice_inst_n_54,
      \gen_read.ar_cnt_reg[0]_8\ => \gen_read.ar_cnt[5]_i_4_n_0\,
      \gen_read.ar_cnt_reg[1]\ => \gen_read.ar_cnt[5]_i_11_n_0\,
      \gen_read.ar_cnt_reg[1]_0\ => \gen_read.ar_cnt[5]_i_12_n_0\,
      \gen_read.r_state_reg[0]\ => \gen_read.r_state_reg_n_0_[0]\,
      \gen_read.r_state_reg[1]\ => decerr_slave_inst_n_5,
      \m_axi_arprot[2]\(35 downto 33) => Q(34 downto 32),
      \m_axi_arprot[2]\(32) => mr_axi_araddr(32),
      \m_axi_arprot[2]\(31 downto 0) => Q(31 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      mr_axi_arvalid => mr_axi_arvalid,
      \s_axi_araddr[19]\ => \gen_read.ar_cnt[5]_i_8_n_0\,
      \s_axi_araddr[19]_0\ => \gen_read.ar_cnt[5]_i_9_n_0\,
      \s_axi_araddr[27]\ => \gen_read.ar_cnt[5]_i_10_n_0\,
      \s_axi_arprot[2]\(34 downto 0) => D(34 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rdata(9)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \gen_read.r_state_reg_n_0_[0]\,
      I2 => \gen_read.r_state_reg_n_0_[1]\,
      O => s_axi_rresp(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_s03_mmu_0,axi_mmu_v2_1_13_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_mmu_v2_1_13_top,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^s_axi_rready\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 1e+08, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
begin
  \^s_axi_rready\ <= s_axi_rready;
  m_axi_rready <= \^s_axi_rready\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top
     port map (
      D(34 downto 32) => s_axi_arprot(2 downto 0),
      D(31 downto 0) => s_axi_araddr(31 downto 0),
      Q(34 downto 32) => m_axi_arprot(2 downto 0),
      Q(31 downto 0) => m_axi_araddr(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => \^s_axi_rready\,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid
    );
end STRUCTURE;
