-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun Feb 16 18:34:12 2020
-- Host        : ssg0 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_s00_mmu_0_sim_netlist.vhdl
-- Design      : system_s00_mmu_0
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
    err_awready : out STD_LOGIC;
    err_rvalid : out STD_LOGIC;
    err_arready : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \gen_write.w_state_reg[0]\ : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \gen_read.r_state_reg[1]\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    \gen_axi.gen_read.read_cs_reg[0]_0\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \gen_axi.gen_read.s_axi_arready_i_reg_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \aresetn_d_reg[1]\ : in STD_LOGIC;
    mr_axi_awvalid : in STD_LOGIC;
    \m_payload_i_reg[62]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    w_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    \gen_write.w_cnt_reg[0]\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    \gen_write.w_state_reg[0]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    \gen_read.r_state_reg[1]_0\ : in STD_LOGIC;
    \gen_read.r_state_reg[0]\ : in STD_LOGIC;
    mr_axi_arvalid : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    \gen_axi.gen_write.s_axi_awready_i_reg_0\ : in STD_LOGIC;
    \gen_axi.gen_read.read_cs_reg[0]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave is
  signal \^err_arready\ : STD_LOGIC;
  signal \^err_awready\ : STD_LOGIC;
  signal err_bvalid : STD_LOGIC;
  signal err_rlast : STD_LOGIC;
  signal \^err_rvalid\ : STD_LOGIC;
  signal err_wready : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_5_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_6_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_axi.gen_read.read_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \gen_axi.gen_read.read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \^gen_axi.gen_read.read_cs_reg[0]_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rid_i\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rlast_i_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_bid_i\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_bid_i[11]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.write_cs\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_axi.gen_write.write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.write_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.write_cs[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[7]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[7]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_axi.gen_write.s_axi_bid_i[11]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_axi.gen_write.write_cs[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_axi.gen_write.write_cs[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_read.r_state[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_valid_i_i_2 : label is "soft_lutpair1";
begin
  err_arready <= \^err_arready\;
  err_awready <= \^err_awready\;
  err_rvalid <= \^err_rvalid\;
  \gen_axi.gen_read.read_cs_reg[0]_0\ <= \^gen_axi.gen_read.read_cs_reg[0]_0\;
\gen_axi.gen_read.read_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F04E0000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => Q(1),
      I2 => \gen_axi.gen_read.read_cnt_reg\(0),
      I3 => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\,
      I4 => \aresetn_d_reg[1]\,
      O => \gen_axi.gen_read.read_cnt[0]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0E44E00000000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => Q(2),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I3 => \gen_axi.gen_read.read_cnt_reg\(0),
      I4 => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\,
      I5 => \aresetn_d_reg[1]\,
      O => \gen_axi.gen_read.read_cnt[1]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A0222A8880020"
    )
        port map (
      I0 => \aresetn_d_reg[1]\,
      I1 => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\,
      I2 => \^err_rvalid\,
      I3 => \gen_axi.gen_read.read_cnt[2]_i_2_n_0\,
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I5 => Q(3),
      O => \gen_axi.gen_read.read_cnt[2]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg\(0),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      O => \gen_axi.gen_read.read_cnt[2]_i_2_n_0\
    );
\gen_axi.gen_read.read_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt[3]_i_2_n_0\,
      I1 => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I3 => \aresetn_d_reg[1]\,
      O => \gen_axi.gen_read.read_cnt[3]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9AAA9FFFF0000"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I1 => \gen_axi.gen_read.read_cnt_reg\(0),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I4 => Q(4),
      I5 => \^err_rvalid\,
      O => \gen_axi.gen_read.read_cnt[3]_i_2_n_0\
    );
\gen_axi.gen_read.read_cnt[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \gen_axi.gen_read.s_axi_rlast_i_i_2_n_0\,
      I2 => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      O => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\
    );
\gen_axi.gen_read.read_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I1 => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I3 => \gen_axi.gen_read.read_cnt_reg\(0),
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      O => \gen_axi.gen_read.read_cnt[4]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I3 => \gen_axi.gen_read.read_cnt[2]_i_2_n_0\,
      I4 => \gen_axi.gen_read.read_cnt[3]_i_3_n_0\,
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      O => \gen_axi.gen_read.read_cnt[5]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      I1 => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      O => \gen_axi.gen_read.read_cnt[6]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I3 => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\,
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      O => \gen_axi.gen_read.read_cnt[7]_i_2_n_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_read.r_state_reg[1]_0\,
      I1 => \gen_read.r_state_reg[0]\,
      O => \^gen_axi.gen_read.read_cs_reg[0]_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF51FF55"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      I1 => \^err_rvalid\,
      I2 => \gen_axi.gen_read.read_cnt[7]_i_5_n_0\,
      I3 => \gen_axi.gen_read.read_cnt[7]_i_6_n_0\,
      I4 => s_axi_rready,
      O => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      O => \gen_axi.gen_read.read_cnt[7]_i_5_n_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I1 => \gen_axi.gen_read.read_cnt_reg\(0),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      O => \gen_axi.gen_read.read_cnt[7]_i_6_n_0\
    );
\gen_axi.gen_read.read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[0]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg\(0),
      R => '0'
    );
\gen_axi.gen_read.read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[1]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(1),
      R => '0'
    );
\gen_axi.gen_read.read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[2]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(2),
      R => '0'
    );
\gen_axi.gen_read.read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[3]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(3),
      R => '0'
    );
\gen_axi.gen_read.read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[4]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(4),
      R => \gen_axi.gen_read.s_axi_arready_i_reg_0\
    );
\gen_axi.gen_read.read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[5]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(5),
      R => \gen_axi.gen_read.s_axi_arready_i_reg_0\
    );
\gen_axi.gen_read.read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[6]_i_1_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(6),
      R => \gen_axi.gen_read.s_axi_arready_i_reg_0\
    );
\gen_axi.gen_read.read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cnt[7]_i_2_n_0\,
      Q => \gen_axi.gen_read.read_cnt_reg__0\(7),
      R => \gen_axi.gen_read.s_axi_arready_i_reg_0\
    );
\gen_axi.gen_read.read_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555550C000000"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cs[0]_i_2_n_0\,
      I1 => \^err_arready\,
      I2 => Q(0),
      I3 => mr_axi_arvalid,
      I4 => \^gen_axi.gen_read.read_cs_reg[0]_0\,
      I5 => \^err_rvalid\,
      O => \gen_axi.gen_read.read_cs[0]_i_1_n_0\
    );
\gen_axi.gen_read.read_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \gen_axi.gen_read.read_cnt[7]_i_6_n_0\,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      O => \gen_axi.gen_read.read_cs[0]_i_2_n_0\
    );
\gen_axi.gen_read.read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cs[0]_i_1_n_0\,
      Q => \^err_rvalid\,
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_arready_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cs[0]_i_2_n_0\,
      I1 => \^err_rvalid\,
      I2 => \^err_arready\,
      O => \gen_axi.gen_read.s_axi_arready_i_i_1_n_0\
    );
\gen_axi.gen_read.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.s_axi_arready_i_i_1_n_0\,
      Q => \^err_arready\,
      R => \gen_axi.gen_read.s_axi_arready_i_reg_0\
    );
\gen_axi.gen_read.s_axi_rid_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => mr_axi_arvalid,
      I4 => Q(0),
      I5 => \^err_arready\,
      O => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\
    );
\gen_axi.gen_read.s_axi_rid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(5),
      Q => \gen_axi.gen_read.s_axi_rid_i\(0),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(15),
      Q => \gen_axi.gen_read.s_axi_rid_i\(10),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(16),
      Q => \gen_axi.gen_read.s_axi_rid_i\(11),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(6),
      Q => \gen_axi.gen_read.s_axi_rid_i\(1),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(7),
      Q => \gen_axi.gen_read.s_axi_rid_i\(2),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(8),
      Q => \gen_axi.gen_read.s_axi_rid_i\(3),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(9),
      Q => \gen_axi.gen_read.s_axi_rid_i\(4),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(10),
      Q => \gen_axi.gen_read.s_axi_rid_i\(5),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(11),
      Q => \gen_axi.gen_read.s_axi_rid_i\(6),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(12),
      Q => \gen_axi.gen_read.s_axi_rid_i\(7),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(13),
      Q => \gen_axi.gen_read.s_axi_rid_i\(8),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      D => Q(14),
      Q => \gen_axi.gen_read.s_axi_rid_i\(9),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rlast_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777F7770"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rlast_i_i_2_n_0\,
      I1 => \gen_axi.gen_read.read_cs_reg[0]_1\,
      I2 => \gen_axi.gen_read.s_axi_rid_i[11]_i_1_n_0\,
      I3 => \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0\,
      I4 => err_rlast,
      O => \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0\
    );
\gen_axi.gen_read.s_axi_rlast_i_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt[7]_i_6_n_0\,
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      I5 => \^err_rvalid\,
      O => \gen_axi.gen_read.s_axi_rlast_i_i_2_n_0\
    );
\gen_axi.gen_read.s_axi_rlast_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt[7]_i_5_n_0\,
      I1 => s_axi_rready,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I3 => \^err_rvalid\,
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      O => \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0\
    );
