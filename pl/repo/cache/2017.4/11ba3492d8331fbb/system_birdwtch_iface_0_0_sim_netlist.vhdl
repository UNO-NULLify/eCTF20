-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Fri Feb 21 15:40:17 2020
-- Host        : ssg0 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_birdwtch_iface_0_0_sim_netlist.vhdl
-- Design      : system_birdwtch_iface_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S00_AXI is
  port (
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    \o_cr_status_reg[7]__0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    int_mb_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    SR : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    int_mb : in STD_LOGIC;
    \o_cr_resp_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S00_AXI is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \o_cr_command[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_command[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_cr_command[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_cr_command[7]_i_4_n_0\ : STD_LOGIC;
  signal \o_cr_data[7]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal pre_wdata : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal pre_wstrb : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^s00_axi_arready\ : STD_LOGIC;
  signal \^s00_axi_awready\ : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of int_mb_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_cr_command[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_cr_command[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \o_cr_command[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_cr_command[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_cr_command[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \o_cr_command[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_cr_command[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_cr_command[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \o_cr_data[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_cr_data[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_cr_data[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_cr_data[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \o_cr_data[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_cr_data[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \o_cr_data[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_cr_data[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_cr_status[7]__0_i_1\ : label is "soft_lutpair8";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  s00_axi_arready <= \^s00_axi_arready\;
  s00_axi_awready <= \^s00_axi_awready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFFFDF"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => s00_axi_rready,
      I2 => s00_axi_aresetn,
      I3 => \^s00_axi_arready\,
      I4 => s00_axi_arvalid,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s00_axi_arready\,
      R => '0'
    );
axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4FFFFF4FFF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_aresetn,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_wvalid,
      I5 => axi_awready_i_2_n_0,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s00_axi_bvalid\,
      I1 => s00_axi_bready,
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_1_n_0,
      Q => \^s00_axi_awready\,
      R => '0'
    );
axi_bvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBFFFFB0BBB0BB"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_2_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_2_n_0,
      Q => \^s00_axi_bvalid\,
      R => SR
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(0),
      Q => s00_axi_rdata(0),
      R => '0'
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(2),
      Q => s00_axi_rdata(10),
      R => '0'
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(3),
      Q => s00_axi_rdata(11),
      R => '0'
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(4),
      Q => s00_axi_rdata(12),
      R => '0'
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(5),
      Q => s00_axi_rdata(13),
      R => '0'
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(6),
      Q => s00_axi_rdata(14),
      R => '0'
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(7),
      Q => s00_axi_rdata(15),
      R => '0'
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(1),
      Q => s00_axi_rdata(1),
      R => '0'
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(2),
      Q => s00_axi_rdata(2),
      R => '0'
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(3),
      Q => s00_axi_rdata(3),
      R => '0'
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(4),
      Q => s00_axi_rdata(4),
      R => '0'
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(5),
      Q => s00_axi_rdata(5),
      R => '0'
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(6),
      Q => s00_axi_rdata(6),
      R => '0'
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => \o_cr_resp_reg[7]\(7),
      Q => s00_axi_rdata(7),
      R => '0'
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(0),
      Q => s00_axi_rdata(8),
      R => '0'
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[15]_i_1_n_0\,
      D => Q(1),
      Q => s00_axi_rdata(9),
      R => '0'
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \^s00_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^s00_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => SR
    );
axi_wready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4FFFFF4FFF"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s00_axi_wready\,
      I2 => s00_axi_aresetn,
      I3 => \^s00_axi_awready\,
      I4 => s00_axi_awvalid,
      I5 => axi_awready_i_2_n_0,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => '0'
    );
int_mb_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^d\(15),
      I1 => Q(7),
      I2 => int_mb,
      O => int_mb_reg
    );
\o_cr_command[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(8),
      I1 => pre_wdata(24),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[0]_i_1_n_0\
    );
\o_cr_command[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(9),
      I1 => pre_wdata(25),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[1]_i_1_n_0\
    );
\o_cr_command[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(10),
      I1 => pre_wdata(26),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[2]_i_1_n_0\
    );
\o_cr_command[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(11),
      I1 => pre_wdata(27),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[3]_i_1_n_0\
    );
\o_cr_command[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(12),
      I1 => pre_wdata(28),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[4]_i_1_n_0\
    );
\o_cr_command[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(13),
      I1 => pre_wdata(29),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[5]_i_1_n_0\
    );
\o_cr_command[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(14),
      I1 => pre_wdata(30),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[6]_i_1_n_0\
    );
\o_cr_command[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(7),
      I1 => \o_cr_command[7]_i_4_n_0\,
      O => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s00_axi_wstrb(1),
      I1 => \^s00_axi_wready\,
      I2 => pre_wstrb(3),
      I3 => \o_cr_command[7]_i_4_n_0\,
      I4 => Q(7),
      O => \o_cr_command[7]_i_2_n_0\
    );
\o_cr_command[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(15),
      I1 => pre_wdata(31),
      I2 => \^s00_axi_wready\,
      O => \o_cr_command[7]_i_3_n_0\
    );
\o_cr_command[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BB0000B0BBB0BB"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s00_axi_awready\,
      I2 => s00_axi_wvalid,
      I3 => \^s00_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => \o_cr_command[7]_i_4_n_0\
    );
\o_cr_command_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[0]_i_1_n_0\,
      Q => \^d\(8),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[1]_i_1_n_0\,
      Q => \^d\(9),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[2]_i_1_n_0\,
      Q => \^d\(10),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[3]_i_1_n_0\,
      Q => \^d\(11),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[4]_i_1_n_0\,
      Q => \^d\(12),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[5]_i_1_n_0\,
      Q => \^d\(13),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[6]_i_1_n_0\,
      Q => \^d\(14),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_command_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_command[7]_i_2_n_0\,
      D => \o_cr_command[7]_i_3_n_0\,
      Q => \^d\(15),
      R => \o_cr_command[7]_i_1_n_0\
    );
\o_cr_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(0),
      I1 => pre_wdata(16),
      I2 => \^s00_axi_wready\,
      O => p_0_in(0)
    );
\o_cr_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(1),
      I1 => pre_wdata(17),
      I2 => \^s00_axi_wready\,
      O => p_0_in(1)
    );
\o_cr_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => pre_wdata(18),
      I2 => \^s00_axi_wready\,
      O => p_0_in(2)
    );
\o_cr_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => pre_wdata(19),
      I2 => \^s00_axi_wready\,
      O => p_0_in(3)
    );
\o_cr_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(4),
      I1 => pre_wdata(20),
      I2 => \^s00_axi_wready\,
      O => p_0_in(4)
    );
\o_cr_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(5),
      I1 => pre_wdata(21),
      I2 => \^s00_axi_wready\,
      O => p_0_in(5)
    );
\o_cr_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(6),
      I1 => pre_wdata(22),
      I2 => \^s00_axi_wready\,
      O => p_0_in(6)
    );
\o_cr_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \o_cr_command[7]_i_4_n_0\,
      I1 => pre_wstrb(2),
      I2 => \^s00_axi_wready\,
      I3 => s00_axi_wstrb(0),
      O => \o_cr_data[7]_i_1_n_0\
    );
\o_cr_data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s00_axi_wdata(7),
      I1 => pre_wdata(23),
      I2 => \^s00_axi_wready\,
      O => p_0_in(7)
    );
\o_cr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \^d\(0),
      R => '0'
    );
\o_cr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \^d\(1),
      R => '0'
    );
\o_cr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \^d\(2),
      R => '0'
    );
\o_cr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \^d\(3),
      R => '0'
    );
\o_cr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \^d\(4),
      R => '0'
    );
