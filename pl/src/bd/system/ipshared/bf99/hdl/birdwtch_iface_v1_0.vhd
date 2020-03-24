library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity birdwtch_iface_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI
		C_S00_AXI_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here
        int_mb          : out std_logic;
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk	: in std_logic;
        s00_axi_aresetn    : in std_logic;
		
		s00_axi_awaddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot	: in std_logic_vector(2 downto 0);
		s00_axi_awvalid	: in std_logic;
		s00_axi_awready	: out std_logic;
		s00_axi_wdata	: in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb	: in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid	: in std_logic;
		s00_axi_wready	: out std_logic;
		s00_axi_bresp	: out std_logic_vector(1 downto 0);
		s00_axi_bvalid	: out std_logic;
		s00_axi_bready	: in std_logic;
		s00_axi_araddr	: in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot	: in std_logic_vector(2 downto 0);
		s00_axi_arvalid	: in std_logic;
		s00_axi_arready	: out std_logic;
		s00_axi_rdata	: out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp	: out std_logic_vector(1 downto 0);
		s00_axi_rvalid	: out std_logic;
		s00_axi_rready	: in std_logic;
		
		s01_axi_aclk	: in std_logic;
        s01_axi_aresetn    : in std_logic;
        
        s01_axi_awaddr    : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s01_axi_awprot    : in std_logic_vector(2 downto 0);
        s01_axi_awvalid    : in std_logic;
        s01_axi_awready    : out std_logic;
        s01_axi_wdata    : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s01_axi_wstrb    : in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
        s01_axi_wvalid    : in std_logic;
        s01_axi_wready    : out std_logic;
        s01_axi_bresp    : out std_logic_vector(1 downto 0);
        s01_axi_bvalid    : out std_logic;
        s01_axi_bready    : in std_logic;
        s01_axi_araddr    : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
        s01_axi_arprot    : in std_logic_vector(2 downto 0);
        s01_axi_arvalid    : in std_logic;
        s01_axi_arready    : out std_logic;
        s01_axi_rdata    : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
        s01_axi_rresp    : out std_logic_vector(1 downto 0);
        s01_axi_rvalid    : out std_logic;
        s01_axi_rready    : in std_logic
	);
end birdwtch_iface_v1_0;

architecture arch_imp of birdwtch_iface_v1_0 is

	-- component declaration
	component birdwtch is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S00_AXI_ACLK	: in std_logic;
		S00_AXI_ARESETN	: in std_logic;
		
		S00_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S00_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S00_AXI_AWVALID	: in std_logic;
		S00_AXI_AWREADY	: out std_logic;
		S00_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S00_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S00_AXI_WVALID	: in std_logic;
		S00_AXI_WREADY	: out std_logic;
		S00_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S00_AXI_BVALID	: out std_logic;
		S00_AXI_BREADY	: in std_logic;
		S00_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S00_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S00_AXI_ARVALID	: in std_logic;
		S00_AXI_ARREADY	: out std_logic;
		S00_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S00_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S00_AXI_RVALID	: out std_logic;
		S00_AXI_RREADY	: in std_logic;
		
		S01_AXI_ACLK	: in std_logic;
        S01_AXI_ARESETN    : in std_logic;
		
        S01_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S01_AXI_AWPROT    : in std_logic_vector(2 downto 0);
        S01_AXI_AWVALID    : in std_logic;
        S01_AXI_AWREADY    : out std_logic;
        S01_AXI_WDATA    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S01_AXI_WSTRB    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S01_AXI_WVALID    : in std_logic;
        S01_AXI_WREADY    : out std_logic;
        S01_AXI_BRESP    : out std_logic_vector(1 downto 0);
        S01_AXI_BVALID    : out std_logic;
        S01_AXI_BREADY    : in std_logic;
        S01_AXI_ARADDR    : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S01_AXI_ARPROT    : in std_logic_vector(2 downto 0);
        S01_AXI_ARVALID    : in std_logic;
        S01_AXI_ARREADY    : out std_logic;
        S01_AXI_RDATA    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S01_AXI_RRESP    : out std_logic_vector(1 downto 0);
        S01_AXI_RVALID    : out std_logic;
        S01_AXI_RREADY    : in std_logic
		);
	end component birdwtch;

begin

-- Instantiation of Axi Bus Interface S00_AXI
birdwtch_inst : birdwtch
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_ADDR_WIDTH
	)
	port map (
		S00_AXI_ACLK	=> s00_axi_aclk,
		S00_AXI_ARESETN	=> s00_axi_aresetn,
		
		S00_AXI_AWADDR	=> s00_axi_awaddr,
		S00_AXI_AWPROT	=> s00_axi_awprot,
		S00_AXI_AWVALID	=> s00_axi_awvalid,
		S00_AXI_AWREADY	=> s00_axi_awready,
		S00_AXI_WDATA	=> s00_axi_wdata,
		S00_AXI_WSTRB	=> s00_axi_wstrb,
		S00_AXI_WVALID	=> s00_axi_wvalid,
		S00_AXI_WREADY	=> s00_axi_wready,
		S00_AXI_BRESP	=> s00_axi_bresp,
		S00_AXI_BVALID	=> s00_axi_bvalid,
		S00_AXI_BREADY	=> s00_axi_bready,
		S00_AXI_ARADDR	=> s00_axi_araddr,
		S00_AXI_ARPROT	=> s00_axi_arprot,
		S00_AXI_ARVALID	=> s00_axi_arvalid,
		S00_AXI_ARREADY	=> s00_axi_arready,
		S00_AXI_RDATA	=> s00_axi_rdata,
		S00_AXI_RRESP	=> s00_axi_rresp,
		S00_AXI_RVALID	=> s00_axi_rvalid,
		S00_AXI_RREADY	=> s00_axi_rready,
		
	    S01_AXI_ACLK	=> s01_axi_aclk,
        S01_AXI_ARESETN => s01_axi_aresetn,
		
        S01_AXI_AWADDR  => s01_axi_awaddr,
        S01_AXI_AWPROT  => s01_axi_awprot,
        S01_AXI_AWVALID => s01_axi_awvalid,
        S01_AXI_AWREADY => s01_axi_awready,
        S01_AXI_WDATA   => s01_axi_wdata,
        S01_AXI_WSTRB   => s01_axi_wstrb,
        S01_AXI_WVALID  => s01_axi_wvalid,
        S01_AXI_WREADY  => s01_axi_wready,
        S01_AXI_BRESP   => s01_axi_bresp,
        S01_AXI_BVALID  => s01_axi_bvalid,
        S01_AXI_BREADY  => s01_axi_bready,
        S01_AXI_ARADDR  => s01_axi_araddr,
        S01_AXI_ARPROT  => s01_axi_arprot,
        S01_AXI_ARVALID => s01_axi_arvalid,
        S01_AXI_ARREADY => s01_axi_arready,
        S01_AXI_RDATA   => s01_axi_rdata,
        S01_AXI_RRESP   => s01_axi_rresp,
        S01_AXI_RVALID  => s01_axi_rvalid,
        S01_AXI_RREADY  => s01_axi_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