\gen_axi.gen_read.s_axi_rlast_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0\,
      Q => err_rlast,
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_awready_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFE0E02"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_awready_i_reg_0\,
      I1 => \gen_axi.gen_write.write_cs\(1),
      I2 => \gen_axi.gen_write.write_cs\(0),
      I3 => s_axi_bready,
      I4 => \^err_awready\,
      O => \gen_axi.gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.s_axi_awready_i_i_1_n_0\,
      Q => \^err_awready\,
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \gen_axi.gen_write.write_cs\(0),
      I1 => \gen_axi.gen_write.write_cs\(1),
      I2 => mr_axi_awvalid,
      I3 => \gen_axi.gen_write.s_axi_bid_i[11]_i_2_n_0\,
      I4 => \m_payload_i_reg[62]\(0),
      I5 => \^err_awready\,
      O => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_bid_i[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_state(1),
      I1 => w_state(0),
      O => \gen_axi.gen_write.s_axi_bid_i[11]_i_2_n_0\
    );
\gen_axi.gen_write.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(1),
      Q => \gen_axi.gen_write.s_axi_bid_i\(0),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(11),
      Q => \gen_axi.gen_write.s_axi_bid_i\(10),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(12),
      Q => \gen_axi.gen_write.s_axi_bid_i\(11),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(2),
      Q => \gen_axi.gen_write.s_axi_bid_i\(1),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(3),
      Q => \gen_axi.gen_write.s_axi_bid_i\(2),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(4),
      Q => \gen_axi.gen_write.s_axi_bid_i\(3),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(5),
      Q => \gen_axi.gen_write.s_axi_bid_i\(4),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(6),
      Q => \gen_axi.gen_write.s_axi_bid_i\(5),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(7),
      Q => \gen_axi.gen_write.s_axi_bid_i\(6),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(8),
      Q => \gen_axi.gen_write.s_axi_bid_i\(7),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(9),
      Q => \gen_axi.gen_write.s_axi_bid_i\(8),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      D => \m_payload_i_reg[62]\(10),
      Q => \gen_axi.gen_write.s_axi_bid_i\(9),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFCCC0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \gen_axi.gen_write.write_cs[1]_i_3_n_0\,
      I2 => \gen_axi.gen_write.write_cs\(0),
      I3 => \gen_axi.gen_write.write_cs\(1),
      I4 => err_bvalid,
      O => \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0\,
      Q => err_bvalid,
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_wready_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0101"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_awready_i_reg_0\,
      I1 => \gen_axi.gen_write.write_cs\(1),
      I2 => \gen_axi.gen_write.write_cs\(0),
      I3 => \gen_axi.gen_write.write_cs[1]_i_3_n_0\,
      I4 => err_wready,
      O => \gen_axi.gen_write.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.s_axi_wready_i_i_1_n_0\,
      Q => err_wready,
      R => SR(0)
    );
\gen_axi.gen_write.write_cs[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0252"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      I1 => \gen_axi.gen_write.write_cs\(1),
      I2 => \gen_axi.gen_write.write_cs\(0),
      I3 => \gen_axi.gen_write.write_cs[1]_i_3_n_0\,
      O => \gen_axi.gen_write.write_cs[0]_i_1_n_0\
    );
\gen_axi.gen_write.write_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E0F0E4"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i[11]_i_1_n_0\,
      I1 => \gen_axi.gen_write.write_cs\(1),
      I2 => \gen_axi.gen_write.write_cs\(0),
      I3 => \gen_axi.gen_write.write_cs[1]_i_3_n_0\,
      I4 => s_axi_bready,
      O => \gen_axi.gen_write.write_cs[1]_i_2_n_0\
    );
\gen_axi.gen_write.write_cs[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => w_state(0),
      I1 => w_state(1),
      I2 => s_axi_wlast,
      I3 => s_axi_wvalid,
      I4 => \gen_axi.gen_write.write_cs\(1),
      O => \gen_axi.gen_write.write_cs[1]_i_3_n_0\
    );
\gen_axi.gen_write.write_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.write_cs[0]_i_1_n_0\,
      Q => \gen_axi.gen_write.write_cs\(0),
      R => SR(0)
    );
\gen_axi.gen_write.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.write_cs[1]_i_2_n_0\,
      Q => \gen_axi.gen_write.write_cs\(1),
      R => SR(0)
    );
\gen_read.r_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \gen_read.r_state_reg[1]_0\,
      I1 => \gen_read.r_state_reg[0]\,
      I2 => err_rlast,
      I3 => \^err_rvalid\,
      I4 => s_axi_rready,
      O => \gen_read.r_state_reg[1]\
    );
\gen_write.w_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBEAAAAAAA"
    )
        port map (
      I0 => \gen_write.w_state_reg[0]_0\,
      I1 => w_state(0),
      I2 => w_state(1),
      I3 => err_bvalid,
      I4 => s_axi_bready,
      I5 => m_valid_i_reg_0,
      O => \gen_write.w_state_reg[0]\
    );
m_valid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F07FFF7F"
    )
        port map (
      I0 => \^err_awready\,
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => \m_payload_i_reg[62]\(0),
      I4 => m_axi_awready,
      O => m_valid_i_reg
    );
\s_axi_bid[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(0),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(0),
      O => s_axi_bid(0)
    );
\s_axi_bid[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(10),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(10),
      O => s_axi_bid(10)
    );
\s_axi_bid[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(11),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(11),
      O => s_axi_bid(11)
    );
\s_axi_bid[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(1),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(1),
      O => s_axi_bid(1)
    );
\s_axi_bid[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(2),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(2),
      O => s_axi_bid(2)
    );
\s_axi_bid[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(3),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(3),
      O => s_axi_bid(3)
    );
\s_axi_bid[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(4),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(4),
      O => s_axi_bid(4)
    );
\s_axi_bid[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(5),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(5),
      O => s_axi_bid(5)
    );
\s_axi_bid[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(6),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(6),
      O => s_axi_bid(6)
    );
\s_axi_bid[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(7),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(7),
      O => s_axi_bid(7)
    );
\s_axi_bid[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(8),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(8),
      O => s_axi_bid(8)
    );
\s_axi_bid[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_write.s_axi_bid_i\(9),
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bid(9),
      O => s_axi_bid(9)
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => err_bvalid,
      I1 => w_state(1),
      I2 => w_state(0),
      I3 => m_axi_bvalid,
      O => s_axi_bvalid
    );
\s_axi_rid[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(0),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(0),
      O => s_axi_rid(0)
    );
\s_axi_rid[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(10),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(10),
      O => s_axi_rid(10)
    );
\s_axi_rid[11]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(11),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(11),
      O => s_axi_rid(11)
    );
\s_axi_rid[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(1),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(1),
      O => s_axi_rid(1)
    );
\s_axi_rid[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(2),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(2),
      O => s_axi_rid(2)
    );
\s_axi_rid[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(3),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(3),
      O => s_axi_rid(3)
    );
\s_axi_rid[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(4),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(4),
      O => s_axi_rid(4)
    );
\s_axi_rid[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(5),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(5),
      O => s_axi_rid(5)
    );
\s_axi_rid[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(6),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(6),
      O => s_axi_rid(6)
    );
\s_axi_rid[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(7),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(7),
      O => s_axi_rid(7)
    );
\s_axi_rid[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(8),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(8),
      O => s_axi_rid(8)
    );
\s_axi_rid[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rid_i\(9),
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rid(9),
      O => s_axi_rid(9)
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => err_rlast,
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rlast,
      O => s_axi_rlast
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \gen_read.r_state_reg[1]_0\,
      I2 => \gen_read.r_state_reg[0]\,
      I3 => m_axi_rvalid,
      O => s_axi_rvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4440444"
    )
        port map (
      I0 => \gen_write.w_cnt_reg[0]\,
      I1 => m_axi_wready,
      I2 => w_state(1),
      I3 => w_state(0),
      I4 => err_wready,
      O => s_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice is
  port (
    \gen_read.r_state_reg[1]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : out STD_LOGIC;
    \gen_axi.gen_read.s_axi_arready_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 66 downto 0 );
    \gen_read.ar_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_axi.gen_read.s_axi_rlast_i_reg\ : out STD_LOGIC;
    \gen_read.r_state_reg[0]\ : out STD_LOGIC;
    \gen_read.r_state_reg[1]_0\ : out STD_LOGIC;
    \gen_write.w_mask_reg\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \aresetn_d_reg[0]\ : in STD_LOGIC;
    err_arready : in STD_LOGIC;
    \gen_read.r_state_reg[1]_1\ : in STD_LOGIC;
    err_rvalid : in STD_LOGIC;
    \gen_read.ar_cnt_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_0\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]_2\ : in STD_LOGIC;
    \gen_read.r_state_reg[0]_0\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]_3\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_1\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \gen_write.w_state_reg[0]\ : in STD_LOGIC;
    w_mask : in STD_LOGIC;
    w_mask0 : in STD_LOGIC;
    \s_axi_awaddr[29]\ : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC;
    \s_axi_arqos[3]\ : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \aresetn_d_reg[0]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 66 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_read.ar_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \^gen_read.r_state_reg[1]\ : STD_LOGIC;
  signal \m_payload_i[32]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_4__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_5__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_6__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_7__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[62]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_2__0_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal r_match : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_axi_arready : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_read.r_state[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_valid_i_i_1__0\ : label is "soft_lutpair8";
begin
  Q(66 downto 0) <= \^q\(66 downto 0);
  SR(0) <= \^sr\(0);
  \gen_read.r_state_reg[1]\ <= \^gen_read.r_state_reg[1]\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[0]\,
      Q => \^m_valid_i_reg_0\,
      R => '0'
    );