\o_cr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \^d\(5),
      R => '0'
    );
\o_cr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \^d\(6),
      R => '0'
    );
\o_cr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_data[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \^d\(7),
      R => '0'
    );
\o_cr_status[7]__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^d\(15),
      I1 => Q(7),
      O => \o_cr_status_reg[7]__0\
    );
\pre_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(0),
      Q => pre_wdata(16),
      R => '0'
    );
\pre_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(1),
      Q => pre_wdata(17),
      R => '0'
    );
\pre_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(2),
      Q => pre_wdata(18),
      R => '0'
    );
\pre_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(3),
      Q => pre_wdata(19),
      R => '0'
    );
\pre_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(4),
      Q => pre_wdata(20),
      R => '0'
    );
\pre_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(5),
      Q => pre_wdata(21),
      R => '0'
    );
\pre_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(6),
      Q => pre_wdata(22),
      R => '0'
    );
\pre_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(7),
      Q => pre_wdata(23),
      R => '0'
    );
\pre_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(8),
      Q => pre_wdata(24),
      R => '0'
    );
\pre_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(9),
      Q => pre_wdata(25),
      R => '0'
    );
\pre_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(10),
      Q => pre_wdata(26),
      R => '0'
    );
\pre_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(11),
      Q => pre_wdata(27),
      R => '0'
    );
