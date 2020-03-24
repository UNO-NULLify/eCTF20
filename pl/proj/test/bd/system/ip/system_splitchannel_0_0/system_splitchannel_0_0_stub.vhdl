-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Thu Feb 20 21:08:33 2020
-- Host        : ssg0 running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /ectf/pl/proj/test/bd/system/ip/system_splitchannel_0_0/system_splitchannel_0_0_stub.vhdl
-- Design      : system_splitchannel_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_splitchannel_0_0 is
  Port ( 
    i_stereo : in STD_LOGIC_VECTOR ( 31 downto 0 );
    o_left : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_right : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end system_splitchannel_0_0;

architecture stub of system_splitchannel_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_stereo[31:0],o_left[15:0],o_right[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "splitchannel,Vivado 2017.4";
begin
end;