\gen_axi.gen_read.read_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00002000FFFFFFFF"
    )
        port map (
      I0 => err_arready,
      I1 => \^q\(32),
      I2 => \^gen_read.r_state_reg[1]\,
      I3 => \gen_read.r_state_reg[1]_1\,
      I4 => err_rvalid,
      I5 => \^m_valid_i_reg_0\,
      O => \gen_axi.gen_read.s_axi_arready_i_reg\
    );
\gen_axi.gen_read.s_axi_rlast_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => err_rvalid,
      I1 => \^q\(45),
      I2 => \^q\(46),
      I3 => \^q\(47),
      I4 => \^q\(48),
      O => \gen_axi.gen_read.s_axi_rlast_i_reg\
    );
\gen_axi.gen_write.write_cs[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \^sr\(0)
    );
\gen_read.ar_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_read.ar_cnt[2]_i_2_n_0\,
      I1 => \gen_read.ar_cnt_reg[5]_0\(0),
      I2 => \gen_read.ar_cnt_reg[5]_0\(1),
      O => \gen_read.ar_cnt_reg[5]\(0)
    );
\gen_read.ar_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_0\(2),
      I1 => \gen_read.ar_cnt[2]_i_2_n_0\,
      I2 => \gen_read.ar_cnt_reg[5]_0\(0),
      I3 => \gen_read.ar_cnt_reg[5]_0\(1),
      O => \gen_read.ar_cnt_reg[5]\(1)
    );
\gen_read.ar_cnt[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \m_payload_i[32]_i_2__0_n_0\,
      I1 => s_axi_arvalid,
      I2 => \gen_read.ar_cnt_reg[5]_0\(5),
      I3 => sr_axi_arready,
      I4 => \gen_read.ar_cnt_reg[0]_0\,
      O => \gen_read.ar_cnt[2]_i_2_n_0\
    );
\gen_read.ar_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_read.ar_cnt[5]_i_4_n_0\,
      I1 => \gen_read.ar_cnt_reg[5]_0\(2),
      I2 => \gen_read.ar_cnt_reg[5]_0\(3),
      O => \gen_read.ar_cnt_reg[5]\(2)
    );
\gen_read.ar_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_0\(4),
      I1 => \gen_read.ar_cnt[5]_i_4_n_0\,
      I2 => \gen_read.ar_cnt_reg[5]_0\(3),
      I3 => \gen_read.ar_cnt_reg[5]_0\(2),
      O => \gen_read.ar_cnt_reg[5]\(3)
    );
\gen_read.ar_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAAAA"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[0]_0\,
      I1 => \m_payload_i[32]_i_2__0_n_0\,
      I2 => s_axi_arvalid,
      I3 => \gen_read.ar_cnt_reg[5]_0\(5),
      I4 => sr_axi_arready,
      O => \gen_read.ar_cnt_reg[0]\(0)
    );
\gen_read.ar_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_0\(5),
      I1 => \gen_read.ar_cnt_reg[5]_0\(4),
      I2 => \gen_read.ar_cnt_reg[5]_0\(2),
      I3 => \gen_read.ar_cnt_reg[5]_0\(3),
      I4 => \gen_read.ar_cnt[5]_i_4_n_0\,
      O => \gen_read.ar_cnt_reg[5]\(4)
    );
\gen_read.ar_cnt[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5454D554"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg[5]_0\(2),
      I1 => \gen_read.ar_cnt_reg[5]_0\(1),
      I2 => \gen_read.ar_cnt_reg[5]_0\(0),
      I3 => \gen_read.ar_cnt[5]_i_5_n_0\,
      I4 => \gen_read.ar_cnt_reg[0]_0\,
      O => \gen_read.ar_cnt[5]_i_4_n_0\
    );
\gen_read.ar_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_read.ar_cnt[5]_i_6_n_0\,
      I1 => \m_payload_i[32]_i_7__0_n_0\,
      I2 => \m_payload_i[32]_i_6__0_n_0\,
      I3 => \m_payload_i[32]_i_5__0_n_0\,
      I4 => \m_payload_i[32]_i_4__0_n_0\,
      I5 => \m_payload_i[32]_i_3__0_n_0\,
      O => \gen_read.ar_cnt[5]_i_5_n_0\
    );
\gen_read.ar_cnt[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gen_read.ar_cnt_reg[5]_0\(5),
      I2 => sr_axi_arready,
      O => \gen_read.ar_cnt[5]_i_6_n_0\
    );
\gen_read.r_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2FFFFF22"
    )
        port map (
      I0 => \^gen_read.r_state_reg[1]\,
      I1 => \^q\(32),
      I2 => \gen_read.r_state_reg[1]_2\,
      I3 => \gen_read.r_state_reg[0]_0\,
      I4 => \gen_read.r_state_reg[1]_3\,
      O => \gen_read.r_state_reg[0]\
    );
\gen_read.r_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22FF0000FFF0DD00"
    )
        port map (
      I0 => \^gen_read.r_state_reg[1]\,
      I1 => \^q\(32),
      I2 => \gen_read.ar_cnt_reg[0]_1\,
      I3 => \gen_read.r_state_reg[1]_2\,
      I4 => \gen_read.r_state_reg[0]_0\,
      I5 => \gen_read.r_state_reg[1]_3\,
      O => \gen_read.r_state_reg[1]_0\
    );
\gen_write.w_mask_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440000044404440"
    )
        port map (
      I0 => \gen_write.w_state_reg[0]\,
      I1 => \^m_valid_i_reg_0\,
      I2 => w_mask,
      I3 => w_mask0,
      I4 => \s_axi_awaddr[29]\,
      I5 => s_axi_awready,
      O => \gen_write.w_mask_reg\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q\(32),
      I1 => \^gen_read.r_state_reg[1]\,
      I2 => \gen_read.r_state_reg[0]_0\,
      O => m_axi_arvalid
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_payload_i[32]_i_2__0_n_0\,
      O => r_match
    );
\m_payload_i[32]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \m_payload_i[32]_i_3__0_n_0\,
      I1 => \m_payload_i[32]_i_4__0_n_0\,
      I2 => \m_payload_i[32]_i_5__0_n_0\,
      I3 => \m_payload_i[32]_i_6__0_n_0\,
      I4 => \m_payload_i[32]_i_7__0_n_0\,
      O => \m_payload_i[32]_i_2__0_n_0\
    );
\m_payload_i[32]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_axi_arqos[3]\(31),
      I1 => \s_axi_arqos[3]\(18),
      I2 => \s_axi_arqos[3]\(17),
      I3 => \s_axi_arqos[3]\(20),
      O => \m_payload_i[32]_i_3__0_n_0\
    );
\m_payload_i[32]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_axi_arqos[3]\(29),
      I1 => \s_axi_arqos[3]\(27),
      I2 => \s_axi_arqos[3]\(26),
      I3 => \s_axi_arqos[3]\(19),
      O => \m_payload_i[32]_i_4__0_n_0\
    );
\m_payload_i[32]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFBFFFFFFFFBBFB"
    )
        port map (
      I0 => \s_axi_arqos[3]\(28),
      I1 => \s_axi_arqos[3]\(30),
      I2 => \s_axi_arqos[3]\(21),
      I3 => \s_axi_arqos[3]\(24),
      I4 => \s_axi_arqos[3]\(23),
      I5 => \s_axi_arqos[3]\(16),
      O => \m_payload_i[32]_i_5__0_n_0\
    );
\m_payload_i[32]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFF4BFFFBFF4"
    )
        port map (
      I0 => \s_axi_arqos[3]\(21),
      I1 => \s_axi_arqos[3]\(24),
      I2 => \s_axi_arqos[3]\(25),
      I3 => \s_axi_arqos[3]\(22),
      I4 => \s_axi_arqos[3]\(16),
      I5 => \s_axi_arqos[3]\(12),
      O => \m_payload_i[32]_i_6__0_n_0\
    );
\m_payload_i[32]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \s_axi_arqos[3]\(14),
      I1 => \s_axi_arqos[3]\(15),
      I2 => \s_axi_arqos[3]\(13),
      I3 => \s_axi_arqos[3]\(16),
      I4 => \s_axi_arqos[3]\(21),
      O => \m_payload_i[32]_i_7__0_n_0\
    );