\pre_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(12),
      Q => pre_wdata(28),
      R => '0'
    );
\pre_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(13),
      Q => pre_wdata(29),
      R => '0'
    );
\pre_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(14),
      Q => pre_wdata(30),
      R => '0'
    );
\pre_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wdata(15),
      Q => pre_wdata(31),
      R => '0'
    );
\pre_wstrb_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wstrb(0),
      Q => pre_wstrb(2),
      R => '0'
    );
\pre_wstrb_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s00_axi_wready\,
      D => s00_axi_wstrb(1),
      Q => pre_wstrb(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S01_AXI is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s01_axi_wready : out STD_LOGIC;
    s01_axi_bvalid : out STD_LOGIC;
    SR : out STD_LOGIC;
    s01_axi_awready : out STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    int_mb : out STD_LOGIC;
    s01_axi_rvalid : out STD_LOGIC;
    \axi_rdata_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \o_cr_command_reg[7]\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \o_cr_command_reg[7]_0\ : in STD_LOGIC;
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_awvalid : in STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S01_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S01_AXI is
  signal \^sr\ : STD_LOGIC;
  signal \axi_arready_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_awready_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_awready_i_2__0_n_0\ : STD_LOGIC;
  signal axi_bvalid0 : STD_LOGIC;
  signal \axi_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_wready_i_1__0_n_0\ : STD_LOGIC;
  signal \o_cr_resp[7]_i_1_n_0\ : STD_LOGIC;
  signal \o_cr_status[7]_i_1_n_0\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \pre_wdata_reg_n_0_[31]\ : STD_LOGIC;
  signal pre_wstrb : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s01_axi_arready\ : STD_LOGIC;
  signal \^s01_axi_awready\ : STD_LOGIC;
  signal \^s01_axi_bvalid\ : STD_LOGIC;
  signal \^s01_axi_rvalid\ : STD_LOGIC;
  signal \^s01_axi_wready\ : STD_LOGIC;
  signal wdata : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal wdata_0 : STD_LOGIC_VECTOR ( 23 downto 16 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_cr_resp[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_cr_resp[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \o_cr_resp[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_cr_resp[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \o_cr_resp[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_cr_resp[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \o_cr_resp[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_cr_resp[7]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_cr_status[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_cr_status[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \o_cr_status[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_cr_status[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \o_cr_status[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_cr_status[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_cr_status[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_cr_status[7]_i_2\ : label is "soft_lutpair12";
begin
  SR <= \^sr\;
  s01_axi_arready <= \^s01_axi_arready\;
  s01_axi_awready <= \^s01_axi_awready\;
  s01_axi_bvalid <= \^s01_axi_bvalid\;
  s01_axi_rvalid <= \^s01_axi_rvalid\;
  s01_axi_wready <= \^s01_axi_wready\;
\axi_arready_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFFFDF"
    )
        port map (
      I0 => \^s01_axi_rvalid\,
      I1 => s01_axi_rready,
      I2 => s00_axi_aresetn,
      I3 => \^s01_axi_arready\,
      I4 => s01_axi_arvalid,
      O => \axi_arready_i_1__0_n_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_arready_i_1__0_n_0\,
      Q => \^s01_axi_arready\,
      R => '0'
    );
\axi_awready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4FFFFF4FFF"
    )
        port map (
      I0 => s01_axi_awvalid,
      I1 => \^s01_axi_awready\,
      I2 => s00_axi_aresetn,
      I3 => \^s01_axi_wready\,
      I4 => s01_axi_wvalid,
      I5 => \axi_awready_i_2__0_n_0\,
      O => \axi_awready_i_1__0_n_0\
    );
\axi_awready_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s01_axi_bvalid\,
      I1 => s01_axi_bready,
      O => \axi_awready_i_2__0_n_0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awready_i_1__0_n_0\,
      Q => \^s01_axi_awready\,
      R => '0'
    );
axi_bvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\
    );
\axi_bvalid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBFFFFB0BBB0BB"
    )
        port map (
      I0 => s01_axi_awvalid,
      I1 => \^s01_axi_awready\,
      I2 => s01_axi_wvalid,
      I3 => \^s01_axi_wready\,
      I4 => s01_axi_bready,
      I5 => \^s01_axi_bvalid\,
      O => \axi_bvalid_i_1__0_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_bvalid_i_1__0_n_0\,
      Q => \^s01_axi_bvalid\,
      R => \^sr\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => \^s01_axi_arready\,
      I1 => s01_axi_arvalid,
      I2 => s01_axi_rready,
      I3 => \^s01_axi_rvalid\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(0),
      Q => s01_axi_rdata(0),
      R => '0'
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(1),
      Q => s01_axi_rdata(1),
      R => '0'
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(2),
      Q => s01_axi_rdata(2),
      R => '0'
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(3),
      Q => s01_axi_rdata(3),
      R => '0'
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(4),
      Q => s01_axi_rdata(4),
      R => '0'
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(5),
      Q => s01_axi_rdata(5),
      R => '0'
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(6),
      Q => s01_axi_rdata(6),
      R => '0'
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(7),
      Q => s01_axi_rdata(7),
      R => '0'
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(8),
      Q => s01_axi_rdata(8),
      R => '0'
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(9),
      Q => s01_axi_rdata(9),
      R => '0'
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(10),
      Q => s01_axi_rdata(10),
      R => '0'
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(11),
      Q => s01_axi_rdata(11),
      R => '0'
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(12),
      Q => s01_axi_rdata(12),
      R => '0'
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(13),
      Q => s01_axi_rdata(13),
      R => '0'
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(14),
      Q => s01_axi_rdata(14),
      R => '0'
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => D(15),
      Q => s01_axi_rdata(15),
      R => '0'
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFDD"
    )
        port map (
      I0 => \^s01_axi_arready\,
      I1 => s01_axi_arvalid,
      I2 => s01_axi_rready,
      I3 => \^s01_axi_rvalid\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s01_axi_rvalid\,
      R => \^sr\
    );
\axi_wready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4FFFFF4FFF"
    )
        port map (
      I0 => s01_axi_wvalid,
      I1 => \^s01_axi_wready\,
      I2 => s00_axi_aresetn,
      I3 => \^s01_axi_awready\,
      I4 => s01_axi_awvalid,
      I5 => \axi_awready_i_2__0_n_0\,
      O => \axi_wready_i_1__0_n_0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_wready_i_1__0_n_0\,
      Q => \^s01_axi_wready\,
      R => '0'
    );
int_mb_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_cr_command_reg[7]_0\,
      Q => int_mb,
      R => '0'
    );
\o_cr_resp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(8),
      I1 => \pre_wdata_reg_n_0_[24]\,
      I2 => \^s01_axi_wready\,
      O => wdata(24)
    );
\o_cr_resp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(9),
      I1 => \pre_wdata_reg_n_0_[25]\,
      I2 => \^s01_axi_wready\,
      O => wdata(25)
    );
\o_cr_resp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(10),
      I1 => \pre_wdata_reg_n_0_[26]\,
      I2 => \^s01_axi_wready\,
      O => wdata(26)
    );
\o_cr_resp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(11),
      I1 => \pre_wdata_reg_n_0_[27]\,
      I2 => \^s01_axi_wready\,
      O => wdata(27)
    );
\o_cr_resp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(12),
      I1 => \pre_wdata_reg_n_0_[28]\,
      I2 => \^s01_axi_wready\,
      O => wdata(28)
    );
\o_cr_resp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(13),
      I1 => \pre_wdata_reg_n_0_[29]\,
      I2 => \^s01_axi_wready\,
      O => wdata(29)
    );
\o_cr_resp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(14),
      I1 => \pre_wdata_reg_n_0_[30]\,
      I2 => \^s01_axi_wready\,
      O => wdata(30)
    );
\o_cr_resp[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0000000D000"
    )
        port map (
      I0 => \^s01_axi_bvalid\,
      I1 => s01_axi_bready,
      I2 => axi_bvalid0,
      I3 => pre_wstrb(1),
      I4 => \^s01_axi_wready\,
      I5 => s01_axi_wstrb(1),
      O => \o_cr_resp[7]_i_1_n_0\
    );
\o_cr_resp[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(15),
      I1 => \pre_wdata_reg_n_0_[31]\,
      I2 => \^s01_axi_wready\,
      O => wdata(31)
    );
\o_cr_resp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(24),
      Q => \axi_rdata_reg[7]\(0),
      R => '0'
    );
\o_cr_resp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(25),
      Q => \axi_rdata_reg[7]\(1),
      R => '0'
    );
