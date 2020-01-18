--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
--Date        : Fri May 24 15:17:39 2019
--Host        : MM235512-PC running 64-bit major release  (build 9200)
--Command     : generate_target system.bd
--Design      : system
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1H7AUOX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_1H7AUOX;

architecture STRUCTURE of m00_couplers_imp_1H7AUOX is
  component system_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_OC4YJ2 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m00_couplers_imp_OC4YJ2;

architecture STRUCTURE of m00_couplers_imp_OC4YJ2 is
  component system_auto_pc_4 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
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
    m_axi_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_4;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal auto_pc_to_m00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m00_couplers_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m00_couplers_WVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_m00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_m00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= auto_pc_to_m00_couplers_ARID(2 downto 0);
  M_AXI_arlen(3 downto 0) <= auto_pc_to_m00_couplers_ARLEN(3 downto 0);
  M_AXI_arlock(1 downto 0) <= auto_pc_to_m00_couplers_ARLOCK(1 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_m00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_m00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_m00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_m00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= auto_pc_to_m00_couplers_AWID(2 downto 0);
  M_AXI_awlen(3 downto 0) <= auto_pc_to_m00_couplers_AWLEN(3 downto 0);
  M_AXI_awlock(1 downto 0) <= auto_pc_to_m00_couplers_AWLOCK(1 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_m00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_m00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wid(2 downto 0) <= auto_pc_to_m00_couplers_WID(2 downto 0);
  M_AXI_wlast <= auto_pc_to_m00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= m00_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m00_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= m00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m00_couplers_to_auto_pc_WREADY;
  auto_pc_to_m00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m00_couplers_BID(5 downto 0) <= M_AXI_bid(5 downto 0);
  auto_pc_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m00_couplers_RID(5 downto 0) <= M_AXI_rid(5 downto 0);
  auto_pc_to_m00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m00_couplers_WREADY <= M_AXI_wready;
  m00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m00_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m00_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m00_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m00_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m00_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m00_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m00_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m00_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_4
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(2 downto 0) => auto_pc_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(3 downto 0) => auto_pc_to_m00_couplers_ARLEN(3 downto 0),
      m_axi_arlock(1 downto 0) => auto_pc_to_m00_couplers_ARLOCK(1 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_m00_couplers_ARREADY,
      m_axi_arsize(2 downto 0) => auto_pc_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_m00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(2 downto 0) => auto_pc_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(3 downto 0) => auto_pc_to_m00_couplers_AWLEN(3 downto 0),
      m_axi_awlock(1 downto 0) => auto_pc_to_m00_couplers_AWLOCK(1 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_m00_couplers_AWREADY,
      m_axi_awsize(2 downto 0) => auto_pc_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_m00_couplers_AWVALID,
      m_axi_bid(2 downto 0) => auto_pc_to_m00_couplers_BID(2 downto 0),
      m_axi_bready => auto_pc_to_m00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(2 downto 0) => auto_pc_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast => auto_pc_to_m00_couplers_RLAST,
      m_axi_rready => auto_pc_to_m00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wid(2 downto 0) => auto_pc_to_m00_couplers_WID(2 downto 0),
      m_axi_wlast => auto_pc_to_m00_couplers_WLAST,
      m_axi_wready => auto_pc_to_m00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => m00_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m00_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m00_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m00_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m00_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m00_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m00_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m00_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m00_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m00_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => m00_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => m00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m00_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => m00_couplers_to_auto_pc_RLAST,
      s_axi_rready => m00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m00_couplers_to_auto_pc_WLAST,
      s_axi_wready => m00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1XBVZ33 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1XBVZ33;

architecture STRUCTURE of m01_couplers_imp_1XBVZ33 is
  component system_auto_pc_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_5;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m01_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m01_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m01_couplers_WVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m01_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m01_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m01_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wvalid <= auto_pc_to_m01_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m01_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m01_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= m01_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m01_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= m01_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m01_couplers_to_auto_pc_WREADY;
  auto_pc_to_m01_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m01_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m01_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m01_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m01_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m01_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m01_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m01_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m01_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m01_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m01_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m01_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m01_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m01_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m01_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_5
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m01_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m01_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m01_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m01_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m01_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m01_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m01_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m01_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m01_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m01_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m01_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m01_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => NLW_auto_pc_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid => auto_pc_to_m01_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m01_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m01_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m01_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => m01_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m01_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m01_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m01_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m01_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m01_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m01_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m01_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m01_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m01_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m01_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m01_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m01_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m01_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m01_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m01_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m01_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m01_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m01_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m01_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m01_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => m01_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => m01_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m01_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m01_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m01_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m01_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => m01_couplers_to_auto_pc_RLAST,
      s_axi_rready => m01_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m01_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m01_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m01_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m01_couplers_to_auto_pc_WLAST,
      s_axi_wready => m01_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m01_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m01_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_4Y7TYO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_4Y7TYO;

architecture STRUCTURE of m01_couplers_imp_4Y7TYO is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_m01_couplers_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WLAST : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m01_couplers_to_m01_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m01_couplers_to_m01_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= m01_couplers_to_m01_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m01_couplers_to_m01_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m01_couplers_to_m01_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m01_couplers_to_m01_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m01_couplers_to_m01_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= m01_couplers_to_m01_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m01_couplers_to_m01_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m01_couplers_to_m01_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m01_couplers_to_m01_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rlast <= m01_couplers_to_m01_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m01_couplers_to_m01_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m01_couplers_to_m01_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m01_couplers_to_m01_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m01_couplers_to_m01_couplers_ARLOCK <= S_AXI_arlock;
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m01_couplers_to_m01_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m01_couplers_to_m01_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m01_couplers_to_m01_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m01_couplers_to_m01_couplers_AWLOCK <= S_AXI_awlock;
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RLAST <= M_AXI_rlast;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WLAST <= S_AXI_wlast;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_1LQIX7X is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_1LQIX7X;

architecture STRUCTURE of m02_couplers_imp_1LQIX7X is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_couplers_ARLOCK : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_m02_couplers_AWLOCK : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_m02_couplers_RLAST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_m02_couplers_WLAST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m02_couplers_to_m02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m02_couplers_to_m02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m02_couplers_to_m02_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= m02_couplers_to_m02_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= m02_couplers_to_m02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m02_couplers_to_m02_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m02_couplers_to_m02_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m02_couplers_to_m02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m02_couplers_to_m02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m02_couplers_to_m02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m02_couplers_to_m02_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= m02_couplers_to_m02_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= m02_couplers_to_m02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m02_couplers_to_m02_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m02_couplers_to_m02_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m02_couplers_to_m02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m02_couplers_to_m02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m02_couplers_to_m02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m02_couplers_to_m02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= m02_couplers_to_m02_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m02_couplers_to_m02_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m02_couplers_to_m02_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m02_couplers_to_m02_couplers_RID(2 downto 0);
  S_AXI_rlast <= m02_couplers_to_m02_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m02_couplers_to_m02_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m02_couplers_to_m02_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m02_couplers_to_m02_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m02_couplers_to_m02_couplers_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m02_couplers_to_m02_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m02_couplers_to_m02_couplers_ARLOCK <= S_AXI_arlock;
  m02_couplers_to_m02_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m02_couplers_to_m02_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m02_couplers_to_m02_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m02_couplers_to_m02_couplers_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m02_couplers_to_m02_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m02_couplers_to_m02_couplers_AWLOCK <= S_AXI_awlock;
  m02_couplers_to_m02_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m02_couplers_to_m02_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  m02_couplers_to_m02_couplers_RLAST <= M_AXI_rlast;
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m02_couplers_to_m02_couplers_WLAST <= S_AXI_wlast;
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m02_couplers_imp_FKL2TE is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m02_couplers_imp_FKL2TE;

architecture STRUCTURE of m02_couplers_imp_FKL2TE is
  signal m02_couplers_to_m02_couplers_ARADDR : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARBURST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARCACHE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARLEN : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARLOCK : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARPROT : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARQOS : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARREGION : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARSIZE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_ARVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWADDR : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWBURST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWCACHE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWLEN : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWLOCK : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWPROT : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWQOS : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWREGION : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWSIZE : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_AWVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BRESP : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_BVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RDATA : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RLAST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RRESP : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_RVALID : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WDATA : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WLAST : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WREADY : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WSTRB : STD_LOGIC;
  signal m02_couplers_to_m02_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m02_couplers_to_m02_couplers_ARADDR;
  M_AXI_arburst <= m02_couplers_to_m02_couplers_ARBURST;
  M_AXI_arcache <= m02_couplers_to_m02_couplers_ARCACHE;
  M_AXI_arlen <= m02_couplers_to_m02_couplers_ARLEN;
  M_AXI_arlock <= m02_couplers_to_m02_couplers_ARLOCK;
  M_AXI_arprot <= m02_couplers_to_m02_couplers_ARPROT;
  M_AXI_arqos <= m02_couplers_to_m02_couplers_ARQOS;
  M_AXI_arregion <= m02_couplers_to_m02_couplers_ARREGION;
  M_AXI_arsize <= m02_couplers_to_m02_couplers_ARSIZE;
  M_AXI_arvalid <= m02_couplers_to_m02_couplers_ARVALID;
  M_AXI_awaddr <= m02_couplers_to_m02_couplers_AWADDR;
  M_AXI_awburst <= m02_couplers_to_m02_couplers_AWBURST;
  M_AXI_awcache <= m02_couplers_to_m02_couplers_AWCACHE;
  M_AXI_awlen <= m02_couplers_to_m02_couplers_AWLEN;
  M_AXI_awlock <= m02_couplers_to_m02_couplers_AWLOCK;
  M_AXI_awprot <= m02_couplers_to_m02_couplers_AWPROT;
  M_AXI_awqos <= m02_couplers_to_m02_couplers_AWQOS;
  M_AXI_awregion <= m02_couplers_to_m02_couplers_AWREGION;
  M_AXI_awsize <= m02_couplers_to_m02_couplers_AWSIZE;
  M_AXI_awvalid <= m02_couplers_to_m02_couplers_AWVALID;
  M_AXI_bready <= m02_couplers_to_m02_couplers_BREADY;
  M_AXI_rready <= m02_couplers_to_m02_couplers_RREADY;
  M_AXI_wdata <= m02_couplers_to_m02_couplers_WDATA;
  M_AXI_wlast <= m02_couplers_to_m02_couplers_WLAST;
  M_AXI_wstrb <= m02_couplers_to_m02_couplers_WSTRB;
  M_AXI_wvalid <= m02_couplers_to_m02_couplers_WVALID;
  S_AXI_arready <= m02_couplers_to_m02_couplers_ARREADY;
  S_AXI_awready <= m02_couplers_to_m02_couplers_AWREADY;
  S_AXI_bresp <= m02_couplers_to_m02_couplers_BRESP;
  S_AXI_bvalid <= m02_couplers_to_m02_couplers_BVALID;
  S_AXI_rdata <= m02_couplers_to_m02_couplers_RDATA;
  S_AXI_rlast <= m02_couplers_to_m02_couplers_RLAST;
  S_AXI_rresp <= m02_couplers_to_m02_couplers_RRESP;
  S_AXI_rvalid <= m02_couplers_to_m02_couplers_RVALID;
  S_AXI_wready <= m02_couplers_to_m02_couplers_WREADY;
  m02_couplers_to_m02_couplers_ARADDR <= S_AXI_araddr;
  m02_couplers_to_m02_couplers_ARBURST <= S_AXI_arburst;
  m02_couplers_to_m02_couplers_ARCACHE <= S_AXI_arcache;
  m02_couplers_to_m02_couplers_ARLEN <= S_AXI_arlen;
  m02_couplers_to_m02_couplers_ARLOCK <= S_AXI_arlock;
  m02_couplers_to_m02_couplers_ARPROT <= S_AXI_arprot;
  m02_couplers_to_m02_couplers_ARQOS <= S_AXI_arqos;
  m02_couplers_to_m02_couplers_ARREADY <= M_AXI_arready;
  m02_couplers_to_m02_couplers_ARREGION <= S_AXI_arregion;
  m02_couplers_to_m02_couplers_ARSIZE <= S_AXI_arsize;
  m02_couplers_to_m02_couplers_ARVALID <= S_AXI_arvalid;
  m02_couplers_to_m02_couplers_AWADDR <= S_AXI_awaddr;
  m02_couplers_to_m02_couplers_AWBURST <= S_AXI_awburst;
  m02_couplers_to_m02_couplers_AWCACHE <= S_AXI_awcache;
  m02_couplers_to_m02_couplers_AWLEN <= S_AXI_awlen;
  m02_couplers_to_m02_couplers_AWLOCK <= S_AXI_awlock;
  m02_couplers_to_m02_couplers_AWPROT <= S_AXI_awprot;
  m02_couplers_to_m02_couplers_AWQOS <= S_AXI_awqos;
  m02_couplers_to_m02_couplers_AWREADY <= M_AXI_awready;
  m02_couplers_to_m02_couplers_AWREGION <= S_AXI_awregion;
  m02_couplers_to_m02_couplers_AWSIZE <= S_AXI_awsize;
  m02_couplers_to_m02_couplers_AWVALID <= S_AXI_awvalid;
  m02_couplers_to_m02_couplers_BREADY <= S_AXI_bready;
  m02_couplers_to_m02_couplers_BRESP <= M_AXI_bresp;
  m02_couplers_to_m02_couplers_BVALID <= M_AXI_bvalid;
  m02_couplers_to_m02_couplers_RDATA <= M_AXI_rdata;
  m02_couplers_to_m02_couplers_RLAST <= M_AXI_rlast;
  m02_couplers_to_m02_couplers_RREADY <= S_AXI_rready;
  m02_couplers_to_m02_couplers_RRESP <= M_AXI_rresp;
  m02_couplers_to_m02_couplers_RVALID <= M_AXI_rvalid;
  m02_couplers_to_m02_couplers_WDATA <= S_AXI_wdata;
  m02_couplers_to_m02_couplers_WLAST <= S_AXI_wlast;
  m02_couplers_to_m02_couplers_WREADY <= M_AXI_wready;
  m02_couplers_to_m02_couplers_WSTRB <= S_AXI_wstrb;
  m02_couplers_to_m02_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_15QZ4LV is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_15QZ4LV;

architecture STRUCTURE of m03_couplers_imp_15QZ4LV is
  component system_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_1;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  auto_pc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_1
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m03_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m03_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m03_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m03_couplers_imp_Z3IX4S is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m03_couplers_imp_Z3IX4S;

architecture STRUCTURE of m03_couplers_imp_Z3IX4S is
  component system_auto_pc_6 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_6;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m03_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m03_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m03_couplers_WVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m03_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m03_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m03_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m03_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m03_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m03_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m03_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m03_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m03_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m03_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m03_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m03_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m03_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m03_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m03_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= m03_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m03_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m03_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m03_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= m03_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m03_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m03_couplers_to_auto_pc_WREADY;
  auto_pc_to_m03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m03_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m03_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m03_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m03_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m03_couplers_WREADY <= M_AXI_wready;
  m03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m03_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m03_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m03_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m03_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m03_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m03_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m03_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m03_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m03_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m03_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m03_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m03_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m03_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m03_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m03_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m03_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m03_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m03_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m03_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m03_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m03_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m03_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m03_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m03_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_6
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m03_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m03_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m03_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m03_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m03_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m03_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m03_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m03_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m03_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m03_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m03_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m03_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m03_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m03_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m03_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => m03_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m03_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m03_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m03_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m03_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m03_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m03_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m03_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m03_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m03_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m03_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m03_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m03_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m03_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m03_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m03_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m03_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m03_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m03_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m03_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => m03_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => m03_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m03_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m03_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m03_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => m03_couplers_to_auto_pc_RLAST,
      s_axi_rready => m03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m03_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m03_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m03_couplers_to_auto_pc_WLAST,
      s_axi_wready => m03_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m03_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m03_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_10HSSAX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_10HSSAX;

architecture STRUCTURE of m04_couplers_imp_10HSSAX is
  component system_auto_pc_7 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_7;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m04_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_m04_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m04_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m04_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m04_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m04_couplers_WVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m04_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m04_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m04_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m04_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_m04_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_m04_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m04_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_m04_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_m04_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m04_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m04_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m04_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m04_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m04_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m04_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= m04_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m04_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m04_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m04_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m04_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= m04_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m04_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m04_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m04_couplers_to_auto_pc_WREADY;
  auto_pc_to_m04_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m04_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m04_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m04_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m04_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m04_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m04_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m04_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m04_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m04_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m04_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m04_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m04_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m04_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m04_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m04_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m04_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m04_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m04_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m04_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m04_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m04_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m04_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m04_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m04_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m04_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m04_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m04_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m04_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_7
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m04_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_m04_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_m04_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m04_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m04_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_m04_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_m04_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m04_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m04_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m04_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m04_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m04_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m04_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m04_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m04_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m04_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m04_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m04_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m04_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => m04_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m04_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m04_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m04_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m04_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m04_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m04_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m04_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m04_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m04_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m04_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m04_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m04_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m04_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m04_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m04_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m04_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m04_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m04_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m04_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m04_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => m04_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => m04_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m04_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m04_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m04_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m04_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => m04_couplers_to_auto_pc_RLAST,
      s_axi_rready => m04_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m04_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m04_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m04_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m04_couplers_to_auto_pc_WLAST,
      s_axi_wready => m04_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m04_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m04_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m04_couplers_imp_TUCI1Y is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m04_couplers_imp_TUCI1Y;

architecture STRUCTURE of m04_couplers_imp_TUCI1Y is
  signal m04_couplers_to_m04_couplers_ARADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_ARVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWADDR : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_AWVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_BVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RRESP : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_RVALID : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WDATA : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WREADY : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WSTRB : STD_LOGIC;
  signal m04_couplers_to_m04_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m04_couplers_to_m04_couplers_ARADDR;
  M_AXI_arvalid <= m04_couplers_to_m04_couplers_ARVALID;
  M_AXI_awaddr <= m04_couplers_to_m04_couplers_AWADDR;
  M_AXI_awvalid <= m04_couplers_to_m04_couplers_AWVALID;
  M_AXI_bready <= m04_couplers_to_m04_couplers_BREADY;
  M_AXI_rready <= m04_couplers_to_m04_couplers_RREADY;
  M_AXI_wdata <= m04_couplers_to_m04_couplers_WDATA;
  M_AXI_wstrb <= m04_couplers_to_m04_couplers_WSTRB;
  M_AXI_wvalid <= m04_couplers_to_m04_couplers_WVALID;
  S_AXI_arready <= m04_couplers_to_m04_couplers_ARREADY;
  S_AXI_awready <= m04_couplers_to_m04_couplers_AWREADY;
  S_AXI_bresp <= m04_couplers_to_m04_couplers_BRESP;
  S_AXI_bvalid <= m04_couplers_to_m04_couplers_BVALID;
  S_AXI_rdata <= m04_couplers_to_m04_couplers_RDATA;
  S_AXI_rresp <= m04_couplers_to_m04_couplers_RRESP;
  S_AXI_rvalid <= m04_couplers_to_m04_couplers_RVALID;
  S_AXI_wready <= m04_couplers_to_m04_couplers_WREADY;
  m04_couplers_to_m04_couplers_ARADDR <= S_AXI_araddr;
  m04_couplers_to_m04_couplers_ARREADY <= M_AXI_arready;
  m04_couplers_to_m04_couplers_ARVALID <= S_AXI_arvalid;
  m04_couplers_to_m04_couplers_AWADDR <= S_AXI_awaddr;
  m04_couplers_to_m04_couplers_AWREADY <= M_AXI_awready;
  m04_couplers_to_m04_couplers_AWVALID <= S_AXI_awvalid;
  m04_couplers_to_m04_couplers_BREADY <= S_AXI_bready;
  m04_couplers_to_m04_couplers_BRESP <= M_AXI_bresp;
  m04_couplers_to_m04_couplers_BVALID <= M_AXI_bvalid;
  m04_couplers_to_m04_couplers_RDATA <= M_AXI_rdata;
  m04_couplers_to_m04_couplers_RREADY <= S_AXI_rready;
  m04_couplers_to_m04_couplers_RRESP <= M_AXI_rresp;
  m04_couplers_to_m04_couplers_RVALID <= M_AXI_rvalid;
  m04_couplers_to_m04_couplers_WDATA <= S_AXI_wdata;
  m04_couplers_to_m04_couplers_WREADY <= M_AXI_wready;
  m04_couplers_to_m04_couplers_WSTRB <= S_AXI_wstrb;
  m04_couplers_to_m04_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_1IWS6WN is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_1IWS6WN;

architecture STRUCTURE of m05_couplers_imp_1IWS6WN is
  component system_auto_pc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_2;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m05_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m05_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m05_couplers_WVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m05_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m05_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m05_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m05_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m05_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m05_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m05_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rlast <= m05_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m05_couplers_to_auto_pc_WREADY;
  auto_pc_to_m05_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m05_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m05_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m05_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m05_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m05_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m05_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m05_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m05_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m05_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m05_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m05_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m05_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_2
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m05_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m05_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m05_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m05_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m05_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m05_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m05_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m05_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m05_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m05_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m05_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m05_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m05_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m05_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m05_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m05_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m05_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => m05_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m05_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m05_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m05_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m05_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m05_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m05_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m05_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m05_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m05_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m05_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => m05_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m05_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m05_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m05_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m05_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m05_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m05_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m05_couplers_to_auto_pc_AWVALID,
      s_axi_bready => m05_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m05_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m05_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m05_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => m05_couplers_to_auto_pc_RLAST,
      s_axi_rready => m05_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m05_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m05_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m05_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m05_couplers_to_auto_pc_WLAST,
      s_axi_wready => m05_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m05_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m05_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m05_couplers_imp_CQUEHK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m05_couplers_imp_CQUEHK;

architecture STRUCTURE of m05_couplers_imp_CQUEHK is
  signal m05_couplers_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_m05_couplers_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_ARVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_m05_couplers_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_AWVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_BREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_BVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_m05_couplers_RLAST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_m05_couplers_RVALID : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_m05_couplers_WLAST : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WREADY : STD_LOGIC;
  signal m05_couplers_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_m05_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= m05_couplers_to_m05_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= m05_couplers_to_m05_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= m05_couplers_to_m05_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(2 downto 0) <= m05_couplers_to_m05_couplers_ARID(2 downto 0);
  M_AXI_arlen(7 downto 0) <= m05_couplers_to_m05_couplers_ARLEN(7 downto 0);
  M_AXI_arlock <= m05_couplers_to_m05_couplers_ARLOCK;
  M_AXI_arprot(2 downto 0) <= m05_couplers_to_m05_couplers_ARPROT(2 downto 0);
  M_AXI_arsize(2 downto 0) <= m05_couplers_to_m05_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= m05_couplers_to_m05_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= m05_couplers_to_m05_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= m05_couplers_to_m05_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= m05_couplers_to_m05_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(2 downto 0) <= m05_couplers_to_m05_couplers_AWID(2 downto 0);
  M_AXI_awlen(7 downto 0) <= m05_couplers_to_m05_couplers_AWLEN(7 downto 0);
  M_AXI_awlock <= m05_couplers_to_m05_couplers_AWLOCK;
  M_AXI_awprot(2 downto 0) <= m05_couplers_to_m05_couplers_AWPROT(2 downto 0);
  M_AXI_awsize(2 downto 0) <= m05_couplers_to_m05_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= m05_couplers_to_m05_couplers_AWVALID;
  M_AXI_bready <= m05_couplers_to_m05_couplers_BREADY;
  M_AXI_rready <= m05_couplers_to_m05_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m05_couplers_to_m05_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= m05_couplers_to_m05_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= m05_couplers_to_m05_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m05_couplers_to_m05_couplers_WVALID;
  S_AXI_arready <= m05_couplers_to_m05_couplers_ARREADY;
  S_AXI_awready <= m05_couplers_to_m05_couplers_AWREADY;
  S_AXI_bid(2 downto 0) <= m05_couplers_to_m05_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m05_couplers_to_m05_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m05_couplers_to_m05_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m05_couplers_to_m05_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m05_couplers_to_m05_couplers_RID(2 downto 0);
  S_AXI_rlast <= m05_couplers_to_m05_couplers_RLAST;
  S_AXI_rresp(1 downto 0) <= m05_couplers_to_m05_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m05_couplers_to_m05_couplers_RVALID;
  S_AXI_wready <= m05_couplers_to_m05_couplers_WREADY;
  m05_couplers_to_m05_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m05_couplers_to_m05_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m05_couplers_to_m05_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m05_couplers_to_m05_couplers_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m05_couplers_to_m05_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m05_couplers_to_m05_couplers_ARLOCK <= S_AXI_arlock;
  m05_couplers_to_m05_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m05_couplers_to_m05_couplers_ARREADY <= M_AXI_arready;
  m05_couplers_to_m05_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m05_couplers_to_m05_couplers_ARVALID <= S_AXI_arvalid;
  m05_couplers_to_m05_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m05_couplers_to_m05_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m05_couplers_to_m05_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m05_couplers_to_m05_couplers_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m05_couplers_to_m05_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m05_couplers_to_m05_couplers_AWLOCK <= S_AXI_awlock;
  m05_couplers_to_m05_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m05_couplers_to_m05_couplers_AWREADY <= M_AXI_awready;
  m05_couplers_to_m05_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m05_couplers_to_m05_couplers_AWVALID <= S_AXI_awvalid;
  m05_couplers_to_m05_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  m05_couplers_to_m05_couplers_BREADY <= S_AXI_bready;
  m05_couplers_to_m05_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m05_couplers_to_m05_couplers_BVALID <= M_AXI_bvalid;
  m05_couplers_to_m05_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m05_couplers_to_m05_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  m05_couplers_to_m05_couplers_RLAST <= M_AXI_rlast;
  m05_couplers_to_m05_couplers_RREADY <= S_AXI_rready;
  m05_couplers_to_m05_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m05_couplers_to_m05_couplers_RVALID <= M_AXI_rvalid;
  m05_couplers_to_m05_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m05_couplers_to_m05_couplers_WLAST <= S_AXI_wlast;
  m05_couplers_to_m05_couplers_WREADY <= M_AXI_wready;
  m05_couplers_to_m05_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m05_couplers_to_m05_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_15HAUI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_15HAUI;

architecture STRUCTURE of m06_couplers_imp_15HAUI is
  component system_auto_pc_8 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_8;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_m06_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_m06_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_m06_couplers_WVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m06_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m06_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m06_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal m06_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_auto_pc_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_m06_couplers_ARADDR(31 downto 0);
  M_AXI_arvalid <= auto_pc_to_m06_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_m06_couplers_AWADDR(31 downto 0);
  M_AXI_awvalid <= auto_pc_to_m06_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_m06_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_m06_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_m06_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_m06_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_m06_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= m06_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= m06_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(2 downto 0) <= m06_couplers_to_auto_pc_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= m06_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= m06_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= m06_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= m06_couplers_to_auto_pc_RID(2 downto 0);
  S_AXI_rlast <= m06_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= m06_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= m06_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= m06_couplers_to_auto_pc_WREADY;
  auto_pc_to_m06_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_m06_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_m06_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_m06_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_m06_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_m06_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_m06_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m06_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  m06_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  m06_couplers_to_auto_pc_ARID(2 downto 0) <= S_AXI_arid(2 downto 0);
  m06_couplers_to_auto_pc_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  m06_couplers_to_auto_pc_ARLOCK(0) <= S_AXI_arlock(0);
  m06_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m06_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  m06_couplers_to_auto_pc_ARREGION(3 downto 0) <= S_AXI_arregion(3 downto 0);
  m06_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  m06_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m06_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  m06_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  m06_couplers_to_auto_pc_AWID(2 downto 0) <= S_AXI_awid(2 downto 0);
  m06_couplers_to_auto_pc_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  m06_couplers_to_auto_pc_AWLOCK(0) <= S_AXI_awlock(0);
  m06_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m06_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  m06_couplers_to_auto_pc_AWREGION(3 downto 0) <= S_AXI_awregion(3 downto 0);
  m06_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  m06_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  m06_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  m06_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m06_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  m06_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m06_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_8
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_m06_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => NLW_auto_pc_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready => auto_pc_to_m06_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_m06_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_m06_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => NLW_auto_pc_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready => auto_pc_to_m06_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_m06_couplers_AWVALID,
      m_axi_bready => auto_pc_to_m06_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_m06_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_m06_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_m06_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_m06_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_m06_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_m06_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_m06_couplers_WVALID,
      s_axi_araddr(31 downto 0) => m06_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => m06_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => m06_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(2 downto 0) => m06_couplers_to_auto_pc_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => m06_couplers_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => m06_couplers_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => m06_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => m06_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => m06_couplers_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => m06_couplers_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => m06_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => m06_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => m06_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => m06_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => m06_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => m06_couplers_to_auto_pc_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => m06_couplers_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => m06_couplers_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => m06_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => m06_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => m06_couplers_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => m06_couplers_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => m06_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => m06_couplers_to_auto_pc_AWVALID,
      s_axi_bid(2 downto 0) => m06_couplers_to_auto_pc_BID(2 downto 0),
      s_axi_bready => m06_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => m06_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => m06_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => m06_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => m06_couplers_to_auto_pc_RID(2 downto 0),
      s_axi_rlast => m06_couplers_to_auto_pc_RLAST,
      s_axi_rready => m06_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => m06_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => m06_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => m06_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => m06_couplers_to_auto_pc_WLAST,
      s_axi_wready => m06_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => m06_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => m06_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m06_couplers_imp_1TJ5H51 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arregion : out STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awregion : out STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arregion : in STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awregion : in STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m06_couplers_imp_1TJ5H51;

architecture STRUCTURE of m06_couplers_imp_1TJ5H51 is
  signal m06_couplers_to_m06_couplers_ARADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_ARVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWADDR : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWBURST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLEN : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWPROT : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWQOS : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWREGION : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_AWVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_BVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RRESP : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_RVALID : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WDATA : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WLAST : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WREADY : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WSTRB : STD_LOGIC;
  signal m06_couplers_to_m06_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m06_couplers_to_m06_couplers_ARADDR;
  M_AXI_arburst <= m06_couplers_to_m06_couplers_ARBURST;
  M_AXI_arcache <= m06_couplers_to_m06_couplers_ARCACHE;
  M_AXI_arlen <= m06_couplers_to_m06_couplers_ARLEN;
  M_AXI_arlock <= m06_couplers_to_m06_couplers_ARLOCK;
  M_AXI_arprot <= m06_couplers_to_m06_couplers_ARPROT;
  M_AXI_arqos <= m06_couplers_to_m06_couplers_ARQOS;
  M_AXI_arregion <= m06_couplers_to_m06_couplers_ARREGION;
  M_AXI_arsize <= m06_couplers_to_m06_couplers_ARSIZE;
  M_AXI_arvalid <= m06_couplers_to_m06_couplers_ARVALID;
  M_AXI_awaddr <= m06_couplers_to_m06_couplers_AWADDR;
  M_AXI_awburst <= m06_couplers_to_m06_couplers_AWBURST;
  M_AXI_awcache <= m06_couplers_to_m06_couplers_AWCACHE;
  M_AXI_awlen <= m06_couplers_to_m06_couplers_AWLEN;
  M_AXI_awlock <= m06_couplers_to_m06_couplers_AWLOCK;
  M_AXI_awprot <= m06_couplers_to_m06_couplers_AWPROT;
  M_AXI_awqos <= m06_couplers_to_m06_couplers_AWQOS;
  M_AXI_awregion <= m06_couplers_to_m06_couplers_AWREGION;
  M_AXI_awsize <= m06_couplers_to_m06_couplers_AWSIZE;
  M_AXI_awvalid <= m06_couplers_to_m06_couplers_AWVALID;
  M_AXI_bready <= m06_couplers_to_m06_couplers_BREADY;
  M_AXI_rready <= m06_couplers_to_m06_couplers_RREADY;
  M_AXI_wdata <= m06_couplers_to_m06_couplers_WDATA;
  M_AXI_wlast <= m06_couplers_to_m06_couplers_WLAST;
  M_AXI_wstrb <= m06_couplers_to_m06_couplers_WSTRB;
  M_AXI_wvalid <= m06_couplers_to_m06_couplers_WVALID;
  S_AXI_arready <= m06_couplers_to_m06_couplers_ARREADY;
  S_AXI_awready <= m06_couplers_to_m06_couplers_AWREADY;
  S_AXI_bresp <= m06_couplers_to_m06_couplers_BRESP;
  S_AXI_bvalid <= m06_couplers_to_m06_couplers_BVALID;
  S_AXI_rdata <= m06_couplers_to_m06_couplers_RDATA;
  S_AXI_rlast <= m06_couplers_to_m06_couplers_RLAST;
  S_AXI_rresp <= m06_couplers_to_m06_couplers_RRESP;
  S_AXI_rvalid <= m06_couplers_to_m06_couplers_RVALID;
  S_AXI_wready <= m06_couplers_to_m06_couplers_WREADY;
  m06_couplers_to_m06_couplers_ARADDR <= S_AXI_araddr;
  m06_couplers_to_m06_couplers_ARBURST <= S_AXI_arburst;
  m06_couplers_to_m06_couplers_ARCACHE <= S_AXI_arcache;
  m06_couplers_to_m06_couplers_ARLEN <= S_AXI_arlen;
  m06_couplers_to_m06_couplers_ARLOCK <= S_AXI_arlock;
  m06_couplers_to_m06_couplers_ARPROT <= S_AXI_arprot;
  m06_couplers_to_m06_couplers_ARQOS <= S_AXI_arqos;
  m06_couplers_to_m06_couplers_ARREADY <= M_AXI_arready;
  m06_couplers_to_m06_couplers_ARREGION <= S_AXI_arregion;
  m06_couplers_to_m06_couplers_ARSIZE <= S_AXI_arsize;
  m06_couplers_to_m06_couplers_ARVALID <= S_AXI_arvalid;
  m06_couplers_to_m06_couplers_AWADDR <= S_AXI_awaddr;
  m06_couplers_to_m06_couplers_AWBURST <= S_AXI_awburst;
  m06_couplers_to_m06_couplers_AWCACHE <= S_AXI_awcache;
  m06_couplers_to_m06_couplers_AWLEN <= S_AXI_awlen;
  m06_couplers_to_m06_couplers_AWLOCK <= S_AXI_awlock;
  m06_couplers_to_m06_couplers_AWPROT <= S_AXI_awprot;
  m06_couplers_to_m06_couplers_AWQOS <= S_AXI_awqos;
  m06_couplers_to_m06_couplers_AWREADY <= M_AXI_awready;
  m06_couplers_to_m06_couplers_AWREGION <= S_AXI_awregion;
  m06_couplers_to_m06_couplers_AWSIZE <= S_AXI_awsize;
  m06_couplers_to_m06_couplers_AWVALID <= S_AXI_awvalid;
  m06_couplers_to_m06_couplers_BREADY <= S_AXI_bready;
  m06_couplers_to_m06_couplers_BRESP <= M_AXI_bresp;
  m06_couplers_to_m06_couplers_BVALID <= M_AXI_bvalid;
  m06_couplers_to_m06_couplers_RDATA <= M_AXI_rdata;
  m06_couplers_to_m06_couplers_RLAST <= M_AXI_rlast;
  m06_couplers_to_m06_couplers_RREADY <= S_AXI_rready;
  m06_couplers_to_m06_couplers_RRESP <= M_AXI_rresp;
  m06_couplers_to_m06_couplers_RVALID <= M_AXI_rvalid;
  m06_couplers_to_m06_couplers_WDATA <= S_AXI_wdata;
  m06_couplers_to_m06_couplers_WLAST <= S_AXI_wlast;
  m06_couplers_to_m06_couplers_WREADY <= M_AXI_wready;
  m06_couplers_to_m06_couplers_WSTRB <= S_AXI_wstrb;
  m06_couplers_to_m06_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_11SE3QO is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 12 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_11SE3QO;

architecture STRUCTURE of s00_couplers_imp_11SE3QO is
  component system_auto_pc_3 is
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
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
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
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
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
  end component system_auto_pc_3;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal auto_pc_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal auto_pc_to_s00_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s00_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s00_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(11 downto 0) <= auto_pc_to_s00_couplers_ARID(11 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s00_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s00_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s00_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s00_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s00_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s00_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(11 downto 0) <= auto_pc_to_s00_couplers_AWID(11 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s00_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s00_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s00_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s00_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s00_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BID(12 downto 0) <= M_AXI_bid(12 downto 0);
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RID(12 downto 0) <= M_AXI_rid(12 downto 0);
  auto_pc_to_s00_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_3
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(11 downto 0) => auto_pc_to_s00_couplers_ARID(11 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s00_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s00_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(11 downto 0) => auto_pc_to_s00_couplers_AWID(11 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s00_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s00_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bid(11 downto 0) => auto_pc_to_s00_couplers_BID(11 downto 0),
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rid(11 downto 0) => auto_pc_to_s00_couplers_RID(11 downto 0),
      m_axi_rlast => auto_pc_to_s00_couplers_RLAST,
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s00_couplers_WLAST,
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_QP40NZ is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_QP40NZ;

architecture STRUCTURE of s00_couplers_imp_QP40NZ is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s00_couplers_to_s00_couplers_ARADDR;
  M_AXI_arburst <= s00_couplers_to_s00_couplers_ARBURST;
  M_AXI_arcache <= s00_couplers_to_s00_couplers_ARCACHE;
  M_AXI_arid <= s00_couplers_to_s00_couplers_ARID;
  M_AXI_arlen <= s00_couplers_to_s00_couplers_ARLEN;
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot <= s00_couplers_to_s00_couplers_ARPROT;
  M_AXI_arqos <= s00_couplers_to_s00_couplers_ARQOS;
  M_AXI_arsize <= s00_couplers_to_s00_couplers_ARSIZE;
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr <= s00_couplers_to_s00_couplers_AWADDR;
  M_AXI_awburst <= s00_couplers_to_s00_couplers_AWBURST;
  M_AXI_awcache <= s00_couplers_to_s00_couplers_AWCACHE;
  M_AXI_awid <= s00_couplers_to_s00_couplers_AWID;
  M_AXI_awlen <= s00_couplers_to_s00_couplers_AWLEN;
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot <= s00_couplers_to_s00_couplers_AWPROT;
  M_AXI_awqos <= s00_couplers_to_s00_couplers_AWQOS;
  M_AXI_awsize <= s00_couplers_to_s00_couplers_AWSIZE;
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata <= s00_couplers_to_s00_couplers_WDATA;
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb <= s00_couplers_to_s00_couplers_WSTRB;
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bid <= s00_couplers_to_s00_couplers_BID;
  S_AXI_bresp <= s00_couplers_to_s00_couplers_BRESP;
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata <= s00_couplers_to_s00_couplers_RDATA;
  S_AXI_rid <= s00_couplers_to_s00_couplers_RID;
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp <= s00_couplers_to_s00_couplers_RRESP;
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR <= S_AXI_araddr;
  s00_couplers_to_s00_couplers_ARBURST <= S_AXI_arburst;
  s00_couplers_to_s00_couplers_ARCACHE <= S_AXI_arcache;
  s00_couplers_to_s00_couplers_ARID <= S_AXI_arid;
  s00_couplers_to_s00_couplers_ARLEN <= S_AXI_arlen;
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT <= S_AXI_arprot;
  s00_couplers_to_s00_couplers_ARQOS <= S_AXI_arqos;
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE <= S_AXI_arsize;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR <= S_AXI_awaddr;
  s00_couplers_to_s00_couplers_AWBURST <= S_AXI_awburst;
  s00_couplers_to_s00_couplers_AWCACHE <= S_AXI_awcache;
  s00_couplers_to_s00_couplers_AWID <= S_AXI_awid;
  s00_couplers_to_s00_couplers_AWLEN <= S_AXI_awlen;
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT <= S_AXI_awprot;
  s00_couplers_to_s00_couplers_AWQOS <= S_AXI_awqos;
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE <= S_AXI_awsize;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BID <= M_AXI_bid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP <= M_AXI_bresp;
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA <= M_AXI_rdata;
  s00_couplers_to_s00_couplers_RID <= M_AXI_rid;
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP <= M_AXI_rresp;
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA <= S_AXI_wdata;
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB <= S_AXI_wstrb;
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_1L8TOEM is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_1L8TOEM;

architecture STRUCTURE of s01_couplers_imp_1L8TOEM is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s01_couplers_to_s01_couplers_ARADDR;
  M_AXI_arburst <= s01_couplers_to_s01_couplers_ARBURST;
  M_AXI_arcache <= s01_couplers_to_s01_couplers_ARCACHE;
  M_AXI_arid <= s01_couplers_to_s01_couplers_ARID;
  M_AXI_arlen <= s01_couplers_to_s01_couplers_ARLEN;
  M_AXI_arlock <= s01_couplers_to_s01_couplers_ARLOCK;
  M_AXI_arprot <= s01_couplers_to_s01_couplers_ARPROT;
  M_AXI_arqos <= s01_couplers_to_s01_couplers_ARQOS;
  M_AXI_arsize <= s01_couplers_to_s01_couplers_ARSIZE;
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr <= s01_couplers_to_s01_couplers_AWADDR;
  M_AXI_awburst <= s01_couplers_to_s01_couplers_AWBURST;
  M_AXI_awcache <= s01_couplers_to_s01_couplers_AWCACHE;
  M_AXI_awid <= s01_couplers_to_s01_couplers_AWID;
  M_AXI_awlen <= s01_couplers_to_s01_couplers_AWLEN;
  M_AXI_awlock <= s01_couplers_to_s01_couplers_AWLOCK;
  M_AXI_awprot <= s01_couplers_to_s01_couplers_AWPROT;
  M_AXI_awqos <= s01_couplers_to_s01_couplers_AWQOS;
  M_AXI_awsize <= s01_couplers_to_s01_couplers_AWSIZE;
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata <= s01_couplers_to_s01_couplers_WDATA;
  M_AXI_wlast <= s01_couplers_to_s01_couplers_WLAST;
  M_AXI_wstrb <= s01_couplers_to_s01_couplers_WSTRB;
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bid <= s01_couplers_to_s01_couplers_BID;
  S_AXI_bresp <= s01_couplers_to_s01_couplers_BRESP;
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata <= s01_couplers_to_s01_couplers_RDATA;
  S_AXI_rid <= s01_couplers_to_s01_couplers_RID;
  S_AXI_rlast <= s01_couplers_to_s01_couplers_RLAST;
  S_AXI_rresp <= s01_couplers_to_s01_couplers_RRESP;
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR <= S_AXI_araddr;
  s01_couplers_to_s01_couplers_ARBURST <= S_AXI_arburst;
  s01_couplers_to_s01_couplers_ARCACHE <= S_AXI_arcache;
  s01_couplers_to_s01_couplers_ARID <= S_AXI_arid;
  s01_couplers_to_s01_couplers_ARLEN <= S_AXI_arlen;
  s01_couplers_to_s01_couplers_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_s01_couplers_ARPROT <= S_AXI_arprot;
  s01_couplers_to_s01_couplers_ARQOS <= S_AXI_arqos;
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARSIZE <= S_AXI_arsize;
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR <= S_AXI_awaddr;
  s01_couplers_to_s01_couplers_AWBURST <= S_AXI_awburst;
  s01_couplers_to_s01_couplers_AWCACHE <= S_AXI_awcache;
  s01_couplers_to_s01_couplers_AWID <= S_AXI_awid;
  s01_couplers_to_s01_couplers_AWLEN <= S_AXI_awlen;
  s01_couplers_to_s01_couplers_AWLOCK <= S_AXI_awlock;
  s01_couplers_to_s01_couplers_AWPROT <= S_AXI_awprot;
  s01_couplers_to_s01_couplers_AWQOS <= S_AXI_awqos;
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWSIZE <= S_AXI_awsize;
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BID <= M_AXI_bid;
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP <= M_AXI_bresp;
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA <= M_AXI_rdata;
  s01_couplers_to_s01_couplers_RID <= M_AXI_rid;
  s01_couplers_to_s01_couplers_RLAST <= M_AXI_rlast;
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP <= M_AXI_rresp;
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA <= S_AXI_wdata;
  s01_couplers_to_s01_couplers_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB <= S_AXI_wstrb;
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s01_couplers_imp_AN2PCX is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s01_couplers_imp_AN2PCX;

architecture STRUCTURE of s01_couplers_imp_AN2PCX is
  signal s01_couplers_to_s01_couplers_ARADDR : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARBURST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARCACHE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARLEN : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARPROT : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARQOS : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARSIZE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_ARVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWADDR : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWBURST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWCACHE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWLEN : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWPROT : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWQOS : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWSIZE : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_AWVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BRESP : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_BVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RDATA : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RRESP : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_RVALID : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WDATA : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WLAST : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WREADY : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WSTRB : STD_LOGIC;
  signal s01_couplers_to_s01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s01_couplers_to_s01_couplers_ARADDR;
  M_AXI_arburst <= s01_couplers_to_s01_couplers_ARBURST;
  M_AXI_arcache <= s01_couplers_to_s01_couplers_ARCACHE;
  M_AXI_arid <= s01_couplers_to_s01_couplers_ARID;
  M_AXI_arlen <= s01_couplers_to_s01_couplers_ARLEN;
  M_AXI_arlock <= s01_couplers_to_s01_couplers_ARLOCK;
  M_AXI_arprot <= s01_couplers_to_s01_couplers_ARPROT;
  M_AXI_arqos <= s01_couplers_to_s01_couplers_ARQOS;
  M_AXI_arsize <= s01_couplers_to_s01_couplers_ARSIZE;
  M_AXI_arvalid <= s01_couplers_to_s01_couplers_ARVALID;
  M_AXI_awaddr <= s01_couplers_to_s01_couplers_AWADDR;
  M_AXI_awburst <= s01_couplers_to_s01_couplers_AWBURST;
  M_AXI_awcache <= s01_couplers_to_s01_couplers_AWCACHE;
  M_AXI_awid <= s01_couplers_to_s01_couplers_AWID;
  M_AXI_awlen <= s01_couplers_to_s01_couplers_AWLEN;
  M_AXI_awlock <= s01_couplers_to_s01_couplers_AWLOCK;
  M_AXI_awprot <= s01_couplers_to_s01_couplers_AWPROT;
  M_AXI_awqos <= s01_couplers_to_s01_couplers_AWQOS;
  M_AXI_awsize <= s01_couplers_to_s01_couplers_AWSIZE;
  M_AXI_awvalid <= s01_couplers_to_s01_couplers_AWVALID;
  M_AXI_bready <= s01_couplers_to_s01_couplers_BREADY;
  M_AXI_rready <= s01_couplers_to_s01_couplers_RREADY;
  M_AXI_wdata <= s01_couplers_to_s01_couplers_WDATA;
  M_AXI_wlast <= s01_couplers_to_s01_couplers_WLAST;
  M_AXI_wstrb <= s01_couplers_to_s01_couplers_WSTRB;
  M_AXI_wvalid <= s01_couplers_to_s01_couplers_WVALID;
  S_AXI_arready <= s01_couplers_to_s01_couplers_ARREADY;
  S_AXI_awready <= s01_couplers_to_s01_couplers_AWREADY;
  S_AXI_bid <= s01_couplers_to_s01_couplers_BID;
  S_AXI_bresp <= s01_couplers_to_s01_couplers_BRESP;
  S_AXI_bvalid <= s01_couplers_to_s01_couplers_BVALID;
  S_AXI_rdata <= s01_couplers_to_s01_couplers_RDATA;
  S_AXI_rid <= s01_couplers_to_s01_couplers_RID;
  S_AXI_rlast <= s01_couplers_to_s01_couplers_RLAST;
  S_AXI_rresp <= s01_couplers_to_s01_couplers_RRESP;
  S_AXI_rvalid <= s01_couplers_to_s01_couplers_RVALID;
  S_AXI_wready <= s01_couplers_to_s01_couplers_WREADY;
  s01_couplers_to_s01_couplers_ARADDR <= S_AXI_araddr;
  s01_couplers_to_s01_couplers_ARBURST <= S_AXI_arburst;
  s01_couplers_to_s01_couplers_ARCACHE <= S_AXI_arcache;
  s01_couplers_to_s01_couplers_ARID <= S_AXI_arid;
  s01_couplers_to_s01_couplers_ARLEN <= S_AXI_arlen;
  s01_couplers_to_s01_couplers_ARLOCK <= S_AXI_arlock;
  s01_couplers_to_s01_couplers_ARPROT <= S_AXI_arprot;
  s01_couplers_to_s01_couplers_ARQOS <= S_AXI_arqos;
  s01_couplers_to_s01_couplers_ARREADY <= M_AXI_arready;
  s01_couplers_to_s01_couplers_ARSIZE <= S_AXI_arsize;
  s01_couplers_to_s01_couplers_ARVALID <= S_AXI_arvalid;
  s01_couplers_to_s01_couplers_AWADDR <= S_AXI_awaddr;
  s01_couplers_to_s01_couplers_AWBURST <= S_AXI_awburst;
  s01_couplers_to_s01_couplers_AWCACHE <= S_AXI_awcache;
  s01_couplers_to_s01_couplers_AWID <= S_AXI_awid;
  s01_couplers_to_s01_couplers_AWLEN <= S_AXI_awlen;
  s01_couplers_to_s01_couplers_AWLOCK <= S_AXI_awlock;
  s01_couplers_to_s01_couplers_AWPROT <= S_AXI_awprot;
  s01_couplers_to_s01_couplers_AWQOS <= S_AXI_awqos;
  s01_couplers_to_s01_couplers_AWREADY <= M_AXI_awready;
  s01_couplers_to_s01_couplers_AWSIZE <= S_AXI_awsize;
  s01_couplers_to_s01_couplers_AWVALID <= S_AXI_awvalid;
  s01_couplers_to_s01_couplers_BID <= M_AXI_bid;
  s01_couplers_to_s01_couplers_BREADY <= S_AXI_bready;
  s01_couplers_to_s01_couplers_BRESP <= M_AXI_bresp;
  s01_couplers_to_s01_couplers_BVALID <= M_AXI_bvalid;
  s01_couplers_to_s01_couplers_RDATA <= M_AXI_rdata;
  s01_couplers_to_s01_couplers_RID <= M_AXI_rid;
  s01_couplers_to_s01_couplers_RLAST <= M_AXI_rlast;
  s01_couplers_to_s01_couplers_RREADY <= S_AXI_rready;
  s01_couplers_to_s01_couplers_RRESP <= M_AXI_rresp;
  s01_couplers_to_s01_couplers_RVALID <= M_AXI_rvalid;
  s01_couplers_to_s01_couplers_WDATA <= S_AXI_wdata;
  s01_couplers_to_s01_couplers_WLAST <= S_AXI_wlast;
  s01_couplers_to_s01_couplers_WREADY <= M_AXI_wready;
  s01_couplers_to_s01_couplers_WSTRB <= S_AXI_wstrb;
  s01_couplers_to_s01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s02_couplers_imp_1S9BUIK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s02_couplers_imp_1S9BUIK;

architecture STRUCTURE of s02_couplers_imp_1S9BUIK is
  component system_auto_pc_9 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_9;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s02_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s02_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s02_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s02_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s02_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s02_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s02_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s02_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s02_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s02_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s02_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s02_couplers_WLAST : STD_LOGIC;
  signal auto_pc_to_s02_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s02_couplers_WVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s02_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s02_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_auto_pc_WVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_auto_pc_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s02_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s02_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s02_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s02_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s02_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s02_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s02_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s02_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s02_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s02_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= auto_pc_to_s02_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= auto_pc_to_s02_couplers_AWCACHE(3 downto 0);
  M_AXI_awlen(7 downto 0) <= auto_pc_to_s02_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= auto_pc_to_s02_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s02_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= auto_pc_to_s02_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= auto_pc_to_s02_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s02_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s02_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s02_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s02_couplers_WDATA(31 downto 0);
  M_AXI_wlast <= auto_pc_to_s02_couplers_WLAST;
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s02_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s02_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s02_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s02_couplers_to_auto_pc_AWREADY;
  S_AXI_bresp(1 downto 0) <= s02_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s02_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s02_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s02_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s02_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s02_couplers_to_auto_pc_WREADY;
  auto_pc_to_s02_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s02_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s02_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s02_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s02_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s02_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s02_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s02_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s02_couplers_WREADY <= M_AXI_wready;
  s02_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s02_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s02_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s02_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s02_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s02_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s02_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s02_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s02_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s02_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s02_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component system_auto_pc_9
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s02_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s02_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s02_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s02_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s02_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s02_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s02_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s02_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s02_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s02_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s02_couplers_AWADDR(31 downto 0),
      m_axi_awburst(1 downto 0) => auto_pc_to_s02_couplers_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_pc_to_s02_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_pc_to_s02_couplers_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_pc_to_s02_couplers_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s02_couplers_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_pc_to_s02_couplers_AWQOS(3 downto 0),
      m_axi_awready => auto_pc_to_s02_couplers_AWREADY,
      m_axi_awregion(3 downto 0) => NLW_auto_pc_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_pc_to_s02_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_pc_to_s02_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s02_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s02_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s02_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s02_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s02_couplers_RLAST,
      m_axi_rready => auto_pc_to_s02_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s02_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s02_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s02_couplers_WDATA(31 downto 0),
      m_axi_wlast => auto_pc_to_s02_couplers_WLAST,
      m_axi_wready => auto_pc_to_s02_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s02_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s02_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s02_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s02_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s02_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s02_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s02_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s02_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awready => s02_couplers_to_auto_pc_AWREADY,
      s_axi_awvalid => s02_couplers_to_auto_pc_AWVALID,
      s_axi_bready => s02_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s02_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s02_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s02_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s02_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s02_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s02_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s02_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wready => s02_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s02_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s02_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s03_couplers_imp_KIK8FH is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC
  );
end s03_couplers_imp_KIK8FH;

architecture STRUCTURE of s03_couplers_imp_KIK8FH is
  component system_auto_pc_10 is
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
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component system_auto_pc_10;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s03_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_pc_to_s03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_pc_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s03_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s03_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s03_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s03_couplers_RLAST : STD_LOGIC;
  signal auto_pc_to_s03_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s03_couplers_RVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s03_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s03_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal NLW_auto_pc_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s03_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= auto_pc_to_s03_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= auto_pc_to_s03_couplers_ARCACHE(3 downto 0);
  M_AXI_arlen(7 downto 0) <= auto_pc_to_s03_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= auto_pc_to_s03_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s03_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= auto_pc_to_s03_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= auto_pc_to_s03_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s03_couplers_ARVALID;
  M_AXI_rready <= auto_pc_to_s03_couplers_RREADY;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s03_couplers_to_auto_pc_ARREADY;
  S_AXI_rdata(31 downto 0) <= s03_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= s03_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s03_couplers_to_auto_pc_RVALID;
  auto_pc_to_s03_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s03_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s03_couplers_RLAST <= M_AXI_rlast;
  auto_pc_to_s03_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s03_couplers_RVALID <= M_AXI_rvalid;
  s03_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s03_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s03_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s03_couplers_to_auto_pc_RREADY <= S_AXI_rready;
auto_pc: component system_auto_pc_10
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s03_couplers_ARADDR(31 downto 0),
      m_axi_arburst(1 downto 0) => auto_pc_to_s03_couplers_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_pc_to_s03_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_pc_to_s03_couplers_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_pc_to_s03_couplers_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s03_couplers_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_pc_to_s03_couplers_ARQOS(3 downto 0),
      m_axi_arready => auto_pc_to_s03_couplers_ARREADY,
      m_axi_arregion(3 downto 0) => NLW_auto_pc_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_pc_to_s03_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_pc_to_s03_couplers_ARVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s03_couplers_RDATA(31 downto 0),
      m_axi_rlast => auto_pc_to_s03_couplers_RLAST,
      m_axi_rready => auto_pc_to_s03_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s03_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s03_couplers_RVALID,
      s_axi_araddr(31 downto 0) => s03_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s03_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arready => s03_couplers_to_auto_pc_ARREADY,
      s_axi_arvalid => s03_couplers_to_auto_pc_ARVALID,
      s_axi_rdata(31 downto 0) => s03_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rready => s03_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s03_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s03_couplers_to_auto_pc_RVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s04_couplers_imp_1DYC6HK is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end s04_couplers_imp_1DYC6HK;

architecture STRUCTURE of s04_couplers_imp_1DYC6HK is
  signal s04_couplers_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_s04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_s04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_s04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_s04_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_s04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= s04_couplers_to_s04_couplers_ARADDR(31 downto 0);
  M_AXI_arburst(1 downto 0) <= s04_couplers_to_s04_couplers_ARBURST(1 downto 0);
  M_AXI_arcache(3 downto 0) <= s04_couplers_to_s04_couplers_ARCACHE(3 downto 0);
  M_AXI_arid(0) <= s04_couplers_to_s04_couplers_ARID(0);
  M_AXI_arlen(7 downto 0) <= s04_couplers_to_s04_couplers_ARLEN(7 downto 0);
  M_AXI_arlock(0) <= s04_couplers_to_s04_couplers_ARLOCK(0);
  M_AXI_arprot(2 downto 0) <= s04_couplers_to_s04_couplers_ARPROT(2 downto 0);
  M_AXI_arqos(3 downto 0) <= s04_couplers_to_s04_couplers_ARQOS(3 downto 0);
  M_AXI_arsize(2 downto 0) <= s04_couplers_to_s04_couplers_ARSIZE(2 downto 0);
  M_AXI_arvalid(0) <= s04_couplers_to_s04_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= s04_couplers_to_s04_couplers_AWADDR(31 downto 0);
  M_AXI_awburst(1 downto 0) <= s04_couplers_to_s04_couplers_AWBURST(1 downto 0);
  M_AXI_awcache(3 downto 0) <= s04_couplers_to_s04_couplers_AWCACHE(3 downto 0);
  M_AXI_awid(0) <= s04_couplers_to_s04_couplers_AWID(0);
  M_AXI_awlen(7 downto 0) <= s04_couplers_to_s04_couplers_AWLEN(7 downto 0);
  M_AXI_awlock(0) <= s04_couplers_to_s04_couplers_AWLOCK(0);
  M_AXI_awprot(2 downto 0) <= s04_couplers_to_s04_couplers_AWPROT(2 downto 0);
  M_AXI_awqos(3 downto 0) <= s04_couplers_to_s04_couplers_AWQOS(3 downto 0);
  M_AXI_awsize(2 downto 0) <= s04_couplers_to_s04_couplers_AWSIZE(2 downto 0);
  M_AXI_awvalid(0) <= s04_couplers_to_s04_couplers_AWVALID(0);
  M_AXI_bready(0) <= s04_couplers_to_s04_couplers_BREADY(0);
  M_AXI_rready(0) <= s04_couplers_to_s04_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= s04_couplers_to_s04_couplers_WDATA(31 downto 0);
  M_AXI_wlast(0) <= s04_couplers_to_s04_couplers_WLAST(0);
  M_AXI_wstrb(3 downto 0) <= s04_couplers_to_s04_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= s04_couplers_to_s04_couplers_WVALID(0);
  S_AXI_arready(0) <= s04_couplers_to_s04_couplers_ARREADY(0);
  S_AXI_awready(0) <= s04_couplers_to_s04_couplers_AWREADY(0);
  S_AXI_bid(2 downto 0) <= s04_couplers_to_s04_couplers_BID(2 downto 0);
  S_AXI_bresp(1 downto 0) <= s04_couplers_to_s04_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= s04_couplers_to_s04_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= s04_couplers_to_s04_couplers_RDATA(31 downto 0);
  S_AXI_rid(2 downto 0) <= s04_couplers_to_s04_couplers_RID(2 downto 0);
  S_AXI_rlast(0) <= s04_couplers_to_s04_couplers_RLAST(0);
  S_AXI_rresp(1 downto 0) <= s04_couplers_to_s04_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= s04_couplers_to_s04_couplers_RVALID(0);
  S_AXI_wready(0) <= s04_couplers_to_s04_couplers_WREADY(0);
  s04_couplers_to_s04_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s04_couplers_to_s04_couplers_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s04_couplers_to_s04_couplers_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s04_couplers_to_s04_couplers_ARID(0) <= S_AXI_arid(0);
  s04_couplers_to_s04_couplers_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s04_couplers_to_s04_couplers_ARLOCK(0) <= S_AXI_arlock(0);
  s04_couplers_to_s04_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s04_couplers_to_s04_couplers_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s04_couplers_to_s04_couplers_ARREADY(0) <= M_AXI_arready(0);
  s04_couplers_to_s04_couplers_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s04_couplers_to_s04_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  s04_couplers_to_s04_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s04_couplers_to_s04_couplers_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s04_couplers_to_s04_couplers_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s04_couplers_to_s04_couplers_AWID(0) <= S_AXI_awid(0);
  s04_couplers_to_s04_couplers_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s04_couplers_to_s04_couplers_AWLOCK(0) <= S_AXI_awlock(0);
  s04_couplers_to_s04_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s04_couplers_to_s04_couplers_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s04_couplers_to_s04_couplers_AWREADY(0) <= M_AXI_awready(0);
  s04_couplers_to_s04_couplers_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s04_couplers_to_s04_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  s04_couplers_to_s04_couplers_BID(2 downto 0) <= M_AXI_bid(2 downto 0);
  s04_couplers_to_s04_couplers_BREADY(0) <= S_AXI_bready(0);
  s04_couplers_to_s04_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  s04_couplers_to_s04_couplers_BVALID(0) <= M_AXI_bvalid(0);
  s04_couplers_to_s04_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  s04_couplers_to_s04_couplers_RID(2 downto 0) <= M_AXI_rid(2 downto 0);
  s04_couplers_to_s04_couplers_RLAST(0) <= M_AXI_rlast(0);
  s04_couplers_to_s04_couplers_RREADY(0) <= S_AXI_rready(0);
  s04_couplers_to_s04_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  s04_couplers_to_s04_couplers_RVALID(0) <= M_AXI_rvalid(0);
  s04_couplers_to_s04_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s04_couplers_to_s04_couplers_WLAST(0) <= S_AXI_wlast(0);
  s04_couplers_to_s04_couplers_WREADY(0) <= M_AXI_wready(0);
  s04_couplers_to_s04_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s04_couplers_to_s04_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_interconnect_0_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arlock : out STD_LOGIC;
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awlock : out STD_LOGIC;
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_arlock : out STD_LOGIC;
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M05_AXI_awlock : out STD_LOGIC;
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_rlast : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wlast : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC;
    S00_AXI_arburst : in STD_LOGIC;
    S00_AXI_arcache : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC;
    S00_AXI_arlen : in STD_LOGIC;
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC;
    S00_AXI_arqos : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC;
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC;
    S00_AXI_awburst : in STD_LOGIC;
    S00_AXI_awcache : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC;
    S00_AXI_awlen : in STD_LOGIC;
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC;
    S00_AXI_awqos : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC;
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC;
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC;
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC;
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC;
    S01_AXI_arburst : in STD_LOGIC;
    S01_AXI_arcache : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC;
    S01_AXI_arlen : in STD_LOGIC;
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC;
    S01_AXI_arqos : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC;
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC;
    S01_AXI_awburst : in STD_LOGIC;
    S01_AXI_awcache : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC;
    S01_AXI_awlen : in STD_LOGIC;
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awprot : in STD_LOGIC;
    S01_AXI_awqos : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC;
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC;
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC;
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC;
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S02_ACLK : in STD_LOGIC;
    S02_ARESETN : in STD_LOGIC;
    S02_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_arready : out STD_LOGIC;
    S02_AXI_arvalid : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_rready : in STD_LOGIC;
    S02_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_rvalid : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wvalid : in STD_LOGIC;
    S03_ACLK : in STD_LOGIC;
    S03_ARESETN : in STD_LOGIC;
    S03_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S03_AXI_arready : out STD_LOGIC;
    S03_AXI_arvalid : in STD_LOGIC;
    S03_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S03_AXI_rready : in STD_LOGIC;
    S03_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S03_AXI_rvalid : out STD_LOGIC;
    S04_ACLK : in STD_LOGIC;
    S04_ARESETN : in STD_LOGIC;
    S04_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S04_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S04_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S04_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S04_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S04_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S04_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end system_axi_interconnect_0_0;

architecture STRUCTURE of system_axi_interconnect_0_0 is
  component system_xbar_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 19 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 159 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component system_xbar_1;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal S02_ACLK_1 : STD_LOGIC;
  signal S02_ARESETN_1 : STD_LOGIC;
  signal S03_ACLK_1 : STD_LOGIC;
  signal S03_ARESETN_1 : STD_LOGIC;
  signal S04_ACLK_1 : STD_LOGIC;
  signal S04_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_RLAST : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_WLAST : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m00_couplers_to_mb_axi_mem_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m01_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARLOCK : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWLOCK : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_RLAST : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_WLAST : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m02_couplers_to_mb_axi_mem_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m02_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m03_couplers_to_mb_axi_mem_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m04_couplers_to_mb_axi_mem_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m04_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARLOCK : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWLOCK : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_RLAST : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_WLAST : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m05_couplers_to_mb_axi_mem_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_ARREADY : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_ARVALID : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_AWREADY : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_AWVALID : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_BREADY : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_BVALID : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_RREADY : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_RVALID : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_WREADY : STD_LOGIC;
  signal m06_couplers_to_mb_axi_mem_interconnect_0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m06_couplers_to_mb_axi_mem_interconnect_0_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_ACLK_net : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_ARESETN_net : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARADDR : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARBURST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARLEN : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARPROT : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARQOS : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWADDR : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWBURST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWLEN : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWPROT : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWQOS : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_BID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_BRESP : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_RDATA : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_RID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_RLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_RRESP : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_WDATA : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_WLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_WSTRB : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s00_couplers_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARADDR : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARBURST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARCACHE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARLEN : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARPROT : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARQOS : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARSIZE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWADDR : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWBURST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWCACHE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWLEN : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWPROT : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWQOS : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWSIZE : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_BID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_BRESP : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_RDATA : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_RID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_RLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_RRESP : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_WDATA : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_WLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_WSTRB : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s01_couplers_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s02_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s02_couplers_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s03_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s03_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s03_couplers_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s03_couplers_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s03_couplers_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s03_couplers_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_to_s04_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_xbar_ARID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_xbar_AWID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s01_couplers_to_xbar_ARID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s01_couplers_to_xbar_AWID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s02_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s02_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s02_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s02_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s02_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal s02_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s02_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal s02_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s02_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s02_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s03_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s03_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s03_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s03_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s03_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s03_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s03_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal s03_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s03_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s03_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal s03_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal s04_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s04_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s04_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s04_couplers_to_xbar_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal s04_couplers_to_xbar_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal s04_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal s04_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal s04_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s04_couplers_to_xbar_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s04_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal s04_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s04_couplers_to_xbar_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWID : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWQOS : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWREGION : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARID : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWID : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m02_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_ARCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARID : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_ARLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_ARPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_ARSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWBURST : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal xbar_to_m04_couplers_AWCACHE : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWID : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWLEN : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal xbar_to_m04_couplers_AWLOCK : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWPROT : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWQOS : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWREGION : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_AWSIZE : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m04_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m04_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WLAST : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARID : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWID : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARID : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWID : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m06_couplers_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 23 downto 8 );
  signal NLW_xbar_s_axi_awready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xbar_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal NLW_xbar_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_xbar_s_axi_bvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_xbar_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 6 );
  signal NLW_xbar_s_axi_wready_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M00_AXI_arburst(1 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARBURST(1 downto 0);
  M00_AXI_arcache(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARCACHE(3 downto 0);
  M00_AXI_arid(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARID(2 downto 0);
  M00_AXI_arlen(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARLEN(3 downto 0);
  M00_AXI_arlock(1 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARLOCK(1 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0);
  M00_AXI_arqos(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARQOS(3 downto 0);
  M00_AXI_arsize(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_ARSIZE(2 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M00_AXI_awburst(1 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWBURST(1 downto 0);
  M00_AXI_awcache(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWCACHE(3 downto 0);
  M00_AXI_awid(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWID(2 downto 0);
  M00_AXI_awlen(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWLEN(3 downto 0);
  M00_AXI_awlock(1 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWLOCK(1 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0);
  M00_AXI_awqos(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWQOS(3 downto 0);
  M00_AXI_awsize(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_AWSIZE(2 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M00_AXI_bready <= m00_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M00_AXI_rready <= m00_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M00_AXI_wid(2 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_WID(2 downto 0);
  M00_AXI_wlast <= m00_couplers_to_mb_axi_mem_interconnect_0_WLAST;
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M01_AXI_bready <= m01_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M01_AXI_rready <= m01_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr(31 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M02_AXI_arburst(1 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARBURST(1 downto 0);
  M02_AXI_arcache(3 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARCACHE(3 downto 0);
  M02_AXI_arid(2 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARID(2 downto 0);
  M02_AXI_arlen(7 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARLEN(7 downto 0);
  M02_AXI_arlock <= m02_couplers_to_mb_axi_mem_interconnect_0_ARLOCK;
  M02_AXI_arprot(2 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0);
  M02_AXI_arsize(2 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_ARSIZE(2 downto 0);
  M02_AXI_arvalid <= m02_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M02_AXI_awaddr(31 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M02_AXI_awburst(1 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWBURST(1 downto 0);
  M02_AXI_awcache(3 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWCACHE(3 downto 0);
  M02_AXI_awid(2 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWID(2 downto 0);
  M02_AXI_awlen(7 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWLEN(7 downto 0);
  M02_AXI_awlock <= m02_couplers_to_mb_axi_mem_interconnect_0_AWLOCK;
  M02_AXI_awprot(2 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0);
  M02_AXI_awsize(2 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_AWSIZE(2 downto 0);
  M02_AXI_awvalid <= m02_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M02_AXI_bready <= m02_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M02_AXI_rready <= m02_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M02_AXI_wdata(31 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M02_AXI_wlast <= m02_couplers_to_mb_axi_mem_interconnect_0_WLAST;
  M02_AXI_wstrb(3 downto 0) <= m02_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0);
  M02_AXI_wvalid <= m02_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M03_AXI_bready <= m03_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M03_AXI_rready <= m03_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31 downto 0) <= m04_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M04_AXI_arprot(2 downto 0) <= m04_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0);
  M04_AXI_arvalid <= m04_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M04_AXI_awaddr(31 downto 0) <= m04_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M04_AXI_awprot(2 downto 0) <= m04_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0);
  M04_AXI_awvalid <= m04_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M04_AXI_bready <= m04_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M04_AXI_rready <= m04_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M04_AXI_wdata(31 downto 0) <= m04_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M04_AXI_wstrb(3 downto 0) <= m04_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0);
  M04_AXI_wvalid <= m04_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M05_AXI_arburst(1 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARBURST(1 downto 0);
  M05_AXI_arcache(3 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARCACHE(3 downto 0);
  M05_AXI_arid(2 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARID(2 downto 0);
  M05_AXI_arlen(7 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARLEN(7 downto 0);
  M05_AXI_arlock <= m05_couplers_to_mb_axi_mem_interconnect_0_ARLOCK;
  M05_AXI_arprot(2 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0);
  M05_AXI_arsize(2 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_ARSIZE(2 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M05_AXI_awburst(1 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWBURST(1 downto 0);
  M05_AXI_awcache(3 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWCACHE(3 downto 0);
  M05_AXI_awid(2 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWID(2 downto 0);
  M05_AXI_awlen(7 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWLEN(7 downto 0);
  M05_AXI_awlock <= m05_couplers_to_mb_axi_mem_interconnect_0_AWLOCK;
  M05_AXI_awprot(2 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0);
  M05_AXI_awsize(2 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_AWSIZE(2 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M05_AXI_bready <= m05_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M05_AXI_rready <= m05_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M05_AXI_wlast <= m05_couplers_to_mb_axi_mem_interconnect_0_WLAST;
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr(31 downto 0) <= m06_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0);
  M06_AXI_arvalid <= m06_couplers_to_mb_axi_mem_interconnect_0_ARVALID;
  M06_AXI_awaddr(31 downto 0) <= m06_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0);
  M06_AXI_awvalid <= m06_couplers_to_mb_axi_mem_interconnect_0_AWVALID;
  M06_AXI_bready <= m06_couplers_to_mb_axi_mem_interconnect_0_BREADY;
  M06_AXI_rready <= m06_couplers_to_mb_axi_mem_interconnect_0_RREADY;
  M06_AXI_wdata(31 downto 0) <= m06_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0);
  M06_AXI_wstrb(3 downto 0) <= m06_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0);
  M06_AXI_wvalid <= m06_couplers_to_mb_axi_mem_interconnect_0_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= mb_axi_mem_interconnect_0_to_s00_couplers_ARREADY;
  S00_AXI_awready <= mb_axi_mem_interconnect_0_to_s00_couplers_AWREADY;
  S00_AXI_bid <= mb_axi_mem_interconnect_0_to_s00_couplers_BID;
  S00_AXI_bresp <= mb_axi_mem_interconnect_0_to_s00_couplers_BRESP;
  S00_AXI_bvalid <= mb_axi_mem_interconnect_0_to_s00_couplers_BVALID;
  S00_AXI_rdata <= mb_axi_mem_interconnect_0_to_s00_couplers_RDATA;
  S00_AXI_rid <= mb_axi_mem_interconnect_0_to_s00_couplers_RID;
  S00_AXI_rlast <= mb_axi_mem_interconnect_0_to_s00_couplers_RLAST;
  S00_AXI_rresp <= mb_axi_mem_interconnect_0_to_s00_couplers_RRESP;
  S00_AXI_rvalid <= mb_axi_mem_interconnect_0_to_s00_couplers_RVALID;
  S00_AXI_wready <= mb_axi_mem_interconnect_0_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= mb_axi_mem_interconnect_0_to_s01_couplers_ARREADY;
  S01_AXI_awready <= mb_axi_mem_interconnect_0_to_s01_couplers_AWREADY;
  S01_AXI_bid <= mb_axi_mem_interconnect_0_to_s01_couplers_BID;
  S01_AXI_bresp <= mb_axi_mem_interconnect_0_to_s01_couplers_BRESP;
  S01_AXI_bvalid <= mb_axi_mem_interconnect_0_to_s01_couplers_BVALID;
  S01_AXI_rdata <= mb_axi_mem_interconnect_0_to_s01_couplers_RDATA;
  S01_AXI_rid <= mb_axi_mem_interconnect_0_to_s01_couplers_RID;
  S01_AXI_rlast <= mb_axi_mem_interconnect_0_to_s01_couplers_RLAST;
  S01_AXI_rresp <= mb_axi_mem_interconnect_0_to_s01_couplers_RRESP;
  S01_AXI_rvalid <= mb_axi_mem_interconnect_0_to_s01_couplers_RVALID;
  S01_AXI_wready <= mb_axi_mem_interconnect_0_to_s01_couplers_WREADY;
  S02_ACLK_1 <= S02_ACLK;
  S02_ARESETN_1 <= S02_ARESETN;
  S02_AXI_arready <= mb_axi_mem_interconnect_0_to_s02_couplers_ARREADY;
  S02_AXI_awready <= mb_axi_mem_interconnect_0_to_s02_couplers_AWREADY;
  S02_AXI_bresp(1 downto 0) <= mb_axi_mem_interconnect_0_to_s02_couplers_BRESP(1 downto 0);
  S02_AXI_bvalid <= mb_axi_mem_interconnect_0_to_s02_couplers_BVALID;
  S02_AXI_rdata(31 downto 0) <= mb_axi_mem_interconnect_0_to_s02_couplers_RDATA(31 downto 0);
  S02_AXI_rresp(1 downto 0) <= mb_axi_mem_interconnect_0_to_s02_couplers_RRESP(1 downto 0);
  S02_AXI_rvalid <= mb_axi_mem_interconnect_0_to_s02_couplers_RVALID;
  S02_AXI_wready <= mb_axi_mem_interconnect_0_to_s02_couplers_WREADY;
  S03_ACLK_1 <= S03_ACLK;
  S03_ARESETN_1 <= S03_ARESETN;
  S03_AXI_arready <= mb_axi_mem_interconnect_0_to_s03_couplers_ARREADY;
  S03_AXI_rdata(31 downto 0) <= mb_axi_mem_interconnect_0_to_s03_couplers_RDATA(31 downto 0);
  S03_AXI_rresp(1 downto 0) <= mb_axi_mem_interconnect_0_to_s03_couplers_RRESP(1 downto 0);
  S03_AXI_rvalid <= mb_axi_mem_interconnect_0_to_s03_couplers_RVALID;
  S04_ACLK_1 <= S04_ACLK;
  S04_ARESETN_1 <= S04_ARESETN;
  S04_AXI_arready(0) <= mb_axi_mem_interconnect_0_to_s04_couplers_ARREADY(0);
  S04_AXI_awready(0) <= mb_axi_mem_interconnect_0_to_s04_couplers_AWREADY(0);
  S04_AXI_bid(2 downto 0) <= mb_axi_mem_interconnect_0_to_s04_couplers_BID(2 downto 0);
  S04_AXI_bresp(1 downto 0) <= mb_axi_mem_interconnect_0_to_s04_couplers_BRESP(1 downto 0);
  S04_AXI_bvalid(0) <= mb_axi_mem_interconnect_0_to_s04_couplers_BVALID(0);
  S04_AXI_rdata(31 downto 0) <= mb_axi_mem_interconnect_0_to_s04_couplers_RDATA(31 downto 0);
  S04_AXI_rid(2 downto 0) <= mb_axi_mem_interconnect_0_to_s04_couplers_RID(2 downto 0);
  S04_AXI_rlast(0) <= mb_axi_mem_interconnect_0_to_s04_couplers_RLAST(0);
  S04_AXI_rresp(1 downto 0) <= mb_axi_mem_interconnect_0_to_s04_couplers_RRESP(1 downto 0);
  S04_AXI_rvalid(0) <= mb_axi_mem_interconnect_0_to_s04_couplers_RVALID(0);
  S04_AXI_wready(0) <= mb_axi_mem_interconnect_0_to_s04_couplers_WREADY(0);
  m00_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M00_AXI_arready;
  m00_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M00_AXI_awready;
  m00_couplers_to_mb_axi_mem_interconnect_0_BID(5 downto 0) <= M00_AXI_bid(5 downto 0);
  m00_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_mb_axi_mem_interconnect_0_RID(5 downto 0) <= M00_AXI_rid(5 downto 0);
  m00_couplers_to_mb_axi_mem_interconnect_0_RLAST <= M00_AXI_rlast;
  m00_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M00_AXI_wready;
  m01_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M01_AXI_arready;
  m01_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M01_AXI_awready;
  m01_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M01_AXI_wready;
  m02_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M02_AXI_arready;
  m02_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M02_AXI_awready;
  m02_couplers_to_mb_axi_mem_interconnect_0_BID(2 downto 0) <= M02_AXI_bid(2 downto 0);
  m02_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M02_AXI_bresp(1 downto 0);
  m02_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M02_AXI_rdata(31 downto 0);
  m02_couplers_to_mb_axi_mem_interconnect_0_RID(2 downto 0) <= M02_AXI_rid(2 downto 0);
  m02_couplers_to_mb_axi_mem_interconnect_0_RLAST <= M02_AXI_rlast;
  m02_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M02_AXI_rresp(1 downto 0);
  m02_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M02_AXI_wready;
  m03_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M03_AXI_arready;
  m03_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M03_AXI_awready;
  m03_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M03_AXI_wready;
  m04_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M04_AXI_arready;
  m04_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M04_AXI_awready;
  m04_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M04_AXI_wready;
  m05_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M05_AXI_arready;
  m05_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M05_AXI_awready;
  m05_couplers_to_mb_axi_mem_interconnect_0_BID(2 downto 0) <= M05_AXI_bid(2 downto 0);
  m05_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_mb_axi_mem_interconnect_0_RID(2 downto 0) <= M05_AXI_rid(2 downto 0);
  m05_couplers_to_mb_axi_mem_interconnect_0_RLAST <= M05_AXI_rlast;
  m05_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M05_AXI_wready;
  m06_couplers_to_mb_axi_mem_interconnect_0_ARREADY <= M06_AXI_arready;
  m06_couplers_to_mb_axi_mem_interconnect_0_AWREADY <= M06_AXI_awready;
  m06_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0) <= M06_AXI_bresp(1 downto 0);
  m06_couplers_to_mb_axi_mem_interconnect_0_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0) <= M06_AXI_rdata(31 downto 0);
  m06_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0) <= M06_AXI_rresp(1 downto 0);
  m06_couplers_to_mb_axi_mem_interconnect_0_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_mb_axi_mem_interconnect_0_WREADY <= M06_AXI_wready;
  mb_axi_mem_interconnect_0_ACLK_net <= ACLK;
  mb_axi_mem_interconnect_0_ARESETN_net <= ARESETN;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARADDR <= S00_AXI_araddr;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARBURST <= S00_AXI_arburst;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARCACHE <= S00_AXI_arcache;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARID <= S00_AXI_arid;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARLEN <= S00_AXI_arlen;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARLOCK <= S00_AXI_arlock;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARPROT <= S00_AXI_arprot;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARQOS <= S00_AXI_arqos;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARSIZE <= S00_AXI_arsize;
  mb_axi_mem_interconnect_0_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWADDR <= S00_AXI_awaddr;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWBURST <= S00_AXI_awburst;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWCACHE <= S00_AXI_awcache;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWID <= S00_AXI_awid;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWLEN <= S00_AXI_awlen;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWLOCK <= S00_AXI_awlock;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWPROT <= S00_AXI_awprot;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWQOS <= S00_AXI_awqos;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWSIZE <= S00_AXI_awsize;
  mb_axi_mem_interconnect_0_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  mb_axi_mem_interconnect_0_to_s00_couplers_BREADY <= S00_AXI_bready;
  mb_axi_mem_interconnect_0_to_s00_couplers_RREADY <= S00_AXI_rready;
  mb_axi_mem_interconnect_0_to_s00_couplers_WDATA <= S00_AXI_wdata;
  mb_axi_mem_interconnect_0_to_s00_couplers_WLAST <= S00_AXI_wlast;
  mb_axi_mem_interconnect_0_to_s00_couplers_WSTRB <= S00_AXI_wstrb;
  mb_axi_mem_interconnect_0_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARADDR <= S01_AXI_araddr;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARBURST <= S01_AXI_arburst;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARCACHE <= S01_AXI_arcache;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARID <= S01_AXI_arid;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARLEN <= S01_AXI_arlen;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARPROT <= S01_AXI_arprot;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARQOS <= S01_AXI_arqos;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARSIZE <= S01_AXI_arsize;
  mb_axi_mem_interconnect_0_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWADDR <= S01_AXI_awaddr;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWBURST <= S01_AXI_awburst;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWCACHE <= S01_AXI_awcache;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWID <= S01_AXI_awid;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWLEN <= S01_AXI_awlen;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWLOCK <= S01_AXI_awlock;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWPROT <= S01_AXI_awprot;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWQOS <= S01_AXI_awqos;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWSIZE <= S01_AXI_awsize;
  mb_axi_mem_interconnect_0_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  mb_axi_mem_interconnect_0_to_s01_couplers_BREADY <= S01_AXI_bready;
  mb_axi_mem_interconnect_0_to_s01_couplers_RREADY <= S01_AXI_rready;
  mb_axi_mem_interconnect_0_to_s01_couplers_WDATA <= S01_AXI_wdata;
  mb_axi_mem_interconnect_0_to_s01_couplers_WLAST <= S01_AXI_wlast;
  mb_axi_mem_interconnect_0_to_s01_couplers_WSTRB <= S01_AXI_wstrb;
  mb_axi_mem_interconnect_0_to_s01_couplers_WVALID <= S01_AXI_wvalid;
  mb_axi_mem_interconnect_0_to_s02_couplers_ARADDR(31 downto 0) <= S02_AXI_araddr(31 downto 0);
  mb_axi_mem_interconnect_0_to_s02_couplers_ARPROT(2 downto 0) <= S02_AXI_arprot(2 downto 0);
  mb_axi_mem_interconnect_0_to_s02_couplers_ARVALID <= S02_AXI_arvalid;
  mb_axi_mem_interconnect_0_to_s02_couplers_AWADDR(31 downto 0) <= S02_AXI_awaddr(31 downto 0);
  mb_axi_mem_interconnect_0_to_s02_couplers_AWPROT(2 downto 0) <= S02_AXI_awprot(2 downto 0);
  mb_axi_mem_interconnect_0_to_s02_couplers_AWVALID <= S02_AXI_awvalid;
  mb_axi_mem_interconnect_0_to_s02_couplers_BREADY <= S02_AXI_bready;
  mb_axi_mem_interconnect_0_to_s02_couplers_RREADY <= S02_AXI_rready;
  mb_axi_mem_interconnect_0_to_s02_couplers_WDATA(31 downto 0) <= S02_AXI_wdata(31 downto 0);
  mb_axi_mem_interconnect_0_to_s02_couplers_WSTRB(3 downto 0) <= S02_AXI_wstrb(3 downto 0);
  mb_axi_mem_interconnect_0_to_s02_couplers_WVALID <= S02_AXI_wvalid;
  mb_axi_mem_interconnect_0_to_s03_couplers_ARADDR(31 downto 0) <= S03_AXI_araddr(31 downto 0);
  mb_axi_mem_interconnect_0_to_s03_couplers_ARPROT(2 downto 0) <= S03_AXI_arprot(2 downto 0);
  mb_axi_mem_interconnect_0_to_s03_couplers_ARVALID <= S03_AXI_arvalid;
  mb_axi_mem_interconnect_0_to_s03_couplers_RREADY <= S03_AXI_rready;
  mb_axi_mem_interconnect_0_to_s04_couplers_ARADDR(31 downto 0) <= S04_AXI_araddr(31 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARBURST(1 downto 0) <= S04_AXI_arburst(1 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARCACHE(3 downto 0) <= S04_AXI_arcache(3 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARID(0) <= S04_AXI_arid(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARLEN(7 downto 0) <= S04_AXI_arlen(7 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARLOCK(0) <= S04_AXI_arlock(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARPROT(2 downto 0) <= S04_AXI_arprot(2 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARQOS(3 downto 0) <= S04_AXI_arqos(3 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARSIZE(2 downto 0) <= S04_AXI_arsize(2 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_ARVALID(0) <= S04_AXI_arvalid(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWADDR(31 downto 0) <= S04_AXI_awaddr(31 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWBURST(1 downto 0) <= S04_AXI_awburst(1 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWCACHE(3 downto 0) <= S04_AXI_awcache(3 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWID(0) <= S04_AXI_awid(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWLEN(7 downto 0) <= S04_AXI_awlen(7 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWLOCK(0) <= S04_AXI_awlock(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWPROT(2 downto 0) <= S04_AXI_awprot(2 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWQOS(3 downto 0) <= S04_AXI_awqos(3 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWSIZE(2 downto 0) <= S04_AXI_awsize(2 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_AWVALID(0) <= S04_AXI_awvalid(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_BREADY(0) <= S04_AXI_bready(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_RREADY(0) <= S04_AXI_rready(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_WDATA(31 downto 0) <= S04_AXI_wdata(31 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_WLAST(0) <= S04_AXI_wlast(0);
  mb_axi_mem_interconnect_0_to_s04_couplers_WSTRB(3 downto 0) <= S04_AXI_wstrb(3 downto 0);
  mb_axi_mem_interconnect_0_to_s04_couplers_WVALID(0) <= S04_AXI_wvalid(0);
m00_couplers: entity work.m00_couplers_imp_OC4YJ2
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARID(2 downto 0),
      M_AXI_arlen(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARLEN(3 downto 0),
      M_AXI_arlock(1 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARLOCK(1 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARQOS(3 downto 0),
      M_AXI_arready => m00_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arsize(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m00_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWID(2 downto 0),
      M_AXI_awlen(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWLEN(3 downto 0),
      M_AXI_awlock(1 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWLOCK(1 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWQOS(3 downto 0),
      M_AXI_awready => m00_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awsize(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m00_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bid(5 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_BID(5 downto 0),
      M_AXI_bready => m00_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rid(5 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_RID(5 downto 0),
      M_AXI_rlast => m00_couplers_to_mb_axi_mem_interconnect_0_RLAST,
      M_AXI_rready => m00_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wid(2 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_WID(2 downto 0),
      M_AXI_wlast => m00_couplers_to_mb_axi_mem_interconnect_0_WLAST,
      M_AXI_wready => m00_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1XBVZ33
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m01_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arvalid => m01_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m01_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awvalid => m01_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bready => m01_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wvalid => m01_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arid(2 downto 0) => xbar_to_m01_couplers_ARID(5 downto 3),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock(0) => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arqos(3 downto 0) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awid(2 downto 0) => xbar_to_m01_couplers_AWID(5 downto 3),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock(0) => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awqos(3 downto 0) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bid(2 downto 0) => xbar_to_m01_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m01_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_1LQIX7X
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock => m02_couplers_to_mb_axi_mem_interconnect_0_ARLOCK,
      M_AXI_arprot(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m02_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arsize(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m02_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock => m02_couplers_to_mb_axi_mem_interconnect_0_AWLOCK,
      M_AXI_awprot(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m02_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awsize(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m02_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bid(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_BID(2 downto 0),
      M_AXI_bready => m02_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m02_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_RID(2 downto 0),
      M_AXI_rlast => m02_couplers_to_mb_axi_mem_interconnect_0_RLAST,
      M_AXI_rready => m02_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m02_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast => m02_couplers_to_mb_axi_mem_interconnect_0_WLAST,
      M_AXI_wready => m02_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m02_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m02_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      S_AXI_arburst(1 downto 0) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      S_AXI_arcache(3 downto 0) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      S_AXI_arid(2 downto 0) => xbar_to_m02_couplers_ARID(8 downto 6),
      S_AXI_arlen(7 downto 0) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      S_AXI_arlock => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot(2 downto 0) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr(31 downto 0) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      S_AXI_awburst(1 downto 0) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      S_AXI_awcache(3 downto 0) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      S_AXI_awid(2 downto 0) => xbar_to_m02_couplers_AWID(8 downto 6),
      S_AXI_awlen(7 downto 0) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      S_AXI_awlock => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot(2 downto 0) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bid(2 downto 0) => xbar_to_m02_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp(1 downto 0) => xbar_to_m02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m02_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m02_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp(1 downto 0) => xbar_to_m02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m02_couplers_WDATA(95 downto 64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_Z3IX4S
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arvalid => m03_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awvalid => m03_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bready => m03_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arid(2 downto 0) => xbar_to_m03_couplers_ARID(11 downto 9),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awid(2 downto 0) => xbar_to_m03_couplers_AWID(11 downto 9),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bid(2 downto 0) => xbar_to_m03_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m03_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_10HSSAX
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m04_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arvalid => m04_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m04_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awvalid => m04_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bready => m04_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m04_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m04_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m04_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m04_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m04_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m04_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      S_AXI_arburst(1 downto 0) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      S_AXI_arcache(3 downto 0) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      S_AXI_arid(2 downto 0) => xbar_to_m04_couplers_ARID(14 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      S_AXI_arlock(0) => xbar_to_m04_couplers_ARLOCK(4),
      S_AXI_arprot(2 downto 0) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      S_AXI_arqos(3 downto 0) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      S_AXI_arsize(2 downto 0) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr(31 downto 0) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      S_AXI_awburst(1 downto 0) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      S_AXI_awcache(3 downto 0) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      S_AXI_awid(2 downto 0) => xbar_to_m04_couplers_AWID(14 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      S_AXI_awlock(0) => xbar_to_m04_couplers_AWLOCK(4),
      S_AXI_awprot(2 downto 0) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      S_AXI_awqos(3 downto 0) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      S_AXI_awsize(2 downto 0) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bid(2 downto 0) => xbar_to_m04_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp(1 downto 0) => xbar_to_m04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m04_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m04_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m04_couplers_RLAST,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp(1 downto 0) => xbar_to_m04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m04_couplers_WDATA(159 downto 128),
      S_AXI_wlast => xbar_to_m04_couplers_WLAST(4),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_CQUEHK
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARCACHE(3 downto 0),
      M_AXI_arid(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARID(2 downto 0),
      M_AXI_arlen(7 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARLEN(7 downto 0),
      M_AXI_arlock => m05_couplers_to_mb_axi_mem_interconnect_0_ARLOCK,
      M_AXI_arprot(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARPROT(2 downto 0),
      M_AXI_arready => m05_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arsize(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_ARSIZE(2 downto 0),
      M_AXI_arvalid => m05_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWCACHE(3 downto 0),
      M_AXI_awid(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWID(2 downto 0),
      M_AXI_awlen(7 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWLEN(7 downto 0),
      M_AXI_awlock => m05_couplers_to_mb_axi_mem_interconnect_0_AWLOCK,
      M_AXI_awprot(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWPROT(2 downto 0),
      M_AXI_awready => m05_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awsize(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_AWSIZE(2 downto 0),
      M_AXI_awvalid => m05_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bid(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_BID(2 downto 0),
      M_AXI_bready => m05_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rid(2 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_RID(2 downto 0),
      M_AXI_rlast => m05_couplers_to_mb_axi_mem_interconnect_0_RLAST,
      M_AXI_rready => m05_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wlast => m05_couplers_to_mb_axi_mem_interconnect_0_WLAST,
      M_AXI_wready => m05_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arid(2 downto 0) => xbar_to_m05_couplers_ARID(17 downto 15),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awid(2 downto 0) => xbar_to_m05_couplers_AWID(17 downto 15),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bid(2 downto 0) => xbar_to_m05_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m05_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_15HAUI
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_ARADDR(31 downto 0),
      M_AXI_arready => m06_couplers_to_mb_axi_mem_interconnect_0_ARREADY,
      M_AXI_arvalid => m06_couplers_to_mb_axi_mem_interconnect_0_ARVALID,
      M_AXI_awaddr(31 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_AWADDR(31 downto 0),
      M_AXI_awready => m06_couplers_to_mb_axi_mem_interconnect_0_AWREADY,
      M_AXI_awvalid => m06_couplers_to_mb_axi_mem_interconnect_0_AWVALID,
      M_AXI_bready => m06_couplers_to_mb_axi_mem_interconnect_0_BREADY,
      M_AXI_bresp(1 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_BRESP(1 downto 0),
      M_AXI_bvalid => m06_couplers_to_mb_axi_mem_interconnect_0_BVALID,
      M_AXI_rdata(31 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_RDATA(31 downto 0),
      M_AXI_rready => m06_couplers_to_mb_axi_mem_interconnect_0_RREADY,
      M_AXI_rresp(1 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_RRESP(1 downto 0),
      M_AXI_rvalid => m06_couplers_to_mb_axi_mem_interconnect_0_RVALID,
      M_AXI_wdata(31 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_WDATA(31 downto 0),
      M_AXI_wready => m06_couplers_to_mb_axi_mem_interconnect_0_WREADY,
      M_AXI_wstrb(3 downto 0) => m06_couplers_to_mb_axi_mem_interconnect_0_WSTRB(3 downto 0),
      M_AXI_wvalid => m06_couplers_to_mb_axi_mem_interconnect_0_WVALID,
      S_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      S_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      S_AXI_arburst(1 downto 0) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      S_AXI_arcache(3 downto 0) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      S_AXI_arid(2 downto 0) => xbar_to_m06_couplers_ARID(20 downto 18),
      S_AXI_arlen(7 downto 0) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      S_AXI_arlock(0) => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot(2 downto 0) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      S_AXI_arqos(3 downto 0) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      S_AXI_arsize(2 downto 0) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr(31 downto 0) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      S_AXI_awburst(1 downto 0) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      S_AXI_awcache(3 downto 0) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      S_AXI_awid(2 downto 0) => xbar_to_m06_couplers_AWID(20 downto 18),
      S_AXI_awlen(7 downto 0) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      S_AXI_awlock(0) => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot(2 downto 0) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      S_AXI_awqos(3 downto 0) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      S_AXI_awsize(2 downto 0) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bid(2 downto 0) => xbar_to_m06_couplers_BID(2 downto 0),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp(1 downto 0) => xbar_to_m06_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m06_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => xbar_to_m06_couplers_RID(2 downto 0),
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp(1 downto 0) => xbar_to_m06_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m06_couplers_WDATA(223 downto 192),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_QP40NZ
     port map (
      M_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      M_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      M_AXI_araddr => s00_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s00_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s00_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s00_couplers_to_xbar_ARID,
      M_AXI_arlen => s00_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s00_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s00_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s00_couplers_to_xbar_ARQOS,
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize => s00_couplers_to_xbar_ARSIZE,
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s00_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s00_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s00_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s00_couplers_to_xbar_AWID,
      M_AXI_awlen => s00_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s00_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s00_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s00_couplers_to_xbar_AWQOS,
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize => s00_couplers_to_xbar_AWSIZE,
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid => s00_couplers_to_xbar_BID(0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp => s00_couplers_to_xbar_BRESP(0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata => s00_couplers_to_xbar_RDATA(0),
      M_AXI_rid => s00_couplers_to_xbar_RID(0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp => s00_couplers_to_xbar_RRESP(0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata => s00_couplers_to_xbar_WDATA,
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb => s00_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr => mb_axi_mem_interconnect_0_to_s00_couplers_ARADDR,
      S_AXI_arburst => mb_axi_mem_interconnect_0_to_s00_couplers_ARBURST,
      S_AXI_arcache => mb_axi_mem_interconnect_0_to_s00_couplers_ARCACHE,
      S_AXI_arid => mb_axi_mem_interconnect_0_to_s00_couplers_ARID,
      S_AXI_arlen => mb_axi_mem_interconnect_0_to_s00_couplers_ARLEN,
      S_AXI_arlock => mb_axi_mem_interconnect_0_to_s00_couplers_ARLOCK,
      S_AXI_arprot => mb_axi_mem_interconnect_0_to_s00_couplers_ARPROT,
      S_AXI_arqos => mb_axi_mem_interconnect_0_to_s00_couplers_ARQOS,
      S_AXI_arready => mb_axi_mem_interconnect_0_to_s00_couplers_ARREADY,
      S_AXI_arsize => mb_axi_mem_interconnect_0_to_s00_couplers_ARSIZE,
      S_AXI_arvalid => mb_axi_mem_interconnect_0_to_s00_couplers_ARVALID,
      S_AXI_awaddr => mb_axi_mem_interconnect_0_to_s00_couplers_AWADDR,
      S_AXI_awburst => mb_axi_mem_interconnect_0_to_s00_couplers_AWBURST,
      S_AXI_awcache => mb_axi_mem_interconnect_0_to_s00_couplers_AWCACHE,
      S_AXI_awid => mb_axi_mem_interconnect_0_to_s00_couplers_AWID,
      S_AXI_awlen => mb_axi_mem_interconnect_0_to_s00_couplers_AWLEN,
      S_AXI_awlock => mb_axi_mem_interconnect_0_to_s00_couplers_AWLOCK,
      S_AXI_awprot => mb_axi_mem_interconnect_0_to_s00_couplers_AWPROT,
      S_AXI_awqos => mb_axi_mem_interconnect_0_to_s00_couplers_AWQOS,
      S_AXI_awready => mb_axi_mem_interconnect_0_to_s00_couplers_AWREADY,
      S_AXI_awsize => mb_axi_mem_interconnect_0_to_s00_couplers_AWSIZE,
      S_AXI_awvalid => mb_axi_mem_interconnect_0_to_s00_couplers_AWVALID,
      S_AXI_bid => mb_axi_mem_interconnect_0_to_s00_couplers_BID,
      S_AXI_bready => mb_axi_mem_interconnect_0_to_s00_couplers_BREADY,
      S_AXI_bresp => mb_axi_mem_interconnect_0_to_s00_couplers_BRESP,
      S_AXI_bvalid => mb_axi_mem_interconnect_0_to_s00_couplers_BVALID,
      S_AXI_rdata => mb_axi_mem_interconnect_0_to_s00_couplers_RDATA,
      S_AXI_rid => mb_axi_mem_interconnect_0_to_s00_couplers_RID,
      S_AXI_rlast => mb_axi_mem_interconnect_0_to_s00_couplers_RLAST,
      S_AXI_rready => mb_axi_mem_interconnect_0_to_s00_couplers_RREADY,
      S_AXI_rresp => mb_axi_mem_interconnect_0_to_s00_couplers_RRESP,
      S_AXI_rvalid => mb_axi_mem_interconnect_0_to_s00_couplers_RVALID,
      S_AXI_wdata => mb_axi_mem_interconnect_0_to_s00_couplers_WDATA,
      S_AXI_wlast => mb_axi_mem_interconnect_0_to_s00_couplers_WLAST,
      S_AXI_wready => mb_axi_mem_interconnect_0_to_s00_couplers_WREADY,
      S_AXI_wstrb => mb_axi_mem_interconnect_0_to_s00_couplers_WSTRB,
      S_AXI_wvalid => mb_axi_mem_interconnect_0_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_1L8TOEM
     port map (
      M_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      M_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      M_AXI_araddr => s01_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s01_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s01_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s01_couplers_to_xbar_ARID,
      M_AXI_arlen => s01_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s01_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s01_couplers_to_xbar_ARQOS,
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize => s01_couplers_to_xbar_ARSIZE,
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s01_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s01_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s01_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s01_couplers_to_xbar_AWID,
      M_AXI_awlen => s01_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s01_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s01_couplers_to_xbar_AWQOS,
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize => s01_couplers_to_xbar_AWSIZE,
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bid => s01_couplers_to_xbar_BID(3),
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp => s01_couplers_to_xbar_BRESP(2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata => s01_couplers_to_xbar_RDATA(32),
      M_AXI_rid => s01_couplers_to_xbar_RID(3),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp => s01_couplers_to_xbar_RRESP(2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata => s01_couplers_to_xbar_WDATA,
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb => s01_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr => mb_axi_mem_interconnect_0_to_s01_couplers_ARADDR,
      S_AXI_arburst => mb_axi_mem_interconnect_0_to_s01_couplers_ARBURST,
      S_AXI_arcache => mb_axi_mem_interconnect_0_to_s01_couplers_ARCACHE,
      S_AXI_arid => mb_axi_mem_interconnect_0_to_s01_couplers_ARID,
      S_AXI_arlen => mb_axi_mem_interconnect_0_to_s01_couplers_ARLEN,
      S_AXI_arlock => mb_axi_mem_interconnect_0_to_s01_couplers_ARLOCK,
      S_AXI_arprot => mb_axi_mem_interconnect_0_to_s01_couplers_ARPROT,
      S_AXI_arqos => mb_axi_mem_interconnect_0_to_s01_couplers_ARQOS,
      S_AXI_arready => mb_axi_mem_interconnect_0_to_s01_couplers_ARREADY,
      S_AXI_arsize => mb_axi_mem_interconnect_0_to_s01_couplers_ARSIZE,
      S_AXI_arvalid => mb_axi_mem_interconnect_0_to_s01_couplers_ARVALID,
      S_AXI_awaddr => mb_axi_mem_interconnect_0_to_s01_couplers_AWADDR,
      S_AXI_awburst => mb_axi_mem_interconnect_0_to_s01_couplers_AWBURST,
      S_AXI_awcache => mb_axi_mem_interconnect_0_to_s01_couplers_AWCACHE,
      S_AXI_awid => mb_axi_mem_interconnect_0_to_s01_couplers_AWID,
      S_AXI_awlen => mb_axi_mem_interconnect_0_to_s01_couplers_AWLEN,
      S_AXI_awlock => mb_axi_mem_interconnect_0_to_s01_couplers_AWLOCK,
      S_AXI_awprot => mb_axi_mem_interconnect_0_to_s01_couplers_AWPROT,
      S_AXI_awqos => mb_axi_mem_interconnect_0_to_s01_couplers_AWQOS,
      S_AXI_awready => mb_axi_mem_interconnect_0_to_s01_couplers_AWREADY,
      S_AXI_awsize => mb_axi_mem_interconnect_0_to_s01_couplers_AWSIZE,
      S_AXI_awvalid => mb_axi_mem_interconnect_0_to_s01_couplers_AWVALID,
      S_AXI_bid => mb_axi_mem_interconnect_0_to_s01_couplers_BID,
      S_AXI_bready => mb_axi_mem_interconnect_0_to_s01_couplers_BREADY,
      S_AXI_bresp => mb_axi_mem_interconnect_0_to_s01_couplers_BRESP,
      S_AXI_bvalid => mb_axi_mem_interconnect_0_to_s01_couplers_BVALID,
      S_AXI_rdata => mb_axi_mem_interconnect_0_to_s01_couplers_RDATA,
      S_AXI_rid => mb_axi_mem_interconnect_0_to_s01_couplers_RID,
      S_AXI_rlast => mb_axi_mem_interconnect_0_to_s01_couplers_RLAST,
      S_AXI_rready => mb_axi_mem_interconnect_0_to_s01_couplers_RREADY,
      S_AXI_rresp => mb_axi_mem_interconnect_0_to_s01_couplers_RRESP,
      S_AXI_rvalid => mb_axi_mem_interconnect_0_to_s01_couplers_RVALID,
      S_AXI_wdata => mb_axi_mem_interconnect_0_to_s01_couplers_WDATA,
      S_AXI_wlast => mb_axi_mem_interconnect_0_to_s01_couplers_WLAST,
      S_AXI_wready => mb_axi_mem_interconnect_0_to_s01_couplers_WREADY,
      S_AXI_wstrb => mb_axi_mem_interconnect_0_to_s01_couplers_WSTRB,
      S_AXI_wvalid => mb_axi_mem_interconnect_0_to_s01_couplers_WVALID
    );
s02_couplers: entity work.s02_couplers_imp_1S9BUIK
     port map (
      M_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      M_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s02_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s02_couplers_to_xbar_ARREADY(2),
      M_AXI_arsize(2 downto 0) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s02_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s02_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s02_couplers_to_xbar_AWREADY(2),
      M_AXI_awsize(2 downto 0) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s02_couplers_to_xbar_AWVALID,
      M_AXI_bready => s02_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s02_couplers_to_xbar_BRESP(5 downto 4),
      M_AXI_bvalid => s02_couplers_to_xbar_BVALID(2),
      M_AXI_rdata(31 downto 0) => s02_couplers_to_xbar_RDATA(95 downto 64),
      M_AXI_rlast => s02_couplers_to_xbar_RLAST(2),
      M_AXI_rready => s02_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s02_couplers_to_xbar_RRESP(5 downto 4),
      M_AXI_rvalid => s02_couplers_to_xbar_RVALID(2),
      M_AXI_wdata(31 downto 0) => s02_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s02_couplers_to_xbar_WLAST,
      M_AXI_wready => s02_couplers_to_xbar_WREADY(2),
      M_AXI_wstrb(3 downto 0) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s02_couplers_to_xbar_WVALID,
      S_ACLK => S02_ACLK_1,
      S_ARESETN => S02_ARESETN_1,
      S_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_ARPROT(2 downto 0),
      S_AXI_arready => mb_axi_mem_interconnect_0_to_s02_couplers_ARREADY,
      S_AXI_arvalid => mb_axi_mem_interconnect_0_to_s02_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_AWPROT(2 downto 0),
      S_AXI_awready => mb_axi_mem_interconnect_0_to_s02_couplers_AWREADY,
      S_AXI_awvalid => mb_axi_mem_interconnect_0_to_s02_couplers_AWVALID,
      S_AXI_bready => mb_axi_mem_interconnect_0_to_s02_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => mb_axi_mem_interconnect_0_to_s02_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_RDATA(31 downto 0),
      S_AXI_rready => mb_axi_mem_interconnect_0_to_s02_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => mb_axi_mem_interconnect_0_to_s02_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_WDATA(31 downto 0),
      S_AXI_wready => mb_axi_mem_interconnect_0_to_s02_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_to_s02_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => mb_axi_mem_interconnect_0_to_s02_couplers_WVALID
    );
s03_couplers: entity work.s03_couplers_imp_KIK8FH
     port map (
      M_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      M_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s03_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s03_couplers_to_xbar_ARREADY(3),
      M_AXI_arsize(2 downto 0) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s03_couplers_to_xbar_ARVALID,
      M_AXI_rdata(31 downto 0) => s03_couplers_to_xbar_RDATA(127 downto 96),
      M_AXI_rlast => s03_couplers_to_xbar_RLAST(3),
      M_AXI_rready => s03_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s03_couplers_to_xbar_RRESP(7 downto 6),
      M_AXI_rvalid => s03_couplers_to_xbar_RVALID(3),
      S_ACLK => S03_ACLK_1,
      S_ARESETN => S03_ARESETN_1,
      S_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_to_s03_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_to_s03_couplers_ARPROT(2 downto 0),
      S_AXI_arready => mb_axi_mem_interconnect_0_to_s03_couplers_ARREADY,
      S_AXI_arvalid => mb_axi_mem_interconnect_0_to_s03_couplers_ARVALID,
      S_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_to_s03_couplers_RDATA(31 downto 0),
      S_AXI_rready => mb_axi_mem_interconnect_0_to_s03_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_to_s03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => mb_axi_mem_interconnect_0_to_s03_couplers_RVALID
    );
s04_couplers: entity work.s04_couplers_imp_1DYC6HK
     port map (
      M_ACLK => mb_axi_mem_interconnect_0_ACLK_net,
      M_ARESETN => mb_axi_mem_interconnect_0_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(0) => s04_couplers_to_xbar_ARID(0),
      M_AXI_arlen(7 downto 0) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s04_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready(0) => s04_couplers_to_xbar_ARREADY(4),
      M_AXI_arsize(2 downto 0) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid(0) => s04_couplers_to_xbar_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(0) => s04_couplers_to_xbar_AWID(0),
      M_AXI_awlen(7 downto 0) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s04_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready(0) => s04_couplers_to_xbar_AWREADY(4),
      M_AXI_awsize(2 downto 0) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid(0) => s04_couplers_to_xbar_AWVALID(0),
      M_AXI_bid(2 downto 0) => s04_couplers_to_xbar_BID(14 downto 12),
      M_AXI_bready(0) => s04_couplers_to_xbar_BREADY(0),
      M_AXI_bresp(1 downto 0) => s04_couplers_to_xbar_BRESP(9 downto 8),
      M_AXI_bvalid(0) => s04_couplers_to_xbar_BVALID(4),
      M_AXI_rdata(31 downto 0) => s04_couplers_to_xbar_RDATA(159 downto 128),
      M_AXI_rid(2 downto 0) => s04_couplers_to_xbar_RID(14 downto 12),
      M_AXI_rlast(0) => s04_couplers_to_xbar_RLAST(4),
      M_AXI_rready(0) => s04_couplers_to_xbar_RREADY(0),
      M_AXI_rresp(1 downto 0) => s04_couplers_to_xbar_RRESP(9 downto 8),
      M_AXI_rvalid(0) => s04_couplers_to_xbar_RVALID(4),
      M_AXI_wdata(31 downto 0) => s04_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast(0) => s04_couplers_to_xbar_WLAST(0),
      M_AXI_wready(0) => s04_couplers_to_xbar_WREADY(4),
      M_AXI_wstrb(3 downto 0) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => s04_couplers_to_xbar_WVALID(0),
      S_ACLK => S04_ACLK_1,
      S_ARESETN => S04_ARESETN_1,
      S_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARID(0),
      S_AXI_arlen(7 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARQOS(3 downto 0),
      S_AXI_arready(0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARREADY(0),
      S_AXI_arsize(2 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWID(0),
      S_AXI_awlen(7 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWQOS(3 downto 0),
      S_AXI_awready(0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWREADY(0),
      S_AXI_awsize(2 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_AWVALID(0),
      S_AXI_bid(2 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_BID(2 downto 0),
      S_AXI_bready(0) => mb_axi_mem_interconnect_0_to_s04_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_RDATA(31 downto 0),
      S_AXI_rid(2 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_RID(2 downto 0),
      S_AXI_rlast(0) => mb_axi_mem_interconnect_0_to_s04_couplers_RLAST(0),
      S_AXI_rready(0) => mb_axi_mem_interconnect_0_to_s04_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_WDATA(31 downto 0),
      S_AXI_wlast(0) => mb_axi_mem_interconnect_0_to_s04_couplers_WLAST(0),
      S_AXI_wready(0) => mb_axi_mem_interconnect_0_to_s04_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_to_s04_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => mb_axi_mem_interconnect_0_to_s04_couplers_WVALID(0)
    );
xbar: component system_xbar_1
     port map (
      aclk => mb_axi_mem_interconnect_0_ACLK_net,
      aresetn => mb_axi_mem_interconnect_0_ARESETN_net,
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => xbar_to_m04_couplers_ARBURST(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => xbar_to_m04_couplers_ARCACHE(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arid(20 downto 18) => xbar_to_m06_couplers_ARID(20 downto 18),
      m_axi_arid(17 downto 15) => xbar_to_m05_couplers_ARID(17 downto 15),
      m_axi_arid(14 downto 12) => xbar_to_m04_couplers_ARID(14 downto 12),
      m_axi_arid(11 downto 9) => xbar_to_m03_couplers_ARID(11 downto 9),
      m_axi_arid(8 downto 6) => xbar_to_m02_couplers_ARID(8 downto 6),
      m_axi_arid(5 downto 3) => xbar_to_m01_couplers_ARID(5 downto 3),
      m_axi_arid(2 downto 0) => xbar_to_m00_couplers_ARID(2 downto 0),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => xbar_to_m04_couplers_ARLEN(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => xbar_to_m04_couplers_ARLOCK(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => xbar_to_m04_couplers_ARPROT(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => NLW_xbar_m_axi_arqos_UNCONNECTED(23 downto 20),
      m_axi_arqos(19 downto 16) => xbar_to_m04_couplers_ARQOS(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => NLW_xbar_m_axi_arqos_UNCONNECTED(11 downto 8),
      m_axi_arqos(7 downto 4) => xbar_to_m01_couplers_ARQOS(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => NLW_xbar_m_axi_arregion_UNCONNECTED(23 downto 20),
      m_axi_arregion(19 downto 16) => xbar_to_m04_couplers_ARREGION(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => NLW_xbar_m_axi_arregion_UNCONNECTED(11 downto 8),
      m_axi_arregion(7 downto 4) => xbar_to_m01_couplers_ARREGION(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => xbar_to_m04_couplers_ARSIZE(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => xbar_to_m04_couplers_AWBURST(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => xbar_to_m04_couplers_AWCACHE(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awid(20 downto 18) => xbar_to_m06_couplers_AWID(20 downto 18),
      m_axi_awid(17 downto 15) => xbar_to_m05_couplers_AWID(17 downto 15),
      m_axi_awid(14 downto 12) => xbar_to_m04_couplers_AWID(14 downto 12),
      m_axi_awid(11 downto 9) => xbar_to_m03_couplers_AWID(11 downto 9),
      m_axi_awid(8 downto 6) => xbar_to_m02_couplers_AWID(8 downto 6),
      m_axi_awid(5 downto 3) => xbar_to_m01_couplers_AWID(5 downto 3),
      m_axi_awid(2 downto 0) => xbar_to_m00_couplers_AWID(2 downto 0),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => xbar_to_m04_couplers_AWLEN(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => xbar_to_m04_couplers_AWLOCK(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => xbar_to_m04_couplers_AWPROT(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => NLW_xbar_m_axi_awqos_UNCONNECTED(23 downto 20),
      m_axi_awqos(19 downto 16) => xbar_to_m04_couplers_AWQOS(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => NLW_xbar_m_axi_awqos_UNCONNECTED(11 downto 8),
      m_axi_awqos(7 downto 4) => xbar_to_m01_couplers_AWQOS(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => NLW_xbar_m_axi_awregion_UNCONNECTED(23 downto 20),
      m_axi_awregion(19 downto 16) => xbar_to_m04_couplers_AWREGION(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => NLW_xbar_m_axi_awregion_UNCONNECTED(11 downto 8),
      m_axi_awregion(7 downto 4) => xbar_to_m01_couplers_AWREGION(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => xbar_to_m04_couplers_AWSIZE(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bid(20 downto 18) => xbar_to_m06_couplers_BID(2 downto 0),
      m_axi_bid(17 downto 15) => xbar_to_m05_couplers_BID(2 downto 0),
      m_axi_bid(14 downto 12) => xbar_to_m04_couplers_BID(2 downto 0),
      m_axi_bid(11 downto 9) => xbar_to_m03_couplers_BID(2 downto 0),
      m_axi_bid(8 downto 6) => xbar_to_m02_couplers_BID(2 downto 0),
      m_axi_bid(5 downto 3) => xbar_to_m01_couplers_BID(2 downto 0),
      m_axi_bid(2 downto 0) => xbar_to_m00_couplers_BID(2 downto 0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13 downto 12) => xbar_to_m06_couplers_BRESP(1 downto 0),
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9 downto 8) => xbar_to_m04_couplers_BRESP(1 downto 0),
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5 downto 4) => xbar_to_m02_couplers_BRESP(1 downto 0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(223 downto 192) => xbar_to_m06_couplers_RDATA(31 downto 0),
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159 downto 128) => xbar_to_m04_couplers_RDATA(31 downto 0),
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95 downto 64) => xbar_to_m02_couplers_RDATA(31 downto 0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rid(20 downto 18) => xbar_to_m06_couplers_RID(2 downto 0),
      m_axi_rid(17 downto 15) => xbar_to_m05_couplers_RID(2 downto 0),
      m_axi_rid(14 downto 12) => xbar_to_m04_couplers_RID(2 downto 0),
      m_axi_rid(11 downto 9) => xbar_to_m03_couplers_RID(2 downto 0),
      m_axi_rid(8 downto 6) => xbar_to_m02_couplers_RID(2 downto 0),
      m_axi_rid(5 downto 3) => xbar_to_m01_couplers_RID(2 downto 0),
      m_axi_rid(2 downto 0) => xbar_to_m00_couplers_RID(2 downto 0),
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => xbar_to_m04_couplers_RLAST,
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13 downto 12) => xbar_to_m06_couplers_RRESP(1 downto 0),
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9 downto 8) => xbar_to_m04_couplers_RRESP(1 downto 0),
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5 downto 4) => xbar_to_m02_couplers_RRESP(1 downto 0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => xbar_to_m04_couplers_WLAST(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(159 downto 128) => s04_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(127 downto 96) => s03_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(95 downto 64) => s02_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_araddr(63) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(62) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(61) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(60) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(59) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(58) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(57) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(56) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(55) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(54) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(53) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(52) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(51) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(50) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(49) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(48) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(47) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(46) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(45) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(44) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(43) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(42) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(41) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(40) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(39) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(38) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(37) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(36) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(35) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(34) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(33) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(32) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(31) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(30) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(29) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(28) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(27) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(26) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(25) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(24) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(23) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(22) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(21) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(20) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(19) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(18) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(17) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(16) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(15) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(14) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(13) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(12) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(11) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(10) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(9) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(8) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(7) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(6) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(5) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(4) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(3) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(2) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(1) => s00_couplers_to_xbar_ARADDR,
      s_axi_araddr(0) => s00_couplers_to_xbar_ARADDR,
      s_axi_arburst(9 downto 8) => s04_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(7 downto 6) => s03_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(5 downto 4) => s02_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arburst(3) => s01_couplers_to_xbar_ARBURST,
      s_axi_arburst(2) => s01_couplers_to_xbar_ARBURST,
      s_axi_arburst(1) => s00_couplers_to_xbar_ARBURST,
      s_axi_arburst(0) => s00_couplers_to_xbar_ARBURST,
      s_axi_arcache(19 downto 16) => s04_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(15 downto 12) => s03_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(11 downto 8) => s02_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arcache(7) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(6) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(5) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(4) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(3) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(2) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(1) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arcache(0) => s00_couplers_to_xbar_ARCACHE,
      s_axi_arid(14 downto 13) => B"00",
      s_axi_arid(12) => s04_couplers_to_xbar_ARID(0),
      s_axi_arid(11 downto 6) => B"000000",
      s_axi_arid(5) => s01_couplers_to_xbar_ARID,
      s_axi_arid(4) => s01_couplers_to_xbar_ARID,
      s_axi_arid(3) => s01_couplers_to_xbar_ARID,
      s_axi_arid(2) => s00_couplers_to_xbar_ARID,
      s_axi_arid(1) => s00_couplers_to_xbar_ARID,
      s_axi_arid(0) => s00_couplers_to_xbar_ARID,
      s_axi_arlen(39 downto 32) => s04_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(31 downto 24) => s03_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(23 downto 16) => s02_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlen(15) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(14) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(13) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(12) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(11) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(10) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(9) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(8) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(7) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(6) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(5) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(4) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(3) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(2) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(1) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlen(0) => s00_couplers_to_xbar_ARLEN,
      s_axi_arlock(4) => s04_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(3) => s03_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(2) => s02_couplers_to_xbar_ARLOCK(0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK,
      s_axi_arprot(14 downto 12) => s04_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(11 downto 9) => s03_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(8 downto 6) => s02_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arprot(5) => s01_couplers_to_xbar_ARPROT,
      s_axi_arprot(4) => s01_couplers_to_xbar_ARPROT,
      s_axi_arprot(3) => s01_couplers_to_xbar_ARPROT,
      s_axi_arprot(2) => s00_couplers_to_xbar_ARPROT,
      s_axi_arprot(1) => s00_couplers_to_xbar_ARPROT,
      s_axi_arprot(0) => s00_couplers_to_xbar_ARPROT,
      s_axi_arqos(19 downto 16) => s04_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(15 downto 12) => s03_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(11 downto 8) => s02_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arqos(7) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(6) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(5) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(4) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(3) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(2) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(1) => s00_couplers_to_xbar_ARQOS,
      s_axi_arqos(0) => s00_couplers_to_xbar_ARQOS,
      s_axi_arready(4) => s04_couplers_to_xbar_ARREADY(4),
      s_axi_arready(3) => s03_couplers_to_xbar_ARREADY(3),
      s_axi_arready(2) => s02_couplers_to_xbar_ARREADY(2),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(14 downto 12) => s04_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(11 downto 9) => s03_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(8 downto 6) => s02_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arsize(5) => s01_couplers_to_xbar_ARSIZE,
      s_axi_arsize(4) => s01_couplers_to_xbar_ARSIZE,
      s_axi_arsize(3) => s01_couplers_to_xbar_ARSIZE,
      s_axi_arsize(2) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arsize(1) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arsize(0) => s00_couplers_to_xbar_ARSIZE,
      s_axi_arvalid(4) => s04_couplers_to_xbar_ARVALID(0),
      s_axi_arvalid(3) => s03_couplers_to_xbar_ARVALID,
      s_axi_arvalid(2) => s02_couplers_to_xbar_ARVALID,
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(159 downto 128) => s04_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(127 downto 96) => B"00000000000000000000000000000000",
      s_axi_awaddr(95 downto 64) => s02_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awaddr(63) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(62) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(61) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(60) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(59) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(58) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(57) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(56) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(55) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(54) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(53) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(52) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(51) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(50) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(49) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(48) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(47) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(46) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(45) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(44) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(43) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(42) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(41) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(40) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(39) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(38) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(37) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(36) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(35) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(34) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(33) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(32) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(31) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(30) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(29) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(28) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(27) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(26) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(25) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(24) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(23) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(22) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(21) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(20) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(19) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(18) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(17) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(16) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(15) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(14) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(13) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(12) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(11) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(10) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(9) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(8) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(7) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(6) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(5) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(4) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(3) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(2) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(1) => s00_couplers_to_xbar_AWADDR,
      s_axi_awaddr(0) => s00_couplers_to_xbar_AWADDR,
      s_axi_awburst(9 downto 8) => s04_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(7 downto 6) => B"00",
      s_axi_awburst(5 downto 4) => s02_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awburst(3) => s01_couplers_to_xbar_AWBURST,
      s_axi_awburst(2) => s01_couplers_to_xbar_AWBURST,
      s_axi_awburst(1) => s00_couplers_to_xbar_AWBURST,
      s_axi_awburst(0) => s00_couplers_to_xbar_AWBURST,
      s_axi_awcache(19 downto 16) => s04_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(15 downto 12) => B"0000",
      s_axi_awcache(11 downto 8) => s02_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awcache(7) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(6) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(5) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(4) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(3) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(2) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(1) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awcache(0) => s00_couplers_to_xbar_AWCACHE,
      s_axi_awid(14 downto 13) => B"00",
      s_axi_awid(12) => s04_couplers_to_xbar_AWID(0),
      s_axi_awid(11 downto 6) => B"000000",
      s_axi_awid(5) => s01_couplers_to_xbar_AWID,
      s_axi_awid(4) => s01_couplers_to_xbar_AWID,
      s_axi_awid(3) => s01_couplers_to_xbar_AWID,
      s_axi_awid(2) => s00_couplers_to_xbar_AWID,
      s_axi_awid(1) => s00_couplers_to_xbar_AWID,
      s_axi_awid(0) => s00_couplers_to_xbar_AWID,
      s_axi_awlen(39 downto 32) => s04_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(31 downto 24) => B"00000000",
      s_axi_awlen(23 downto 16) => s02_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlen(15) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(14) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(13) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(12) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(11) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(10) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(9) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(8) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(7) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(6) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(5) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(4) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(3) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(2) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(1) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlen(0) => s00_couplers_to_xbar_AWLEN,
      s_axi_awlock(4) => s04_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(3) => '0',
      s_axi_awlock(2) => s02_couplers_to_xbar_AWLOCK(0),
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK,
      s_axi_awprot(14 downto 12) => s04_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(11 downto 9) => B"000",
      s_axi_awprot(8 downto 6) => s02_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awprot(5) => s01_couplers_to_xbar_AWPROT,
      s_axi_awprot(4) => s01_couplers_to_xbar_AWPROT,
      s_axi_awprot(3) => s01_couplers_to_xbar_AWPROT,
      s_axi_awprot(2) => s00_couplers_to_xbar_AWPROT,
      s_axi_awprot(1) => s00_couplers_to_xbar_AWPROT,
      s_axi_awprot(0) => s00_couplers_to_xbar_AWPROT,
      s_axi_awqos(19 downto 16) => s04_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(15 downto 12) => B"0000",
      s_axi_awqos(11 downto 8) => s02_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awqos(7) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(6) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(5) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(4) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(3) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(2) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(1) => s00_couplers_to_xbar_AWQOS,
      s_axi_awqos(0) => s00_couplers_to_xbar_AWQOS,
      s_axi_awready(4) => s04_couplers_to_xbar_AWREADY(4),
      s_axi_awready(3) => NLW_xbar_s_axi_awready_UNCONNECTED(3),
      s_axi_awready(2) => s02_couplers_to_xbar_AWREADY(2),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(14 downto 12) => s04_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(11 downto 9) => B"000",
      s_axi_awsize(8 downto 6) => s02_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awsize(5) => s01_couplers_to_xbar_AWSIZE,
      s_axi_awsize(4) => s01_couplers_to_xbar_AWSIZE,
      s_axi_awsize(3) => s01_couplers_to_xbar_AWSIZE,
      s_axi_awsize(2) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awsize(1) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awsize(0) => s00_couplers_to_xbar_AWSIZE,
      s_axi_awvalid(4) => s04_couplers_to_xbar_AWVALID(0),
      s_axi_awvalid(3) => '0',
      s_axi_awvalid(2) => s02_couplers_to_xbar_AWVALID,
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(14 downto 12) => s04_couplers_to_xbar_BID(14 downto 12),
      s_axi_bid(11 downto 6) => NLW_xbar_s_axi_bid_UNCONNECTED(11 downto 6),
      s_axi_bid(5 downto 3) => s01_couplers_to_xbar_BID(5 downto 3),
      s_axi_bid(2 downto 0) => s00_couplers_to_xbar_BID(2 downto 0),
      s_axi_bready(4) => s04_couplers_to_xbar_BREADY(0),
      s_axi_bready(3) => '0',
      s_axi_bready(2) => s02_couplers_to_xbar_BREADY,
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(9 downto 8) => s04_couplers_to_xbar_BRESP(9 downto 8),
      s_axi_bresp(7 downto 6) => NLW_xbar_s_axi_bresp_UNCONNECTED(7 downto 6),
      s_axi_bresp(5 downto 4) => s02_couplers_to_xbar_BRESP(5 downto 4),
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(4) => s04_couplers_to_xbar_BVALID(4),
      s_axi_bvalid(3) => NLW_xbar_s_axi_bvalid_UNCONNECTED(3),
      s_axi_bvalid(2) => s02_couplers_to_xbar_BVALID(2),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(159 downto 128) => s04_couplers_to_xbar_RDATA(159 downto 128),
      s_axi_rdata(127 downto 96) => s03_couplers_to_xbar_RDATA(127 downto 96),
      s_axi_rdata(95 downto 64) => s02_couplers_to_xbar_RDATA(95 downto 64),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(14 downto 12) => s04_couplers_to_xbar_RID(14 downto 12),
      s_axi_rid(11 downto 6) => NLW_xbar_s_axi_rid_UNCONNECTED(11 downto 6),
      s_axi_rid(5 downto 3) => s01_couplers_to_xbar_RID(5 downto 3),
      s_axi_rid(2 downto 0) => s00_couplers_to_xbar_RID(2 downto 0),
      s_axi_rlast(4) => s04_couplers_to_xbar_RLAST(4),
      s_axi_rlast(3) => s03_couplers_to_xbar_RLAST(3),
      s_axi_rlast(2) => s02_couplers_to_xbar_RLAST(2),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(4) => s04_couplers_to_xbar_RREADY(0),
      s_axi_rready(3) => s03_couplers_to_xbar_RREADY,
      s_axi_rready(2) => s02_couplers_to_xbar_RREADY,
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(9 downto 8) => s04_couplers_to_xbar_RRESP(9 downto 8),
      s_axi_rresp(7 downto 6) => s03_couplers_to_xbar_RRESP(7 downto 6),
      s_axi_rresp(5 downto 4) => s02_couplers_to_xbar_RRESP(5 downto 4),
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(4) => s04_couplers_to_xbar_RVALID(4),
      s_axi_rvalid(3) => s03_couplers_to_xbar_RVALID(3),
      s_axi_rvalid(2) => s02_couplers_to_xbar_RVALID(2),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(159 downto 128) => s04_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(127 downto 96) => B"00000000000000000000000000000000",
      s_axi_wdata(95 downto 64) => s02_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wdata(63) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(62) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(61) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(60) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(59) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(58) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(57) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(56) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(55) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(54) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(53) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(52) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(51) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(50) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(49) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(48) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(47) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(46) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(45) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(44) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(43) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(42) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(41) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(40) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(39) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(38) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(37) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(36) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(35) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(34) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(33) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(32) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(31) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(30) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(29) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(28) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(27) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(26) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(25) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(24) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(23) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(22) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(21) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(20) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(19) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(18) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(17) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(16) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(15) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(14) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(13) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(12) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(11) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(10) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(9) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(8) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(7) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(6) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(5) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(4) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(3) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(2) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(1) => s00_couplers_to_xbar_WDATA,
      s_axi_wdata(0) => s00_couplers_to_xbar_WDATA,
      s_axi_wlast(4) => s04_couplers_to_xbar_WLAST(0),
      s_axi_wlast(3) => '0',
      s_axi_wlast(2) => s02_couplers_to_xbar_WLAST,
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(4) => s04_couplers_to_xbar_WREADY(4),
      s_axi_wready(3) => NLW_xbar_s_axi_wready_UNCONNECTED(3),
      s_axi_wready(2) => s02_couplers_to_xbar_WREADY(2),
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(19 downto 16) => s04_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(15 downto 12) => B"1111",
      s_axi_wstrb(11 downto 8) => s02_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wstrb(7) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(6) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(5) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(4) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(3) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(2) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(1) => s00_couplers_to_xbar_WSTRB,
      s_axi_wstrb(0) => s00_couplers_to_xbar_WSTRB,
      s_axi_wvalid(4) => s04_couplers_to_xbar_WVALID(0),
      s_axi_wvalid(3) => '0',
      s_axi_wvalid(2) => s02_couplers_to_xbar_WVALID,
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arlock : out STD_LOGIC;
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awlock : out STD_LOGIC;
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rlast : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wlast : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M02_ACLK : in STD_LOGIC;
    M02_ARESETN : in STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC;
    M02_AXI_arburst : out STD_LOGIC;
    M02_AXI_arcache : out STD_LOGIC;
    M02_AXI_arlen : out STD_LOGIC;
    M02_AXI_arlock : out STD_LOGIC;
    M02_AXI_arprot : out STD_LOGIC;
    M02_AXI_arqos : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_arregion : out STD_LOGIC;
    M02_AXI_arsize : out STD_LOGIC;
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC;
    M02_AXI_awburst : out STD_LOGIC;
    M02_AXI_awcache : out STD_LOGIC;
    M02_AXI_awlen : out STD_LOGIC;
    M02_AXI_awlock : out STD_LOGIC;
    M02_AXI_awprot : out STD_LOGIC;
    M02_AXI_awqos : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_awregion : out STD_LOGIC;
    M02_AXI_awsize : out STD_LOGIC;
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC;
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC;
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M02_AXI_rresp : in STD_LOGIC;
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC;
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_wstrb : out STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M03_ACLK : in STD_LOGIC;
    M03_ARESETN : in STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rready : out STD_LOGIC;
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M04_ACLK : in STD_LOGIC;
    M04_ARESETN : in STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_rready : out STD_LOGIC;
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_wvalid : out STD_LOGIC;
    M05_ACLK : in STD_LOGIC;
    M05_ARESETN : in STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rready : out STD_LOGIC;
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M06_ACLK : in STD_LOGIC;
    M06_ARESETN : in STD_LOGIC;
    M06_AXI_araddr : out STD_LOGIC;
    M06_AXI_arburst : out STD_LOGIC;
    M06_AXI_arcache : out STD_LOGIC;
    M06_AXI_arlen : out STD_LOGIC;
    M06_AXI_arlock : out STD_LOGIC;
    M06_AXI_arprot : out STD_LOGIC;
    M06_AXI_arqos : out STD_LOGIC;
    M06_AXI_arready : in STD_LOGIC;
    M06_AXI_arregion : out STD_LOGIC;
    M06_AXI_arsize : out STD_LOGIC;
    M06_AXI_arvalid : out STD_LOGIC;
    M06_AXI_awaddr : out STD_LOGIC;
    M06_AXI_awburst : out STD_LOGIC;
    M06_AXI_awcache : out STD_LOGIC;
    M06_AXI_awlen : out STD_LOGIC;
    M06_AXI_awlock : out STD_LOGIC;
    M06_AXI_awprot : out STD_LOGIC;
    M06_AXI_awqos : out STD_LOGIC;
    M06_AXI_awready : in STD_LOGIC;
    M06_AXI_awregion : out STD_LOGIC;
    M06_AXI_awsize : out STD_LOGIC;
    M06_AXI_awvalid : out STD_LOGIC;
    M06_AXI_bready : out STD_LOGIC;
    M06_AXI_bresp : in STD_LOGIC;
    M06_AXI_bvalid : in STD_LOGIC;
    M06_AXI_rdata : in STD_LOGIC;
    M06_AXI_rlast : in STD_LOGIC;
    M06_AXI_rready : out STD_LOGIC;
    M06_AXI_rresp : in STD_LOGIC;
    M06_AXI_rvalid : in STD_LOGIC;
    M06_AXI_wdata : out STD_LOGIC;
    M06_AXI_wlast : out STD_LOGIC;
    M06_AXI_wready : in STD_LOGIC;
    M06_AXI_wstrb : out STD_LOGIC;
    M06_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S01_ACLK : in STD_LOGIC;
    S01_ARESETN : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC;
    S01_AXI_arburst : in STD_LOGIC;
    S01_AXI_arcache : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC;
    S01_AXI_arlen : in STD_LOGIC;
    S01_AXI_arlock : in STD_LOGIC;
    S01_AXI_arprot : in STD_LOGIC;
    S01_AXI_arqos : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_arsize : in STD_LOGIC;
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_awaddr : in STD_LOGIC;
    S01_AXI_awburst : in STD_LOGIC;
    S01_AXI_awcache : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC;
    S01_AXI_awlen : in STD_LOGIC;
    S01_AXI_awlock : in STD_LOGIC;
    S01_AXI_awprot : in STD_LOGIC;
    S01_AXI_awqos : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_awsize : in STD_LOGIC;
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_bresp : out STD_LOGIC;
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC;
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S01_AXI_rresp : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC;
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_wstrb : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC
  );
end system_ps7_0_axi_periph_0;

architecture STRUCTURE of system_ps7_0_axi_periph_0 is
  component system_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 25 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 55 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 20 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 27 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 223 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 13 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 6 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component system_xbar_0;
  signal M00_ACLK_1 : STD_LOGIC;
  signal M00_ARESETN_1 : STD_LOGIC;
  signal M01_ACLK_1 : STD_LOGIC;
  signal M01_ARESETN_1 : STD_LOGIC;
  signal M02_ACLK_1 : STD_LOGIC;
  signal M02_ARESETN_1 : STD_LOGIC;
  signal M03_ACLK_1 : STD_LOGIC;
  signal M03_ARESETN_1 : STD_LOGIC;
  signal M04_ACLK_1 : STD_LOGIC;
  signal M04_ARESETN_1 : STD_LOGIC;
  signal M05_ACLK_1 : STD_LOGIC;
  signal M05_ARESETN_1 : STD_LOGIC;
  signal M06_ACLK_1 : STD_LOGIC;
  signal M06_ARESETN_1 : STD_LOGIC;
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC;
  signal S01_ACLK_1 : STD_LOGIC;
  signal S01_ARESETN_1 : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m02_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m03_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m03_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m04_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m04_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m05_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m05_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARBURST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARCACHE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARLEN : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARLOCK : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARQOS : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARREGION : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARSIZE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWBURST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWCACHE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWLEN : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWLOCK : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWQOS : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWREGION : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWSIZE : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RLAST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WLAST : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m06_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARADDR : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARBURST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARCACHE : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARLEN : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARLOCK : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARPROT : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARQOS : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARSIZE : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWADDR : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWBURST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWCACHE : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWLEN : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWLOCK : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWPROT : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWQOS : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWSIZE : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_BID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_BRESP : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RDATA : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RRESP : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_WDATA : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_WSTRB : STD_LOGIC;
  signal ps7_0_axi_periph_to_s01_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_xbar_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_xbar_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal s00_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARADDR : STD_LOGIC;
  signal s01_couplers_to_xbar_ARBURST : STD_LOGIC;
  signal s01_couplers_to_xbar_ARCACHE : STD_LOGIC;
  signal s01_couplers_to_xbar_ARID : STD_LOGIC;
  signal s01_couplers_to_xbar_ARLEN : STD_LOGIC;
  signal s01_couplers_to_xbar_ARLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_ARPROT : STD_LOGIC;
  signal s01_couplers_to_xbar_ARQOS : STD_LOGIC;
  signal s01_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_ARSIZE : STD_LOGIC;
  signal s01_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWADDR : STD_LOGIC;
  signal s01_couplers_to_xbar_AWBURST : STD_LOGIC;
  signal s01_couplers_to_xbar_AWCACHE : STD_LOGIC;
  signal s01_couplers_to_xbar_AWID : STD_LOGIC;
  signal s01_couplers_to_xbar_AWLEN : STD_LOGIC;
  signal s01_couplers_to_xbar_AWLOCK : STD_LOGIC;
  signal s01_couplers_to_xbar_AWPROT : STD_LOGIC;
  signal s01_couplers_to_xbar_AWQOS : STD_LOGIC;
  signal s01_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_AWSIZE : STD_LOGIC;
  signal s01_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s01_couplers_to_xbar_BID : STD_LOGIC_VECTOR ( 25 downto 13 );
  signal s01_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal s01_couplers_to_xbar_RID : STD_LOGIC_VECTOR ( 25 downto 13 );
  signal s01_couplers_to_xbar_RLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s01_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal s01_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WDATA : STD_LOGIC;
  signal s01_couplers_to_xbar_WLAST : STD_LOGIC;
  signal s01_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s01_couplers_to_xbar_WSTRB : STD_LOGIC;
  signal s01_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xbar_to_m00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_ARCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_ARLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWBURST : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal xbar_to_m01_couplers_AWCACHE : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_AWLEN : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal xbar_to_m01_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWSIZE : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WLAST : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m02_couplers_ARADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_ARBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_ARCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_ARLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_ARPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_ARREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_ARSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_ARVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWADDR : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_AWBURST : STD_LOGIC_VECTOR ( 5 downto 4 );
  signal xbar_to_m02_couplers_AWCACHE : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWLEN : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal xbar_to_m02_couplers_AWLOCK : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_AWPROT : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWQOS : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_AWREGION : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_AWSIZE : STD_LOGIC_VECTOR ( 8 downto 6 );
  signal xbar_to_m02_couplers_AWVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m02_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m02_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m02_couplers_RREADY : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m02_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m02_couplers_WDATA : STD_LOGIC_VECTOR ( 95 downto 64 );
  signal xbar_to_m02_couplers_WLAST : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m02_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m02_couplers_WSTRB : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal xbar_to_m02_couplers_WVALID : STD_LOGIC_VECTOR ( 2 to 2 );
  signal xbar_to_m03_couplers_ARADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_ARBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_ARCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_ARLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_ARPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_ARREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_ARSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_ARVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWADDR : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_AWBURST : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal xbar_to_m03_couplers_AWCACHE : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWLEN : STD_LOGIC_VECTOR ( 31 downto 24 );
  signal xbar_to_m03_couplers_AWLOCK : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_AWPROT : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWQOS : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_AWREGION : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_AWSIZE : STD_LOGIC_VECTOR ( 11 downto 9 );
  signal xbar_to_m03_couplers_AWVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m03_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m03_couplers_RREADY : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m03_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m03_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 96 );
  signal xbar_to_m03_couplers_WLAST : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m03_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m03_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal xbar_to_m03_couplers_WVALID : STD_LOGIC_VECTOR ( 3 to 3 );
  signal xbar_to_m04_couplers_ARADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_ARVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_AWADDR : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_AWVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m04_couplers_RREADY : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m04_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m04_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m04_couplers_WDATA : STD_LOGIC_VECTOR ( 159 downto 128 );
  signal xbar_to_m04_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m04_couplers_WSTRB : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal xbar_to_m04_couplers_WVALID : STD_LOGIC_VECTOR ( 4 to 4 );
  signal xbar_to_m05_couplers_ARADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_ARBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_ARCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_ARLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_ARPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_ARREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_ARSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_ARVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWADDR : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_AWBURST : STD_LOGIC_VECTOR ( 11 downto 10 );
  signal xbar_to_m05_couplers_AWCACHE : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWLEN : STD_LOGIC_VECTOR ( 47 downto 40 );
  signal xbar_to_m05_couplers_AWLOCK : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_AWPROT : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWQOS : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_AWREGION : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_AWSIZE : STD_LOGIC_VECTOR ( 17 downto 15 );
  signal xbar_to_m05_couplers_AWVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m05_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m05_couplers_RREADY : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m05_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m05_couplers_WDATA : STD_LOGIC_VECTOR ( 191 downto 160 );
  signal xbar_to_m05_couplers_WLAST : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m05_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m05_couplers_WSTRB : STD_LOGIC_VECTOR ( 23 downto 20 );
  signal xbar_to_m05_couplers_WVALID : STD_LOGIC_VECTOR ( 5 to 5 );
  signal xbar_to_m06_couplers_ARADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_ARBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_ARCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_ARLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_ARPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_ARREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_ARSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_ARVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWADDR : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_AWBURST : STD_LOGIC_VECTOR ( 13 downto 12 );
  signal xbar_to_m06_couplers_AWCACHE : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWLEN : STD_LOGIC_VECTOR ( 55 downto 48 );
  signal xbar_to_m06_couplers_AWLOCK : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_AWPROT : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWQOS : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_AWREGION : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_AWSIZE : STD_LOGIC_VECTOR ( 20 downto 18 );
  signal xbar_to_m06_couplers_AWVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m06_couplers_RLAST : STD_LOGIC;
  signal xbar_to_m06_couplers_RREADY : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m06_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m06_couplers_WDATA : STD_LOGIC_VECTOR ( 223 downto 192 );
  signal xbar_to_m06_couplers_WLAST : STD_LOGIC_VECTOR ( 6 to 6 );
  signal xbar_to_m06_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m06_couplers_WSTRB : STD_LOGIC_VECTOR ( 27 downto 24 );
  signal xbar_to_m06_couplers_WVALID : STD_LOGIC_VECTOR ( 6 to 6 );
  signal NLW_xbar_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal NLW_xbar_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal NLW_xbar_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal NLW_xbar_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal NLW_xbar_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal NLW_xbar_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal NLW_xbar_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 8 );
  signal NLW_xbar_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 16 );
  signal NLW_xbar_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 39 downto 32 );
  signal NLW_xbar_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal NLW_xbar_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal NLW_xbar_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 19 downto 4 );
  signal NLW_xbar_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 14 downto 12 );
  signal NLW_xbar_m_axi_wlast_UNCONNECTED : STD_LOGIC_VECTOR ( 4 to 4 );
begin
  M00_ACLK_1 <= M00_ACLK;
  M00_ARESETN_1 <= M00_ARESETN;
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arvalid <= m00_couplers_to_ps7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awvalid <= m00_couplers_to_ps7_0_axi_periph_AWVALID;
  M00_AXI_bready <= m00_couplers_to_ps7_0_axi_periph_BREADY;
  M00_AXI_rready <= m00_couplers_to_ps7_0_axi_periph_RREADY;
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid <= m00_couplers_to_ps7_0_axi_periph_WVALID;
  M01_ACLK_1 <= M01_ACLK;
  M01_ARESETN_1 <= M01_ARESETN;
  M01_AXI_araddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M01_AXI_arburst(1 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0);
  M01_AXI_arcache(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0);
  M01_AXI_arlen(7 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARLEN(7 downto 0);
  M01_AXI_arlock <= m01_couplers_to_ps7_0_axi_periph_ARLOCK;
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arsize(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M01_AXI_awburst(1 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0);
  M01_AXI_awcache(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0);
  M01_AXI_awlen(7 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWLEN(7 downto 0);
  M01_AXI_awlock <= m01_couplers_to_ps7_0_axi_periph_AWLOCK;
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awsize(2 downto 0) <= m01_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wlast <= m01_couplers_to_ps7_0_axi_periph_WLAST;
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  M02_ACLK_1 <= M02_ACLK;
  M02_ARESETN_1 <= M02_ARESETN;
  M02_AXI_araddr <= m02_couplers_to_ps7_0_axi_periph_ARADDR;
  M02_AXI_arburst <= m02_couplers_to_ps7_0_axi_periph_ARBURST;
  M02_AXI_arcache <= m02_couplers_to_ps7_0_axi_periph_ARCACHE;
  M02_AXI_arlen <= m02_couplers_to_ps7_0_axi_periph_ARLEN;
  M02_AXI_arlock <= m02_couplers_to_ps7_0_axi_periph_ARLOCK;
  M02_AXI_arprot <= m02_couplers_to_ps7_0_axi_periph_ARPROT;
  M02_AXI_arqos <= m02_couplers_to_ps7_0_axi_periph_ARQOS;
  M02_AXI_arregion <= m02_couplers_to_ps7_0_axi_periph_ARREGION;
  M02_AXI_arsize <= m02_couplers_to_ps7_0_axi_periph_ARSIZE;
  M02_AXI_arvalid <= m02_couplers_to_ps7_0_axi_periph_ARVALID;
  M02_AXI_awaddr <= m02_couplers_to_ps7_0_axi_periph_AWADDR;
  M02_AXI_awburst <= m02_couplers_to_ps7_0_axi_periph_AWBURST;
  M02_AXI_awcache <= m02_couplers_to_ps7_0_axi_periph_AWCACHE;
  M02_AXI_awlen <= m02_couplers_to_ps7_0_axi_periph_AWLEN;
  M02_AXI_awlock <= m02_couplers_to_ps7_0_axi_periph_AWLOCK;
  M02_AXI_awprot <= m02_couplers_to_ps7_0_axi_periph_AWPROT;
  M02_AXI_awqos <= m02_couplers_to_ps7_0_axi_periph_AWQOS;
  M02_AXI_awregion <= m02_couplers_to_ps7_0_axi_periph_AWREGION;
  M02_AXI_awsize <= m02_couplers_to_ps7_0_axi_periph_AWSIZE;
  M02_AXI_awvalid <= m02_couplers_to_ps7_0_axi_periph_AWVALID;
  M02_AXI_bready <= m02_couplers_to_ps7_0_axi_periph_BREADY;
  M02_AXI_rready <= m02_couplers_to_ps7_0_axi_periph_RREADY;
  M02_AXI_wdata <= m02_couplers_to_ps7_0_axi_periph_WDATA;
  M02_AXI_wlast <= m02_couplers_to_ps7_0_axi_periph_WLAST;
  M02_AXI_wstrb <= m02_couplers_to_ps7_0_axi_periph_WSTRB;
  M02_AXI_wvalid <= m02_couplers_to_ps7_0_axi_periph_WVALID;
  M03_ACLK_1 <= M03_ACLK;
  M03_ARESETN_1 <= M03_ARESETN;
  M03_AXI_araddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M03_AXI_arvalid <= m03_couplers_to_ps7_0_axi_periph_ARVALID;
  M03_AXI_awaddr(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M03_AXI_awvalid <= m03_couplers_to_ps7_0_axi_periph_AWVALID;
  M03_AXI_bready <= m03_couplers_to_ps7_0_axi_periph_BREADY;
  M03_AXI_rready <= m03_couplers_to_ps7_0_axi_periph_RREADY;
  M03_AXI_wdata(31 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M03_AXI_wstrb(3 downto 0) <= m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M03_AXI_wvalid <= m03_couplers_to_ps7_0_axi_periph_WVALID;
  M04_ACLK_1 <= M04_ACLK;
  M04_ARESETN_1 <= M04_ARESETN;
  M04_AXI_araddr(31) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(30) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(29) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(28) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(27) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(26) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(25) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(24) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(23) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(22) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(21) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(20) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(19) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(18) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(17) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(16) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(15) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(14) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(13) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(12) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(11) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(10) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(9) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(8) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(7) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(6) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(5) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(4) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(3) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(2) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(1) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_araddr(0) <= m04_couplers_to_ps7_0_axi_periph_ARADDR;
  M04_AXI_arvalid <= m04_couplers_to_ps7_0_axi_periph_ARVALID;
  M04_AXI_awaddr(31) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(30) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(29) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(28) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(27) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(26) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(25) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(24) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(23) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(22) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(21) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(20) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(19) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(18) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(17) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(16) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(15) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(14) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(13) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(12) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(11) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(10) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(9) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(8) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(7) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(6) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(5) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(4) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(3) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(2) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(1) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awaddr(0) <= m04_couplers_to_ps7_0_axi_periph_AWADDR;
  M04_AXI_awvalid <= m04_couplers_to_ps7_0_axi_periph_AWVALID;
  M04_AXI_bready <= m04_couplers_to_ps7_0_axi_periph_BREADY;
  M04_AXI_rready <= m04_couplers_to_ps7_0_axi_periph_RREADY;
  M04_AXI_wdata(31) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(30) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(29) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(28) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(27) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(26) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(25) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(24) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(23) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(22) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(21) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(20) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(19) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(18) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(17) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(16) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(15) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(14) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(13) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(12) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(11) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(10) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(9) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(8) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(7) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(6) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(5) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(4) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(3) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(2) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(1) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wdata(0) <= m04_couplers_to_ps7_0_axi_periph_WDATA;
  M04_AXI_wstrb(3) <= m04_couplers_to_ps7_0_axi_periph_WSTRB;
  M04_AXI_wstrb(2) <= m04_couplers_to_ps7_0_axi_periph_WSTRB;
  M04_AXI_wstrb(1) <= m04_couplers_to_ps7_0_axi_periph_WSTRB;
  M04_AXI_wstrb(0) <= m04_couplers_to_ps7_0_axi_periph_WSTRB;
  M04_AXI_wvalid <= m04_couplers_to_ps7_0_axi_periph_WVALID;
  M05_ACLK_1 <= M05_ACLK;
  M05_ARESETN_1 <= M05_ARESETN;
  M05_AXI_araddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M05_AXI_arvalid <= m05_couplers_to_ps7_0_axi_periph_ARVALID;
  M05_AXI_awaddr(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M05_AXI_awvalid <= m05_couplers_to_ps7_0_axi_periph_AWVALID;
  M05_AXI_bready <= m05_couplers_to_ps7_0_axi_periph_BREADY;
  M05_AXI_rready <= m05_couplers_to_ps7_0_axi_periph_RREADY;
  M05_AXI_wdata(31 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M05_AXI_wstrb(3 downto 0) <= m05_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M05_AXI_wvalid <= m05_couplers_to_ps7_0_axi_periph_WVALID;
  M06_ACLK_1 <= M06_ACLK;
  M06_ARESETN_1 <= M06_ARESETN;
  M06_AXI_araddr <= m06_couplers_to_ps7_0_axi_periph_ARADDR;
  M06_AXI_arburst <= m06_couplers_to_ps7_0_axi_periph_ARBURST;
  M06_AXI_arcache <= m06_couplers_to_ps7_0_axi_periph_ARCACHE;
  M06_AXI_arlen <= m06_couplers_to_ps7_0_axi_periph_ARLEN;
  M06_AXI_arlock <= m06_couplers_to_ps7_0_axi_periph_ARLOCK;
  M06_AXI_arprot <= m06_couplers_to_ps7_0_axi_periph_ARPROT;
  M06_AXI_arqos <= m06_couplers_to_ps7_0_axi_periph_ARQOS;
  M06_AXI_arregion <= m06_couplers_to_ps7_0_axi_periph_ARREGION;
  M06_AXI_arsize <= m06_couplers_to_ps7_0_axi_periph_ARSIZE;
  M06_AXI_arvalid <= m06_couplers_to_ps7_0_axi_periph_ARVALID;
  M06_AXI_awaddr <= m06_couplers_to_ps7_0_axi_periph_AWADDR;
  M06_AXI_awburst <= m06_couplers_to_ps7_0_axi_periph_AWBURST;
  M06_AXI_awcache <= m06_couplers_to_ps7_0_axi_periph_AWCACHE;
  M06_AXI_awlen <= m06_couplers_to_ps7_0_axi_periph_AWLEN;
  M06_AXI_awlock <= m06_couplers_to_ps7_0_axi_periph_AWLOCK;
  M06_AXI_awprot <= m06_couplers_to_ps7_0_axi_periph_AWPROT;
  M06_AXI_awqos <= m06_couplers_to_ps7_0_axi_periph_AWQOS;
  M06_AXI_awregion <= m06_couplers_to_ps7_0_axi_periph_AWREGION;
  M06_AXI_awsize <= m06_couplers_to_ps7_0_axi_periph_AWSIZE;
  M06_AXI_awvalid <= m06_couplers_to_ps7_0_axi_periph_AWVALID;
  M06_AXI_bready <= m06_couplers_to_ps7_0_axi_periph_BREADY;
  M06_AXI_rready <= m06_couplers_to_ps7_0_axi_periph_RREADY;
  M06_AXI_wdata <= m06_couplers_to_ps7_0_axi_periph_WDATA;
  M06_AXI_wlast <= m06_couplers_to_ps7_0_axi_periph_WLAST;
  M06_AXI_wstrb <= m06_couplers_to_ps7_0_axi_periph_WSTRB;
  M06_AXI_wvalid <= m06_couplers_to_ps7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1 <= S00_ARESETN;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  S01_ACLK_1 <= S01_ACLK;
  S01_ARESETN_1 <= S01_ARESETN;
  S01_AXI_arready <= ps7_0_axi_periph_to_s01_couplers_ARREADY;
  S01_AXI_awready <= ps7_0_axi_periph_to_s01_couplers_AWREADY;
  S01_AXI_bid <= ps7_0_axi_periph_to_s01_couplers_BID;
  S01_AXI_bresp <= ps7_0_axi_periph_to_s01_couplers_BRESP;
  S01_AXI_bvalid <= ps7_0_axi_periph_to_s01_couplers_BVALID;
  S01_AXI_rdata <= ps7_0_axi_periph_to_s01_couplers_RDATA;
  S01_AXI_rid <= ps7_0_axi_periph_to_s01_couplers_RID;
  S01_AXI_rlast <= ps7_0_axi_periph_to_s01_couplers_RLAST;
  S01_AXI_rresp <= ps7_0_axi_periph_to_s01_couplers_RRESP;
  S01_AXI_rvalid <= ps7_0_axi_periph_to_s01_couplers_RVALID;
  S01_AXI_wready <= ps7_0_axi_periph_to_s01_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY <= M00_AXI_arready;
  m00_couplers_to_ps7_0_axi_periph_AWREADY <= M00_AXI_awready;
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  m00_couplers_to_ps7_0_axi_periph_WREADY <= M00_AXI_wready;
  m01_couplers_to_ps7_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps7_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RLAST <= M01_AXI_rlast;
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps7_0_axi_periph_WREADY <= M01_AXI_wready;
  m02_couplers_to_ps7_0_axi_periph_ARREADY <= M02_AXI_arready;
  m02_couplers_to_ps7_0_axi_periph_AWREADY <= M02_AXI_awready;
  m02_couplers_to_ps7_0_axi_periph_BRESP <= M02_AXI_bresp;
  m02_couplers_to_ps7_0_axi_periph_BVALID <= M02_AXI_bvalid;
  m02_couplers_to_ps7_0_axi_periph_RDATA <= M02_AXI_rdata;
  m02_couplers_to_ps7_0_axi_periph_RLAST <= M02_AXI_rlast;
  m02_couplers_to_ps7_0_axi_periph_RRESP <= M02_AXI_rresp;
  m02_couplers_to_ps7_0_axi_periph_RVALID <= M02_AXI_rvalid;
  m02_couplers_to_ps7_0_axi_periph_WREADY <= M02_AXI_wready;
  m03_couplers_to_ps7_0_axi_periph_ARREADY <= M03_AXI_arready;
  m03_couplers_to_ps7_0_axi_periph_AWREADY <= M03_AXI_awready;
  m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M03_AXI_bresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_BVALID <= M03_AXI_bvalid;
  m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M03_AXI_rdata(31 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M03_AXI_rresp(1 downto 0);
  m03_couplers_to_ps7_0_axi_periph_RVALID <= M03_AXI_rvalid;
  m03_couplers_to_ps7_0_axi_periph_WREADY <= M03_AXI_wready;
  m04_couplers_to_ps7_0_axi_periph_ARREADY <= M04_AXI_arready;
  m04_couplers_to_ps7_0_axi_periph_AWREADY <= M04_AXI_awready;
  m04_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M04_AXI_bresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_BVALID <= M04_AXI_bvalid;
  m04_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M04_AXI_rdata(31 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M04_AXI_rresp(1 downto 0);
  m04_couplers_to_ps7_0_axi_periph_RVALID <= M04_AXI_rvalid;
  m04_couplers_to_ps7_0_axi_periph_WREADY <= M04_AXI_wready;
  m05_couplers_to_ps7_0_axi_periph_ARREADY <= M05_AXI_arready;
  m05_couplers_to_ps7_0_axi_periph_AWREADY <= M05_AXI_awready;
  m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M05_AXI_bresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_BVALID <= M05_AXI_bvalid;
  m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M05_AXI_rdata(31 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M05_AXI_rresp(1 downto 0);
  m05_couplers_to_ps7_0_axi_periph_RVALID <= M05_AXI_rvalid;
  m05_couplers_to_ps7_0_axi_periph_WREADY <= M05_AXI_wready;
  m06_couplers_to_ps7_0_axi_periph_ARREADY <= M06_AXI_arready;
  m06_couplers_to_ps7_0_axi_periph_AWREADY <= M06_AXI_awready;
  m06_couplers_to_ps7_0_axi_periph_BRESP <= M06_AXI_bresp;
  m06_couplers_to_ps7_0_axi_periph_BVALID <= M06_AXI_bvalid;
  m06_couplers_to_ps7_0_axi_periph_RDATA <= M06_AXI_rdata;
  m06_couplers_to_ps7_0_axi_periph_RLAST <= M06_AXI_rlast;
  m06_couplers_to_ps7_0_axi_periph_RRESP <= M06_AXI_rresp;
  m06_couplers_to_ps7_0_axi_periph_RVALID <= M06_AXI_rvalid;
  m06_couplers_to_ps7_0_axi_periph_WREADY <= M06_AXI_wready;
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  ps7_0_axi_periph_to_s01_couplers_ARADDR <= S01_AXI_araddr;
  ps7_0_axi_periph_to_s01_couplers_ARBURST <= S01_AXI_arburst;
  ps7_0_axi_periph_to_s01_couplers_ARCACHE <= S01_AXI_arcache;
  ps7_0_axi_periph_to_s01_couplers_ARID <= S01_AXI_arid;
  ps7_0_axi_periph_to_s01_couplers_ARLEN <= S01_AXI_arlen;
  ps7_0_axi_periph_to_s01_couplers_ARLOCK <= S01_AXI_arlock;
  ps7_0_axi_periph_to_s01_couplers_ARPROT <= S01_AXI_arprot;
  ps7_0_axi_periph_to_s01_couplers_ARQOS <= S01_AXI_arqos;
  ps7_0_axi_periph_to_s01_couplers_ARSIZE <= S01_AXI_arsize;
  ps7_0_axi_periph_to_s01_couplers_ARVALID <= S01_AXI_arvalid;
  ps7_0_axi_periph_to_s01_couplers_AWADDR <= S01_AXI_awaddr;
  ps7_0_axi_periph_to_s01_couplers_AWBURST <= S01_AXI_awburst;
  ps7_0_axi_periph_to_s01_couplers_AWCACHE <= S01_AXI_awcache;
  ps7_0_axi_periph_to_s01_couplers_AWID <= S01_AXI_awid;
  ps7_0_axi_periph_to_s01_couplers_AWLEN <= S01_AXI_awlen;
  ps7_0_axi_periph_to_s01_couplers_AWLOCK <= S01_AXI_awlock;
  ps7_0_axi_periph_to_s01_couplers_AWPROT <= S01_AXI_awprot;
  ps7_0_axi_periph_to_s01_couplers_AWQOS <= S01_AXI_awqos;
  ps7_0_axi_periph_to_s01_couplers_AWSIZE <= S01_AXI_awsize;
  ps7_0_axi_periph_to_s01_couplers_AWVALID <= S01_AXI_awvalid;
  ps7_0_axi_periph_to_s01_couplers_BREADY <= S01_AXI_bready;
  ps7_0_axi_periph_to_s01_couplers_RREADY <= S01_AXI_rready;
  ps7_0_axi_periph_to_s01_couplers_WDATA <= S01_AXI_wdata;
  ps7_0_axi_periph_to_s01_couplers_WLAST <= S01_AXI_wlast;
  ps7_0_axi_periph_to_s01_couplers_WSTRB <= S01_AXI_wstrb;
  ps7_0_axi_periph_to_s01_couplers_WVALID <= S01_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1H7AUOX
     port map (
      M_ACLK => M00_ACLK_1,
      M_ARESETN => M00_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m00_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m00_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m00_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m00_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m00_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m00_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m00_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m00_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m00_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m00_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      S_AXI_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => xbar_to_m00_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      S_AXI_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      S_AXI_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => xbar_to_m00_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      S_AXI_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m00_couplers_RLAST,
      S_AXI_rready => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wlast => xbar_to_m00_couplers_WLAST(0),
      S_AXI_wready => xbar_to_m00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_4Y7TYO
     port map (
      M_ACLK => M01_ACLK_1,
      M_ARESETN => M01_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARCACHE(3 downto 0),
      M_AXI_arlen(7 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARLEN(7 downto 0),
      M_AXI_arlock => m01_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arsize(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_ARSIZE(2 downto 0),
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWCACHE(3 downto 0),
      M_AXI_awlen(7 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWLEN(7 downto 0),
      M_AXI_awlock => m01_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awsize(2 downto 0) => m01_couplers_to_ps7_0_axi_periph_AWSIZE(2 downto 0),
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rlast => m01_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wlast => m01_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      S_AXI_arburst(1 downto 0) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      S_AXI_arcache(3 downto 0) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      S_AXI_arlen(7 downto 0) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      S_AXI_arlock => xbar_to_m01_couplers_ARLOCK(1),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(31 downto 0) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      S_AXI_awburst(1 downto 0) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      S_AXI_awcache(3 downto 0) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      S_AXI_awlen(7 downto 0) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      S_AXI_awlock => xbar_to_m01_couplers_AWLOCK(1),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m01_couplers_RLAST,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wlast => xbar_to_m01_couplers_WLAST(1),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
m02_couplers: entity work.m02_couplers_imp_FKL2TE
     port map (
      M_ACLK => M02_ACLK_1,
      M_ARESETN => M02_ARESETN_1,
      M_AXI_araddr => m02_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arburst => m02_couplers_to_ps7_0_axi_periph_ARBURST,
      M_AXI_arcache => m02_couplers_to_ps7_0_axi_periph_ARCACHE,
      M_AXI_arlen => m02_couplers_to_ps7_0_axi_periph_ARLEN,
      M_AXI_arlock => m02_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m02_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arqos => m02_couplers_to_ps7_0_axi_periph_ARQOS,
      M_AXI_arready => m02_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arregion => m02_couplers_to_ps7_0_axi_periph_ARREGION,
      M_AXI_arsize => m02_couplers_to_ps7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m02_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m02_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awburst => m02_couplers_to_ps7_0_axi_periph_AWBURST,
      M_AXI_awcache => m02_couplers_to_ps7_0_axi_periph_AWCACHE,
      M_AXI_awlen => m02_couplers_to_ps7_0_axi_periph_AWLEN,
      M_AXI_awlock => m02_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m02_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awqos => m02_couplers_to_ps7_0_axi_periph_AWQOS,
      M_AXI_awready => m02_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awregion => m02_couplers_to_ps7_0_axi_periph_AWREGION,
      M_AXI_awsize => m02_couplers_to_ps7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m02_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m02_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m02_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m02_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m02_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rlast => m02_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m02_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m02_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m02_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m02_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wlast => m02_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m02_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m02_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m02_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m02_couplers_ARADDR(64),
      S_AXI_arburst => xbar_to_m02_couplers_ARBURST(4),
      S_AXI_arcache => xbar_to_m02_couplers_ARCACHE(8),
      S_AXI_arlen => xbar_to_m02_couplers_ARLEN(16),
      S_AXI_arlock => xbar_to_m02_couplers_ARLOCK(2),
      S_AXI_arprot => xbar_to_m02_couplers_ARPROT(6),
      S_AXI_arqos => xbar_to_m02_couplers_ARQOS(8),
      S_AXI_arready => xbar_to_m02_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m02_couplers_ARREGION(8),
      S_AXI_arsize => xbar_to_m02_couplers_ARSIZE(6),
      S_AXI_arvalid => xbar_to_m02_couplers_ARVALID(2),
      S_AXI_awaddr => xbar_to_m02_couplers_AWADDR(64),
      S_AXI_awburst => xbar_to_m02_couplers_AWBURST(4),
      S_AXI_awcache => xbar_to_m02_couplers_AWCACHE(8),
      S_AXI_awlen => xbar_to_m02_couplers_AWLEN(16),
      S_AXI_awlock => xbar_to_m02_couplers_AWLOCK(2),
      S_AXI_awprot => xbar_to_m02_couplers_AWPROT(6),
      S_AXI_awqos => xbar_to_m02_couplers_AWQOS(8),
      S_AXI_awready => xbar_to_m02_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m02_couplers_AWREGION(8),
      S_AXI_awsize => xbar_to_m02_couplers_AWSIZE(6),
      S_AXI_awvalid => xbar_to_m02_couplers_AWVALID(2),
      S_AXI_bready => xbar_to_m02_couplers_BREADY(2),
      S_AXI_bresp => xbar_to_m02_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m02_couplers_BVALID,
      S_AXI_rdata => xbar_to_m02_couplers_RDATA,
      S_AXI_rlast => xbar_to_m02_couplers_RLAST,
      S_AXI_rready => xbar_to_m02_couplers_RREADY(2),
      S_AXI_rresp => xbar_to_m02_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m02_couplers_RVALID,
      S_AXI_wdata => xbar_to_m02_couplers_WDATA(64),
      S_AXI_wlast => xbar_to_m02_couplers_WLAST(2),
      S_AXI_wready => xbar_to_m02_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m02_couplers_WSTRB(8),
      S_AXI_wvalid => xbar_to_m02_couplers_WVALID(2)
    );
m03_couplers: entity work.m03_couplers_imp_15QZ4LV
     port map (
      M_ACLK => M03_ACLK_1,
      M_ARESETN => M03_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m03_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m03_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m03_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m03_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m03_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m03_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m03_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m03_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m03_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m03_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m03_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m03_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m03_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      S_AXI_arburst(1 downto 0) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      S_AXI_arcache(3 downto 0) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      S_AXI_arlen(7 downto 0) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      S_AXI_arlock(0) => xbar_to_m03_couplers_ARLOCK(3),
      S_AXI_arprot(2 downto 0) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      S_AXI_arqos(3 downto 0) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      S_AXI_arready => xbar_to_m03_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      S_AXI_arsize(2 downto 0) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      S_AXI_arvalid => xbar_to_m03_couplers_ARVALID(3),
      S_AXI_awaddr(31 downto 0) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      S_AXI_awburst(1 downto 0) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      S_AXI_awcache(3 downto 0) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      S_AXI_awlen(7 downto 0) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      S_AXI_awlock(0) => xbar_to_m03_couplers_AWLOCK(3),
      S_AXI_awprot(2 downto 0) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      S_AXI_awqos(3 downto 0) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      S_AXI_awready => xbar_to_m03_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      S_AXI_awsize(2 downto 0) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      S_AXI_awvalid => xbar_to_m03_couplers_AWVALID(3),
      S_AXI_bready => xbar_to_m03_couplers_BREADY(3),
      S_AXI_bresp(1 downto 0) => xbar_to_m03_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m03_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m03_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m03_couplers_RLAST,
      S_AXI_rready => xbar_to_m03_couplers_RREADY(3),
      S_AXI_rresp(1 downto 0) => xbar_to_m03_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m03_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m03_couplers_WDATA(127 downto 96),
      S_AXI_wlast => xbar_to_m03_couplers_WLAST(3),
      S_AXI_wready => xbar_to_m03_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      S_AXI_wvalid => xbar_to_m03_couplers_WVALID(3)
    );
m04_couplers: entity work.m04_couplers_imp_TUCI1Y
     port map (
      M_ACLK => M04_ACLK_1,
      M_ARESETN => M04_ARESETN_1,
      M_AXI_araddr => m04_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arready => m04_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m04_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m04_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awready => m04_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m04_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m04_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m04_couplers_to_ps7_0_axi_periph_BRESP(0),
      M_AXI_bvalid => m04_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m04_couplers_to_ps7_0_axi_periph_RDATA(0),
      M_AXI_rready => m04_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m04_couplers_to_ps7_0_axi_periph_RRESP(0),
      M_AXI_rvalid => m04_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m04_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wready => m04_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m04_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m04_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m04_couplers_ARADDR(128),
      S_AXI_arready => xbar_to_m04_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m04_couplers_ARVALID(4),
      S_AXI_awaddr => xbar_to_m04_couplers_AWADDR(128),
      S_AXI_awready => xbar_to_m04_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m04_couplers_AWVALID(4),
      S_AXI_bready => xbar_to_m04_couplers_BREADY(4),
      S_AXI_bresp => xbar_to_m04_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m04_couplers_BVALID,
      S_AXI_rdata => xbar_to_m04_couplers_RDATA,
      S_AXI_rready => xbar_to_m04_couplers_RREADY(4),
      S_AXI_rresp => xbar_to_m04_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m04_couplers_RVALID,
      S_AXI_wdata => xbar_to_m04_couplers_WDATA(128),
      S_AXI_wready => xbar_to_m04_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m04_couplers_WSTRB(16),
      S_AXI_wvalid => xbar_to_m04_couplers_WVALID(4)
    );
m05_couplers: entity work.m05_couplers_imp_1IWS6WN
     port map (
      M_ACLK => M05_ACLK_1,
      M_ARESETN => M05_ARESETN_1,
      M_AXI_araddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arready => m05_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arvalid => m05_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awready => m05_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awvalid => m05_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m05_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m05_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m05_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m05_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m05_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m05_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m05_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m05_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m05_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      S_AXI_arburst(1 downto 0) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      S_AXI_arcache(3 downto 0) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      S_AXI_arlen(7 downto 0) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      S_AXI_arlock(0) => xbar_to_m05_couplers_ARLOCK(5),
      S_AXI_arprot(2 downto 0) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      S_AXI_arqos(3 downto 0) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      S_AXI_arready => xbar_to_m05_couplers_ARREADY,
      S_AXI_arregion(3 downto 0) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      S_AXI_arsize(2 downto 0) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      S_AXI_arvalid => xbar_to_m05_couplers_ARVALID(5),
      S_AXI_awaddr(31 downto 0) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      S_AXI_awburst(1 downto 0) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      S_AXI_awcache(3 downto 0) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      S_AXI_awlen(7 downto 0) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      S_AXI_awlock(0) => xbar_to_m05_couplers_AWLOCK(5),
      S_AXI_awprot(2 downto 0) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      S_AXI_awqos(3 downto 0) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      S_AXI_awready => xbar_to_m05_couplers_AWREADY,
      S_AXI_awregion(3 downto 0) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      S_AXI_awsize(2 downto 0) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      S_AXI_awvalid => xbar_to_m05_couplers_AWVALID(5),
      S_AXI_bready => xbar_to_m05_couplers_BREADY(5),
      S_AXI_bresp(1 downto 0) => xbar_to_m05_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m05_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m05_couplers_RDATA(31 downto 0),
      S_AXI_rlast => xbar_to_m05_couplers_RLAST,
      S_AXI_rready => xbar_to_m05_couplers_RREADY(5),
      S_AXI_rresp(1 downto 0) => xbar_to_m05_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m05_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m05_couplers_WDATA(191 downto 160),
      S_AXI_wlast => xbar_to_m05_couplers_WLAST(5),
      S_AXI_wready => xbar_to_m05_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      S_AXI_wvalid => xbar_to_m05_couplers_WVALID(5)
    );
m06_couplers: entity work.m06_couplers_imp_1TJ5H51
     port map (
      M_ACLK => M06_ACLK_1,
      M_ARESETN => M06_ARESETN_1,
      M_AXI_araddr => m06_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arburst => m06_couplers_to_ps7_0_axi_periph_ARBURST,
      M_AXI_arcache => m06_couplers_to_ps7_0_axi_periph_ARCACHE,
      M_AXI_arlen => m06_couplers_to_ps7_0_axi_periph_ARLEN,
      M_AXI_arlock => m06_couplers_to_ps7_0_axi_periph_ARLOCK,
      M_AXI_arprot => m06_couplers_to_ps7_0_axi_periph_ARPROT,
      M_AXI_arqos => m06_couplers_to_ps7_0_axi_periph_ARQOS,
      M_AXI_arready => m06_couplers_to_ps7_0_axi_periph_ARREADY,
      M_AXI_arregion => m06_couplers_to_ps7_0_axi_periph_ARREGION,
      M_AXI_arsize => m06_couplers_to_ps7_0_axi_periph_ARSIZE,
      M_AXI_arvalid => m06_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m06_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awburst => m06_couplers_to_ps7_0_axi_periph_AWBURST,
      M_AXI_awcache => m06_couplers_to_ps7_0_axi_periph_AWCACHE,
      M_AXI_awlen => m06_couplers_to_ps7_0_axi_periph_AWLEN,
      M_AXI_awlock => m06_couplers_to_ps7_0_axi_periph_AWLOCK,
      M_AXI_awprot => m06_couplers_to_ps7_0_axi_periph_AWPROT,
      M_AXI_awqos => m06_couplers_to_ps7_0_axi_periph_AWQOS,
      M_AXI_awready => m06_couplers_to_ps7_0_axi_periph_AWREADY,
      M_AXI_awregion => m06_couplers_to_ps7_0_axi_periph_AWREGION,
      M_AXI_awsize => m06_couplers_to_ps7_0_axi_periph_AWSIZE,
      M_AXI_awvalid => m06_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m06_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m06_couplers_to_ps7_0_axi_periph_BRESP,
      M_AXI_bvalid => m06_couplers_to_ps7_0_axi_periph_BVALID,
      M_AXI_rdata => m06_couplers_to_ps7_0_axi_periph_RDATA,
      M_AXI_rlast => m06_couplers_to_ps7_0_axi_periph_RLAST,
      M_AXI_rready => m06_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m06_couplers_to_ps7_0_axi_periph_RRESP,
      M_AXI_rvalid => m06_couplers_to_ps7_0_axi_periph_RVALID,
      M_AXI_wdata => m06_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wlast => m06_couplers_to_ps7_0_axi_periph_WLAST,
      M_AXI_wready => m06_couplers_to_ps7_0_axi_periph_WREADY,
      M_AXI_wstrb => m06_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m06_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m06_couplers_ARADDR(192),
      S_AXI_arburst => xbar_to_m06_couplers_ARBURST(12),
      S_AXI_arcache => xbar_to_m06_couplers_ARCACHE(24),
      S_AXI_arlen => xbar_to_m06_couplers_ARLEN(48),
      S_AXI_arlock => xbar_to_m06_couplers_ARLOCK(6),
      S_AXI_arprot => xbar_to_m06_couplers_ARPROT(18),
      S_AXI_arqos => xbar_to_m06_couplers_ARQOS(24),
      S_AXI_arready => xbar_to_m06_couplers_ARREADY,
      S_AXI_arregion => xbar_to_m06_couplers_ARREGION(24),
      S_AXI_arsize => xbar_to_m06_couplers_ARSIZE(18),
      S_AXI_arvalid => xbar_to_m06_couplers_ARVALID(6),
      S_AXI_awaddr => xbar_to_m06_couplers_AWADDR(192),
      S_AXI_awburst => xbar_to_m06_couplers_AWBURST(12),
      S_AXI_awcache => xbar_to_m06_couplers_AWCACHE(24),
      S_AXI_awlen => xbar_to_m06_couplers_AWLEN(48),
      S_AXI_awlock => xbar_to_m06_couplers_AWLOCK(6),
      S_AXI_awprot => xbar_to_m06_couplers_AWPROT(18),
      S_AXI_awqos => xbar_to_m06_couplers_AWQOS(24),
      S_AXI_awready => xbar_to_m06_couplers_AWREADY,
      S_AXI_awregion => xbar_to_m06_couplers_AWREGION(24),
      S_AXI_awsize => xbar_to_m06_couplers_AWSIZE(18),
      S_AXI_awvalid => xbar_to_m06_couplers_AWVALID(6),
      S_AXI_bready => xbar_to_m06_couplers_BREADY(6),
      S_AXI_bresp => xbar_to_m06_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m06_couplers_BVALID,
      S_AXI_rdata => xbar_to_m06_couplers_RDATA,
      S_AXI_rlast => xbar_to_m06_couplers_RLAST,
      S_AXI_rready => xbar_to_m06_couplers_RREADY(6),
      S_AXI_rresp => xbar_to_m06_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m06_couplers_RVALID,
      S_AXI_wdata => xbar_to_m06_couplers_WDATA(192),
      S_AXI_wlast => xbar_to_m06_couplers_WLAST(6),
      S_AXI_wready => xbar_to_m06_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m06_couplers_WSTRB(24),
      S_AXI_wvalid => xbar_to_m06_couplers_WVALID(6)
    );
s00_couplers: entity work.s00_couplers_imp_11SE3QO
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      M_AXI_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      M_AXI_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      M_AXI_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      M_AXI_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      M_AXI_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      M_AXI_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      M_AXI_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      M_AXI_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bid(12 downto 0) => s00_couplers_to_xbar_BID(12 downto 0),
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rid(12 downto 0) => s00_couplers_to_xbar_RID(12 downto 0),
      M_AXI_rlast => s00_couplers_to_xbar_RLAST(0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wlast => s00_couplers_to_xbar_WLAST,
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN => S00_ARESETN_1,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
s01_couplers: entity work.s01_couplers_imp_AN2PCX
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr => s01_couplers_to_xbar_ARADDR,
      M_AXI_arburst => s01_couplers_to_xbar_ARBURST,
      M_AXI_arcache => s01_couplers_to_xbar_ARCACHE,
      M_AXI_arid => s01_couplers_to_xbar_ARID,
      M_AXI_arlen => s01_couplers_to_xbar_ARLEN,
      M_AXI_arlock => s01_couplers_to_xbar_ARLOCK,
      M_AXI_arprot => s01_couplers_to_xbar_ARPROT,
      M_AXI_arqos => s01_couplers_to_xbar_ARQOS,
      M_AXI_arready => s01_couplers_to_xbar_ARREADY(1),
      M_AXI_arsize => s01_couplers_to_xbar_ARSIZE,
      M_AXI_arvalid => s01_couplers_to_xbar_ARVALID,
      M_AXI_awaddr => s01_couplers_to_xbar_AWADDR,
      M_AXI_awburst => s01_couplers_to_xbar_AWBURST,
      M_AXI_awcache => s01_couplers_to_xbar_AWCACHE,
      M_AXI_awid => s01_couplers_to_xbar_AWID,
      M_AXI_awlen => s01_couplers_to_xbar_AWLEN,
      M_AXI_awlock => s01_couplers_to_xbar_AWLOCK,
      M_AXI_awprot => s01_couplers_to_xbar_AWPROT,
      M_AXI_awqos => s01_couplers_to_xbar_AWQOS,
      M_AXI_awready => s01_couplers_to_xbar_AWREADY(1),
      M_AXI_awsize => s01_couplers_to_xbar_AWSIZE,
      M_AXI_awvalid => s01_couplers_to_xbar_AWVALID,
      M_AXI_bid => s01_couplers_to_xbar_BID(13),
      M_AXI_bready => s01_couplers_to_xbar_BREADY,
      M_AXI_bresp => s01_couplers_to_xbar_BRESP(2),
      M_AXI_bvalid => s01_couplers_to_xbar_BVALID(1),
      M_AXI_rdata => s01_couplers_to_xbar_RDATA(32),
      M_AXI_rid => s01_couplers_to_xbar_RID(13),
      M_AXI_rlast => s01_couplers_to_xbar_RLAST(1),
      M_AXI_rready => s01_couplers_to_xbar_RREADY,
      M_AXI_rresp => s01_couplers_to_xbar_RRESP(2),
      M_AXI_rvalid => s01_couplers_to_xbar_RVALID(1),
      M_AXI_wdata => s01_couplers_to_xbar_WDATA,
      M_AXI_wlast => s01_couplers_to_xbar_WLAST,
      M_AXI_wready => s01_couplers_to_xbar_WREADY(1),
      M_AXI_wstrb => s01_couplers_to_xbar_WSTRB,
      M_AXI_wvalid => s01_couplers_to_xbar_WVALID,
      S_ACLK => S01_ACLK_1,
      S_ARESETN => S01_ARESETN_1,
      S_AXI_araddr => ps7_0_axi_periph_to_s01_couplers_ARADDR,
      S_AXI_arburst => ps7_0_axi_periph_to_s01_couplers_ARBURST,
      S_AXI_arcache => ps7_0_axi_periph_to_s01_couplers_ARCACHE,
      S_AXI_arid => ps7_0_axi_periph_to_s01_couplers_ARID,
      S_AXI_arlen => ps7_0_axi_periph_to_s01_couplers_ARLEN,
      S_AXI_arlock => ps7_0_axi_periph_to_s01_couplers_ARLOCK,
      S_AXI_arprot => ps7_0_axi_periph_to_s01_couplers_ARPROT,
      S_AXI_arqos => ps7_0_axi_periph_to_s01_couplers_ARQOS,
      S_AXI_arready => ps7_0_axi_periph_to_s01_couplers_ARREADY,
      S_AXI_arsize => ps7_0_axi_periph_to_s01_couplers_ARSIZE,
      S_AXI_arvalid => ps7_0_axi_periph_to_s01_couplers_ARVALID,
      S_AXI_awaddr => ps7_0_axi_periph_to_s01_couplers_AWADDR,
      S_AXI_awburst => ps7_0_axi_periph_to_s01_couplers_AWBURST,
      S_AXI_awcache => ps7_0_axi_periph_to_s01_couplers_AWCACHE,
      S_AXI_awid => ps7_0_axi_periph_to_s01_couplers_AWID,
      S_AXI_awlen => ps7_0_axi_periph_to_s01_couplers_AWLEN,
      S_AXI_awlock => ps7_0_axi_periph_to_s01_couplers_AWLOCK,
      S_AXI_awprot => ps7_0_axi_periph_to_s01_couplers_AWPROT,
      S_AXI_awqos => ps7_0_axi_periph_to_s01_couplers_AWQOS,
      S_AXI_awready => ps7_0_axi_periph_to_s01_couplers_AWREADY,
      S_AXI_awsize => ps7_0_axi_periph_to_s01_couplers_AWSIZE,
      S_AXI_awvalid => ps7_0_axi_periph_to_s01_couplers_AWVALID,
      S_AXI_bid => ps7_0_axi_periph_to_s01_couplers_BID,
      S_AXI_bready => ps7_0_axi_periph_to_s01_couplers_BREADY,
      S_AXI_bresp => ps7_0_axi_periph_to_s01_couplers_BRESP,
      S_AXI_bvalid => ps7_0_axi_periph_to_s01_couplers_BVALID,
      S_AXI_rdata => ps7_0_axi_periph_to_s01_couplers_RDATA,
      S_AXI_rid => ps7_0_axi_periph_to_s01_couplers_RID,
      S_AXI_rlast => ps7_0_axi_periph_to_s01_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s01_couplers_RREADY,
      S_AXI_rresp => ps7_0_axi_periph_to_s01_couplers_RRESP,
      S_AXI_rvalid => ps7_0_axi_periph_to_s01_couplers_RVALID,
      S_AXI_wdata => ps7_0_axi_periph_to_s01_couplers_WDATA,
      S_AXI_wlast => ps7_0_axi_periph_to_s01_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s01_couplers_WREADY,
      S_AXI_wstrb => ps7_0_axi_periph_to_s01_couplers_WSTRB,
      S_AXI_wvalid => ps7_0_axi_periph_to_s01_couplers_WVALID
    );
xbar: component system_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(223 downto 192) => xbar_to_m06_couplers_ARADDR(223 downto 192),
      m_axi_araddr(191 downto 160) => xbar_to_m05_couplers_ARADDR(191 downto 160),
      m_axi_araddr(159 downto 128) => xbar_to_m04_couplers_ARADDR(159 downto 128),
      m_axi_araddr(127 downto 96) => xbar_to_m03_couplers_ARADDR(127 downto 96),
      m_axi_araddr(95 downto 64) => xbar_to_m02_couplers_ARADDR(95 downto 64),
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arburst(13 downto 12) => xbar_to_m06_couplers_ARBURST(13 downto 12),
      m_axi_arburst(11 downto 10) => xbar_to_m05_couplers_ARBURST(11 downto 10),
      m_axi_arburst(9 downto 8) => NLW_xbar_m_axi_arburst_UNCONNECTED(9 downto 8),
      m_axi_arburst(7 downto 6) => xbar_to_m03_couplers_ARBURST(7 downto 6),
      m_axi_arburst(5 downto 4) => xbar_to_m02_couplers_ARBURST(5 downto 4),
      m_axi_arburst(3 downto 2) => xbar_to_m01_couplers_ARBURST(3 downto 2),
      m_axi_arburst(1 downto 0) => xbar_to_m00_couplers_ARBURST(1 downto 0),
      m_axi_arcache(27 downto 24) => xbar_to_m06_couplers_ARCACHE(27 downto 24),
      m_axi_arcache(23 downto 20) => xbar_to_m05_couplers_ARCACHE(23 downto 20),
      m_axi_arcache(19 downto 16) => NLW_xbar_m_axi_arcache_UNCONNECTED(19 downto 16),
      m_axi_arcache(15 downto 12) => xbar_to_m03_couplers_ARCACHE(15 downto 12),
      m_axi_arcache(11 downto 8) => xbar_to_m02_couplers_ARCACHE(11 downto 8),
      m_axi_arcache(7 downto 4) => xbar_to_m01_couplers_ARCACHE(7 downto 4),
      m_axi_arcache(3 downto 0) => xbar_to_m00_couplers_ARCACHE(3 downto 0),
      m_axi_arlen(55 downto 48) => xbar_to_m06_couplers_ARLEN(55 downto 48),
      m_axi_arlen(47 downto 40) => xbar_to_m05_couplers_ARLEN(47 downto 40),
      m_axi_arlen(39 downto 32) => NLW_xbar_m_axi_arlen_UNCONNECTED(39 downto 32),
      m_axi_arlen(31 downto 24) => xbar_to_m03_couplers_ARLEN(31 downto 24),
      m_axi_arlen(23 downto 16) => xbar_to_m02_couplers_ARLEN(23 downto 16),
      m_axi_arlen(15 downto 8) => xbar_to_m01_couplers_ARLEN(15 downto 8),
      m_axi_arlen(7 downto 0) => xbar_to_m00_couplers_ARLEN(7 downto 0),
      m_axi_arlock(6) => xbar_to_m06_couplers_ARLOCK(6),
      m_axi_arlock(5) => xbar_to_m05_couplers_ARLOCK(5),
      m_axi_arlock(4) => NLW_xbar_m_axi_arlock_UNCONNECTED(4),
      m_axi_arlock(3) => xbar_to_m03_couplers_ARLOCK(3),
      m_axi_arlock(2) => xbar_to_m02_couplers_ARLOCK(2),
      m_axi_arlock(1) => xbar_to_m01_couplers_ARLOCK(1),
      m_axi_arlock(0) => xbar_to_m00_couplers_ARLOCK(0),
      m_axi_arprot(20 downto 18) => xbar_to_m06_couplers_ARPROT(20 downto 18),
      m_axi_arprot(17 downto 15) => xbar_to_m05_couplers_ARPROT(17 downto 15),
      m_axi_arprot(14 downto 12) => NLW_xbar_m_axi_arprot_UNCONNECTED(14 downto 12),
      m_axi_arprot(11 downto 9) => xbar_to_m03_couplers_ARPROT(11 downto 9),
      m_axi_arprot(8 downto 6) => xbar_to_m02_couplers_ARPROT(8 downto 6),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arqos(27 downto 24) => xbar_to_m06_couplers_ARQOS(27 downto 24),
      m_axi_arqos(23 downto 20) => xbar_to_m05_couplers_ARQOS(23 downto 20),
      m_axi_arqos(19 downto 16) => NLW_xbar_m_axi_arqos_UNCONNECTED(19 downto 16),
      m_axi_arqos(15 downto 12) => xbar_to_m03_couplers_ARQOS(15 downto 12),
      m_axi_arqos(11 downto 8) => xbar_to_m02_couplers_ARQOS(11 downto 8),
      m_axi_arqos(7 downto 4) => NLW_xbar_m_axi_arqos_UNCONNECTED(7 downto 4),
      m_axi_arqos(3 downto 0) => xbar_to_m00_couplers_ARQOS(3 downto 0),
      m_axi_arready(6) => xbar_to_m06_couplers_ARREADY,
      m_axi_arready(5) => xbar_to_m05_couplers_ARREADY,
      m_axi_arready(4) => xbar_to_m04_couplers_ARREADY,
      m_axi_arready(3) => xbar_to_m03_couplers_ARREADY,
      m_axi_arready(2) => xbar_to_m02_couplers_ARREADY,
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY,
      m_axi_arregion(27 downto 24) => xbar_to_m06_couplers_ARREGION(27 downto 24),
      m_axi_arregion(23 downto 20) => xbar_to_m05_couplers_ARREGION(23 downto 20),
      m_axi_arregion(19 downto 16) => NLW_xbar_m_axi_arregion_UNCONNECTED(19 downto 16),
      m_axi_arregion(15 downto 12) => xbar_to_m03_couplers_ARREGION(15 downto 12),
      m_axi_arregion(11 downto 8) => xbar_to_m02_couplers_ARREGION(11 downto 8),
      m_axi_arregion(7 downto 4) => NLW_xbar_m_axi_arregion_UNCONNECTED(7 downto 4),
      m_axi_arregion(3 downto 0) => xbar_to_m00_couplers_ARREGION(3 downto 0),
      m_axi_arsize(20 downto 18) => xbar_to_m06_couplers_ARSIZE(20 downto 18),
      m_axi_arsize(17 downto 15) => xbar_to_m05_couplers_ARSIZE(17 downto 15),
      m_axi_arsize(14 downto 12) => NLW_xbar_m_axi_arsize_UNCONNECTED(14 downto 12),
      m_axi_arsize(11 downto 9) => xbar_to_m03_couplers_ARSIZE(11 downto 9),
      m_axi_arsize(8 downto 6) => xbar_to_m02_couplers_ARSIZE(8 downto 6),
      m_axi_arsize(5 downto 3) => xbar_to_m01_couplers_ARSIZE(5 downto 3),
      m_axi_arsize(2 downto 0) => xbar_to_m00_couplers_ARSIZE(2 downto 0),
      m_axi_arvalid(6) => xbar_to_m06_couplers_ARVALID(6),
      m_axi_arvalid(5) => xbar_to_m05_couplers_ARVALID(5),
      m_axi_arvalid(4) => xbar_to_m04_couplers_ARVALID(4),
      m_axi_arvalid(3) => xbar_to_m03_couplers_ARVALID(3),
      m_axi_arvalid(2) => xbar_to_m02_couplers_ARVALID(2),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(223 downto 192) => xbar_to_m06_couplers_AWADDR(223 downto 192),
      m_axi_awaddr(191 downto 160) => xbar_to_m05_couplers_AWADDR(191 downto 160),
      m_axi_awaddr(159 downto 128) => xbar_to_m04_couplers_AWADDR(159 downto 128),
      m_axi_awaddr(127 downto 96) => xbar_to_m03_couplers_AWADDR(127 downto 96),
      m_axi_awaddr(95 downto 64) => xbar_to_m02_couplers_AWADDR(95 downto 64),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awburst(13 downto 12) => xbar_to_m06_couplers_AWBURST(13 downto 12),
      m_axi_awburst(11 downto 10) => xbar_to_m05_couplers_AWBURST(11 downto 10),
      m_axi_awburst(9 downto 8) => NLW_xbar_m_axi_awburst_UNCONNECTED(9 downto 8),
      m_axi_awburst(7 downto 6) => xbar_to_m03_couplers_AWBURST(7 downto 6),
      m_axi_awburst(5 downto 4) => xbar_to_m02_couplers_AWBURST(5 downto 4),
      m_axi_awburst(3 downto 2) => xbar_to_m01_couplers_AWBURST(3 downto 2),
      m_axi_awburst(1 downto 0) => xbar_to_m00_couplers_AWBURST(1 downto 0),
      m_axi_awcache(27 downto 24) => xbar_to_m06_couplers_AWCACHE(27 downto 24),
      m_axi_awcache(23 downto 20) => xbar_to_m05_couplers_AWCACHE(23 downto 20),
      m_axi_awcache(19 downto 16) => NLW_xbar_m_axi_awcache_UNCONNECTED(19 downto 16),
      m_axi_awcache(15 downto 12) => xbar_to_m03_couplers_AWCACHE(15 downto 12),
      m_axi_awcache(11 downto 8) => xbar_to_m02_couplers_AWCACHE(11 downto 8),
      m_axi_awcache(7 downto 4) => xbar_to_m01_couplers_AWCACHE(7 downto 4),
      m_axi_awcache(3 downto 0) => xbar_to_m00_couplers_AWCACHE(3 downto 0),
      m_axi_awlen(55 downto 48) => xbar_to_m06_couplers_AWLEN(55 downto 48),
      m_axi_awlen(47 downto 40) => xbar_to_m05_couplers_AWLEN(47 downto 40),
      m_axi_awlen(39 downto 32) => NLW_xbar_m_axi_awlen_UNCONNECTED(39 downto 32),
      m_axi_awlen(31 downto 24) => xbar_to_m03_couplers_AWLEN(31 downto 24),
      m_axi_awlen(23 downto 16) => xbar_to_m02_couplers_AWLEN(23 downto 16),
      m_axi_awlen(15 downto 8) => xbar_to_m01_couplers_AWLEN(15 downto 8),
      m_axi_awlen(7 downto 0) => xbar_to_m00_couplers_AWLEN(7 downto 0),
      m_axi_awlock(6) => xbar_to_m06_couplers_AWLOCK(6),
      m_axi_awlock(5) => xbar_to_m05_couplers_AWLOCK(5),
      m_axi_awlock(4) => NLW_xbar_m_axi_awlock_UNCONNECTED(4),
      m_axi_awlock(3) => xbar_to_m03_couplers_AWLOCK(3),
      m_axi_awlock(2) => xbar_to_m02_couplers_AWLOCK(2),
      m_axi_awlock(1) => xbar_to_m01_couplers_AWLOCK(1),
      m_axi_awlock(0) => xbar_to_m00_couplers_AWLOCK(0),
      m_axi_awprot(20 downto 18) => xbar_to_m06_couplers_AWPROT(20 downto 18),
      m_axi_awprot(17 downto 15) => xbar_to_m05_couplers_AWPROT(17 downto 15),
      m_axi_awprot(14 downto 12) => NLW_xbar_m_axi_awprot_UNCONNECTED(14 downto 12),
      m_axi_awprot(11 downto 9) => xbar_to_m03_couplers_AWPROT(11 downto 9),
      m_axi_awprot(8 downto 6) => xbar_to_m02_couplers_AWPROT(8 downto 6),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awqos(27 downto 24) => xbar_to_m06_couplers_AWQOS(27 downto 24),
      m_axi_awqos(23 downto 20) => xbar_to_m05_couplers_AWQOS(23 downto 20),
      m_axi_awqos(19 downto 16) => NLW_xbar_m_axi_awqos_UNCONNECTED(19 downto 16),
      m_axi_awqos(15 downto 12) => xbar_to_m03_couplers_AWQOS(15 downto 12),
      m_axi_awqos(11 downto 8) => xbar_to_m02_couplers_AWQOS(11 downto 8),
      m_axi_awqos(7 downto 4) => NLW_xbar_m_axi_awqos_UNCONNECTED(7 downto 4),
      m_axi_awqos(3 downto 0) => xbar_to_m00_couplers_AWQOS(3 downto 0),
      m_axi_awready(6) => xbar_to_m06_couplers_AWREADY,
      m_axi_awready(5) => xbar_to_m05_couplers_AWREADY,
      m_axi_awready(4) => xbar_to_m04_couplers_AWREADY,
      m_axi_awready(3) => xbar_to_m03_couplers_AWREADY,
      m_axi_awready(2) => xbar_to_m02_couplers_AWREADY,
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY,
      m_axi_awregion(27 downto 24) => xbar_to_m06_couplers_AWREGION(27 downto 24),
      m_axi_awregion(23 downto 20) => xbar_to_m05_couplers_AWREGION(23 downto 20),
      m_axi_awregion(19 downto 16) => NLW_xbar_m_axi_awregion_UNCONNECTED(19 downto 16),
      m_axi_awregion(15 downto 12) => xbar_to_m03_couplers_AWREGION(15 downto 12),
      m_axi_awregion(11 downto 8) => xbar_to_m02_couplers_AWREGION(11 downto 8),
      m_axi_awregion(7 downto 4) => NLW_xbar_m_axi_awregion_UNCONNECTED(7 downto 4),
      m_axi_awregion(3 downto 0) => xbar_to_m00_couplers_AWREGION(3 downto 0),
      m_axi_awsize(20 downto 18) => xbar_to_m06_couplers_AWSIZE(20 downto 18),
      m_axi_awsize(17 downto 15) => xbar_to_m05_couplers_AWSIZE(17 downto 15),
      m_axi_awsize(14 downto 12) => NLW_xbar_m_axi_awsize_UNCONNECTED(14 downto 12),
      m_axi_awsize(11 downto 9) => xbar_to_m03_couplers_AWSIZE(11 downto 9),
      m_axi_awsize(8 downto 6) => xbar_to_m02_couplers_AWSIZE(8 downto 6),
      m_axi_awsize(5 downto 3) => xbar_to_m01_couplers_AWSIZE(5 downto 3),
      m_axi_awsize(2 downto 0) => xbar_to_m00_couplers_AWSIZE(2 downto 0),
      m_axi_awvalid(6) => xbar_to_m06_couplers_AWVALID(6),
      m_axi_awvalid(5) => xbar_to_m05_couplers_AWVALID(5),
      m_axi_awvalid(4) => xbar_to_m04_couplers_AWVALID(4),
      m_axi_awvalid(3) => xbar_to_m03_couplers_AWVALID(3),
      m_axi_awvalid(2) => xbar_to_m02_couplers_AWVALID(2),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(6) => xbar_to_m06_couplers_BREADY(6),
      m_axi_bready(5) => xbar_to_m05_couplers_BREADY(5),
      m_axi_bready(4) => xbar_to_m04_couplers_BREADY(4),
      m_axi_bready(3) => xbar_to_m03_couplers_BREADY(3),
      m_axi_bready(2) => xbar_to_m02_couplers_BREADY(2),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(13) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(12) => xbar_to_m06_couplers_BRESP,
      m_axi_bresp(11 downto 10) => xbar_to_m05_couplers_BRESP(1 downto 0),
      m_axi_bresp(9) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(8) => xbar_to_m04_couplers_BRESP,
      m_axi_bresp(7 downto 6) => xbar_to_m03_couplers_BRESP(1 downto 0),
      m_axi_bresp(5) => xbar_to_m02_couplers_BRESP,
      m_axi_bresp(4) => xbar_to_m02_couplers_BRESP,
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(6) => xbar_to_m06_couplers_BVALID,
      m_axi_bvalid(5) => xbar_to_m05_couplers_BVALID,
      m_axi_bvalid(4) => xbar_to_m04_couplers_BVALID,
      m_axi_bvalid(3) => xbar_to_m03_couplers_BVALID,
      m_axi_bvalid(2) => xbar_to_m02_couplers_BVALID,
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID,
      m_axi_rdata(223) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(222) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(221) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(220) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(219) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(218) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(217) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(216) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(215) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(214) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(213) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(212) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(211) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(210) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(209) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(208) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(207) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(206) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(205) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(204) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(203) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(202) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(201) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(200) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(199) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(198) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(197) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(196) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(195) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(194) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(193) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(192) => xbar_to_m06_couplers_RDATA,
      m_axi_rdata(191 downto 160) => xbar_to_m05_couplers_RDATA(31 downto 0),
      m_axi_rdata(159) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(158) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(157) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(156) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(155) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(154) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(153) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(152) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(151) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(150) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(149) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(148) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(147) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(146) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(145) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(144) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(143) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(142) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(141) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(140) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(139) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(138) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(137) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(136) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(135) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(134) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(133) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(132) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(131) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(130) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(129) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(128) => xbar_to_m04_couplers_RDATA,
      m_axi_rdata(127 downto 96) => xbar_to_m03_couplers_RDATA(31 downto 0),
      m_axi_rdata(95) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(94) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(93) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(92) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(91) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(90) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(89) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(88) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(87) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(86) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(85) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(84) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(83) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(82) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(81) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(80) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(79) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(78) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(77) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(76) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(75) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(74) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(73) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(72) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(71) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(70) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(69) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(68) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(67) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(66) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(65) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(64) => xbar_to_m02_couplers_RDATA,
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rlast(6) => xbar_to_m06_couplers_RLAST,
      m_axi_rlast(5) => xbar_to_m05_couplers_RLAST,
      m_axi_rlast(4) => '0',
      m_axi_rlast(3) => xbar_to_m03_couplers_RLAST,
      m_axi_rlast(2) => xbar_to_m02_couplers_RLAST,
      m_axi_rlast(1) => xbar_to_m01_couplers_RLAST,
      m_axi_rlast(0) => xbar_to_m00_couplers_RLAST,
      m_axi_rready(6) => xbar_to_m06_couplers_RREADY(6),
      m_axi_rready(5) => xbar_to_m05_couplers_RREADY(5),
      m_axi_rready(4) => xbar_to_m04_couplers_RREADY(4),
      m_axi_rready(3) => xbar_to_m03_couplers_RREADY(3),
      m_axi_rready(2) => xbar_to_m02_couplers_RREADY(2),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(13) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(12) => xbar_to_m06_couplers_RRESP,
      m_axi_rresp(11 downto 10) => xbar_to_m05_couplers_RRESP(1 downto 0),
      m_axi_rresp(9) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(8) => xbar_to_m04_couplers_RRESP,
      m_axi_rresp(7 downto 6) => xbar_to_m03_couplers_RRESP(1 downto 0),
      m_axi_rresp(5) => xbar_to_m02_couplers_RRESP,
      m_axi_rresp(4) => xbar_to_m02_couplers_RRESP,
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(6) => xbar_to_m06_couplers_RVALID,
      m_axi_rvalid(5) => xbar_to_m05_couplers_RVALID,
      m_axi_rvalid(4) => xbar_to_m04_couplers_RVALID,
      m_axi_rvalid(3) => xbar_to_m03_couplers_RVALID,
      m_axi_rvalid(2) => xbar_to_m02_couplers_RVALID,
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID,
      m_axi_wdata(223 downto 192) => xbar_to_m06_couplers_WDATA(223 downto 192),
      m_axi_wdata(191 downto 160) => xbar_to_m05_couplers_WDATA(191 downto 160),
      m_axi_wdata(159 downto 128) => xbar_to_m04_couplers_WDATA(159 downto 128),
      m_axi_wdata(127 downto 96) => xbar_to_m03_couplers_WDATA(127 downto 96),
      m_axi_wdata(95 downto 64) => xbar_to_m02_couplers_WDATA(95 downto 64),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wlast(6) => xbar_to_m06_couplers_WLAST(6),
      m_axi_wlast(5) => xbar_to_m05_couplers_WLAST(5),
      m_axi_wlast(4) => NLW_xbar_m_axi_wlast_UNCONNECTED(4),
      m_axi_wlast(3) => xbar_to_m03_couplers_WLAST(3),
      m_axi_wlast(2) => xbar_to_m02_couplers_WLAST(2),
      m_axi_wlast(1) => xbar_to_m01_couplers_WLAST(1),
      m_axi_wlast(0) => xbar_to_m00_couplers_WLAST(0),
      m_axi_wready(6) => xbar_to_m06_couplers_WREADY,
      m_axi_wready(5) => xbar_to_m05_couplers_WREADY,
      m_axi_wready(4) => xbar_to_m04_couplers_WREADY,
      m_axi_wready(3) => xbar_to_m03_couplers_WREADY,
      m_axi_wready(2) => xbar_to_m02_couplers_WREADY,
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY,
      m_axi_wstrb(27 downto 24) => xbar_to_m06_couplers_WSTRB(27 downto 24),
      m_axi_wstrb(23 downto 20) => xbar_to_m05_couplers_WSTRB(23 downto 20),
      m_axi_wstrb(19 downto 16) => xbar_to_m04_couplers_WSTRB(19 downto 16),
      m_axi_wstrb(15 downto 12) => xbar_to_m03_couplers_WSTRB(15 downto 12),
      m_axi_wstrb(11 downto 8) => xbar_to_m02_couplers_WSTRB(11 downto 8),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(6) => xbar_to_m06_couplers_WVALID(6),
      m_axi_wvalid(5) => xbar_to_m05_couplers_WVALID(5),
      m_axi_wvalid(4) => xbar_to_m04_couplers_WVALID(4),
      m_axi_wvalid(3) => xbar_to_m03_couplers_WVALID(3),
      m_axi_wvalid(2) => xbar_to_m02_couplers_WVALID(2),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(63) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(62) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(61) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(60) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(59) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(58) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(57) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(56) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(55) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(54) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(53) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(52) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(51) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(50) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(49) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(48) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(47) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(46) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(45) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(44) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(43) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(42) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(41) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(40) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(39) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(38) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(37) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(36) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(35) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(34) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(33) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(32) => s01_couplers_to_xbar_ARADDR,
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arburst(3) => s01_couplers_to_xbar_ARBURST,
      s_axi_arburst(2) => s01_couplers_to_xbar_ARBURST,
      s_axi_arburst(1 downto 0) => s00_couplers_to_xbar_ARBURST(1 downto 0),
      s_axi_arcache(7) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(6) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(5) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(4) => s01_couplers_to_xbar_ARCACHE,
      s_axi_arcache(3 downto 0) => s00_couplers_to_xbar_ARCACHE(3 downto 0),
      s_axi_arid(25) => s01_couplers_to_xbar_ARID,
      s_axi_arid(24) => s01_couplers_to_xbar_ARID,
      s_axi_arid(23) => s01_couplers_to_xbar_ARID,
      s_axi_arid(22) => s01_couplers_to_xbar_ARID,
      s_axi_arid(21) => s01_couplers_to_xbar_ARID,
      s_axi_arid(20) => s01_couplers_to_xbar_ARID,
      s_axi_arid(19) => s01_couplers_to_xbar_ARID,
      s_axi_arid(18) => s01_couplers_to_xbar_ARID,
      s_axi_arid(17) => s01_couplers_to_xbar_ARID,
      s_axi_arid(16) => s01_couplers_to_xbar_ARID,
      s_axi_arid(15) => s01_couplers_to_xbar_ARID,
      s_axi_arid(14) => s01_couplers_to_xbar_ARID,
      s_axi_arid(13) => s01_couplers_to_xbar_ARID,
      s_axi_arid(12) => '0',
      s_axi_arid(11 downto 0) => s00_couplers_to_xbar_ARID(11 downto 0),
      s_axi_arlen(15) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(14) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(13) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(12) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(11) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(10) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(9) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(8) => s01_couplers_to_xbar_ARLEN,
      s_axi_arlen(7 downto 0) => s00_couplers_to_xbar_ARLEN(7 downto 0),
      s_axi_arlock(1) => s01_couplers_to_xbar_ARLOCK,
      s_axi_arlock(0) => s00_couplers_to_xbar_ARLOCK(0),
      s_axi_arprot(5) => s01_couplers_to_xbar_ARPROT,
      s_axi_arprot(4) => s01_couplers_to_xbar_ARPROT,
      s_axi_arprot(3) => s01_couplers_to_xbar_ARPROT,
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arqos(7) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(6) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(5) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(4) => s01_couplers_to_xbar_ARQOS,
      s_axi_arqos(3 downto 0) => s00_couplers_to_xbar_ARQOS(3 downto 0),
      s_axi_arready(1) => s01_couplers_to_xbar_ARREADY(1),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arsize(5) => s01_couplers_to_xbar_ARSIZE,
      s_axi_arsize(4) => s01_couplers_to_xbar_ARSIZE,
      s_axi_arsize(3) => s01_couplers_to_xbar_ARSIZE,
      s_axi_arsize(2 downto 0) => s00_couplers_to_xbar_ARSIZE(2 downto 0),
      s_axi_arvalid(1) => s01_couplers_to_xbar_ARVALID,
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(63) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(62) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(61) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(60) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(59) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(58) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(57) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(56) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(55) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(54) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(53) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(52) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(51) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(50) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(49) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(48) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(47) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(46) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(45) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(44) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(43) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(42) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(41) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(40) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(39) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(38) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(37) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(36) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(35) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(34) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(33) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(32) => s01_couplers_to_xbar_AWADDR,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awburst(3) => s01_couplers_to_xbar_AWBURST,
      s_axi_awburst(2) => s01_couplers_to_xbar_AWBURST,
      s_axi_awburst(1 downto 0) => s00_couplers_to_xbar_AWBURST(1 downto 0),
      s_axi_awcache(7) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(6) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(5) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(4) => s01_couplers_to_xbar_AWCACHE,
      s_axi_awcache(3 downto 0) => s00_couplers_to_xbar_AWCACHE(3 downto 0),
      s_axi_awid(25) => s01_couplers_to_xbar_AWID,
      s_axi_awid(24) => s01_couplers_to_xbar_AWID,
      s_axi_awid(23) => s01_couplers_to_xbar_AWID,
      s_axi_awid(22) => s01_couplers_to_xbar_AWID,
      s_axi_awid(21) => s01_couplers_to_xbar_AWID,
      s_axi_awid(20) => s01_couplers_to_xbar_AWID,
      s_axi_awid(19) => s01_couplers_to_xbar_AWID,
      s_axi_awid(18) => s01_couplers_to_xbar_AWID,
      s_axi_awid(17) => s01_couplers_to_xbar_AWID,
      s_axi_awid(16) => s01_couplers_to_xbar_AWID,
      s_axi_awid(15) => s01_couplers_to_xbar_AWID,
      s_axi_awid(14) => s01_couplers_to_xbar_AWID,
      s_axi_awid(13) => s01_couplers_to_xbar_AWID,
      s_axi_awid(12) => '0',
      s_axi_awid(11 downto 0) => s00_couplers_to_xbar_AWID(11 downto 0),
      s_axi_awlen(15) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(14) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(13) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(12) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(11) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(10) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(9) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(8) => s01_couplers_to_xbar_AWLEN,
      s_axi_awlen(7 downto 0) => s00_couplers_to_xbar_AWLEN(7 downto 0),
      s_axi_awlock(1) => s01_couplers_to_xbar_AWLOCK,
      s_axi_awlock(0) => s00_couplers_to_xbar_AWLOCK(0),
      s_axi_awprot(5) => s01_couplers_to_xbar_AWPROT,
      s_axi_awprot(4) => s01_couplers_to_xbar_AWPROT,
      s_axi_awprot(3) => s01_couplers_to_xbar_AWPROT,
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awqos(7) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(6) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(5) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(4) => s01_couplers_to_xbar_AWQOS,
      s_axi_awqos(3 downto 0) => s00_couplers_to_xbar_AWQOS(3 downto 0),
      s_axi_awready(1) => s01_couplers_to_xbar_AWREADY(1),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awsize(5) => s01_couplers_to_xbar_AWSIZE,
      s_axi_awsize(4) => s01_couplers_to_xbar_AWSIZE,
      s_axi_awsize(3) => s01_couplers_to_xbar_AWSIZE,
      s_axi_awsize(2 downto 0) => s00_couplers_to_xbar_AWSIZE(2 downto 0),
      s_axi_awvalid(1) => s01_couplers_to_xbar_AWVALID,
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bid(25 downto 13) => s01_couplers_to_xbar_BID(25 downto 13),
      s_axi_bid(12 downto 0) => s00_couplers_to_xbar_BID(12 downto 0),
      s_axi_bready(1) => s01_couplers_to_xbar_BREADY,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(3 downto 2) => s01_couplers_to_xbar_BRESP(3 downto 2),
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(1) => s01_couplers_to_xbar_BVALID(1),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(63 downto 32) => s01_couplers_to_xbar_RDATA(63 downto 32),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rid(25 downto 13) => s01_couplers_to_xbar_RID(25 downto 13),
      s_axi_rid(12 downto 0) => s00_couplers_to_xbar_RID(12 downto 0),
      s_axi_rlast(1) => s01_couplers_to_xbar_RLAST(1),
      s_axi_rlast(0) => s00_couplers_to_xbar_RLAST(0),
      s_axi_rready(1) => s01_couplers_to_xbar_RREADY,
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(3 downto 2) => s01_couplers_to_xbar_RRESP(3 downto 2),
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(1) => s01_couplers_to_xbar_RVALID(1),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(63) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(62) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(61) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(60) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(59) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(58) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(57) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(56) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(55) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(54) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(53) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(52) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(51) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(50) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(49) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(48) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(47) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(46) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(45) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(44) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(43) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(42) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(41) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(40) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(39) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(38) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(37) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(36) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(35) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(34) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(33) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(32) => s01_couplers_to_xbar_WDATA,
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wlast(1) => s01_couplers_to_xbar_WLAST,
      s_axi_wlast(0) => s00_couplers_to_xbar_WLAST,
      s_axi_wready(1) => s01_couplers_to_xbar_WREADY(1),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(7) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(6) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(5) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(4) => s01_couplers_to_xbar_WSTRB,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(1) => s01_couplers_to_xbar_WVALID,
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
-- Used to disable Zynq access to the 
  -- MB Instruction BRAM after the FSBL.
  -- The MB FW should pull this GPIO high
  -- immediately.
  -- Enter Comments here
  entity system is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ja0 : out STD_LOGIC;
    ja1 : out STD_LOGIC;
    ja2 : out STD_LOGIC;
    ja3 : out STD_LOGIC;
    rgb_led : out STD_LOGIC_VECTOR ( 5 downto 0 );
    vaux0_v_n : in STD_LOGIC;
    vaux0_v_p : in STD_LOGIC;
    vaux12_v_n : in STD_LOGIC;
    vaux12_v_p : in STD_LOGIC;
    vaux13_v_n : in STD_LOGIC;
    vaux13_v_p : in STD_LOGIC;
    vaux15_v_n : in STD_LOGIC;
    vaux15_v_p : in STD_LOGIC;
    vaux1_v_n : in STD_LOGIC;
    vaux1_v_p : in STD_LOGIC;
    vaux5_v_n : in STD_LOGIC;
    vaux5_v_p : in STD_LOGIC;
    vaux6_v_n : in STD_LOGIC;
    vaux6_v_p : in STD_LOGIC;
    vaux8_v_n : in STD_LOGIC;
    vaux8_v_p : in STD_LOGIC;
    vaux9_v_n : in STD_LOGIC;
    vaux9_v_p : in STD_LOGIC;
    vp_vn_v_n : in STD_LOGIC;
    vp_vn_v_p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of system : entity is "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=64,numReposBlks=41,numNonXlnxBlks=1,numHierBlks=23,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_board_cnt=2,da_clkrst_cnt=19,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of system : entity is "system.hwdef";
end system;

architecture STRUCTURE of system is
  component system_processing_system7_0_0 is
  port (
    I2C0_SDA_I : in STD_LOGIC;
    I2C0_SDA_O : out STD_LOGIC;
    I2C0_SDA_T : out STD_LOGIC;
    I2C0_SCL_I : in STD_LOGIC;
    I2C0_SCL_O : out STD_LOGIC;
    I2C0_SCL_T : out STD_LOGIC;
    SPI0_SCLK_I : in STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SCLK_T : out STD_LOGIC;
    SPI0_MOSI_I : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_MOSI_T : out STD_LOGIC;
    SPI0_MISO_I : in STD_LOGIC;
    SPI0_MISO_O : out STD_LOGIC;
    SPI0_MISO_T : out STD_LOGIC;
    SPI0_SS_I : in STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_T : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_ARREADY : out STD_LOGIC;
    S_AXI_GP0_AWREADY : out STD_LOGIC;
    S_AXI_GP0_BVALID : out STD_LOGIC;
    S_AXI_GP0_RLAST : out STD_LOGIC;
    S_AXI_GP0_RVALID : out STD_LOGIC;
    S_AXI_GP0_WREADY : out STD_LOGIC;
    S_AXI_GP0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_BID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_RID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_ACLK : in STD_LOGIC;
    S_AXI_GP0_ARVALID : in STD_LOGIC;
    S_AXI_GP0_AWVALID : in STD_LOGIC;
    S_AXI_GP0_BREADY : in STD_LOGIC;
    S_AXI_GP0_RREADY : in STD_LOGIC;
    S_AXI_GP0_WLAST : in STD_LOGIC;
    S_AXI_GP0_WVALID : in STD_LOGIC;
    S_AXI_GP0_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_ARLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_AWLOCK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_GP0_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_GP0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_GP0_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWLEN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_GP0_ARID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_AWID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_GP0_WID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    IRQ_F2P : in STD_LOGIC_VECTOR ( 2 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component system_processing_system7_0_0;
  component system_rst_ps7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_rst_ps7_0_100M_0;
  component system_microblaze_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    M_AXI_IP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IP_AWVALID : out STD_LOGIC;
    M_AXI_IP_AWREADY : in STD_LOGIC;
    M_AXI_IP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_IP_WVALID : out STD_LOGIC;
    M_AXI_IP_WREADY : in STD_LOGIC;
    M_AXI_IP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IP_BVALID : in STD_LOGIC;
    M_AXI_IP_BREADY : out STD_LOGIC;
    M_AXI_IP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_IP_ARVALID : out STD_LOGIC;
    M_AXI_IP_ARREADY : in STD_LOGIC;
    M_AXI_IP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_IP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_IP_RVALID : in STD_LOGIC;
    M_AXI_IP_RREADY : out STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Dbg_Trig_In : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_In : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Out : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Trig_Ack_Out : out STD_LOGIC_VECTOR ( 0 to 7 );
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component system_microblaze_0_0;
  component system_mdm_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    Interrupt : out STD_LOGIC;
    Debug_SYS_Rst : out STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC;
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC;
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    LMB_Data_Addr_0 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Addr_Strobe_0 : out STD_LOGIC;
    LMB_Ready_0 : in STD_LOGIC;
    LMB_Byte_Enable_0 : out STD_LOGIC_VECTOR ( 0 to 3 );
    LMB_Data_Read_0 : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Data_Write_0 : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Read_Strobe_0 : out STD_LOGIC;
    LMB_Write_Strobe_0 : out STD_LOGIC;
    LMB_CE_0 : in STD_LOGIC;
    LMB_UE_0 : in STD_LOGIC;
    LMB_Wait_0 : in STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component system_mdm_0_0;
  component system_axi_intc_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 0 to 0 );
    irq : out STD_LOGIC
  );
  end component system_axi_intc_0_0;
  component system_xadc_wiz_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    vp_in : in STD_LOGIC;
    vn_in : in STD_LOGIC;
    vauxp0 : in STD_LOGIC;
    vauxn0 : in STD_LOGIC;
    vauxp1 : in STD_LOGIC;
    vauxn1 : in STD_LOGIC;
    vauxp5 : in STD_LOGIC;
    vauxn5 : in STD_LOGIC;
    vauxp6 : in STD_LOGIC;
    vauxn6 : in STD_LOGIC;
    vauxp8 : in STD_LOGIC;
    vauxn8 : in STD_LOGIC;
    vauxp9 : in STD_LOGIC;
    vauxn9 : in STD_LOGIC;
    vauxp12 : in STD_LOGIC;
    vauxn12 : in STD_LOGIC;
    vauxp13 : in STD_LOGIC;
    vauxn13 : in STD_LOGIC;
    vauxp15 : in STD_LOGIC;
    vauxn15 : in STD_LOGIC;
    user_temp_alarm_out : out STD_LOGIC;
    vccint_alarm_out : out STD_LOGIC;
    vccaux_alarm_out : out STD_LOGIC;
    vccpint_alarm_out : out STD_LOGIC;
    vccpaux_alarm_out : out STD_LOGIC;
    vccddro_alarm_out : out STD_LOGIC;
    ot_out : out STD_LOGIC;
    channel_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    eoc_out : out STD_LOGIC;
    alarm_out : out STD_LOGIC;
    eos_out : out STD_LOGIC;
    busy_out : out STD_LOGIC
  );
  end component system_xadc_wiz_0_0;
  component system_xlconcat_2_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component system_xlconcat_2_0;
  component system_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_0_0;
  component system_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_xlconstant_0_1;
  component system_PWM_0_0 is
  port (
    pwm : out STD_LOGIC_VECTOR ( 5 downto 0 );
    pwm_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_axi_awvalid : in STD_LOGIC;
    pwm_axi_awready : out STD_LOGIC;
    pwm_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_axi_wvalid : in STD_LOGIC;
    pwm_axi_wready : out STD_LOGIC;
    pwm_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_axi_bvalid : out STD_LOGIC;
    pwm_axi_bready : in STD_LOGIC;
    pwm_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    pwm_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_axi_arvalid : in STD_LOGIC;
    pwm_axi_arready : out STD_LOGIC;
    pwm_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pwm_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    pwm_axi_rvalid : out STD_LOGIC;
    pwm_axi_rready : in STD_LOGIC;
    pwm_axi_aclk : in STD_LOGIC;
    pwm_axi_aresetn : in STD_LOGIC
  );
  end component system_PWM_0_0;
  component system_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component system_blk_mem_gen_0_1;
  component system_lmb_bram_if_cntlr_0_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component system_lmb_bram_if_cntlr_0_1;
  component system_lmb_bram_if_cntlr_1_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component system_lmb_bram_if_cntlr_1_1;
  component system_lmb_v10_0_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component system_lmb_v10_0_1;
  component system_lmb_v10_1_1 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component system_lmb_v10_1_1;
  component system_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_axi_gpio_0_0;
  component system_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component system_blk_mem_gen_1_0;
  component system_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axi_bram_ctrl_0_0;
  component system_axi_bram_ctrl_1_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 14 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axi_bram_ctrl_1_0;
  component system_blk_mem_gen_1_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component system_blk_mem_gen_1_1;
  component system_axi_bram_ctrl_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axi_bram_ctrl_0_1;
  component system_axi_bram_ctrl_1_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axi_bram_ctrl_1_1;
  component system_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axis_data_fifo_0_0;
  component system_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    mm2s_introut : out STD_LOGIC
  );
  end component system_axi_dma_0_0;
  component system_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component system_clk_wiz_0_0;
  component system_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component system_proc_sys_reset_0_0;
  component system_i2s_output_1_0 is
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
  end component system_i2s_output_1_0;
  component system_axi_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component system_axi_gpio_0_1;
  signal Conn1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn1_ADDRSTROBE : STD_LOGIC;
  signal Conn1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Conn1_CE : STD_LOGIC;
  signal Conn1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn1_READSTROBE : STD_LOGIC;
  signal Conn1_READY : STD_LOGIC;
  signal Conn1_UE : STD_LOGIC;
  signal Conn1_WAIT : STD_LOGIC;
  signal Conn1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn1_WRITESTROBE : STD_LOGIC;
  signal Conn_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn_ADDRSTROBE : STD_LOGIC;
  signal Conn_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal Conn_CE : STD_LOGIC;
  signal Conn_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn_READSTROBE : STD_LOGIC;
  signal Conn_READY : STD_LOGIC;
  signal Conn_UE : STD_LOGIC;
  signal Conn_WAIT : STD_LOGIC;
  signal Conn_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal Conn_WRITESTROBE : STD_LOGIC;
  signal Vaux0_0_1_V_N : STD_LOGIC;
  signal Vaux0_0_1_V_P : STD_LOGIC;
  signal Vaux12_0_1_V_N : STD_LOGIC;
  signal Vaux12_0_1_V_P : STD_LOGIC;
  signal Vaux13_0_1_V_N : STD_LOGIC;
  signal Vaux13_0_1_V_P : STD_LOGIC;
  signal Vaux15_0_1_V_N : STD_LOGIC;
  signal Vaux15_0_1_V_P : STD_LOGIC;
  signal Vaux1_0_1_V_N : STD_LOGIC;
  signal Vaux1_0_1_V_P : STD_LOGIC;
  signal Vaux5_0_1_V_N : STD_LOGIC;
  signal Vaux5_0_1_V_P : STD_LOGIC;
  signal Vaux6_0_1_V_N : STD_LOGIC;
  signal Vaux6_0_1_V_P : STD_LOGIC;
  signal Vaux8_0_1_V_N : STD_LOGIC;
  signal Vaux8_0_1_V_P : STD_LOGIC;
  signal Vaux9_0_1_V_N : STD_LOGIC;
  signal Vaux9_0_1_V_P : STD_LOGIC;
  signal Vp_Vn_0_1_V_N : STD_LOGIC;
  signal Vp_Vn_0_1_V_P : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA1_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA1_CLK : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_0_BRAM_PORTA1_EN : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA1_RST : STD_LOGIC;
  signal axi_bram_ctrl_0_BRAM_PORTA1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_ADDR : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_CLK : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA1_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_bram_ctrl_1_BRAM_PORTA1_EN : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA1_RST : STD_LOGIC;
  signal axi_bram_ctrl_1_BRAM_PORTA1_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TKEEP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_gpio_0_gpio_io_o : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_intc_0_interrupt_INTERRUPT : STD_LOGIC;
  signal axis_data_fifo_0_axis_data_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_data_fifo_0_m_axis_tdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of axis_data_fifo_0_m_axis_tdata : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of axis_data_fifo_0_m_axis_tdata : signal is std.standard.true;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  attribute DEBUG of clk_wiz_0_clk_out1 : signal is "true";
  attribute MARK_DEBUG of clk_wiz_0_clk_out1 : signal is std.standard.true;
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_CLK : STD_LOGIC;
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_EN : STD_LOGIC;
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_RST : STD_LOGIC;
  signal data_lmb_bram_if_cntlr_1_BRAM_PORT_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_CLK : STD_LOGIC;
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_EN : STD_LOGIC;
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_RST : STD_LOGIC;
  signal dma_axi_bram_ctrl_1_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal i2s_output_1_data_accepted : STD_LOGIC;
  attribute DEBUG of i2s_output_1_data_accepted : signal is "true";
  attribute MARK_DEBUG of i2s_output_1_data_accepted : signal is std.standard.true;
  signal i2s_output_1_i2s_lrclk : STD_LOGIC;
  attribute DEBUG of i2s_output_1_i2s_lrclk : signal is "true";
  attribute MARK_DEBUG of i2s_output_1_i2s_lrclk : signal is std.standard.true;
  signal i2s_output_1_i2s_mclk : STD_LOGIC;
  signal i2s_output_1_i2s_sclk : STD_LOGIC;
  attribute DEBUG of i2s_output_1_i2s_sclk : signal is "true";
  attribute MARK_DEBUG of i2s_output_1_i2s_sclk : signal is std.standard.true;
  signal i2s_output_1_i2s_sd : STD_LOGIC;
  attribute DEBUG of i2s_output_1_i2s_sd : signal is "true";
  attribute MARK_DEBUG of i2s_output_1_i2s_sd : signal is std.standard.true;
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_CLK : STD_LOGIC;
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_EN : STD_LOGIC;
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_RST : STD_LOGIC;
  signal ins_lmb_bram_if_cntlr_0_BRAM_PORT_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_BID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_RID : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_RLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_WID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_WLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_RLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_WLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWLOCK : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_RLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_WLAST : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_ARREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_ARVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_AWREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_AWVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_BREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_BVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_RREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_RVALID : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_WREADY : STD_LOGIC;
  signal mb_axi_mem_interconnect_0_M06_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mb_axi_mem_interconnect_0_M06_AXI_WVALID : STD_LOGIC;
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_CLK : STD_LOGIC;
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_EN : STD_LOGIC;
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_RST : STD_LOGIC;
  signal mb_dma_axi_bram_ctrl_0_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_0_Debug_SYS_Rst : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_CAPTURE : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_CLK : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_DISABLE : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal mdm_0_MBDEBUG_0_RST : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_SHIFT : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_TDI : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_TDO : STD_LOGIC;
  signal mdm_0_MBDEBUG_0_UPDATE : STD_LOGIC;
  signal mdm_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdm_0_M_AXI_ARLOCK : STD_LOGIC;
  signal mdm_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_0_M_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_0_M_AXI_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_0_M_AXI_ARVALID : STD_LOGIC;
  signal mdm_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal mdm_0_M_AXI_AWLOCK : STD_LOGIC;
  signal mdm_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_0_M_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_0_M_AXI_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_0_M_AXI_AWVALID : STD_LOGIC;
  signal mdm_0_M_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_0_M_AXI_BREADY : STD_LOGIC;
  signal mdm_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_0_M_AXI_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_0_M_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mdm_0_M_AXI_RLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_RREADY : STD_LOGIC;
  signal mdm_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mdm_0_M_AXI_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal mdm_0_M_AXI_WLAST : STD_LOGIC;
  signal mdm_0_M_AXI_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mdm_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mdm_0_M_AXI_WVALID : STD_LOGIC;
  signal microblaze_0_DLMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_DLMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_DLMB_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_0_DLMB_CE : STD_LOGIC;
  signal microblaze_0_DLMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_DLMB_READSTROBE : STD_LOGIC;
  signal microblaze_0_DLMB_READY : STD_LOGIC;
  signal microblaze_0_DLMB_UE : STD_LOGIC;
  signal microblaze_0_DLMB_WAIT : STD_LOGIC;
  signal microblaze_0_DLMB_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_DLMB_WRITESTROBE : STD_LOGIC;
  signal microblaze_0_ILMB_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ILMB_ADDRSTROBE : STD_LOGIC;
  signal microblaze_0_ILMB_CE : STD_LOGIC;
  signal microblaze_0_ILMB_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_0_ILMB_READSTROBE : STD_LOGIC;
  signal microblaze_0_ILMB_READY : STD_LOGIC;
  signal microblaze_0_ILMB_UE : STD_LOGIC;
  signal microblaze_0_ILMB_WAIT : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_DP_AWREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_BVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_DP_RVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_DP_WREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_0_M_AXI_IP_ARREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IP_ARVALID : STD_LOGIC;
  signal microblaze_0_M_AXI_IP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_0_M_AXI_IP_RREADY : STD_LOGIC;
  signal microblaze_0_M_AXI_IP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_0_M_AXI_IP_RVALID : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M00_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARLOCK : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWLOCK : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M03_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M03_AXI_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_M05_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_M05_AXI_WVALID : STD_LOGIC;
  signal rgb_PWM_0_pwm : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rst_ps7_0_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_ps7_0_100M_mb_reset : STD_LOGIC;
  signal rst_ps7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xadc_wiz_0_ip2intc_irpt : STD_LOGIC;
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_dma_0_mm2s_introut_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_clk_wiz_25M_locked_UNCONNECTED : STD_LOGIC;
  signal NLW_data_lmb_v10_1_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_dma_axi_bram_ctrl_1_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_dma_axi_bram_ctrl_1_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_dma_axi_bram_ctrl_1_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_dma_axi_bram_ctrl_1_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_dma_blk_mem_gen_1_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_dma_blk_mem_gen_1_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_ins_lmb_v10_0_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S00_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_mb_axi_mem_interconnect_0_S01_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_Interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_LMB_Addr_Strobe_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_LMB_Read_Strobe_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_LMB_Write_Strobe_0_UNCONNECTED : STD_LOGIC;
  signal NLW_mdm_0_LMB_Byte_Enable_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_mdm_0_LMB_Data_Addr_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_mdm_0_LMB_Data_Write_0_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 31 );
  signal NLW_microblaze_0_M_AXI_IP_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IP_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_M_AXI_IP_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_0_Dbg_Trig_Ack_Out_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_microblaze_0_Dbg_Trig_In_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 7 );
  signal NLW_microblaze_0_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_microblaze_0_M_AXI_IP_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_microblaze_0_M_AXI_IP_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_microblaze_0_M_AXI_IP_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_microblaze_0_M_AXI_IP_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_I2C0_SCL_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C0_SCL_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C0_SDA_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_I2C0_SDA_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_O_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ps7_0_axi_periph_M02_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M02_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_araddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awaddr_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awregion_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wdata_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wstrb_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M06_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_bid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_bresp_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_rdata_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_rid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_rresp_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_S01_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_ps7_0_axi_periph_M04_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_M04_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_M04_AXI_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_M04_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_share_blk_mem_gen_1_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_share_blk_mem_gen_1_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_busy_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eoc_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_eos_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_ot_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccddro_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccpaux_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_vccpint_alarm_out_UNCONNECTED : STD_LOGIC;
  signal NLW_xadc_wiz_0_channel_out_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of data_lmb_bram_if_cntlr_1 : label is "byte  0x00000000 32 > system blk_mem_gen_0";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of data_lmb_bram_if_cntlr_1 : label is "yes";
  attribute BMM_INFO_ADDRESS_SPACE of mb_dma_axi_bram_ctrl_0 : label is "byte  0xC0000000 32 > system dma_blk_mem_gen_1";
  attribute KEEP_HIERARCHY of mb_dma_axi_bram_ctrl_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_0 : label is "microblaze-le > system data_lmb_bram_if_cntlr_1 system share_axi_bram_ctrl_0 system mb_dma_axi_bram_ctrl_0";
  attribute KEEP_HIERARCHY of microblaze_0 : label is "yes";
  attribute BMM_INFO_PROCESSOR of processing_system7_0 : label is "arm > system share_axi_bram_ctrl_1";
  attribute KEEP_HIERARCHY of processing_system7_0 : label is "yes";
  attribute BMM_INFO_ADDRESS_SPACE of share_axi_bram_ctrl_0 : label is "byte  0x04B00000 32 > system share_blk_mem_gen_1";
  attribute KEEP_HIERARCHY of share_axi_bram_ctrl_0 : label is "yes";
  attribute BMM_INFO_ADDRESS_SPACE of share_axi_bram_ctrl_1 : label is "byte  0x40000000 32 > system share_blk_mem_gen_1";
  attribute KEEP_HIERARCHY of share_axi_bram_ctrl_1 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of vaux0_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux0 V_N";
  attribute X_INTERFACE_INFO of vaux0_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux0 V_P";
  attribute X_INTERFACE_INFO of vaux12_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux12 V_N";
  attribute X_INTERFACE_INFO of vaux12_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux12 V_P";
  attribute X_INTERFACE_INFO of vaux13_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux13 V_N";
  attribute X_INTERFACE_INFO of vaux13_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux13 V_P";
  attribute X_INTERFACE_INFO of vaux15_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux15 V_N";
  attribute X_INTERFACE_INFO of vaux15_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux15 V_P";
  attribute X_INTERFACE_INFO of vaux1_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux1 V_N";
  attribute X_INTERFACE_INFO of vaux1_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux1 V_P";
  attribute X_INTERFACE_INFO of vaux5_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux5 V_N";
  attribute X_INTERFACE_INFO of vaux5_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux5 V_P";
  attribute X_INTERFACE_INFO of vaux6_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux6 V_N";
  attribute X_INTERFACE_INFO of vaux6_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux6 V_P";
  attribute X_INTERFACE_INFO of vaux8_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux8 V_N";
  attribute X_INTERFACE_INFO of vaux8_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux8 V_P";
  attribute X_INTERFACE_INFO of vaux9_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux9 V_N";
  attribute X_INTERFACE_INFO of vaux9_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vaux9 V_P";
  attribute X_INTERFACE_INFO of vp_vn_v_n : signal is "xilinx.com:interface:diff_analog_io:1.0 vp_vn V_N";
  attribute X_INTERFACE_INFO of vp_vn_v_p : signal is "xilinx.com:interface:diff_analog_io:1.0 vp_vn V_P";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  Vaux0_0_1_V_N <= vaux0_v_n;
  Vaux0_0_1_V_P <= vaux0_v_p;
  Vaux12_0_1_V_N <= vaux12_v_n;
  Vaux12_0_1_V_P <= vaux12_v_p;
  Vaux13_0_1_V_N <= vaux13_v_n;
  Vaux13_0_1_V_P <= vaux13_v_p;
  Vaux15_0_1_V_N <= vaux15_v_n;
  Vaux15_0_1_V_P <= vaux15_v_p;
  Vaux1_0_1_V_N <= vaux1_v_n;
  Vaux1_0_1_V_P <= vaux1_v_p;
  Vaux5_0_1_V_N <= vaux5_v_n;
  Vaux5_0_1_V_P <= vaux5_v_p;
  Vaux6_0_1_V_N <= vaux6_v_n;
  Vaux6_0_1_V_P <= vaux6_v_p;
  Vaux8_0_1_V_N <= vaux8_v_n;
  Vaux8_0_1_V_P <= vaux8_v_p;
  Vaux9_0_1_V_N <= vaux9_v_n;
  Vaux9_0_1_V_P <= vaux9_v_p;
  Vp_Vn_0_1_V_N <= vp_vn_v_n;
  Vp_Vn_0_1_V_P <= vp_vn_v_p;
  ja0 <= i2s_output_1_i2s_mclk;
  ja1 <= i2s_output_1_i2s_lrclk;
  ja2 <= i2s_output_1_i2s_sclk;
  ja3 <= i2s_output_1_i2s_sd;
  rgb_led(5 downto 0) <= rgb_PWM_0_pwm(5 downto 0);
axi_dma_0: component system_axi_dma_0_0
     port map (
      axi_resetn => rst_ps7_0_100M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => processing_system7_0_FCLK_CLK0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axis_mm2s_tdata(15 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(15 downto 0),
      m_axis_mm2s_tkeep(1 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(1 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => NLW_axi_dma_0_mm2s_introut_UNCONNECTED,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_lite_araddr(9 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => mb_axi_mem_interconnect_0_M01_AXI_ARREADY,
      s_axi_lite_arvalid => mb_axi_mem_interconnect_0_M01_AXI_ARVALID,
      s_axi_lite_awaddr(9 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => mb_axi_mem_interconnect_0_M01_AXI_AWREADY,
      s_axi_lite_awvalid => mb_axi_mem_interconnect_0_M01_AXI_AWVALID,
      s_axi_lite_bready => mb_axi_mem_interconnect_0_M01_AXI_BREADY,
      s_axi_lite_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => mb_axi_mem_interconnect_0_M01_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => mb_axi_mem_interconnect_0_M01_AXI_RREADY,
      s_axi_lite_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => mb_axi_mem_interconnect_0_M01_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => mb_axi_mem_interconnect_0_M01_AXI_WREADY,
      s_axi_lite_wvalid => mb_axi_mem_interconnect_0_M01_AXI_WVALID
    );
axi_intc_0: component system_axi_intc_0_0
     port map (
      intr(0) => axi_gpio_0_gpio_io_o(0),
      irq => axi_intc_0_interrupt_INTERRUPT,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => mb_axi_mem_interconnect_0_M06_AXI_ARREADY,
      s_axi_arvalid => mb_axi_mem_interconnect_0_M06_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_AWADDR(8 downto 0),
      s_axi_awready => mb_axi_mem_interconnect_0_M06_AXI_AWREADY,
      s_axi_awvalid => mb_axi_mem_interconnect_0_M06_AXI_AWVALID,
      s_axi_bready => mb_axi_mem_interconnect_0_M06_AXI_BREADY,
      s_axi_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_BRESP(1 downto 0),
      s_axi_bvalid => mb_axi_mem_interconnect_0_M06_AXI_BVALID,
      s_axi_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_RDATA(31 downto 0),
      s_axi_rready => mb_axi_mem_interconnect_0_M06_AXI_RREADY,
      s_axi_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_RRESP(1 downto 0),
      s_axi_rvalid => mb_axi_mem_interconnect_0_M06_AXI_RVALID,
      s_axi_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_WDATA(31 downto 0),
      s_axi_wready => mb_axi_mem_interconnect_0_M06_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => mb_axi_mem_interconnect_0_M06_AXI_WVALID
    );
axis_data_fifo_0: component system_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => axis_data_fifo_0_axis_data_count(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => clk_wiz_0_clk_out1,
      m_axis_aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      m_axis_tdata(15 downto 0) => axis_data_fifo_0_m_axis_tdata(15 downto 0),
      m_axis_tkeep(1 downto 0) => NLW_axis_data_fifo_0_m_axis_tkeep_UNCONNECTED(1 downto 0),
      m_axis_tlast => NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => i2s_output_1_data_accepted,
      m_axis_tvalid => NLW_axis_data_fifo_0_m_axis_tvalid_UNCONNECTED,
      s_axis_aclk => processing_system7_0_FCLK_CLK0,
      s_axis_aresetn => rst_ps7_0_100M_interconnect_aresetn(0),
      s_axis_tdata(15 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(15 downto 0),
      s_axis_tkeep(1 downto 0) => axi_dma_0_M_AXIS_MM2S_TKEEP(1 downto 0),
      s_axis_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      s_axis_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      s_axis_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID
    );
blk_mem_gen_0: component system_blk_mem_gen_0_1
     port map (
      addra(31) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(0),
      addra(30) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(1),
      addra(29) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(2),
      addra(28) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(3),
      addra(27) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(4),
      addra(26) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(5),
      addra(25) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(6),
      addra(24) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(7),
      addra(23) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(8),
      addra(22) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(9),
      addra(21) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(10),
      addra(20) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(11),
      addra(19) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(12),
      addra(18) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(13),
      addra(17) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(14),
      addra(16) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(15),
      addra(15) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(16),
      addra(14) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(17),
      addra(13) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(18),
      addra(12) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(19),
      addra(11) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(20),
      addra(10) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(21),
      addra(9) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(22),
      addra(8) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(23),
      addra(7) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(24),
      addra(6) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(25),
      addra(5) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(26),
      addra(4) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(27),
      addra(3) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(28),
      addra(2) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(29),
      addra(1) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(30),
      addra(0) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(31),
      addrb(31) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(0),
      addrb(30) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(1),
      addrb(29) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(2),
      addrb(28) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(3),
      addrb(27) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(4),
      addrb(26) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(5),
      addrb(25) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(6),
      addrb(24) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(7),
      addrb(23) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(8),
      addrb(22) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(9),
      addrb(21) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(10),
      addrb(20) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(11),
      addrb(19) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(12),
      addrb(18) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(13),
      addrb(17) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(14),
      addrb(16) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(15),
      addrb(15) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(16),
      addrb(14) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(17),
      addrb(13) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(18),
      addrb(12) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(19),
      addrb(11) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(20),
      addrb(10) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(21),
      addrb(9) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(22),
      addrb(8) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(23),
      addrb(7) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(24),
      addrb(6) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(25),
      addrb(5) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(26),
      addrb(4) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(27),
      addrb(3) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(28),
      addrb(2) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(29),
      addrb(1) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(30),
      addrb(0) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(31),
      clka => ins_lmb_bram_if_cntlr_0_BRAM_PORT_CLK,
      clkb => data_lmb_bram_if_cntlr_1_BRAM_PORT_CLK,
      dina(31) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(0),
      dina(30) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(1),
      dina(29) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(2),
      dina(28) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(3),
      dina(27) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(4),
      dina(26) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(5),
      dina(25) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(6),
      dina(24) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(7),
      dina(23) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(8),
      dina(22) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(9),
      dina(21) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(10),
      dina(20) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(11),
      dina(19) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(12),
      dina(18) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(13),
      dina(17) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(14),
      dina(16) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(15),
      dina(15) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(16),
      dina(14) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(17),
      dina(13) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(18),
      dina(12) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(19),
      dina(11) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(20),
      dina(10) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(21),
      dina(9) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(22),
      dina(8) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(23),
      dina(7) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(24),
      dina(6) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(25),
      dina(5) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(26),
      dina(4) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(27),
      dina(3) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(28),
      dina(2) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(29),
      dina(1) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(30),
      dina(0) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(31),
      dinb(31) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(0),
      dinb(30) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(1),
      dinb(29) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(2),
      dinb(28) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(3),
      dinb(27) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(4),
      dinb(26) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(5),
      dinb(25) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(6),
      dinb(24) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(7),
      dinb(23) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(8),
      dinb(22) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(9),
      dinb(21) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(10),
      dinb(20) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(11),
      dinb(19) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(12),
      dinb(18) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(13),
      dinb(17) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(14),
      dinb(16) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(15),
      dinb(15) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(16),
      dinb(14) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(17),
      dinb(13) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(18),
      dinb(12) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(19),
      dinb(11) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(20),
      dinb(10) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(21),
      dinb(9) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(22),
      dinb(8) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(23),
      dinb(7) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(24),
      dinb(6) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(25),
      dinb(5) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(26),
      dinb(4) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(27),
      dinb(3) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(28),
      dinb(2) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(29),
      dinb(1) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(30),
      dinb(0) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(31),
      douta(31 downto 0) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(31 downto 0),
      doutb(31 downto 0) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(31 downto 0),
      ena => ins_lmb_bram_if_cntlr_0_BRAM_PORT_EN,
      enb => data_lmb_bram_if_cntlr_1_BRAM_PORT_EN,
      rsta => ins_lmb_bram_if_cntlr_0_BRAM_PORT_RST,
      rsta_busy => NLW_blk_mem_gen_0_rsta_busy_UNCONNECTED,
      rstb => data_lmb_bram_if_cntlr_1_BRAM_PORT_RST,
      rstb_busy => NLW_blk_mem_gen_0_rstb_busy_UNCONNECTED,
      wea(3) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_WE(0),
      wea(2) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_WE(1),
      wea(1) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_WE(2),
      wea(0) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_WE(3),
      web(3) => data_lmb_bram_if_cntlr_1_BRAM_PORT_WE(0),
      web(2) => data_lmb_bram_if_cntlr_1_BRAM_PORT_WE(1),
      web(1) => data_lmb_bram_if_cntlr_1_BRAM_PORT_WE(2),
      web(0) => data_lmb_bram_if_cntlr_1_BRAM_PORT_WE(3)
    );
clk_wiz_25M: component system_clk_wiz_0_0
     port map (
      clk_in1 => processing_system7_0_FCLK_CLK0,
      clk_out1 => clk_wiz_0_clk_out1,
      locked => NLW_clk_wiz_25M_locked_UNCONNECTED,
      reset => rst_ps7_0_100M_bus_struct_reset(0)
    );
data_lmb_bram_if_cntlr_1: component system_lmb_bram_if_cntlr_1_1
     port map (
      BRAM_Addr_A(0 to 31) => data_lmb_bram_if_cntlr_1_BRAM_PORT_ADDR(0 to 31),
      BRAM_Clk_A => data_lmb_bram_if_cntlr_1_BRAM_PORT_CLK,
      BRAM_Din_A(0) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(31),
      BRAM_Din_A(1) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(30),
      BRAM_Din_A(2) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(29),
      BRAM_Din_A(3) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(28),
      BRAM_Din_A(4) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(27),
      BRAM_Din_A(5) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(26),
      BRAM_Din_A(6) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(25),
      BRAM_Din_A(7) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(24),
      BRAM_Din_A(8) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(23),
      BRAM_Din_A(9) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(22),
      BRAM_Din_A(10) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(21),
      BRAM_Din_A(11) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(20),
      BRAM_Din_A(12) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(19),
      BRAM_Din_A(13) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(18),
      BRAM_Din_A(14) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(17),
      BRAM_Din_A(15) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(16),
      BRAM_Din_A(16) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(15),
      BRAM_Din_A(17) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(14),
      BRAM_Din_A(18) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(13),
      BRAM_Din_A(19) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(12),
      BRAM_Din_A(20) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(11),
      BRAM_Din_A(21) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(10),
      BRAM_Din_A(22) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(9),
      BRAM_Din_A(23) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(8),
      BRAM_Din_A(24) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(7),
      BRAM_Din_A(25) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(6),
      BRAM_Din_A(26) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(5),
      BRAM_Din_A(27) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(4),
      BRAM_Din_A(28) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(3),
      BRAM_Din_A(29) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(2),
      BRAM_Din_A(30) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(1),
      BRAM_Din_A(31) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DOUT(0),
      BRAM_Dout_A(0 to 31) => data_lmb_bram_if_cntlr_1_BRAM_PORT_DIN(0 to 31),
      BRAM_EN_A => data_lmb_bram_if_cntlr_1_BRAM_PORT_EN,
      BRAM_Rst_A => data_lmb_bram_if_cntlr_1_BRAM_PORT_RST,
      BRAM_WEN_A(0 to 3) => data_lmb_bram_if_cntlr_1_BRAM_PORT_WE(0 to 3),
      LMB_ABus(0 to 31) => Conn1_ABUS(0 to 31),
      LMB_AddrStrobe => Conn1_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn1_BE(0 to 3),
      LMB_Clk => processing_system7_0_FCLK_CLK0,
      LMB_ReadStrobe => Conn1_READSTROBE,
      LMB_Rst => rst_ps7_0_100M_bus_struct_reset(0),
      LMB_WriteDBus(0 to 31) => Conn1_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn1_WRITESTROBE,
      Sl_CE => Conn1_CE,
      Sl_DBus(0 to 31) => Conn1_READDBUS(0 to 31),
      Sl_Ready => Conn1_READY,
      Sl_UE => Conn1_UE,
      Sl_Wait => Conn1_WAIT
    );
data_lmb_v10_1: component system_lmb_v10_1_1
     port map (
      LMB_ABus(0 to 31) => Conn1_ABUS(0 to 31),
      LMB_AddrStrobe => Conn1_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn1_BE(0 to 3),
      LMB_CE => microblaze_0_DLMB_CE,
      LMB_Clk => processing_system7_0_FCLK_CLK0,
      LMB_ReadDBus(0 to 31) => microblaze_0_DLMB_READDBUS(0 to 31),
      LMB_ReadStrobe => Conn1_READSTROBE,
      LMB_Ready => microblaze_0_DLMB_READY,
      LMB_Rst => NLW_data_lmb_v10_1_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_DLMB_UE,
      LMB_Wait => microblaze_0_DLMB_WAIT,
      LMB_WriteDBus(0 to 31) => Conn1_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn1_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_DLMB_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_DLMB_ADDRSTROBE,
      M_BE(0 to 3) => microblaze_0_DLMB_BE(0 to 3),
      M_DBus(0 to 31) => microblaze_0_DLMB_WRITEDBUS(0 to 31),
      M_ReadStrobe => microblaze_0_DLMB_READSTROBE,
      M_WriteStrobe => microblaze_0_DLMB_WRITESTROBE,
      SYS_Rst => rst_ps7_0_100M_bus_struct_reset(0),
      Sl_CE(0) => Conn1_CE,
      Sl_DBus(0 to 31) => Conn1_READDBUS(0 to 31),
      Sl_Ready(0) => Conn1_READY,
      Sl_UE(0) => Conn1_UE,
      Sl_Wait(0) => Conn1_WAIT
    );
dma_axi_bram_ctrl_1: component system_axi_bram_ctrl_1_0
     port map (
      bram_addr_a(14 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_ADDR(14 downto 0),
      bram_clk_a => dma_axi_bram_ctrl_1_BRAM_PORTA_CLK,
      bram_en_a => dma_axi_bram_ctrl_1_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => dma_axi_bram_ctrl_1_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(14 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(14 downto 0),
      s_axi_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      s_axi_arlock => '0',
      s_axi_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      s_axi_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      s_axi_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      s_axi_awaddr(14 downto 0) => B"000000000000000",
      s_axi_awburst(1 downto 0) => B"01",
      s_axi_awcache(3 downto 0) => B"0011",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awready => NLW_dma_axi_bram_ctrl_1_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"010",
      s_axi_awvalid => '0',
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_dma_axi_bram_ctrl_1_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_dma_axi_bram_ctrl_1_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      s_axi_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      s_axi_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      s_axi_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      s_axi_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_dma_axi_bram_ctrl_1_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"1111",
      s_axi_wvalid => '0'
    );
dma_blk_mem_gen_1: component system_blk_mem_gen_1_0
     port map (
      addra(31 downto 15) => B"00000000000000000",
      addra(14 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_ADDR(14 downto 0),
      addrb(31 downto 15) => B"00000000000000000",
      addrb(14 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_ADDR(14 downto 0),
      clka => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_CLK,
      clkb => dma_axi_bram_ctrl_1_BRAM_PORTA_CLK,
      dina(31 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      dinb(31 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_DIN(31 downto 0),
      douta(31 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      doutb(31 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_DOUT(31 downto 0),
      ena => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_EN,
      enb => dma_axi_bram_ctrl_1_BRAM_PORTA_EN,
      rsta => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_RST,
      rsta_busy => NLW_dma_blk_mem_gen_1_rsta_busy_UNCONNECTED,
      rstb => dma_axi_bram_ctrl_1_BRAM_PORTA_RST,
      rstb_busy => NLW_dma_blk_mem_gen_1_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      web(3 downto 0) => dma_axi_bram_ctrl_1_BRAM_PORTA_WE(3 downto 0)
    );
fifo_count_axi_gpio_0: component system_axi_gpio_0_1
     port map (
      gpio_io_i(31 downto 0) => axis_data_fifo_0_axis_data_count(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => mb_axi_mem_interconnect_0_M03_AXI_ARREADY,
      s_axi_arvalid => mb_axi_mem_interconnect_0_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => mb_axi_mem_interconnect_0_M03_AXI_AWREADY,
      s_axi_awvalid => mb_axi_mem_interconnect_0_M03_AXI_AWVALID,
      s_axi_bready => mb_axi_mem_interconnect_0_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => mb_axi_mem_interconnect_0_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => mb_axi_mem_interconnect_0_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => mb_axi_mem_interconnect_0_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => mb_axi_mem_interconnect_0_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => mb_axi_mem_interconnect_0_M03_AXI_WVALID
    );
i2s_output_1: component system_i2s_output_1_0
     port map (
      clk => clk_wiz_0_clk_out1,
      data_accepted => i2s_output_1_data_accepted,
      data_l(15 downto 0) => axis_data_fifo_0_m_axis_tdata(15 downto 0),
      data_r(15 downto 0) => axis_data_fifo_0_m_axis_tdata(15 downto 0),
      i2s_lrclk => i2s_output_1_i2s_lrclk,
      i2s_mclk => i2s_output_1_i2s_mclk,
      i2s_sclk => i2s_output_1_i2s_sclk,
      i2s_sd => i2s_output_1_i2s_sd
    );
ins_lmb_bram_if_cntlr_0: component system_lmb_bram_if_cntlr_0_1
     port map (
      BRAM_Addr_A(0 to 31) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_ADDR(0 to 31),
      BRAM_Clk_A => ins_lmb_bram_if_cntlr_0_BRAM_PORT_CLK,
      BRAM_Din_A(0) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(31),
      BRAM_Din_A(1) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(30),
      BRAM_Din_A(2) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(29),
      BRAM_Din_A(3) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(28),
      BRAM_Din_A(4) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(27),
      BRAM_Din_A(5) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(26),
      BRAM_Din_A(6) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(25),
      BRAM_Din_A(7) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(24),
      BRAM_Din_A(8) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(23),
      BRAM_Din_A(9) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(22),
      BRAM_Din_A(10) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(21),
      BRAM_Din_A(11) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(20),
      BRAM_Din_A(12) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(19),
      BRAM_Din_A(13) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(18),
      BRAM_Din_A(14) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(17),
      BRAM_Din_A(15) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(16),
      BRAM_Din_A(16) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(15),
      BRAM_Din_A(17) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(14),
      BRAM_Din_A(18) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(13),
      BRAM_Din_A(19) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(12),
      BRAM_Din_A(20) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(11),
      BRAM_Din_A(21) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(10),
      BRAM_Din_A(22) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(9),
      BRAM_Din_A(23) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(8),
      BRAM_Din_A(24) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(7),
      BRAM_Din_A(25) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(6),
      BRAM_Din_A(26) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(5),
      BRAM_Din_A(27) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(4),
      BRAM_Din_A(28) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(3),
      BRAM_Din_A(29) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(2),
      BRAM_Din_A(30) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(1),
      BRAM_Din_A(31) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DOUT(0),
      BRAM_Dout_A(0 to 31) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_DIN(0 to 31),
      BRAM_EN_A => ins_lmb_bram_if_cntlr_0_BRAM_PORT_EN,
      BRAM_Rst_A => ins_lmb_bram_if_cntlr_0_BRAM_PORT_RST,
      BRAM_WEN_A(0 to 3) => ins_lmb_bram_if_cntlr_0_BRAM_PORT_WE(0 to 3),
      LMB_ABus(0 to 31) => Conn_ABUS(0 to 31),
      LMB_AddrStrobe => Conn_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn_BE(0 to 3),
      LMB_Clk => processing_system7_0_FCLK_CLK0,
      LMB_ReadStrobe => Conn_READSTROBE,
      LMB_Rst => rst_ps7_0_100M_bus_struct_reset(0),
      LMB_WriteDBus(0 to 31) => Conn_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn_WRITESTROBE,
      Sl_CE => Conn_CE,
      Sl_DBus(0 to 31) => Conn_READDBUS(0 to 31),
      Sl_Ready => Conn_READY,
      Sl_UE => Conn_UE,
      Sl_Wait => Conn_WAIT
    );
ins_lmb_v10_0: component system_lmb_v10_0_1
     port map (
      LMB_ABus(0 to 31) => Conn_ABUS(0 to 31),
      LMB_AddrStrobe => Conn_ADDRSTROBE,
      LMB_BE(0 to 3) => Conn_BE(0 to 3),
      LMB_CE => microblaze_0_ILMB_CE,
      LMB_Clk => processing_system7_0_FCLK_CLK0,
      LMB_ReadDBus(0 to 31) => microblaze_0_ILMB_READDBUS(0 to 31),
      LMB_ReadStrobe => Conn_READSTROBE,
      LMB_Ready => microblaze_0_ILMB_READY,
      LMB_Rst => NLW_ins_lmb_v10_0_LMB_Rst_UNCONNECTED,
      LMB_UE => microblaze_0_ILMB_UE,
      LMB_Wait => microblaze_0_ILMB_WAIT,
      LMB_WriteDBus(0 to 31) => Conn_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => Conn_WRITESTROBE,
      M_ABus(0 to 31) => microblaze_0_ILMB_ABUS(0 to 31),
      M_AddrStrobe => microblaze_0_ILMB_ADDRSTROBE,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => microblaze_0_ILMB_READSTROBE,
      M_WriteStrobe => '0',
      SYS_Rst => rst_ps7_0_100M_bus_struct_reset(0),
      Sl_CE(0) => Conn_CE,
      Sl_DBus(0 to 31) => Conn_READDBUS(0 to 31),
      Sl_Ready(0) => Conn_READY,
      Sl_UE(0) => Conn_UE,
      Sl_Wait(0) => Conn_WAIT
    );
int_axi_gpio_0: component system_axi_gpio_0_0
     port map (
      gpio_io_o(0) => axi_gpio_0_gpio_io_o(0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(8 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(8 downto 0),
      s_axi_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M03_AXI_WVALID
    );
mb_axi_mem_interconnect_0: entity work.system_axi_interconnect_0_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arburst(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARID(2 downto 0),
      M00_AXI_arlen(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      M00_AXI_arlock(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      M00_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => mb_axi_mem_interconnect_0_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => mb_axi_mem_interconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awburst(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWID(2 downto 0),
      M00_AXI_awlen(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      M00_AXI_awlock(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      M00_AXI_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => mb_axi_mem_interconnect_0_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => mb_axi_mem_interconnect_0_M00_AXI_AWVALID,
      M00_AXI_bid(5 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_BID(5 downto 0),
      M00_AXI_bready => mb_axi_mem_interconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => mb_axi_mem_interconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(5 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_RID(5 downto 0),
      M00_AXI_rlast => mb_axi_mem_interconnect_0_M00_AXI_RLAST,
      M00_AXI_rready => mb_axi_mem_interconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => mb_axi_mem_interconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wid(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_WID(2 downto 0),
      M00_AXI_wlast => mb_axi_mem_interconnect_0_M00_AXI_WLAST,
      M00_AXI_wready => mb_axi_mem_interconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => mb_axi_mem_interconnect_0_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arready => mb_axi_mem_interconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => mb_axi_mem_interconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awready => mb_axi_mem_interconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => mb_axi_mem_interconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => mb_axi_mem_interconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => mb_axi_mem_interconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => mb_axi_mem_interconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => mb_axi_mem_interconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => mb_axi_mem_interconnect_0_M01_AXI_WREADY,
      M01_AXI_wvalid => mb_axi_mem_interconnect_0_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARADDR(31 downto 0),
      M02_AXI_arburst(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARCACHE(3 downto 0),
      M02_AXI_arid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARID(2 downto 0),
      M02_AXI_arlen(7 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARLEN(7 downto 0),
      M02_AXI_arlock => mb_axi_mem_interconnect_0_M02_AXI_ARLOCK,
      M02_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arready => mb_axi_mem_interconnect_0_M02_AXI_ARREADY,
      M02_AXI_arsize(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARSIZE(2 downto 0),
      M02_AXI_arvalid => mb_axi_mem_interconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWADDR(31 downto 0),
      M02_AXI_awburst(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWCACHE(3 downto 0),
      M02_AXI_awid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWID(2 downto 0),
      M02_AXI_awlen(7 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWLEN(7 downto 0),
      M02_AXI_awlock => mb_axi_mem_interconnect_0_M02_AXI_AWLOCK,
      M02_AXI_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awready => mb_axi_mem_interconnect_0_M02_AXI_AWREADY,
      M02_AXI_awsize(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWSIZE(2 downto 0),
      M02_AXI_awvalid => mb_axi_mem_interconnect_0_M02_AXI_AWVALID,
      M02_AXI_bid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_BID(2 downto 0),
      M02_AXI_bready => mb_axi_mem_interconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => mb_axi_mem_interconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_RID(2 downto 0),
      M02_AXI_rlast => mb_axi_mem_interconnect_0_M02_AXI_RLAST,
      M02_AXI_rready => mb_axi_mem_interconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => mb_axi_mem_interconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wlast => mb_axi_mem_interconnect_0_M02_AXI_WLAST,
      M02_AXI_wready => mb_axi_mem_interconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => mb_axi_mem_interconnect_0_M02_AXI_WVALID,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => mb_axi_mem_interconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => mb_axi_mem_interconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => mb_axi_mem_interconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => mb_axi_mem_interconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => mb_axi_mem_interconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => mb_axi_mem_interconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => mb_axi_mem_interconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => mb_axi_mem_interconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => mb_axi_mem_interconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => mb_axi_mem_interconnect_0_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_ARADDR(31 downto 0),
      M04_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arready => mb_axi_mem_interconnect_0_M04_AXI_ARREADY,
      M04_AXI_arvalid => mb_axi_mem_interconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_AWADDR(31 downto 0),
      M04_AXI_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awready => mb_axi_mem_interconnect_0_M04_AXI_AWREADY,
      M04_AXI_awvalid => mb_axi_mem_interconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => mb_axi_mem_interconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => mb_axi_mem_interconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_RDATA(31 downto 0),
      M04_AXI_rready => mb_axi_mem_interconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => mb_axi_mem_interconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_WDATA(31 downto 0),
      M04_AXI_wready => mb_axi_mem_interconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      M04_AXI_wvalid => mb_axi_mem_interconnect_0_M04_AXI_WVALID,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arburst(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARBURST(1 downto 0),
      M05_AXI_arcache(3 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARCACHE(3 downto 0),
      M05_AXI_arid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARID(2 downto 0),
      M05_AXI_arlen(7 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARLEN(7 downto 0),
      M05_AXI_arlock => mb_axi_mem_interconnect_0_M05_AXI_ARLOCK,
      M05_AXI_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARPROT(2 downto 0),
      M05_AXI_arready => mb_axi_mem_interconnect_0_M05_AXI_ARREADY,
      M05_AXI_arsize(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARSIZE(2 downto 0),
      M05_AXI_arvalid => mb_axi_mem_interconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awburst(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWBURST(1 downto 0),
      M05_AXI_awcache(3 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWCACHE(3 downto 0),
      M05_AXI_awid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWID(2 downto 0),
      M05_AXI_awlen(7 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWLEN(7 downto 0),
      M05_AXI_awlock => mb_axi_mem_interconnect_0_M05_AXI_AWLOCK,
      M05_AXI_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWPROT(2 downto 0),
      M05_AXI_awready => mb_axi_mem_interconnect_0_M05_AXI_AWREADY,
      M05_AXI_awsize(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWSIZE(2 downto 0),
      M05_AXI_awvalid => mb_axi_mem_interconnect_0_M05_AXI_AWVALID,
      M05_AXI_bid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_BID(2 downto 0),
      M05_AXI_bready => mb_axi_mem_interconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => mb_axi_mem_interconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_RID(2 downto 0),
      M05_AXI_rlast => mb_axi_mem_interconnect_0_M05_AXI_RLAST,
      M05_AXI_rready => mb_axi_mem_interconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => mb_axi_mem_interconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wlast => mb_axi_mem_interconnect_0_M05_AXI_WLAST,
      M05_AXI_wready => mb_axi_mem_interconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => mb_axi_mem_interconnect_0_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr(31 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_ARADDR(31 downto 0),
      M06_AXI_arready => mb_axi_mem_interconnect_0_M06_AXI_ARREADY,
      M06_AXI_arvalid => mb_axi_mem_interconnect_0_M06_AXI_ARVALID,
      M06_AXI_awaddr(31 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_AWADDR(31 downto 0),
      M06_AXI_awready => mb_axi_mem_interconnect_0_M06_AXI_AWREADY,
      M06_AXI_awvalid => mb_axi_mem_interconnect_0_M06_AXI_AWVALID,
      M06_AXI_bready => mb_axi_mem_interconnect_0_M06_AXI_BREADY,
      M06_AXI_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_BRESP(1 downto 0),
      M06_AXI_bvalid => mb_axi_mem_interconnect_0_M06_AXI_BVALID,
      M06_AXI_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_RDATA(31 downto 0),
      M06_AXI_rready => mb_axi_mem_interconnect_0_M06_AXI_RREADY,
      M06_AXI_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_RRESP(1 downto 0),
      M06_AXI_rvalid => mb_axi_mem_interconnect_0_M06_AXI_RVALID,
      M06_AXI_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_WDATA(31 downto 0),
      M06_AXI_wready => mb_axi_mem_interconnect_0_M06_AXI_WREADY,
      M06_AXI_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M06_AXI_WSTRB(3 downto 0),
      M06_AXI_wvalid => mb_axi_mem_interconnect_0_M06_AXI_WVALID,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr => '0',
      S00_AXI_arburst => '0',
      S00_AXI_arcache => '0',
      S00_AXI_arid => '0',
      S00_AXI_arlen => '0',
      S00_AXI_arlock => '0',
      S00_AXI_arprot => '0',
      S00_AXI_arqos => '0',
      S00_AXI_arready => NLW_mb_axi_mem_interconnect_0_S00_AXI_arready_UNCONNECTED,
      S00_AXI_arsize => '0',
      S00_AXI_arvalid => '0',
      S00_AXI_awaddr => '0',
      S00_AXI_awburst => '0',
      S00_AXI_awcache => '0',
      S00_AXI_awid => '0',
      S00_AXI_awlen => '0',
      S00_AXI_awlock => '0',
      S00_AXI_awprot => '0',
      S00_AXI_awqos => '0',
      S00_AXI_awready => NLW_mb_axi_mem_interconnect_0_S00_AXI_awready_UNCONNECTED,
      S00_AXI_awsize => '0',
      S00_AXI_awvalid => '0',
      S00_AXI_bid => NLW_mb_axi_mem_interconnect_0_S00_AXI_bid_UNCONNECTED,
      S00_AXI_bready => '0',
      S00_AXI_bresp => NLW_mb_axi_mem_interconnect_0_S00_AXI_bresp_UNCONNECTED,
      S00_AXI_bvalid => NLW_mb_axi_mem_interconnect_0_S00_AXI_bvalid_UNCONNECTED,
      S00_AXI_rdata => NLW_mb_axi_mem_interconnect_0_S00_AXI_rdata_UNCONNECTED,
      S00_AXI_rid => NLW_mb_axi_mem_interconnect_0_S00_AXI_rid_UNCONNECTED,
      S00_AXI_rlast => NLW_mb_axi_mem_interconnect_0_S00_AXI_rlast_UNCONNECTED,
      S00_AXI_rready => '0',
      S00_AXI_rresp => NLW_mb_axi_mem_interconnect_0_S00_AXI_rresp_UNCONNECTED,
      S00_AXI_rvalid => NLW_mb_axi_mem_interconnect_0_S00_AXI_rvalid_UNCONNECTED,
      S00_AXI_wdata => '0',
      S00_AXI_wlast => '0',
      S00_AXI_wready => NLW_mb_axi_mem_interconnect_0_S00_AXI_wready_UNCONNECTED,
      S00_AXI_wstrb => '0',
      S00_AXI_wvalid => '0',
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr => '0',
      S01_AXI_arburst => '0',
      S01_AXI_arcache => '0',
      S01_AXI_arid => '0',
      S01_AXI_arlen => '0',
      S01_AXI_arlock => '0',
      S01_AXI_arprot => '0',
      S01_AXI_arqos => '0',
      S01_AXI_arready => NLW_mb_axi_mem_interconnect_0_S01_AXI_arready_UNCONNECTED,
      S01_AXI_arsize => '0',
      S01_AXI_arvalid => '0',
      S01_AXI_awaddr => '0',
      S01_AXI_awburst => '0',
      S01_AXI_awcache => '0',
      S01_AXI_awid => '0',
      S01_AXI_awlen => '0',
      S01_AXI_awlock => '0',
      S01_AXI_awprot => '0',
      S01_AXI_awqos => '0',
      S01_AXI_awready => NLW_mb_axi_mem_interconnect_0_S01_AXI_awready_UNCONNECTED,
      S01_AXI_awsize => '0',
      S01_AXI_awvalid => '0',
      S01_AXI_bid => NLW_mb_axi_mem_interconnect_0_S01_AXI_bid_UNCONNECTED,
      S01_AXI_bready => '0',
      S01_AXI_bresp => NLW_mb_axi_mem_interconnect_0_S01_AXI_bresp_UNCONNECTED,
      S01_AXI_bvalid => NLW_mb_axi_mem_interconnect_0_S01_AXI_bvalid_UNCONNECTED,
      S01_AXI_rdata => NLW_mb_axi_mem_interconnect_0_S01_AXI_rdata_UNCONNECTED,
      S01_AXI_rid => NLW_mb_axi_mem_interconnect_0_S01_AXI_rid_UNCONNECTED,
      S01_AXI_rlast => NLW_mb_axi_mem_interconnect_0_S01_AXI_rlast_UNCONNECTED,
      S01_AXI_rready => '0',
      S01_AXI_rresp => NLW_mb_axi_mem_interconnect_0_S01_AXI_rresp_UNCONNECTED,
      S01_AXI_rvalid => NLW_mb_axi_mem_interconnect_0_S01_AXI_rvalid_UNCONNECTED,
      S01_AXI_wdata => '0',
      S01_AXI_wlast => '0',
      S01_AXI_wready => NLW_mb_axi_mem_interconnect_0_S01_AXI_wready_UNCONNECTED,
      S01_AXI_wstrb => '0',
      S01_AXI_wvalid => '0',
      S02_ACLK => processing_system7_0_FCLK_CLK0,
      S02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S02_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      S02_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      S02_AXI_arready => microblaze_0_M_AXI_DP_ARREADY,
      S02_AXI_arvalid => microblaze_0_M_AXI_DP_ARVALID,
      S02_AXI_awaddr(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      S02_AXI_awprot(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      S02_AXI_awready => microblaze_0_M_AXI_DP_AWREADY,
      S02_AXI_awvalid => microblaze_0_M_AXI_DP_AWVALID,
      S02_AXI_bready => microblaze_0_M_AXI_DP_BREADY,
      S02_AXI_bresp(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      S02_AXI_bvalid => microblaze_0_M_AXI_DP_BVALID,
      S02_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      S02_AXI_rready => microblaze_0_M_AXI_DP_RREADY,
      S02_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      S02_AXI_rvalid => microblaze_0_M_AXI_DP_RVALID,
      S02_AXI_wdata(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      S02_AXI_wready => microblaze_0_M_AXI_DP_WREADY,
      S02_AXI_wstrb(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      S02_AXI_wvalid => microblaze_0_M_AXI_DP_WVALID,
      S03_ACLK => processing_system7_0_FCLK_CLK0,
      S03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S03_AXI_araddr(31 downto 0) => microblaze_0_M_AXI_IP_ARADDR(31 downto 0),
      S03_AXI_arprot(2 downto 0) => microblaze_0_M_AXI_IP_ARPROT(2 downto 0),
      S03_AXI_arready => microblaze_0_M_AXI_IP_ARREADY,
      S03_AXI_arvalid => microblaze_0_M_AXI_IP_ARVALID,
      S03_AXI_rdata(31 downto 0) => microblaze_0_M_AXI_IP_RDATA(31 downto 0),
      S03_AXI_rready => microblaze_0_M_AXI_IP_RREADY,
      S03_AXI_rresp(1 downto 0) => microblaze_0_M_AXI_IP_RRESP(1 downto 0),
      S03_AXI_rvalid => microblaze_0_M_AXI_IP_RVALID,
      S04_ACLK => processing_system7_0_FCLK_CLK0,
      S04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S04_AXI_araddr(31 downto 0) => mdm_0_M_AXI_ARADDR(31 downto 0),
      S04_AXI_arburst(1 downto 0) => mdm_0_M_AXI_ARBURST(1 downto 0),
      S04_AXI_arcache(3 downto 0) => mdm_0_M_AXI_ARCACHE(3 downto 0),
      S04_AXI_arid(0) => mdm_0_M_AXI_ARID(0),
      S04_AXI_arlen(7 downto 0) => mdm_0_M_AXI_ARLEN(7 downto 0),
      S04_AXI_arlock(0) => mdm_0_M_AXI_ARLOCK,
      S04_AXI_arprot(2 downto 0) => mdm_0_M_AXI_ARPROT(2 downto 0),
      S04_AXI_arqos(3 downto 0) => mdm_0_M_AXI_ARQOS(3 downto 0),
      S04_AXI_arready(0) => mdm_0_M_AXI_ARREADY(0),
      S04_AXI_arsize(2 downto 0) => mdm_0_M_AXI_ARSIZE(2 downto 0),
      S04_AXI_arvalid(0) => mdm_0_M_AXI_ARVALID,
      S04_AXI_awaddr(31 downto 0) => mdm_0_M_AXI_AWADDR(31 downto 0),
      S04_AXI_awburst(1 downto 0) => mdm_0_M_AXI_AWBURST(1 downto 0),
      S04_AXI_awcache(3 downto 0) => mdm_0_M_AXI_AWCACHE(3 downto 0),
      S04_AXI_awid(0) => mdm_0_M_AXI_AWID(0),
      S04_AXI_awlen(7 downto 0) => mdm_0_M_AXI_AWLEN(7 downto 0),
      S04_AXI_awlock(0) => mdm_0_M_AXI_AWLOCK,
      S04_AXI_awprot(2 downto 0) => mdm_0_M_AXI_AWPROT(2 downto 0),
      S04_AXI_awqos(3 downto 0) => mdm_0_M_AXI_AWQOS(3 downto 0),
      S04_AXI_awready(0) => mdm_0_M_AXI_AWREADY(0),
      S04_AXI_awsize(2 downto 0) => mdm_0_M_AXI_AWSIZE(2 downto 0),
      S04_AXI_awvalid(0) => mdm_0_M_AXI_AWVALID,
      S04_AXI_bid(2 downto 0) => mdm_0_M_AXI_BID(2 downto 0),
      S04_AXI_bready(0) => mdm_0_M_AXI_BREADY,
      S04_AXI_bresp(1 downto 0) => mdm_0_M_AXI_BRESP(1 downto 0),
      S04_AXI_bvalid(0) => mdm_0_M_AXI_BVALID(0),
      S04_AXI_rdata(31 downto 0) => mdm_0_M_AXI_RDATA(31 downto 0),
      S04_AXI_rid(2 downto 0) => mdm_0_M_AXI_RID(2 downto 0),
      S04_AXI_rlast(0) => mdm_0_M_AXI_RLAST(0),
      S04_AXI_rready(0) => mdm_0_M_AXI_RREADY,
      S04_AXI_rresp(1 downto 0) => mdm_0_M_AXI_RRESP(1 downto 0),
      S04_AXI_rvalid(0) => mdm_0_M_AXI_RVALID(0),
      S04_AXI_wdata(31 downto 0) => mdm_0_M_AXI_WDATA(31 downto 0),
      S04_AXI_wlast(0) => mdm_0_M_AXI_WLAST,
      S04_AXI_wready(0) => mdm_0_M_AXI_WREADY(0),
      S04_AXI_wstrb(3 downto 0) => mdm_0_M_AXI_WSTRB(3 downto 0),
      S04_AXI_wvalid(0) => mdm_0_M_AXI_WVALID
    );
mb_dma_axi_bram_ctrl_0: component system_axi_bram_ctrl_0_0
     port map (
      bram_addr_a(14 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_ADDR(14 downto 0),
      bram_clk_a => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_CLK,
      bram_en_a => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_EN,
      bram_rddata_a(31 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_DOUT(31 downto 0),
      bram_rst_a => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_RST,
      bram_we_a(3 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => mb_dma_axi_bram_ctrl_0_BRAM_PORTA_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(14 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARADDR(14 downto 0),
      s_axi_arburst(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARLEN(7 downto 0),
      s_axi_arlock => mb_axi_mem_interconnect_0_M02_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARPROT(2 downto 0),
      s_axi_arready => mb_axi_mem_interconnect_0_M02_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => mb_axi_mem_interconnect_0_M02_AXI_ARVALID,
      s_axi_awaddr(14 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWADDR(14 downto 0),
      s_axi_awburst(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWLEN(7 downto 0),
      s_axi_awlock => mb_axi_mem_interconnect_0_M02_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWPROT(2 downto 0),
      s_axi_awready => mb_axi_mem_interconnect_0_M02_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => mb_axi_mem_interconnect_0_M02_AXI_AWVALID,
      s_axi_bid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_BID(2 downto 0),
      s_axi_bready => mb_axi_mem_interconnect_0_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => mb_axi_mem_interconnect_0_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_RID(2 downto 0),
      s_axi_rlast => mb_axi_mem_interconnect_0_M02_AXI_RLAST,
      s_axi_rready => mb_axi_mem_interconnect_0_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => mb_axi_mem_interconnect_0_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_WDATA(31 downto 0),
      s_axi_wlast => mb_axi_mem_interconnect_0_M02_AXI_WLAST,
      s_axi_wready => mb_axi_mem_interconnect_0_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => mb_axi_mem_interconnect_0_M02_AXI_WVALID
    );
mdm_0: component system_mdm_0_0
     port map (
      Dbg_Capture_0 => mdm_0_MBDEBUG_0_CAPTURE,
      Dbg_Clk_0 => mdm_0_MBDEBUG_0_CLK,
      Dbg_Disable_0 => mdm_0_MBDEBUG_0_DISABLE,
      Dbg_Reg_En_0(0 to 7) => mdm_0_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Rst_0 => mdm_0_MBDEBUG_0_RST,
      Dbg_Shift_0 => mdm_0_MBDEBUG_0_SHIFT,
      Dbg_TDI_0 => mdm_0_MBDEBUG_0_TDI,
      Dbg_TDO_0 => mdm_0_MBDEBUG_0_TDO,
      Dbg_Update_0 => mdm_0_MBDEBUG_0_UPDATE,
      Debug_SYS_Rst => mdm_0_Debug_SYS_Rst,
      Interrupt => NLW_mdm_0_Interrupt_UNCONNECTED,
      LMB_Addr_Strobe_0 => NLW_mdm_0_LMB_Addr_Strobe_0_UNCONNECTED,
      LMB_Byte_Enable_0(0 to 3) => NLW_mdm_0_LMB_Byte_Enable_0_UNCONNECTED(0 to 3),
      LMB_CE_0 => '0',
      LMB_Data_Addr_0(0 to 31) => NLW_mdm_0_LMB_Data_Addr_0_UNCONNECTED(0 to 31),
      LMB_Data_Read_0(0 to 31) => B"00000000000000000000000000000000",
      LMB_Data_Write_0(0 to 31) => NLW_mdm_0_LMB_Data_Write_0_UNCONNECTED(0 to 31),
      LMB_Read_Strobe_0 => NLW_mdm_0_LMB_Read_Strobe_0_UNCONNECTED,
      LMB_Ready_0 => '0',
      LMB_UE_0 => '0',
      LMB_Wait_0 => '0',
      LMB_Write_Strobe_0 => NLW_mdm_0_LMB_Write_Strobe_0_UNCONNECTED,
      M_AXI_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_ARADDR(31 downto 0) => mdm_0_M_AXI_ARADDR(31 downto 0),
      M_AXI_ARBURST(1 downto 0) => mdm_0_M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => mdm_0_M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M_AXI_ARID(0) => mdm_0_M_AXI_ARID(0),
      M_AXI_ARLEN(7 downto 0) => mdm_0_M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK => mdm_0_M_AXI_ARLOCK,
      M_AXI_ARPROT(2 downto 0) => mdm_0_M_AXI_ARPROT(2 downto 0),
      M_AXI_ARQOS(3 downto 0) => mdm_0_M_AXI_ARQOS(3 downto 0),
      M_AXI_ARREADY => mdm_0_M_AXI_ARREADY(0),
      M_AXI_ARSIZE(2 downto 0) => mdm_0_M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARVALID => mdm_0_M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => mdm_0_M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => mdm_0_M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => mdm_0_M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(0) => mdm_0_M_AXI_AWID(0),
      M_AXI_AWLEN(7 downto 0) => mdm_0_M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK => mdm_0_M_AXI_AWLOCK,
      M_AXI_AWPROT(2 downto 0) => mdm_0_M_AXI_AWPROT(2 downto 0),
      M_AXI_AWQOS(3 downto 0) => mdm_0_M_AXI_AWQOS(3 downto 0),
      M_AXI_AWREADY => mdm_0_M_AXI_AWREADY(0),
      M_AXI_AWSIZE(2 downto 0) => mdm_0_M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWVALID => mdm_0_M_AXI_AWVALID,
      M_AXI_BID(0) => mdm_0_M_AXI_BID(0),
      M_AXI_BREADY => mdm_0_M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => mdm_0_M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => mdm_0_M_AXI_BVALID(0),
      M_AXI_RDATA(31 downto 0) => mdm_0_M_AXI_RDATA(31 downto 0),
      M_AXI_RID(0) => mdm_0_M_AXI_RID(0),
      M_AXI_RLAST => mdm_0_M_AXI_RLAST(0),
      M_AXI_RREADY => mdm_0_M_AXI_RREADY,
      M_AXI_RRESP(1 downto 0) => mdm_0_M_AXI_RRESP(1 downto 0),
      M_AXI_RVALID => mdm_0_M_AXI_RVALID(0),
      M_AXI_WDATA(31 downto 0) => mdm_0_M_AXI_WDATA(31 downto 0),
      M_AXI_WLAST => mdm_0_M_AXI_WLAST,
      M_AXI_WREADY => mdm_0_M_AXI_WREADY(0),
      M_AXI_WSTRB(3 downto 0) => mdm_0_M_AXI_WSTRB(3 downto 0),
      M_AXI_WVALID => mdm_0_M_AXI_WVALID,
      S_AXI_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_ARADDR(4 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(4 downto 0),
      S_AXI_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S_AXI_ARREADY => ps7_0_axi_periph_M00_AXI_ARREADY,
      S_AXI_ARVALID => ps7_0_axi_periph_M00_AXI_ARVALID,
      S_AXI_AWADDR(4 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(4 downto 0),
      S_AXI_AWREADY => ps7_0_axi_periph_M00_AXI_AWREADY,
      S_AXI_AWVALID => ps7_0_axi_periph_M00_AXI_AWVALID,
      S_AXI_BREADY => ps7_0_axi_periph_M00_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => ps7_0_axi_periph_M00_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => ps7_0_axi_periph_M00_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => ps7_0_axi_periph_M00_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => ps7_0_axi_periph_M00_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => ps7_0_axi_periph_M00_AXI_WVALID
    );
microblaze_0: component system_microblaze_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_0_DLMB_BE(0 to 3),
      Clk => processing_system7_0_FCLK_CLK0,
      DCE => microblaze_0_DLMB_CE,
      DReady => microblaze_0_DLMB_READY,
      DUE => microblaze_0_DLMB_UE,
      DWait => microblaze_0_DLMB_WAIT,
      D_AS => microblaze_0_DLMB_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_0_DLMB_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_0_DLMB_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_0_DLMB_WRITEDBUS(0 to 31),
      Dbg_Capture => mdm_0_MBDEBUG_0_CAPTURE,
      Dbg_Clk => mdm_0_MBDEBUG_0_CLK,
      Dbg_Disable => mdm_0_MBDEBUG_0_DISABLE,
      Dbg_Reg_En(0 to 7) => mdm_0_MBDEBUG_0_REG_EN(0 to 7),
      Dbg_Shift => mdm_0_MBDEBUG_0_SHIFT,
      Dbg_TDI => mdm_0_MBDEBUG_0_TDI,
      Dbg_TDO => mdm_0_MBDEBUG_0_TDO,
      Dbg_Trig_Ack_In(0 to 7) => B"00000000",
      Dbg_Trig_Ack_Out(0 to 7) => NLW_microblaze_0_Dbg_Trig_Ack_Out_UNCONNECTED(0 to 7),
      Dbg_Trig_In(0 to 7) => NLW_microblaze_0_Dbg_Trig_In_UNCONNECTED(0 to 7),
      Dbg_Trig_Out(0 to 7) => B"00000000",
      Dbg_Update => mdm_0_MBDEBUG_0_UPDATE,
      Debug_Rst => mdm_0_MBDEBUG_0_RST,
      ICE => microblaze_0_ILMB_CE,
      IFetch => microblaze_0_ILMB_READSTROBE,
      IReady => microblaze_0_ILMB_READY,
      IUE => microblaze_0_ILMB_UE,
      IWAIT => microblaze_0_ILMB_WAIT,
      I_AS => microblaze_0_ILMB_ADDRSTROBE,
      Instr(0 to 31) => microblaze_0_ILMB_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_0_ILMB_ABUS(0 to 31),
      Interrupt => axi_intc_0_interrupt_INTERRUPT,
      Interrupt_Ack(0 to 1) => NLW_microblaze_0_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_0_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => microblaze_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_0_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => microblaze_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_0_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => microblaze_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_0_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => microblaze_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_0_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_0_M_AXI_DP_WVALID,
      M_AXI_IP_ARADDR(31 downto 0) => microblaze_0_M_AXI_IP_ARADDR(31 downto 0),
      M_AXI_IP_ARPROT(2 downto 0) => microblaze_0_M_AXI_IP_ARPROT(2 downto 0),
      M_AXI_IP_ARREADY => microblaze_0_M_AXI_IP_ARREADY,
      M_AXI_IP_ARVALID => microblaze_0_M_AXI_IP_ARVALID,
      M_AXI_IP_AWADDR(31 downto 0) => NLW_microblaze_0_M_AXI_IP_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_IP_AWPROT(2 downto 0) => NLW_microblaze_0_M_AXI_IP_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_IP_AWREADY => '0',
      M_AXI_IP_AWVALID => NLW_microblaze_0_M_AXI_IP_AWVALID_UNCONNECTED,
      M_AXI_IP_BREADY => NLW_microblaze_0_M_AXI_IP_BREADY_UNCONNECTED,
      M_AXI_IP_BRESP(1 downto 0) => B"00",
      M_AXI_IP_BVALID => '0',
      M_AXI_IP_RDATA(31 downto 0) => microblaze_0_M_AXI_IP_RDATA(31 downto 0),
      M_AXI_IP_RREADY => microblaze_0_M_AXI_IP_RREADY,
      M_AXI_IP_RRESP(1 downto 0) => microblaze_0_M_AXI_IP_RRESP(1 downto 0),
      M_AXI_IP_RVALID => microblaze_0_M_AXI_IP_RVALID,
      M_AXI_IP_WDATA(31 downto 0) => NLW_microblaze_0_M_AXI_IP_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_IP_WREADY => '0',
      M_AXI_IP_WSTRB(3 downto 0) => NLW_microblaze_0_M_AXI_IP_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_IP_WVALID => NLW_microblaze_0_M_AXI_IP_WVALID_UNCONNECTED,
      Read_Strobe => microblaze_0_DLMB_READSTROBE,
      Reset => rst_ps7_0_100M_mb_reset,
      Write_Strobe => microblaze_0_DLMB_WRITESTROBE
    );
proc_sys_reset_0: component system_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
processing_system7_0: component system_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      I2C0_SCL_I => '0',
      I2C0_SCL_O => NLW_processing_system7_0_I2C0_SCL_O_UNCONNECTED,
      I2C0_SCL_T => NLW_processing_system7_0_I2C0_SCL_T_UNCONNECTED,
      I2C0_SDA_I => '0',
      I2C0_SDA_O => NLW_processing_system7_0_I2C0_SDA_O_UNCONNECTED,
      I2C0_SDA_T => NLW_processing_system7_0_I2C0_SDA_T_UNCONNECTED,
      IRQ_F2P(2 downto 0) => xlconcat_2_dout(2 downto 0),
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      SPI0_MISO_I => '0',
      SPI0_MISO_O => NLW_processing_system7_0_SPI0_MISO_O_UNCONNECTED,
      SPI0_MISO_T => NLW_processing_system7_0_SPI0_MISO_T_UNCONNECTED,
      SPI0_MOSI_I => '0',
      SPI0_MOSI_O => NLW_processing_system7_0_SPI0_MOSI_O_UNCONNECTED,
      SPI0_MOSI_T => NLW_processing_system7_0_SPI0_MOSI_T_UNCONNECTED,
      SPI0_SCLK_I => '0',
      SPI0_SCLK_O => NLW_processing_system7_0_SPI0_SCLK_O_UNCONNECTED,
      SPI0_SCLK_T => NLW_processing_system7_0_SPI0_SCLK_T_UNCONNECTED,
      SPI0_SS1_O => NLW_processing_system7_0_SPI0_SS1_O_UNCONNECTED,
      SPI0_SS2_O => NLW_processing_system7_0_SPI0_SS2_O_UNCONNECTED,
      SPI0_SS_I => '0',
      SPI0_SS_O => NLW_processing_system7_0_SPI0_SS_O_UNCONNECTED,
      SPI0_SS_T => NLW_processing_system7_0_SPI0_SS_T_UNCONNECTED,
      S_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      S_AXI_GP0_ARADDR(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARADDR(31 downto 0),
      S_AXI_GP0_ARBURST(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARBURST(1 downto 0),
      S_AXI_GP0_ARCACHE(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARCACHE(3 downto 0),
      S_AXI_GP0_ARID(5 downto 3) => B"000",
      S_AXI_GP0_ARID(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARID(2 downto 0),
      S_AXI_GP0_ARLEN(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARLEN(3 downto 0),
      S_AXI_GP0_ARLOCK(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARLOCK(1 downto 0),
      S_AXI_GP0_ARPROT(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARPROT(2 downto 0),
      S_AXI_GP0_ARQOS(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARQOS(3 downto 0),
      S_AXI_GP0_ARREADY => mb_axi_mem_interconnect_0_M00_AXI_ARREADY,
      S_AXI_GP0_ARSIZE(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_ARSIZE(2 downto 0),
      S_AXI_GP0_ARVALID => mb_axi_mem_interconnect_0_M00_AXI_ARVALID,
      S_AXI_GP0_AWADDR(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWADDR(31 downto 0),
      S_AXI_GP0_AWBURST(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWBURST(1 downto 0),
      S_AXI_GP0_AWCACHE(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWCACHE(3 downto 0),
      S_AXI_GP0_AWID(5 downto 3) => B"000",
      S_AXI_GP0_AWID(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWID(2 downto 0),
      S_AXI_GP0_AWLEN(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWLEN(3 downto 0),
      S_AXI_GP0_AWLOCK(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWLOCK(1 downto 0),
      S_AXI_GP0_AWPROT(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWPROT(2 downto 0),
      S_AXI_GP0_AWQOS(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWQOS(3 downto 0),
      S_AXI_GP0_AWREADY => mb_axi_mem_interconnect_0_M00_AXI_AWREADY,
      S_AXI_GP0_AWSIZE(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_AWSIZE(2 downto 0),
      S_AXI_GP0_AWVALID => mb_axi_mem_interconnect_0_M00_AXI_AWVALID,
      S_AXI_GP0_BID(5 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_BID(5 downto 0),
      S_AXI_GP0_BREADY => mb_axi_mem_interconnect_0_M00_AXI_BREADY,
      S_AXI_GP0_BRESP(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_BRESP(1 downto 0),
      S_AXI_GP0_BVALID => mb_axi_mem_interconnect_0_M00_AXI_BVALID,
      S_AXI_GP0_RDATA(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_RDATA(31 downto 0),
      S_AXI_GP0_RID(5 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_RID(5 downto 0),
      S_AXI_GP0_RLAST => mb_axi_mem_interconnect_0_M00_AXI_RLAST,
      S_AXI_GP0_RREADY => mb_axi_mem_interconnect_0_M00_AXI_RREADY,
      S_AXI_GP0_RRESP(1 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_RRESP(1 downto 0),
      S_AXI_GP0_RVALID => mb_axi_mem_interconnect_0_M00_AXI_RVALID,
      S_AXI_GP0_WDATA(31 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_WDATA(31 downto 0),
      S_AXI_GP0_WID(5 downto 3) => B"000",
      S_AXI_GP0_WID(2 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_WID(2 downto 0),
      S_AXI_GP0_WLAST => mb_axi_mem_interconnect_0_M00_AXI_WLAST,
      S_AXI_GP0_WREADY => mb_axi_mem_interconnect_0_M00_AXI_WREADY,
      S_AXI_GP0_WSTRB(3 downto 0) => mb_axi_mem_interconnect_0_M00_AXI_WSTRB(3 downto 0),
      S_AXI_GP0_WVALID => mb_axi_mem_interconnect_0_M00_AXI_WVALID,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
ps7_0_axi_periph: entity work.system_ps7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN => rst_ps7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_ARADDR(31 downto 0),
      M00_AXI_arready => ps7_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid => ps7_0_axi_periph_M00_AXI_ARVALID,
      M00_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M00_AXI_AWADDR(31 downto 0),
      M00_AXI_awready => ps7_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid => ps7_0_axi_periph_M00_AXI_AWVALID,
      M00_AXI_bready => ps7_0_axi_periph_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => ps7_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => ps7_0_axi_periph_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => ps7_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => ps7_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => ps7_0_axi_periph_M00_AXI_WVALID,
      M01_ACLK => processing_system7_0_FCLK_CLK0,
      M01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(31 downto 0),
      M01_AXI_arburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock => ps7_0_axi_periph_M01_AXI_ARLOCK,
      M01_AXI_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(31 downto 0),
      M01_AXI_awburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock => ps7_0_axi_periph_M01_AXI_AWLOCK,
      M01_AXI_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rlast => ps7_0_axi_periph_M01_AXI_RLAST,
      M01_AXI_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wlast => ps7_0_axi_periph_M01_AXI_WLAST,
      M01_AXI_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps7_0_axi_periph_M01_AXI_WVALID,
      M02_ACLK => processing_system7_0_FCLK_CLK0,
      M02_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M02_AXI_araddr => NLW_ps7_0_axi_periph_M02_AXI_araddr_UNCONNECTED,
      M02_AXI_arburst => NLW_ps7_0_axi_periph_M02_AXI_arburst_UNCONNECTED,
      M02_AXI_arcache => NLW_ps7_0_axi_periph_M02_AXI_arcache_UNCONNECTED,
      M02_AXI_arlen => NLW_ps7_0_axi_periph_M02_AXI_arlen_UNCONNECTED,
      M02_AXI_arlock => NLW_ps7_0_axi_periph_M02_AXI_arlock_UNCONNECTED,
      M02_AXI_arprot => NLW_ps7_0_axi_periph_M02_AXI_arprot_UNCONNECTED,
      M02_AXI_arqos => NLW_ps7_0_axi_periph_M02_AXI_arqos_UNCONNECTED,
      M02_AXI_arready => '0',
      M02_AXI_arregion => NLW_ps7_0_axi_periph_M02_AXI_arregion_UNCONNECTED,
      M02_AXI_arsize => NLW_ps7_0_axi_periph_M02_AXI_arsize_UNCONNECTED,
      M02_AXI_arvalid => NLW_ps7_0_axi_periph_M02_AXI_arvalid_UNCONNECTED,
      M02_AXI_awaddr => NLW_ps7_0_axi_periph_M02_AXI_awaddr_UNCONNECTED,
      M02_AXI_awburst => NLW_ps7_0_axi_periph_M02_AXI_awburst_UNCONNECTED,
      M02_AXI_awcache => NLW_ps7_0_axi_periph_M02_AXI_awcache_UNCONNECTED,
      M02_AXI_awlen => NLW_ps7_0_axi_periph_M02_AXI_awlen_UNCONNECTED,
      M02_AXI_awlock => NLW_ps7_0_axi_periph_M02_AXI_awlock_UNCONNECTED,
      M02_AXI_awprot => NLW_ps7_0_axi_periph_M02_AXI_awprot_UNCONNECTED,
      M02_AXI_awqos => NLW_ps7_0_axi_periph_M02_AXI_awqos_UNCONNECTED,
      M02_AXI_awready => '0',
      M02_AXI_awregion => NLW_ps7_0_axi_periph_M02_AXI_awregion_UNCONNECTED,
      M02_AXI_awsize => NLW_ps7_0_axi_periph_M02_AXI_awsize_UNCONNECTED,
      M02_AXI_awvalid => NLW_ps7_0_axi_periph_M02_AXI_awvalid_UNCONNECTED,
      M02_AXI_bready => NLW_ps7_0_axi_periph_M02_AXI_bready_UNCONNECTED,
      M02_AXI_bresp => '0',
      M02_AXI_bvalid => '0',
      M02_AXI_rdata => '0',
      M02_AXI_rlast => '0',
      M02_AXI_rready => NLW_ps7_0_axi_periph_M02_AXI_rready_UNCONNECTED,
      M02_AXI_rresp => '0',
      M02_AXI_rvalid => '0',
      M02_AXI_wdata => NLW_ps7_0_axi_periph_M02_AXI_wdata_UNCONNECTED,
      M02_AXI_wlast => NLW_ps7_0_axi_periph_M02_AXI_wlast_UNCONNECTED,
      M02_AXI_wready => '0',
      M02_AXI_wstrb => NLW_ps7_0_axi_periph_M02_AXI_wstrb_UNCONNECTED,
      M02_AXI_wvalid => NLW_ps7_0_axi_periph_M02_AXI_wvalid_UNCONNECTED,
      M03_ACLK => processing_system7_0_FCLK_CLK0,
      M03_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M03_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arready => ps7_0_axi_periph_M03_AXI_ARREADY,
      M03_AXI_arvalid => ps7_0_axi_periph_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awready => ps7_0_axi_periph_M03_AXI_AWREADY,
      M03_AXI_awvalid => ps7_0_axi_periph_M03_AXI_AWVALID,
      M03_AXI_bready => ps7_0_axi_periph_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => ps7_0_axi_periph_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => ps7_0_axi_periph_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => ps7_0_axi_periph_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => ps7_0_axi_periph_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M03_AXI_WSTRB(3 downto 0),
      M03_AXI_wvalid => ps7_0_axi_periph_M03_AXI_WVALID,
      M04_ACLK => processing_system7_0_FCLK_CLK0,
      M04_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M04_AXI_araddr(31 downto 0) => NLW_ps7_0_axi_periph_M04_AXI_araddr_UNCONNECTED(31 downto 0),
      M04_AXI_arready => '0',
      M04_AXI_arvalid => NLW_ps7_0_axi_periph_M04_AXI_arvalid_UNCONNECTED,
      M04_AXI_awaddr(31 downto 0) => NLW_ps7_0_axi_periph_M04_AXI_awaddr_UNCONNECTED(31 downto 0),
      M04_AXI_awready => '0',
      M04_AXI_awvalid => NLW_ps7_0_axi_periph_M04_AXI_awvalid_UNCONNECTED,
      M04_AXI_bready => NLW_ps7_0_axi_periph_M04_AXI_bready_UNCONNECTED,
      M04_AXI_bresp(1 downto 0) => B"00",
      M04_AXI_bvalid => '0',
      M04_AXI_rdata(31 downto 0) => B"00000000000000000000000000000000",
      M04_AXI_rready => NLW_ps7_0_axi_periph_M04_AXI_rready_UNCONNECTED,
      M04_AXI_rresp(1 downto 0) => B"00",
      M04_AXI_rvalid => '0',
      M04_AXI_wdata(31 downto 0) => NLW_ps7_0_axi_periph_M04_AXI_wdata_UNCONNECTED(31 downto 0),
      M04_AXI_wready => '0',
      M04_AXI_wstrb(3 downto 0) => NLW_ps7_0_axi_periph_M04_AXI_wstrb_UNCONNECTED(3 downto 0),
      M04_AXI_wvalid => NLW_ps7_0_axi_periph_M04_AXI_wvalid_UNCONNECTED,
      M05_ACLK => processing_system7_0_FCLK_CLK0,
      M05_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M05_AXI_araddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      M05_AXI_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      M05_AXI_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      M05_AXI_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      M05_AXI_wvalid => ps7_0_axi_periph_M05_AXI_WVALID,
      M06_ACLK => processing_system7_0_FCLK_CLK0,
      M06_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      M06_AXI_araddr => NLW_ps7_0_axi_periph_M06_AXI_araddr_UNCONNECTED,
      M06_AXI_arburst => NLW_ps7_0_axi_periph_M06_AXI_arburst_UNCONNECTED,
      M06_AXI_arcache => NLW_ps7_0_axi_periph_M06_AXI_arcache_UNCONNECTED,
      M06_AXI_arlen => NLW_ps7_0_axi_periph_M06_AXI_arlen_UNCONNECTED,
      M06_AXI_arlock => NLW_ps7_0_axi_periph_M06_AXI_arlock_UNCONNECTED,
      M06_AXI_arprot => NLW_ps7_0_axi_periph_M06_AXI_arprot_UNCONNECTED,
      M06_AXI_arqos => NLW_ps7_0_axi_periph_M06_AXI_arqos_UNCONNECTED,
      M06_AXI_arready => '0',
      M06_AXI_arregion => NLW_ps7_0_axi_periph_M06_AXI_arregion_UNCONNECTED,
      M06_AXI_arsize => NLW_ps7_0_axi_periph_M06_AXI_arsize_UNCONNECTED,
      M06_AXI_arvalid => NLW_ps7_0_axi_periph_M06_AXI_arvalid_UNCONNECTED,
      M06_AXI_awaddr => NLW_ps7_0_axi_periph_M06_AXI_awaddr_UNCONNECTED,
      M06_AXI_awburst => NLW_ps7_0_axi_periph_M06_AXI_awburst_UNCONNECTED,
      M06_AXI_awcache => NLW_ps7_0_axi_periph_M06_AXI_awcache_UNCONNECTED,
      M06_AXI_awlen => NLW_ps7_0_axi_periph_M06_AXI_awlen_UNCONNECTED,
      M06_AXI_awlock => NLW_ps7_0_axi_periph_M06_AXI_awlock_UNCONNECTED,
      M06_AXI_awprot => NLW_ps7_0_axi_periph_M06_AXI_awprot_UNCONNECTED,
      M06_AXI_awqos => NLW_ps7_0_axi_periph_M06_AXI_awqos_UNCONNECTED,
      M06_AXI_awready => '0',
      M06_AXI_awregion => NLW_ps7_0_axi_periph_M06_AXI_awregion_UNCONNECTED,
      M06_AXI_awsize => NLW_ps7_0_axi_periph_M06_AXI_awsize_UNCONNECTED,
      M06_AXI_awvalid => NLW_ps7_0_axi_periph_M06_AXI_awvalid_UNCONNECTED,
      M06_AXI_bready => NLW_ps7_0_axi_periph_M06_AXI_bready_UNCONNECTED,
      M06_AXI_bresp => '0',
      M06_AXI_bvalid => '0',
      M06_AXI_rdata => '0',
      M06_AXI_rlast => '0',
      M06_AXI_rready => NLW_ps7_0_axi_periph_M06_AXI_rready_UNCONNECTED,
      M06_AXI_rresp => '0',
      M06_AXI_rvalid => '0',
      M06_AXI_wdata => NLW_ps7_0_axi_periph_M06_AXI_wdata_UNCONNECTED,
      M06_AXI_wlast => NLW_ps7_0_axi_periph_M06_AXI_wlast_UNCONNECTED,
      M06_AXI_wready => '0',
      M06_AXI_wstrb => NLW_ps7_0_axi_periph_M06_AXI_wstrb_UNCONNECTED,
      M06_AXI_wvalid => NLW_ps7_0_axi_periph_M06_AXI_wvalid_UNCONNECTED,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID,
      S01_ACLK => processing_system7_0_FCLK_CLK0,
      S01_ARESETN => rst_ps7_0_100M_peripheral_aresetn(0),
      S01_AXI_araddr => '0',
      S01_AXI_arburst => '0',
      S01_AXI_arcache => '0',
      S01_AXI_arid => '0',
      S01_AXI_arlen => '0',
      S01_AXI_arlock => '0',
      S01_AXI_arprot => '0',
      S01_AXI_arqos => '0',
      S01_AXI_arready => NLW_ps7_0_axi_periph_S01_AXI_arready_UNCONNECTED,
      S01_AXI_arsize => '0',
      S01_AXI_arvalid => '0',
      S01_AXI_awaddr => '0',
      S01_AXI_awburst => '0',
      S01_AXI_awcache => '0',
      S01_AXI_awid => '0',
      S01_AXI_awlen => '0',
      S01_AXI_awlock => '0',
      S01_AXI_awprot => '0',
      S01_AXI_awqos => '0',
      S01_AXI_awready => NLW_ps7_0_axi_periph_S01_AXI_awready_UNCONNECTED,
      S01_AXI_awsize => '0',
      S01_AXI_awvalid => '0',
      S01_AXI_bid => NLW_ps7_0_axi_periph_S01_AXI_bid_UNCONNECTED,
      S01_AXI_bready => '0',
      S01_AXI_bresp => NLW_ps7_0_axi_periph_S01_AXI_bresp_UNCONNECTED,
      S01_AXI_bvalid => NLW_ps7_0_axi_periph_S01_AXI_bvalid_UNCONNECTED,
      S01_AXI_rdata => NLW_ps7_0_axi_periph_S01_AXI_rdata_UNCONNECTED,
      S01_AXI_rid => NLW_ps7_0_axi_periph_S01_AXI_rid_UNCONNECTED,
      S01_AXI_rlast => NLW_ps7_0_axi_periph_S01_AXI_rlast_UNCONNECTED,
      S01_AXI_rready => '0',
      S01_AXI_rresp => NLW_ps7_0_axi_periph_S01_AXI_rresp_UNCONNECTED,
      S01_AXI_rvalid => NLW_ps7_0_axi_periph_S01_AXI_rvalid_UNCONNECTED,
      S01_AXI_wdata => '0',
      S01_AXI_wlast => '0',
      S01_AXI_wready => NLW_ps7_0_axi_periph_S01_AXI_wready_UNCONNECTED,
      S01_AXI_wstrb => '0',
      S01_AXI_wvalid => '0'
    );
rgb_PWM_0: component system_PWM_0_0
     port map (
      pwm(5 downto 0) => rgb_PWM_0_pwm(5 downto 0),
      pwm_axi_aclk => processing_system7_0_FCLK_CLK0,
      pwm_axi_araddr(6 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_ARADDR(6 downto 0),
      pwm_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      pwm_axi_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_ARPROT(2 downto 0),
      pwm_axi_arready => mb_axi_mem_interconnect_0_M04_AXI_ARREADY,
      pwm_axi_arvalid => mb_axi_mem_interconnect_0_M04_AXI_ARVALID,
      pwm_axi_awaddr(6 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_AWADDR(6 downto 0),
      pwm_axi_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_AWPROT(2 downto 0),
      pwm_axi_awready => mb_axi_mem_interconnect_0_M04_AXI_AWREADY,
      pwm_axi_awvalid => mb_axi_mem_interconnect_0_M04_AXI_AWVALID,
      pwm_axi_bready => mb_axi_mem_interconnect_0_M04_AXI_BREADY,
      pwm_axi_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_BRESP(1 downto 0),
      pwm_axi_bvalid => mb_axi_mem_interconnect_0_M04_AXI_BVALID,
      pwm_axi_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_RDATA(31 downto 0),
      pwm_axi_rready => mb_axi_mem_interconnect_0_M04_AXI_RREADY,
      pwm_axi_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_RRESP(1 downto 0),
      pwm_axi_rvalid => mb_axi_mem_interconnect_0_M04_AXI_RVALID,
      pwm_axi_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_WDATA(31 downto 0),
      pwm_axi_wready => mb_axi_mem_interconnect_0_M04_AXI_WREADY,
      pwm_axi_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M04_AXI_WSTRB(3 downto 0),
      pwm_axi_wvalid => mb_axi_mem_interconnect_0_M04_AXI_WVALID
    );
rst_ps7_0_100M: component system_rst_ps7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_ps7_0_100M_bus_struct_reset(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_ps7_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => mdm_0_Debug_SYS_Rst,
      mb_reset => rst_ps7_0_100M_mb_reset,
      peripheral_aresetn(0) => rst_ps7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
share_axi_bram_ctrl_0: component system_axi_bram_ctrl_0_1
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_0_BRAM_PORTA1_CLK,
      bram_en_a => axi_bram_ctrl_0_BRAM_PORTA1_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_0_BRAM_PORTA1_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(12 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARID(2 downto 0),
      s_axi_arlen(7 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARLEN(7 downto 0),
      s_axi_arlock => mb_axi_mem_interconnect_0_M05_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARPROT(2 downto 0),
      s_axi_arready => mb_axi_mem_interconnect_0_M05_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => mb_axi_mem_interconnect_0_M05_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWCACHE(3 downto 0),
      s_axi_awid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWID(2 downto 0),
      s_axi_awlen(7 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWLEN(7 downto 0),
      s_axi_awlock => mb_axi_mem_interconnect_0_M05_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWPROT(2 downto 0),
      s_axi_awready => mb_axi_mem_interconnect_0_M05_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => mb_axi_mem_interconnect_0_M05_AXI_AWVALID,
      s_axi_bid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_BID(2 downto 0),
      s_axi_bready => mb_axi_mem_interconnect_0_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => mb_axi_mem_interconnect_0_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_RDATA(31 downto 0),
      s_axi_rid(2 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_RID(2 downto 0),
      s_axi_rlast => mb_axi_mem_interconnect_0_M05_AXI_RLAST,
      s_axi_rready => mb_axi_mem_interconnect_0_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => mb_axi_mem_interconnect_0_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_WDATA(31 downto 0),
      s_axi_wlast => mb_axi_mem_interconnect_0_M05_AXI_WLAST,
      s_axi_wready => mb_axi_mem_interconnect_0_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => mb_axi_mem_interconnect_0_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => mb_axi_mem_interconnect_0_M05_AXI_WVALID
    );
share_axi_bram_ctrl_1: component system_axi_bram_ctrl_1_1
     port map (
      bram_addr_a(12 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_ADDR(12 downto 0),
      bram_clk_a => axi_bram_ctrl_1_BRAM_PORTA1_CLK,
      bram_en_a => axi_bram_ctrl_1_BRAM_PORTA1_EN,
      bram_rddata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_DOUT(31 downto 0),
      bram_rst_a => axi_bram_ctrl_1_BRAM_PORTA1_RST,
      bram_we_a(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_WE(3 downto 0),
      bram_wrdata_a(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_DIN(31 downto 0),
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(12 downto 0) => ps7_0_axi_periph_M01_AXI_ARADDR(12 downto 0),
      s_axi_arburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_ARLEN(7 downto 0),
      s_axi_arlock => ps7_0_axi_periph_M01_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps7_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => ps7_0_axi_periph_M01_AXI_ARVALID,
      s_axi_awaddr(12 downto 0) => ps7_0_axi_periph_M01_AXI_AWADDR(12 downto 0),
      s_axi_awburst(1 downto 0) => ps7_0_axi_periph_M01_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => ps7_0_axi_periph_M01_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => ps7_0_axi_periph_M01_AXI_AWLEN(7 downto 0),
      s_axi_awlock => ps7_0_axi_periph_M01_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps7_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => ps7_0_axi_periph_M01_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => ps7_0_axi_periph_M01_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rlast => ps7_0_axi_periph_M01_AXI_RLAST,
      s_axi_rready => ps7_0_axi_periph_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wlast => ps7_0_axi_periph_M01_AXI_WLAST,
      s_axi_wready => ps7_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M01_AXI_WVALID
    );
share_blk_mem_gen_1: component system_blk_mem_gen_1_1
     port map (
      addra(31 downto 13) => B"0000000000000000000",
      addra(12 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_ADDR(12 downto 0),
      addrb(31 downto 13) => B"0000000000000000000",
      addrb(12 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_ADDR(12 downto 0),
      clka => axi_bram_ctrl_0_BRAM_PORTA1_CLK,
      clkb => axi_bram_ctrl_1_BRAM_PORTA1_CLK,
      dina(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_DIN(31 downto 0),
      dinb(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_DIN(31 downto 0),
      douta(31 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_DOUT(31 downto 0),
      doutb(31 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_DOUT(31 downto 0),
      ena => axi_bram_ctrl_0_BRAM_PORTA1_EN,
      enb => axi_bram_ctrl_1_BRAM_PORTA1_EN,
      rsta => axi_bram_ctrl_0_BRAM_PORTA1_RST,
      rsta_busy => NLW_share_blk_mem_gen_1_rsta_busy_UNCONNECTED,
      rstb => axi_bram_ctrl_1_BRAM_PORTA1_RST,
      rstb_busy => NLW_share_blk_mem_gen_1_rstb_busy_UNCONNECTED,
      wea(3 downto 0) => axi_bram_ctrl_0_BRAM_PORTA1_WE(3 downto 0),
      web(3 downto 0) => axi_bram_ctrl_1_BRAM_PORTA1_WE(3 downto 0)
    );
xadc_wiz_0: component system_xadc_wiz_0_0
     port map (
      alarm_out => NLW_xadc_wiz_0_alarm_out_UNCONNECTED,
      busy_out => NLW_xadc_wiz_0_busy_out_UNCONNECTED,
      channel_out(4 downto 0) => NLW_xadc_wiz_0_channel_out_UNCONNECTED(4 downto 0),
      eoc_out => NLW_xadc_wiz_0_eoc_out_UNCONNECTED,
      eos_out => NLW_xadc_wiz_0_eos_out_UNCONNECTED,
      ip2intc_irpt => xadc_wiz_0_ip2intc_irpt,
      ot_out => NLW_xadc_wiz_0_ot_out_UNCONNECTED,
      s_axi_aclk => processing_system7_0_FCLK_CLK0,
      s_axi_araddr(10 downto 0) => ps7_0_axi_periph_M05_AXI_ARADDR(10 downto 0),
      s_axi_aresetn => rst_ps7_0_100M_peripheral_aresetn(0),
      s_axi_arready => ps7_0_axi_periph_M05_AXI_ARREADY,
      s_axi_arvalid => ps7_0_axi_periph_M05_AXI_ARVALID,
      s_axi_awaddr(10 downto 0) => ps7_0_axi_periph_M05_AXI_AWADDR(10 downto 0),
      s_axi_awready => ps7_0_axi_periph_M05_AXI_AWREADY,
      s_axi_awvalid => ps7_0_axi_periph_M05_AXI_AWVALID,
      s_axi_bready => ps7_0_axi_periph_M05_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps7_0_axi_periph_M05_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_RDATA(31 downto 0),
      s_axi_rready => ps7_0_axi_periph_M05_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps7_0_axi_periph_M05_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps7_0_axi_periph_M05_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps7_0_axi_periph_M05_AXI_WDATA(31 downto 0),
      s_axi_wready => ps7_0_axi_periph_M05_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps7_0_axi_periph_M05_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps7_0_axi_periph_M05_AXI_WVALID,
      user_temp_alarm_out => NLW_xadc_wiz_0_user_temp_alarm_out_UNCONNECTED,
      vauxn0 => Vaux0_0_1_V_N,
      vauxn1 => Vaux1_0_1_V_N,
      vauxn12 => Vaux12_0_1_V_N,
      vauxn13 => Vaux13_0_1_V_N,
      vauxn15 => Vaux15_0_1_V_N,
      vauxn5 => Vaux5_0_1_V_N,
      vauxn6 => Vaux6_0_1_V_N,
      vauxn8 => Vaux8_0_1_V_N,
      vauxn9 => Vaux9_0_1_V_N,
      vauxp0 => Vaux0_0_1_V_P,
      vauxp1 => Vaux1_0_1_V_P,
      vauxp12 => Vaux12_0_1_V_P,
      vauxp13 => Vaux13_0_1_V_P,
      vauxp15 => Vaux15_0_1_V_P,
      vauxp5 => Vaux5_0_1_V_P,
      vauxp6 => Vaux6_0_1_V_P,
      vauxp8 => Vaux8_0_1_V_P,
      vauxp9 => Vaux9_0_1_V_P,
      vccaux_alarm_out => NLW_xadc_wiz_0_vccaux_alarm_out_UNCONNECTED,
      vccddro_alarm_out => NLW_xadc_wiz_0_vccddro_alarm_out_UNCONNECTED,
      vccint_alarm_out => NLW_xadc_wiz_0_vccint_alarm_out_UNCONNECTED,
      vccpaux_alarm_out => NLW_xadc_wiz_0_vccpaux_alarm_out_UNCONNECTED,
      vccpint_alarm_out => NLW_xadc_wiz_0_vccpint_alarm_out_UNCONNECTED,
      vn_in => Vp_Vn_0_1_V_N,
      vp_in => Vp_Vn_0_1_V_P
    );
xlconcat_2: component system_xlconcat_2_0
     port map (
      In0(0) => xadc_wiz_0_ip2intc_irpt,
      In1(0) => xlconstant_0_dout(0),
      In2(0) => xlconstant_1_dout(0),
      dout(2 downto 0) => xlconcat_2_dout(2 downto 0)
    );
xlconstant_0: component system_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component system_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