\m_payload_i[62]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gen_read.r_state_reg[1]\,
      O => \m_payload_i[62]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => r_match,
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(32),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(33),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(34),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(35),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(36),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(37),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(38),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(39),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(40),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(41),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(42),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(43),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(44),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(45),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(46),
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(47),
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(48),
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(49),
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(50),
      Q => \^q\(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(51),
      Q => \^q\(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(52),
      Q => \^q\(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(53),
      Q => \^q\(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(54),
      Q => \^q\(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(55),
      Q => \^q\(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(56),
      Q => \^q\(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(57),
      Q => \^q\(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(58),
      Q => \^q\(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(59),
      Q => \^q\(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(60),
      Q => \^q\(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(61),
      Q => \^q\(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(62),
      Q => \^q\(63),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(63),
      Q => \^q\(64),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(64),
      Q => \^q\(65),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(65),
      Q => \^q\(66),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1__0_n_0\,
      D => \s_axi_arqos[3]\(9),
      Q => \^q\(9),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \gen_read.ar_cnt_reg[5]_0\(5),
      I2 => sr_axi_arready,
      I3 => \m_valid_i_i_2__0_n_0\,
      O => \m_valid_i_i_1__0_n_0\
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CF77FF77"
    )
        port map (
      I0 => m_axi_arready,
      I1 => \^q\(32),
      I2 => err_arready,
      I3 => \gen_read.r_state_reg[0]_0\,
      I4 => \gen_read.r_state_reg[1]_2\,
      O => \m_valid_i_i_2__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__0_n_0\,
      Q => \^gen_read.r_state_reg[1]\,
      R => \^sr\(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_axi_arready,
      I1 => \gen_read.ar_cnt_reg[5]_0\(5),
      O => s_axi_arready
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F757F00000000"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \m_valid_i_i_2__0_n_0\,
      I2 => \^gen_read.r_state_reg[1]\,
      I3 => s_axi_arvalid,
      I4 => \gen_read.ar_cnt_reg[5]_0\(5),
      I5 => \aresetn_d_reg[0]_0\,
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
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0 is
  port (
    \m_payload_i_reg[0]_0\ : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    \gen_axi.gen_write.s_axi_awready_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 66 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[32]_0\ : out STD_LOGIC;
    \m_payload_i_reg[32]_1\ : out STD_LOGIC;
    \m_payload_i_reg[32]_2\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \m_payload_i_reg[32]_3\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[32]_4\ : out STD_LOGIC;
    \m_payload_i_reg[32]_5\ : out STD_LOGIC;
    \m_payload_i_reg[32]_6\ : out STD_LOGIC;
    \m_payload_i_reg[32]_7\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \gen_write.w_state_reg[0]\ : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    err_awready : in STD_LOGIC;
    w_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_write.aw_cnt_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    w_mask0 : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_0\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \gen_axi.gen_write.s_axi_awready_i_reg_0\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[1]\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[1]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_1\ : in STD_LOGIC;
    \s_axi_awqos[3]\ : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \aresetn_d_reg[1]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0 : entity is "axi_register_slice_v2_1_15_axic_register_slice";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 66 downto 0 );
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
  signal \gen_write.aw_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_10_n_0\ : STD_LOGIC;
  signal \m_payload_i[62]_i_1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[0]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_1\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_2\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_3\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_4\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_5\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_6\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_7\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_axi_awready : STD_LOGIC;
  signal w_match : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.gen_write.s_axi_awready_i_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of m_valid_i_i_1 : label is "soft_lutpair12";
begin
  Q(66 downto 0) <= \^q\(66 downto 0);
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
  \m_payload_i_reg[0]_0\ <= \^m_payload_i_reg[0]_0\;
  \m_payload_i_reg[32]_0\ <= \^m_payload_i_reg[32]_0\;
  \m_payload_i_reg[32]_1\ <= \^m_payload_i_reg[32]_1\;
  \m_payload_i_reg[32]_2\ <= \^m_payload_i_reg[32]_2\;
  \m_payload_i_reg[32]_3\ <= \^m_payload_i_reg[32]_3\;
  \m_payload_i_reg[32]_4\ <= \^m_payload_i_reg[32]_4\;
  \m_payload_i_reg[32]_5\ <= \^m_payload_i_reg[32]_5\;
  \m_payload_i_reg[32]_6\ <= \^m_payload_i_reg[32]_6\;
  \m_payload_i_reg[32]_7\ <= \^m_payload_i_reg[32]_7\;
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aresetn_d_reg[1]\,
      I1 => aresetn,
      O => \aresetn_d_reg[1]_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \^aresetn_d_reg[1]\,
      R => '0'
    );
\gen_axi.gen_write.s_axi_awready_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => err_awready,
      I1 => \^q\(32),
      I2 => w_state(1),
      I3 => w_state(0),
      I4 => \^m_payload_i_reg[0]_0\,
      O => \gen_axi.gen_write.s_axi_awready_i_reg\
    );
\gen_write.aw_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF00400040FFBF"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_0\,
      I1 => w_mask0,
      I2 => sr_axi_awready,
      I3 => \^m_payload_i_reg[32]_3\,
      I4 => \gen_write.aw_cnt_reg[5]\(0),
      I5 => \gen_write.aw_cnt_reg[5]\(1),
      O => D(0)
    );
\gen_write.aw_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]\(2),
      I1 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I2 => \gen_write.aw_cnt_reg[5]\(0),
      I3 => \gen_write.aw_cnt_reg[5]\(1),
      O => D(1)
    );
\gen_write.aw_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I1 => \gen_write.aw_cnt_reg[5]\(1),
      I2 => \gen_write.aw_cnt_reg[5]\(0),
      I3 => \gen_write.aw_cnt_reg[5]\(2),
      I4 => \gen_write.aw_cnt_reg[5]\(3),
      O => D(2)
    );
\gen_write.aw_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]\(4),
      I1 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I2 => \gen_write.aw_cnt_reg[5]\(1),
      I3 => \gen_write.aw_cnt_reg[5]\(0),
      I4 => \gen_write.aw_cnt_reg[5]\(3),
      I5 => \gen_write.aw_cnt_reg[5]\(2),
      O => D(3)
    );
\gen_write.aw_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000B000000"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_0\,
      I1 => \^m_payload_i_reg[32]_1\,
      I2 => \^m_payload_i_reg[32]_2\,
      I3 => sr_axi_awready,
      I4 => w_mask0,
      I5 => \gen_write.aw_cnt_reg[5]_0\,
      O => \gen_write.aw_cnt[4]_i_2_n_0\
    );
\gen_write.aw_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F808080808080"
    )
        port map (
      I0 => s_axi_bready,
      I1 => m_axi_bvalid,
      I2 => \gen_write.aw_cnt_reg[5]_1\,
      I3 => \^m_payload_i_reg[32]_3\,
      I4 => sr_axi_awready,
      I5 => w_mask0,
      O => E(0)
    );
\gen_write.aw_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAA96AAAAAAA"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]\(5),
      I1 => \gen_write.aw_cnt_reg[5]\(4),
      I2 => \gen_write.aw_cnt_reg[5]\(2),
      I3 => \gen_write.aw_cnt_reg[5]\(3),
      I4 => \gen_write.aw_cnt[5]_i_5_n_0\,
      I5 => \gen_write.aw_cnt[5]_i_6_n_0\,
      O => D(4)
    );
\gen_write.aw_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010001"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_0\,
      I1 => \gen_write.aw_cnt[5]_i_7_n_0\,
      I2 => \^m_payload_i_reg[32]_2\,
      I3 => \^m_payload_i_reg[32]_1\,
      I4 => \^m_payload_i_reg[32]_0\,
      I5 => \gen_write.aw_cnt_reg[1]_0\,
      O => \gen_write.aw_cnt[5]_i_5_n_0\
    );
\gen_write.aw_cnt[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555455555554"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[1]\,
      I1 => \gen_write.aw_cnt_reg[5]_0\,
      I2 => \gen_write.aw_cnt[5]_i_7_n_0\,
      I3 => \^m_payload_i_reg[32]_2\,
      I4 => \^m_payload_i_reg[32]_1\,
      I5 => \^m_payload_i_reg[32]_0\,
      O => \gen_write.aw_cnt[5]_i_6_n_0\
    );
\gen_write.aw_cnt[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => sr_axi_awready,
      I1 => \gen_write.aw_cnt_reg[5]\(5),
      I2 => s_axi_awvalid,
      O => \gen_write.aw_cnt[5]_i_7_n_0\
    );
\gen_write.w_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      I1 => \^q\(32),
      O => \gen_write.w_state_reg[0]\
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      I1 => \^q\(32),
      I2 => w_state(0),
      O => m_axi_awvalid
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_3\,
      O => w_match
    );
\m_payload_i[32]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \s_axi_awqos[3]\(30),
      I1 => \s_axi_awqos[3]\(28),
      I2 => \s_axi_awqos[3]\(31),
      I3 => \s_axi_awqos[3]\(29),
      O => \m_payload_i[32]_i_10_n_0\
    );
\m_payload_i[32]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_0\,
      I1 => \^m_payload_i_reg[32]_1\,
      I2 => \^m_payload_i_reg[32]_2\,
      O => \^m_payload_i_reg[32]_3\
    );
\m_payload_i[32]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_4\,
      I1 => \s_axi_awqos[3]\(24),
      I2 => \s_axi_awqos[3]\(22),
      I3 => \s_axi_awqos[3]\(25),
      I4 => \s_axi_awqos[3]\(21),
      I5 => \^m_payload_i_reg[32]_5\,
      O => \^m_payload_i_reg[32]_0\
    );