\o_cr_resp_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(26),
      Q => \axi_rdata_reg[7]\(2),
      R => '0'
    );
\o_cr_resp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(27),
      Q => \axi_rdata_reg[7]\(3),
      R => '0'
    );
\o_cr_resp_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(28),
      Q => \axi_rdata_reg[7]\(4),
      R => '0'
    );
\o_cr_resp_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(29),
      Q => \axi_rdata_reg[7]\(5),
      R => '0'
    );
\o_cr_resp_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(30),
      Q => \axi_rdata_reg[7]\(6),
      R => '0'
    );
\o_cr_resp_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_resp[7]_i_1_n_0\,
      D => wdata(31),
      Q => \axi_rdata_reg[7]\(7),
      R => '0'
    );
\o_cr_status[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(0),
      I1 => \pre_wdata_reg_n_0_[16]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(16)
    );
\o_cr_status[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(1),
      I1 => \pre_wdata_reg_n_0_[17]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(17)
    );
\o_cr_status[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(2),
      I1 => \pre_wdata_reg_n_0_[18]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(18)
    );
\o_cr_status[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(3),
      I1 => \pre_wdata_reg_n_0_[19]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(19)
    );
\o_cr_status[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(4),
      I1 => \pre_wdata_reg_n_0_[20]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(20)
    );
