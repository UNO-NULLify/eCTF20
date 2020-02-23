-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Feb 20 21:08:33 2020
-- Host        : ssg0 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim
--               /ectf/pl/proj/test/bd/system/ip/system_splitchannel_0_0/system_splitchannel_0_0_sim_netlist.vhdl
-- Design      : system_splitchannel_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_splitchannel_0_0 is
  port (
    i_stereo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_left : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_right : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_splitchannel_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_splitchannel_0_0 : entity is "system_splitchannel_0_0,splitchannel,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_splitchannel_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_splitchannel_0_0 : entity is "splitchannel,Vivado 2017.4";
end system_splitchannel_0_0;

architecture STRUCTURE of system_splitchannel_0_0 is
  signal \^i_stereo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^i_stereo\(31 downto 0) <= i_stereo(31 downto 0);
  o_left(15 downto 0) <= \^i_stereo\(15 downto 0);
  o_right(15 downto 0) <= \^i_stereo\(31 downto 16);
end STRUCTURE;