\m_payload_i[32]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \^m_payload_i_reg[32]_6\,
      I1 => \s_axi_awqos[3]\(22),
      I2 => \s_axi_awqos[3]\(23),
      I3 => \s_axi_awqos[3]\(25),
      I4 => \s_axi_awqos[3]\(16),
      I5 => \^m_payload_i_reg[32]_7\,
      O => \^m_payload_i_reg[32]_1\
    );
\m_payload_i[32]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_axi_awqos[3]\(17),
      I1 => \s_axi_awqos[3]\(18),
      I2 => \s_axi_awqos[3]\(27),
      I3 => \s_axi_awqos[3]\(26),
      I4 => \m_payload_i[32]_i_10_n_0\,
      O => \^m_payload_i_reg[32]_2\
    );
\m_payload_i[32]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \s_axi_awqos[3]\(20),
      I1 => \s_axi_awqos[3]\(19),
      I2 => \s_axi_awqos[3]\(16),
      I3 => \s_axi_awqos[3]\(23),
      O => \^m_payload_i_reg[32]_4\
    );
\m_payload_i[32]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \s_axi_awqos[3]\(15),
      I1 => \s_axi_awqos[3]\(14),
      I2 => \s_axi_awqos[3]\(16),
      I3 => \s_axi_awqos[3]\(13),
      I4 => \s_axi_awqos[3]\(12),
      I5 => \s_axi_awqos[3]\(23),
      O => \^m_payload_i_reg[32]_5\
    );
\m_payload_i[32]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \s_axi_awqos[3]\(20),
      I1 => \s_axi_awqos[3]\(19),
      I2 => \s_axi_awqos[3]\(24),
      I3 => \s_axi_awqos[3]\(21),
      O => \^m_payload_i_reg[32]_6\
    );
\m_payload_i[32]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \s_axi_awqos[3]\(21),
      I1 => \s_axi_awqos[3]\(14),
      I2 => \s_axi_awqos[3]\(15),
      I3 => \s_axi_awqos[3]\(13),
      I4 => \s_axi_awqos[3]\(24),
      O => \^m_payload_i_reg[32]_7\
    );