\o_cr_status[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(5),
      I1 => \pre_wdata_reg_n_0_[21]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(21)
    );
\o_cr_status[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(6),
      I1 => \pre_wdata_reg_n_0_[22]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(22)
    );
\o_cr_status[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0D0000000D000"
    )
        port map (
      I0 => \^s01_axi_bvalid\,
      I1 => s01_axi_bready,
      I2 => axi_bvalid0,
      I3 => pre_wstrb(0),
      I4 => \^s01_axi_wready\,
      I5 => s01_axi_wstrb(0),
      O => \o_cr_status[7]_i_1_n_0\
    );
\o_cr_status[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s01_axi_wdata(7),
      I1 => \pre_wdata_reg_n_0_[23]\,
      I2 => \^s01_axi_wready\,
      O => wdata_0(23)
    );
\o_cr_status[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD0D"
    )
        port map (
      I0 => \^s01_axi_wready\,
      I1 => s01_axi_wvalid,
      I2 => \^s01_axi_awready\,
      I3 => s01_axi_awvalid,
      O => axi_bvalid0
    );
\o_cr_status_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(16),
      Q => Q(0),
      R => '0'
    );
\o_cr_status_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(17),
      Q => Q(1),
      R => '0'
    );
\o_cr_status_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(18),
      Q => Q(2),
      R => '0'
    );
\o_cr_status_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(19),
      Q => Q(3),
      R => '0'
    );
\o_cr_status_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(20),
      Q => Q(4),
      R => '0'
    );
\o_cr_status_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(21),
      Q => Q(5),
      R => '0'
    );