\m_payload_i[62]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_payload_i_reg[0]_0\,
      O => \m_payload_i[62]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => w_match,
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(32),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(33),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(34),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(35),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(36),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(37),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(38),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(39),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(40),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(41),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(42),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(43),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(44),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(45),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(46),
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(47),
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(48),
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(49),
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(50),
      Q => \^q\(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(51),
      Q => \^q\(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(52),
      Q => \^q\(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(53),
      Q => \^q\(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(54),
      Q => \^q\(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(55),
      Q => \^q\(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(56),
      Q => \^q\(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(57),
      Q => \^q\(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(58),
      Q => \^q\(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(59),
      Q => \^q\(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(60),
      Q => \^q\(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(61),
      Q => \^q\(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(62),
      Q => \^q\(63),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(63),
      Q => \^q\(64),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(64),
      Q => \^q\(65),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(65),
      Q => \^q\(66),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[62]_i_1_n_0\,
      D => \s_axi_awqos[3]\(9),
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_write.aw_cnt_reg[5]\(5),
      I2 => sr_axi_awready,
      I3 => \gen_axi.gen_write.s_axi_awready_i_reg_0\,
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
      R => SR(0)
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_axi_awready,
      I1 => \gen_write.aw_cnt_reg[5]\(5),
      O => s_axi_awready
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFF7F700000000"
    )
        port map (
      I0 => \aresetn_d_reg[1]_1\,
      I1 => s_axi_awvalid,
      I2 => \gen_write.aw_cnt_reg[5]\(5),
      I3 => \gen_axi.gen_write.s_axi_awready_i_reg_0\,
      I4 => \^m_payload_i_reg[0]_0\,
      I5 => \^aresetn_d_reg[1]\,
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
      Q => sr_axi_awready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice is
  port (
    mr_axi_awvalid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mr_axi_arvalid : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    \gen_axi.gen_write.s_axi_awready_i_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 66 downto 0 );
    \gen_axi.gen_read.s_axi_arready_i_reg\ : out STD_LOGIC;
    \m_axi_arqos[3]\ : out STD_LOGIC_VECTOR ( 66 downto 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[32]\ : out STD_LOGIC;
    \m_payload_i_reg[32]_0\ : out STD_LOGIC;
    \m_payload_i_reg[32]_1\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_axi.gen_read.s_axi_rlast_i_reg\ : out STD_LOGIC;
    \gen_read.r_state_reg[0]\ : out STD_LOGIC;
    \gen_read.r_state_reg[1]\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    \m_payload_i_reg[32]_2\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write.w_mask_reg\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \m_payload_i_reg[32]_3\ : out STD_LOGIC;
    \m_payload_i_reg[32]_4\ : out STD_LOGIC;
    \m_payload_i_reg[32]_5\ : out STD_LOGIC;
    \m_payload_i_reg[32]_6\ : out STD_LOGIC;
    \gen_read.ar_cnt_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    \gen_write.w_state_reg[0]\ : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    err_awready : in STD_LOGIC;
    w_state : in STD_LOGIC_VECTOR ( 1 downto 0 );
    err_arready : in STD_LOGIC;
    \gen_read.r_state_reg[1]_0\ : in STD_LOGIC;
    err_rvalid : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    w_mask0 : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_0\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_0\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]_1\ : in STD_LOGIC;
    \gen_read.r_state_reg[0]_0\ : in STD_LOGIC;
    \gen_read.r_state_reg[1]_2\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[0]_1\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \gen_axi.gen_write.s_axi_awready_i_reg_0\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    \gen_write.aw_cnt_reg[1]\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[1]_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_1\ : in STD_LOGIC;
    \gen_write.w_state_reg[0]_0\ : in STD_LOGIC;
    w_mask : in STD_LOGIC;
    \s_axi_awqos[3]\ : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \s_axi_arqos[3]\ : in STD_LOGIC_VECTOR ( 65 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \aw.aw_pipe_n_1\ : STD_LOGIC;
  signal \aw.aw_pipe_n_87\ : STD_LOGIC;
  signal \^m_payload_i_reg[32]_2\ : STD_LOGIC;
  signal \^m_valid_i_reg\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  \m_payload_i_reg[32]_2\ <= \^m_payload_i_reg[32]_2\;
  m_valid_i_reg <= \^m_valid_i_reg\;
  s_axi_awready <= \^s_axi_awready\;
\ar.ar_pipe\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice
     port map (
      Q(66 downto 0) => \m_axi_arqos[3]\(66 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      \aresetn_d_reg[0]\ => \aw.aw_pipe_n_87\,
      \aresetn_d_reg[0]_0\ => \aw.aw_pipe_n_1\,
      err_arready => err_arready,
      err_rvalid => err_rvalid,
      \gen_axi.gen_read.s_axi_arready_i_reg\ => \gen_axi.gen_read.s_axi_arready_i_reg\,
      \gen_axi.gen_read.s_axi_rlast_i_reg\ => \gen_axi.gen_read.s_axi_rlast_i_reg\,
      \gen_read.ar_cnt_reg[0]\(0) => \gen_read.ar_cnt_reg[0]\(0),
      \gen_read.ar_cnt_reg[0]_0\ => \gen_read.ar_cnt_reg[0]_0\,
      \gen_read.ar_cnt_reg[0]_1\ => \gen_read.ar_cnt_reg[0]_1\,
      \gen_read.ar_cnt_reg[5]\(4 downto 0) => \gen_read.ar_cnt_reg[5]\(4 downto 0),
      \gen_read.ar_cnt_reg[5]_0\(5 downto 0) => \gen_read.ar_cnt_reg[5]_0\(5 downto 0),
      \gen_read.r_state_reg[0]\ => \gen_read.r_state_reg[0]\,
      \gen_read.r_state_reg[0]_0\ => \gen_read.r_state_reg[0]_0\,
      \gen_read.r_state_reg[1]\ => mr_axi_arvalid,
      \gen_read.r_state_reg[1]_0\ => \gen_read.r_state_reg[1]\,
      \gen_read.r_state_reg[1]_1\ => \gen_read.r_state_reg[1]_0\,
      \gen_read.r_state_reg[1]_2\ => \gen_read.r_state_reg[1]_1\,
      \gen_read.r_state_reg[1]_3\ => \gen_read.r_state_reg[1]_2\,
      \gen_write.w_mask_reg\ => \gen_write.w_mask_reg\,
      \gen_write.w_state_reg[0]\ => \gen_write.w_state_reg[0]_0\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_valid_i_reg_0 => \^m_valid_i_reg\,
      \s_axi_arqos[3]\(65 downto 0) => \s_axi_arqos[3]\(65 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \s_axi_awaddr[29]\ => \^m_payload_i_reg[32]_2\,
      s_axi_awready => \^s_axi_awready\,
      w_mask => w_mask,
      w_mask0 => w_mask0
    );
\aw.aw_pipe\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axic_register_slice_0
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => E(0),
      Q(66 downto 0) => Q(66 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[1]\ => \aw.aw_pipe_n_1\,
      \aresetn_d_reg[1]_0\ => \aw.aw_pipe_n_87\,
      \aresetn_d_reg[1]_1\ => \^m_valid_i_reg\,
      err_awready => err_awready,
      \gen_axi.gen_write.s_axi_awready_i_reg\ => \gen_axi.gen_write.s_axi_awready_i_reg\,
      \gen_axi.gen_write.s_axi_awready_i_reg_0\ => \gen_axi.gen_write.s_axi_awready_i_reg_0\,
      \gen_write.aw_cnt_reg[1]\ => \gen_write.aw_cnt_reg[1]\,
      \gen_write.aw_cnt_reg[1]_0\ => \gen_write.aw_cnt_reg[1]_0\,
      \gen_write.aw_cnt_reg[5]\(5 downto 0) => \gen_write.aw_cnt_reg[5]\(5 downto 0),
      \gen_write.aw_cnt_reg[5]_0\ => \gen_write.aw_cnt_reg[5]_0\,
      \gen_write.aw_cnt_reg[5]_1\ => \gen_write.aw_cnt_reg[5]_1\,
      \gen_write.w_state_reg[0]\ => \gen_write.w_state_reg[0]\,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bvalid => m_axi_bvalid,
      \m_payload_i_reg[0]_0\ => mr_axi_awvalid,
      \m_payload_i_reg[32]_0\ => \m_payload_i_reg[32]\,
      \m_payload_i_reg[32]_1\ => \m_payload_i_reg[32]_0\,
      \m_payload_i_reg[32]_2\ => \m_payload_i_reg[32]_1\,
      \m_payload_i_reg[32]_3\ => \^m_payload_i_reg[32]_2\,
      \m_payload_i_reg[32]_4\ => \m_payload_i_reg[32]_3\,
      \m_payload_i_reg[32]_5\ => \m_payload_i_reg[32]_4\,
      \m_payload_i_reg[32]_6\ => \m_payload_i_reg[32]_5\,
      \m_payload_i_reg[32]_7\ => \m_payload_i_reg[32]_6\,
      \s_axi_awqos[3]\(65 downto 0) => \s_axi_awqos[3]\(65 downto 0),
      s_axi_awready => \^s_axi_awready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      w_mask0 => w_mask0,
      w_state(1 downto 0) => w_state(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 65 downto 0 );
    \m_axi_awqos[3]\ : out STD_LOGIC_VECTOR ( 65 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 65 downto 0 );
    \s_axi_arqos[3]\ : in STD_LOGIC_VECTOR ( 65 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top is
  signal \^q\ : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal decerr_slave_inst_n_18 : STD_LOGIC;
  signal decerr_slave_inst_n_3 : STD_LOGIC;
  signal decerr_slave_inst_n_31 : STD_LOGIC;
  signal decerr_slave_inst_n_34 : STD_LOGIC;
  signal err_arready : STD_LOGIC;
  signal err_awready : STD_LOGIC;
  signal err_rvalid : STD_LOGIC;
  signal \gen_read.ar_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_read.r_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_read.r_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_read.r_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_write.aw_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_9_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.w_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_10_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_11_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_9_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.w_mask_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_awqos[3]\ : STD_LOGIC_VECTOR ( 65 downto 0 );
  signal mr_axi_araddr : STD_LOGIC_VECTOR ( 32 to 32 );
  signal mr_axi_arvalid : STD_LOGIC;
  signal mr_axi_awaddr : STD_LOGIC_VECTOR ( 32 to 32 );
  signal mr_axi_awvalid : STD_LOGIC;
  signal register_slice_inst_n_1 : STD_LOGIC;
  signal register_slice_inst_n_140 : STD_LOGIC;
  signal register_slice_inst_n_141 : STD_LOGIC;
  signal register_slice_inst_n_142 : STD_LOGIC;
  signal register_slice_inst_n_143 : STD_LOGIC;
  signal register_slice_inst_n_144 : STD_LOGIC;
  signal register_slice_inst_n_145 : STD_LOGIC;
  signal register_slice_inst_n_146 : STD_LOGIC;
  signal register_slice_inst_n_147 : STD_LOGIC;
  signal register_slice_inst_n_148 : STD_LOGIC;
  signal register_slice_inst_n_149 : STD_LOGIC;
  signal register_slice_inst_n_150 : STD_LOGIC;
  signal register_slice_inst_n_151 : STD_LOGIC;
  signal register_slice_inst_n_152 : STD_LOGIC;
  signal register_slice_inst_n_153 : STD_LOGIC;
  signal register_slice_inst_n_154 : STD_LOGIC;
  signal register_slice_inst_n_155 : STD_LOGIC;
  signal register_slice_inst_n_157 : STD_LOGIC;
  signal register_slice_inst_n_158 : STD_LOGIC;
  signal register_slice_inst_n_159 : STD_LOGIC;
  signal register_slice_inst_n_161 : STD_LOGIC;
  signal register_slice_inst_n_162 : STD_LOGIC;
  signal register_slice_inst_n_163 : STD_LOGIC;
  signal register_slice_inst_n_164 : STD_LOGIC;
  signal register_slice_inst_n_165 : STD_LOGIC;
  signal register_slice_inst_n_167 : STD_LOGIC;
  signal register_slice_inst_n_3 : STD_LOGIC;
  signal register_slice_inst_n_4 : STD_LOGIC;
  signal register_slice_inst_n_72 : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal w_mask : STD_LOGIC;
  signal w_mask0 : STD_LOGIC;
  signal w_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_8\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_9\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_6\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_8\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \gen_write.w_mask_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gen_write.w_state[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_write.w_state[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair32";
begin
  Q(65 downto 0) <= \^q\(65 downto 0);
  \m_axi_awqos[3]\(65 downto 0) <= \^m_axi_awqos[3]\(65 downto 0);
decerr_slave_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_decerr_slave
     port map (
      Q(16 downto 5) => \^q\(61 downto 50),
      Q(4 downto 1) => \^q\(47 downto 44),
      Q(0) => mr_axi_araddr(32),
      SR(0) => register_slice_inst_n_1,
      aclk => aclk,
      \aresetn_d_reg[1]\ => register_slice_inst_n_3,
      err_arready => err_arready,
      err_awready => err_awready,
      err_rvalid => err_rvalid,
      \gen_axi.gen_read.read_cs_reg[0]_0\ => decerr_slave_inst_n_34,
      \gen_axi.gen_read.read_cs_reg[0]_1\ => register_slice_inst_n_153,
      \gen_axi.gen_read.s_axi_arready_i_reg_0\ => register_slice_inst_n_72,
      \gen_axi.gen_write.s_axi_awready_i_reg_0\ => register_slice_inst_n_4,
      \gen_read.r_state_reg[0]\ => \gen_read.r_state_reg_n_0_[0]\,
      \gen_read.r_state_reg[1]\ => decerr_slave_inst_n_31,
      \gen_read.r_state_reg[1]_0\ => \gen_read.r_state_reg_n_0_[1]\,
      \gen_write.w_cnt_reg[0]\ => s_axi_wready_INST_0_i_1_n_0,
      \gen_write.w_state_reg[0]\ => decerr_slave_inst_n_18,
      \gen_write.w_state_reg[0]_0\ => \gen_write.w_mask_i_2_n_0\,
      m_axi_awready => m_axi_awready,
      m_axi_bid(11 downto 0) => m_axi_bid(11 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rid(11 downto 0) => m_axi_rid(11 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      \m_payload_i_reg[62]\(12 downto 1) => \^m_axi_awqos[3]\(61 downto 50),
      \m_payload_i_reg[62]\(0) => mr_axi_awaddr(32),
      m_valid_i_reg => decerr_slave_inst_n_3,
      m_valid_i_reg_0 => register_slice_inst_n_167,
      mr_axi_arvalid => mr_axi_arvalid,
      mr_axi_awvalid => mr_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid,
      w_state(1 downto 0) => w_state(1 downto 0)
    );
\gen_read.ar_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(0),
      O => \gen_read.ar_cnt[0]_i_1_n_0\
    );
\gen_read.ar_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \gen_read.r_state[1]_i_2_n_0\,
      I1 => s_axi_rready,
      I2 => m_axi_rvalid,
      I3 => m_axi_rlast,
      O => \gen_read.ar_cnt[5]_i_3_n_0\
    );
\gen_read.ar_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_165,
      D => \gen_read.ar_cnt[0]_i_1_n_0\,
      Q => \gen_read.ar_cnt_reg__0\(0),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_165,
      D => register_slice_inst_n_152,
      Q => \gen_read.ar_cnt_reg__0\(1),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_165,
      D => register_slice_inst_n_151,
      Q => \gen_read.ar_cnt_reg__0\(2),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_165,
      D => register_slice_inst_n_150,
      Q => \gen_read.ar_cnt_reg__0\(3),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_165,
      D => register_slice_inst_n_149,
      Q => \gen_read.ar_cnt_reg__0\(4),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_165,
      D => register_slice_inst_n_148,
      Q => \gen_read.ar_cnt_reg__0\(5),
      R => register_slice_inst_n_1
    );
\gen_read.r_state[1]_i_2\: unisim.vcomponents.LUT6
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
      O => \gen_read.r_state[1]_i_2_n_0\
    );
\gen_read.r_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_154,
      Q => \gen_read.r_state_reg_n_0_[0]\,
      R => register_slice_inst_n_1
    );
\gen_read.r_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_155,
      Q => \gen_read.r_state_reg_n_0_[1]\,
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[0]_i_1_n_0\
    );
\gen_write.aw_cnt[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \gen_write.aw_cnt[5]_i_3_n_0\,
      I1 => m_axi_bvalid,
      I2 => s_axi_bready,
      O => \gen_write.aw_cnt[1]_i_2_n_0\
    );
\gen_write.aw_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(5),
      I1 => \gen_write.aw_cnt_reg__0\(4),
      I2 => \gen_write.aw_cnt_reg__0\(2),
      I3 => \gen_write.aw_cnt_reg__0\(3),
      I4 => \gen_write.aw_cnt_reg__0\(1),
      I5 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[5]_i_3_n_0\
    );
\gen_write.aw_cnt[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_write.aw_cnt_reg__0\(5),
      O => w_mask0
    );
\gen_write.aw_cnt[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(1),
      I1 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[5]_i_8_n_0\
    );
\gen_write.aw_cnt[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(1),
      I1 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[5]_i_9_n_0\
    );
\gen_write.aw_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_158,
      D => \gen_write.aw_cnt[0]_i_1_n_0\,
      Q => \gen_write.aw_cnt_reg__0\(0),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_158,
      D => register_slice_inst_n_144,
      Q => \gen_write.aw_cnt_reg__0\(1),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_158,
      D => register_slice_inst_n_143,
      Q => \gen_write.aw_cnt_reg__0\(2),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_158,
      D => register_slice_inst_n_142,
      Q => \gen_write.aw_cnt_reg__0\(3),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_158,
      D => register_slice_inst_n_141,
      Q => \gen_write.aw_cnt_reg__0\(4),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_158,
      D => register_slice_inst_n_140,
      Q => \gen_write.aw_cnt_reg__0\(5),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[0]_i_1_n_0\
    );
\gen_write.w_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFB00040004FFFB"
    )
        port map (
      I0 => register_slice_inst_n_157,
      I1 => w_mask0,
      I2 => w_mask,
      I3 => \gen_write.w_cnt[5]_i_3_n_0\,
      I4 => \gen_write.w_cnt_reg__0\(0),
      I5 => \gen_write.w_cnt_reg__0\(1),
      O => \gen_write.w_cnt[1]_i_1_n_0\
    );
\gen_write.w_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD42"
    )
        port map (
      I0 => \gen_write.w_cnt[4]_i_2_n_0\,
      I1 => \gen_write.w_cnt_reg__0\(0),
      I2 => \gen_write.w_cnt_reg__0\(1),
      I3 => \gen_write.w_cnt_reg__0\(2),
      O => \gen_write.w_cnt[2]_i_1_n_0\
    );
\gen_write.w_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE7F0180"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(2),
      I1 => \gen_write.w_cnt_reg__0\(1),
      I2 => \gen_write.w_cnt_reg__0\(0),
      I3 => \gen_write.w_cnt[4]_i_2_n_0\,
      I4 => \gen_write.w_cnt_reg__0\(3),
      O => \gen_write.w_cnt[3]_i_1_n_0\
    );
\gen_write.w_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAA9A"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(4),
      I1 => \gen_write.w_cnt_reg__0\(3),
      I2 => \gen_write.w_cnt[4]_i_2_n_0\,
      I3 => \gen_write.w_cnt_reg__0\(0),
      I4 => \gen_write.w_cnt_reg__0\(1),
      I5 => \gen_write.w_cnt_reg__0\(2),
      O => \gen_write.w_cnt[4]_i_1_n_0\
    );
\gen_write.w_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFEFEF"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_3_n_0\,
      I1 => w_mask,
      I2 => w_mask0,
      I3 => register_slice_inst_n_145,
      I4 => register_slice_inst_n_146,
      I5 => register_slice_inst_n_147,
      O => \gen_write.w_cnt[4]_i_2_n_0\
    );
\gen_write.w_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_3_n_0\,
      I1 => w_mask,
      I2 => \gen_write.aw_cnt_reg__0\(5),
      I3 => s_axi_awvalid,
      I4 => register_slice_inst_n_157,
      O => \gen_write.w_cnt[5]_i_1_n_0\
    );
\gen_write.w_cnt[5]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => D(22),
      I1 => D(23),
      I2 => D(25),
      I3 => D(16),
      O => \gen_write.w_cnt[5]_i_10_n_0\
    );
\gen_write.w_cnt[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => D(24),
      I1 => D(22),
      I2 => D(25),
      I3 => D(21),
      O => \gen_write.w_cnt[5]_i_11_n_0\
    );
\gen_write.w_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55AAAAAAAAAAA9A9"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(5),
      I1 => \gen_write.w_cnt[5]_i_4_n_0\,
      I2 => \gen_write.w_cnt_reg__0\(2),
      I3 => \gen_write.w_cnt[5]_i_5_n_0\,
      I4 => \gen_write.w_cnt_reg__0\(3),
      I5 => \gen_write.w_cnt_reg__0\(4),
      O => \gen_write.w_cnt[5]_i_2_n_0\
    );
\gen_write.w_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0700000000000000"
    )
        port map (
      I0 => w_state(0),
      I1 => w_state(1),
      I2 => s_axi_wready_INST_0_i_1_n_0,
      I3 => m_axi_wready,
      I4 => s_axi_wvalid,
      I5 => s_axi_wlast,
      O => \gen_write.w_cnt[5]_i_3_n_0\
    );
\gen_write.w_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555557757"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_6_n_0\,
      I1 => register_slice_inst_n_147,
      I2 => register_slice_inst_n_146,
      I3 => register_slice_inst_n_145,
      I4 => \gen_write.w_cnt[5]_i_7_n_0\,
      I5 => \gen_write.w_cnt[5]_i_3_n_0\,
      O => \gen_write.w_cnt[5]_i_4_n_0\
    );
\gen_write.w_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(2),
      I1 => \gen_write.w_cnt[5]_i_8_n_0\,
      I2 => \gen_write.w_cnt[5]_i_3_n_0\,
      I3 => \gen_write.w_cnt[5]_i_7_n_0\,
      I4 => \gen_write.w_cnt[5]_i_9_n_0\,
      I5 => register_slice_inst_n_147,
      O => \gen_write.w_cnt[5]_i_5_n_0\
    );
\gen_write.w_cnt[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(1),
      I1 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[5]_i_6_n_0\
    );
\gen_write.w_cnt[5]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => w_mask,
      I1 => \gen_write.aw_cnt_reg__0\(5),
      I2 => s_axi_awvalid,
      O => \gen_write.w_cnt[5]_i_7_n_0\
    );
\gen_write.w_cnt[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(1),
      I1 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[5]_i_8_n_0\
    );
\gen_write.w_cnt[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFDFDFDFDFDFD00"
    )
        port map (
      I0 => register_slice_inst_n_164,
      I1 => \gen_write.w_cnt[5]_i_10_n_0\,
      I2 => register_slice_inst_n_163,
      I3 => register_slice_inst_n_162,
      I4 => \gen_write.w_cnt[5]_i_11_n_0\,
      I5 => register_slice_inst_n_161,
      O => \gen_write.w_cnt[5]_i_9_n_0\
    );
\gen_write.w_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[0]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(0),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[1]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(1),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[2]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(2),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[3]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(3),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[4]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(4),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[5]_i_2_n_0\,
      Q => \gen_write.w_cnt_reg__0\(5),
      R => register_slice_inst_n_1
    );
\gen_write.w_mask_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axi_wready_INST_0_i_1_n_0,
      I1 => w_state(0),
      I2 => w_state(1),
      I3 => \gen_write.aw_cnt[5]_i_3_n_0\,
      O => \gen_write.w_mask_i_2_n_0\
    );
\gen_write.w_mask_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_159,
      Q => w_mask,
      R => '0'
    );
\gen_write.w_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFFFF00"
    )
        port map (
      I0 => mr_axi_awaddr(32),
      I1 => mr_axi_awvalid,
      I2 => w_state(1),
      I3 => decerr_slave_inst_n_18,
      I4 => w_state(0),
      O => \gen_write.w_state[0]_i_1_n_0\
    );
\gen_write.w_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => w_state(0),
      I1 => decerr_slave_inst_n_18,
      I2 => w_state(1),
      O => \gen_write.w_state[1]_i_1_n_0\
    );
\gen_write.w_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_write.w_state[0]_i_1_n_0\,
      Q => w_state(0),
      R => register_slice_inst_n_1
    );
\gen_write.w_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_write.w_state[1]_i_1_n_0\,
      Q => w_state(1),
      R => register_slice_inst_n_1
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_wready_INST_0_i_1_n_0,
      I2 => w_state(1),
      I3 => w_state(0),
      O => m_axi_wvalid
    );