\o_cr_status_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(22),
      Q => Q(6),
      R => '0'
    );
\o_cr_status_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \o_cr_status[7]_i_1_n_0\,
      D => wdata_0(23),
      Q => Q(7),
      R => '0'
    );
\o_cr_status_reg[7]__0\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_cr_command_reg[7]\,
      Q => Q(7),
      R => '0'
    );
\pre_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(0),
      Q => \pre_wdata_reg_n_0_[16]\,
      R => '0'
    );
\pre_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(1),
      Q => \pre_wdata_reg_n_0_[17]\,
      R => '0'
    );
\pre_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(2),
      Q => \pre_wdata_reg_n_0_[18]\,
      R => '0'
    );
\pre_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(3),
      Q => \pre_wdata_reg_n_0_[19]\,
      R => '0'
    );
\pre_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(4),
      Q => \pre_wdata_reg_n_0_[20]\,
      R => '0'
    );
\pre_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(5),
      Q => \pre_wdata_reg_n_0_[21]\,
      R => '0'
    );
\pre_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(6),
      Q => \pre_wdata_reg_n_0_[22]\,
      R => '0'
    );
\pre_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(7),
      Q => \pre_wdata_reg_n_0_[23]\,
      R => '0'
    );
\pre_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(8),
      Q => \pre_wdata_reg_n_0_[24]\,
      R => '0'
    );
\pre_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(9),
      Q => \pre_wdata_reg_n_0_[25]\,
      R => '0'
    );
\pre_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(10),
      Q => \pre_wdata_reg_n_0_[26]\,
      R => '0'
    );
\pre_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(11),
      Q => \pre_wdata_reg_n_0_[27]\,
      R => '0'
    );
\pre_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(12),
      Q => \pre_wdata_reg_n_0_[28]\,
      R => '0'
    );
\pre_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(13),
      Q => \pre_wdata_reg_n_0_[29]\,
      R => '0'
    );
\pre_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(14),
      Q => \pre_wdata_reg_n_0_[30]\,
      R => '0'
    );
\pre_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wdata(15),
      Q => \pre_wdata_reg_n_0_[31]\,
      R => '0'
    );
\pre_wstrb_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wstrb(0),
      Q => pre_wstrb(0),
      R => '0'
    );