register_slice_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_register_slice_v2_1_15_axi_register_slice
     port map (
      D(4) => register_slice_inst_n_140,
      D(3) => register_slice_inst_n_141,
      D(2) => register_slice_inst_n_142,
      D(1) => register_slice_inst_n_143,
      D(0) => register_slice_inst_n_144,
      E(0) => register_slice_inst_n_158,
      Q(66 downto 33) => \^m_axi_awqos[3]\(65 downto 32),
      Q(32) => mr_axi_awaddr(32),
      Q(31 downto 0) => \^m_axi_awqos[3]\(31 downto 0),
      SR(0) => register_slice_inst_n_1,
      aclk => aclk,
      aresetn => aresetn,
      err_arready => err_arready,
      err_awready => err_awready,
      err_rvalid => err_rvalid,
      \gen_axi.gen_read.s_axi_arready_i_reg\ => register_slice_inst_n_72,
      \gen_axi.gen_read.s_axi_rlast_i_reg\ => register_slice_inst_n_153,
      \gen_axi.gen_write.s_axi_awready_i_reg\ => register_slice_inst_n_4,
      \gen_axi.gen_write.s_axi_awready_i_reg_0\ => decerr_slave_inst_n_3,
      \gen_read.ar_cnt_reg[0]\(0) => register_slice_inst_n_165,
      \gen_read.ar_cnt_reg[0]_0\ => \gen_read.ar_cnt[5]_i_3_n_0\,
      \gen_read.ar_cnt_reg[0]_1\ => \gen_read.r_state[1]_i_2_n_0\,
      \gen_read.ar_cnt_reg[5]\(4) => register_slice_inst_n_148,
      \gen_read.ar_cnt_reg[5]\(3) => register_slice_inst_n_149,
      \gen_read.ar_cnt_reg[5]\(2) => register_slice_inst_n_150,
      \gen_read.ar_cnt_reg[5]\(1) => register_slice_inst_n_151,
      \gen_read.ar_cnt_reg[5]\(0) => register_slice_inst_n_152,
      \gen_read.ar_cnt_reg[5]_0\(5 downto 0) => \gen_read.ar_cnt_reg__0\(5 downto 0),
      \gen_read.r_state_reg[0]\ => register_slice_inst_n_154,
      \gen_read.r_state_reg[0]_0\ => \gen_read.r_state_reg_n_0_[0]\,
      \gen_read.r_state_reg[1]\ => register_slice_inst_n_155,
      \gen_read.r_state_reg[1]_0\ => decerr_slave_inst_n_34,
      \gen_read.r_state_reg[1]_1\ => \gen_read.r_state_reg_n_0_[1]\,
      \gen_read.r_state_reg[1]_2\ => decerr_slave_inst_n_31,
      \gen_write.aw_cnt_reg[1]\ => \gen_write.aw_cnt[5]_i_9_n_0\,
      \gen_write.aw_cnt_reg[1]_0\ => \gen_write.aw_cnt[5]_i_8_n_0\,
      \gen_write.aw_cnt_reg[5]\(5 downto 0) => \gen_write.aw_cnt_reg__0\(5 downto 0),
      \gen_write.aw_cnt_reg[5]_0\ => \gen_write.aw_cnt[1]_i_2_n_0\,
      \gen_write.aw_cnt_reg[5]_1\ => \gen_write.aw_cnt[5]_i_3_n_0\,
      \gen_write.w_mask_reg\ => register_slice_inst_n_159,
      \gen_write.w_state_reg[0]\ => register_slice_inst_n_167,
      \gen_write.w_state_reg[0]_0\ => \gen_write.w_mask_i_2_n_0\,
      \m_axi_arqos[3]\(66 downto 33) => \^q\(65 downto 32),
      \m_axi_arqos[3]\(32) => mr_axi_araddr(32),
      \m_axi_arqos[3]\(31 downto 0) => \^q\(31 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bvalid => m_axi_bvalid,
      \m_payload_i_reg[32]\ => register_slice_inst_n_145,
      \m_payload_i_reg[32]_0\ => register_slice_inst_n_146,
      \m_payload_i_reg[32]_1\ => register_slice_inst_n_147,
      \m_payload_i_reg[32]_2\ => register_slice_inst_n_157,
      \m_payload_i_reg[32]_3\ => register_slice_inst_n_161,
      \m_payload_i_reg[32]_4\ => register_slice_inst_n_162,
      \m_payload_i_reg[32]_5\ => register_slice_inst_n_163,
      \m_payload_i_reg[32]_6\ => register_slice_inst_n_164,
      m_valid_i_reg => register_slice_inst_n_3,
      mr_axi_arvalid => mr_axi_arvalid,
      mr_axi_awvalid => mr_axi_awvalid,
      \s_axi_arqos[3]\(65 downto 0) => \s_axi_arqos[3]\(65 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      \s_axi_awqos[3]\(65 downto 0) => D(65 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      w_mask => w_mask,
      w_mask0 => w_mask0,
      w_state(1 downto 0) => w_state(1 downto 0)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_bresp(0),
      I1 => w_state(0),
      I2 => w_state(1),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => m_axi_bresp(1),
      I1 => w_state(0),
      I2 => w_state(1),
      O => s_axi_bresp(1)
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
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      I1 => \gen_write.w_cnt_reg__0\(1),
      I2 => \gen_write.w_cnt_reg__0\(2),
      I3 => \gen_write.w_cnt_reg__0\(3),
      I4 => \gen_write.w_cnt_reg__0\(4),
      I5 => \gen_write.w_cnt_reg__0\(5),
      O => s_axi_wready_INST_0_i_1_n_0
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
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_s00_mmu_0,axi_mmu_v2_1_13_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_mmu_v2_1_13_top,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wid\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 1e+08, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 1e+08, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WID";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WID";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wid\(11 downto 0) <= s_axi_wid(11 downto 0);
  \^s_axi_wlast\ <= s_axi_wlast;
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(11 downto 0) <= \^s_axi_wid\(11 downto 0);
  m_axi_wlast <= \^s_axi_wlast\;
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_mmu_v2_1_13_top
     port map (
      D(65 downto 62) => s_axi_awqos(3 downto 0),
      D(61 downto 50) => s_axi_awid(11 downto 0),
      D(49 downto 48) => s_axi_awlock(1 downto 0),
      D(47 downto 44) => s_axi_awlen(3 downto 0),
      D(43 downto 40) => s_axi_awcache(3 downto 0),
      D(39 downto 38) => s_axi_awburst(1 downto 0),
      D(37 downto 35) => s_axi_awsize(2 downto 0),
      D(34 downto 32) => s_axi_awprot(2 downto 0),
      D(31 downto 0) => s_axi_awaddr(31 downto 0),
      Q(65 downto 62) => m_axi_arqos(3 downto 0),
      Q(61 downto 50) => m_axi_arid(11 downto 0),
      Q(49 downto 48) => m_axi_arlock(1 downto 0),
      Q(47 downto 44) => m_axi_arlen(3 downto 0),
      Q(43 downto 40) => m_axi_arcache(3 downto 0),
      Q(39 downto 38) => m_axi_arburst(1 downto 0),
      Q(37 downto 35) => m_axi_arsize(2 downto 0),
      Q(34 downto 32) => m_axi_arprot(2 downto 0),
      Q(31 downto 0) => m_axi_araddr(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      \m_axi_awqos[3]\(65 downto 62) => m_axi_awqos(3 downto 0),
      \m_axi_awqos[3]\(61 downto 50) => m_axi_awid(11 downto 0),
      \m_axi_awqos[3]\(49 downto 48) => m_axi_awlock(1 downto 0),
      \m_axi_awqos[3]\(47 downto 44) => m_axi_awlen(3 downto 0),
      \m_axi_awqos[3]\(43 downto 40) => m_axi_awcache(3 downto 0),
      \m_axi_awqos[3]\(39 downto 38) => m_axi_awburst(1 downto 0),
      \m_axi_awqos[3]\(37 downto 35) => m_axi_awsize(2 downto 0),
      \m_axi_awqos[3]\(34 downto 32) => m_axi_awprot(2 downto 0),
      \m_axi_awqos[3]\(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(11 downto 0) => m_axi_bid(11 downto 0),
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(11 downto 0) => m_axi_rid(11 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      \s_axi_arqos[3]\(65 downto 62) => s_axi_arqos(3 downto 0),
      \s_axi_arqos[3]\(61 downto 50) => s_axi_arid(11 downto 0),
      \s_axi_arqos[3]\(49 downto 48) => s_axi_arlock(1 downto 0),
      \s_axi_arqos[3]\(47 downto 44) => s_axi_arlen(3 downto 0),
      \s_axi_arqos[3]\(43 downto 40) => s_axi_arcache(3 downto 0),
      \s_axi_arqos[3]\(39 downto 38) => s_axi_arburst(1 downto 0),
      \s_axi_arqos[3]\(37 downto 35) => s_axi_arsize(2 downto 0),
      \s_axi_arqos[3]\(34 downto 32) => s_axi_arprot(2 downto 0),
      \s_axi_arqos[3]\(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => \^s_axi_bready\,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => \^s_axi_rready\,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wlast => \^s_axi_wlast\,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