\pre_wstrb_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \^s01_axi_wready\,
      D => s01_axi_wstrb(1),
      Q => pre_wstrb(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch is
  port (
    s00_axi_awready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    S00_AXI_RVALID : out STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    S01_AXI_RVALID : out STD_LOGIC;
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s01_axi_awready : out STD_LOGIC;
    int_mb : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_rready : in STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_awvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch is
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_22 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_4 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_8 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal birdwtch_iface_v1_0_S01_AXI_inst_n_10 : STD_LOGIC;
  signal \^int_mb\ : STD_LOGIC;
  signal o_cr_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_cr_resp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w_cr_command : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal w_cr_status : STD_LOGIC_VECTOR ( 7 to 7 );
begin
  int_mb <= \^int_mb\;
birdwtch_iface_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S00_AXI
     port map (
      D(15) => w_cr_status(7),
      D(14) => birdwtch_iface_v1_0_S00_AXI_inst_n_6,
      D(13) => birdwtch_iface_v1_0_S00_AXI_inst_n_7,
      D(12) => birdwtch_iface_v1_0_S00_AXI_inst_n_8,
      D(11) => birdwtch_iface_v1_0_S00_AXI_inst_n_9,
      D(10) => birdwtch_iface_v1_0_S00_AXI_inst_n_10,
      D(9) => birdwtch_iface_v1_0_S00_AXI_inst_n_11,
      D(8) => birdwtch_iface_v1_0_S00_AXI_inst_n_12,
      D(7 downto 0) => o_cr_data(7 downto 0),
      Q(7 downto 0) => w_cr_command(7 downto 0),
      SR => birdwtch_iface_v1_0_S01_AXI_inst_n_10,
      int_mb => \^int_mb\,
      int_mb_reg => birdwtch_iface_v1_0_S00_AXI_inst_n_22,
      \o_cr_resp_reg[7]\(7 downto 0) => o_cr_resp(7 downto 0),
      \o_cr_status_reg[7]__0\ => birdwtch_iface_v1_0_S00_AXI_inst_n_4,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => s00_axi_rdata(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => S00_AXI_RVALID,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wready => E(0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
birdwtch_iface_v1_0_S01_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0_S01_AXI
     port map (
      D(15) => w_cr_status(7),
      D(14) => birdwtch_iface_v1_0_S00_AXI_inst_n_6,
      D(13) => birdwtch_iface_v1_0_S00_AXI_inst_n_7,
      D(12) => birdwtch_iface_v1_0_S00_AXI_inst_n_8,
      D(11) => birdwtch_iface_v1_0_S00_AXI_inst_n_9,
      D(10) => birdwtch_iface_v1_0_S00_AXI_inst_n_10,
      D(9) => birdwtch_iface_v1_0_S00_AXI_inst_n_11,
      D(8) => birdwtch_iface_v1_0_S00_AXI_inst_n_12,
      D(7 downto 0) => o_cr_data(7 downto 0),
      Q(7 downto 0) => w_cr_command(7 downto 0),
      SR => birdwtch_iface_v1_0_S01_AXI_inst_n_10,
      \axi_rdata_reg[7]\(7 downto 0) => o_cr_resp(7 downto 0),
      int_mb => \^int_mb\,
      \o_cr_command_reg[7]\ => birdwtch_iface_v1_0_S00_AXI_inst_n_4,
      \o_cr_command_reg[7]_0\ => birdwtch_iface_v1_0_S00_AXI_inst_n_22,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s01_axi_arready => s01_axi_arready,
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_awready => s01_axi_awready,
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_bvalid => s01_axi_bvalid,
      s01_axi_rdata(15 downto 0) => s01_axi_rdata(15 downto 0),
      s01_axi_rready => s01_axi_rready,
      s01_axi_rvalid => S01_AXI_RVALID,
      s01_axi_wdata(15 downto 0) => s01_axi_wdata(15 downto 0),
      s01_axi_wready => s01_axi_wready(0),
      s01_axi_wstrb(1 downto 0) => s01_axi_wstrb(1 downto 0),
      s01_axi_wvalid => s01_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    Q : out STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    s01_axi_rvalid : out STD_LOGIC;
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_wready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s01_axi_awready : out STD_LOGIC;
    int_mb : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_rready : in STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_awvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0 is
begin
birdwtch_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch
     port map (
      E(0) => s00_axi_wready,
      S00_AXI_RVALID => Q,
      S01_AXI_RVALID => s01_axi_rvalid,
      int_mb => int_mb,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => s00_axi_rdata(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(15 downto 0),
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(1 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s01_axi_arready => s01_axi_arready,
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_awready => s01_axi_awready,
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_bvalid => s01_axi_bvalid,
      s01_axi_rdata(15 downto 0) => s01_axi_rdata(15 downto 0),
      s01_axi_rready => s01_axi_rready,
      s01_axi_wdata(15 downto 0) => s01_axi_wdata(15 downto 0),
      s01_axi_wready(0) => s01_axi_wready,
      s01_axi_wstrb(1 downto 0) => s01_axi_wstrb(1 downto 0),
      s01_axi_wvalid => s01_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    int_mb : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s01_axi_aclk : in STD_LOGIC;
    s01_axi_aresetn : in STD_LOGIC;
    s01_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_awvalid : in STD_LOGIC;
    s01_axi_awready : out STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_wready : out STD_LOGIC;
    s01_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s01_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rvalid : out STD_LOGIC;
    s01_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_birdwtch_iface_0_0,birdwtch_iface_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "birdwtch_iface_v1_0,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s01_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s01_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s01_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s01_axi_aclk : signal is "XIL_INTERFACENAME s01_axi_aclk, ASSOCIATED_BUSIF s01_axi, ASSOCIATED_RESET s01_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s01_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s01_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s01_axi_aresetn : signal is "XIL_INTERFACENAME s01_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s01_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  attribute X_INTERFACE_INFO of s01_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  attribute X_INTERFACE_INFO of s01_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  attribute X_INTERFACE_INFO of s01_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  attribute X_INTERFACE_INFO of s01_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  attribute X_INTERFACE_INFO of s01_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  attribute X_INTERFACE_INFO of s01_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s01_axi_rready : signal is "XIL_INTERFACENAME S01_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s01_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  attribute X_INTERFACE_INFO of s01_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  attribute X_INTERFACE_INFO of s01_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s01_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  attribute X_INTERFACE_INFO of s01_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  attribute X_INTERFACE_INFO of s01_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  attribute X_INTERFACE_INFO of s01_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  attribute X_INTERFACE_INFO of s01_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  attribute X_INTERFACE_INFO of s01_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  attribute X_INTERFACE_INFO of s01_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  attribute X_INTERFACE_INFO of s01_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  attribute X_INTERFACE_INFO of s01_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rdata(31) <= \<const0>\;
  s00_axi_rdata(30) <= \<const0>\;
  s00_axi_rdata(29) <= \<const0>\;
  s00_axi_rdata(28) <= \<const0>\;
  s00_axi_rdata(27) <= \<const0>\;
  s00_axi_rdata(26) <= \<const0>\;
  s00_axi_rdata(25) <= \<const0>\;
  s00_axi_rdata(24) <= \<const0>\;
  s00_axi_rdata(23) <= \<const0>\;
  s00_axi_rdata(22) <= \<const0>\;
  s00_axi_rdata(21) <= \<const0>\;
  s00_axi_rdata(20) <= \<const0>\;
  s00_axi_rdata(19) <= \<const0>\;
  s00_axi_rdata(18) <= \<const0>\;
  s00_axi_rdata(17) <= \<const0>\;
  s00_axi_rdata(16) <= \<const0>\;
  s00_axi_rdata(15 downto 0) <= \^s00_axi_rdata\(15 downto 0);
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s01_axi_bresp(1) <= \<const0>\;
  s01_axi_bresp(0) <= \<const0>\;
  s01_axi_rdata(31 downto 16) <= \^s01_axi_rdata\(31 downto 16);
  s01_axi_rdata(15) <= \<const0>\;
  s01_axi_rdata(14) <= \<const0>\;
  s01_axi_rdata(13) <= \<const0>\;
  s01_axi_rdata(12) <= \<const0>\;
  s01_axi_rdata(11) <= \<const0>\;
  s01_axi_rdata(10) <= \<const0>\;
  s01_axi_rdata(9) <= \<const0>\;
  s01_axi_rdata(8) <= \<const0>\;
  s01_axi_rdata(7) <= \<const0>\;
  s01_axi_rdata(6) <= \<const0>\;
  s01_axi_rdata(5) <= \<const0>\;
  s01_axi_rdata(4) <= \<const0>\;
  s01_axi_rdata(3) <= \<const0>\;
  s01_axi_rdata(2) <= \<const0>\;
  s01_axi_rdata(1) <= \<const0>\;
  s01_axi_rdata(0) <= \<const0>\;
  s01_axi_rresp(1) <= \<const0>\;
  s01_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_birdwtch_iface_v1_0
     port map (
      Q => s00_axi_rvalid,
      int_mb => int_mb,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(15 downto 0) => \^s00_axi_rdata\(15 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(15 downto 0) => s00_axi_wdata(31 downto 16),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(1 downto 0) => s00_axi_wstrb(3 downto 2),
      s00_axi_wvalid => s00_axi_wvalid,
      s01_axi_arready => s01_axi_arready,
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_awready => s01_axi_awready,
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_bvalid => s01_axi_bvalid,
      s01_axi_rdata(15 downto 0) => \^s01_axi_rdata\(31 downto 16),
      s01_axi_rready => s01_axi_rready,
      s01_axi_rvalid => s01_axi_rvalid,
      s01_axi_wdata(15 downto 0) => s01_axi_wdata(31 downto 16),
      s01_axi_wready => s01_axi_wready,
      s01_axi_wstrb(1 downto 0) => s01_axi_wstrb(1 downto 0),
      s01_axi_wvalid => s01_axi_wvalid
    );
end STRUCTURE;
