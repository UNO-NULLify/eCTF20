`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2020 08:49:43 PM
// Design Name: 
// Module Name: birdwtch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module birdwtch #(
		parameter [0:0] OPT_READ_SIDEEFFECTS    = 1,
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 8
		
	   )(
    
        input wire  S00_AXI_ACLK,
        input wire  S00_AXI_ARESETN,
        
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0]       S00_AXI_AWADDR,
        input wire [2 : 0]                          S00_AXI_AWPROT,
        input wire                                  S00_AXI_AWVALID,
        output wire                                 S00_AXI_AWREADY,
        input wire [C_S_AXI_DATA_WIDTH-1 : 0]       S00_AXI_WDATA,
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0]   S00_AXI_WSTRB,
        input wire                                  S00_AXI_WVALID,
        output wire                                 S00_AXI_WREADY,
        output wire [1 : 0]                         S00_AXI_BRESP,
        output wire                                 S00_AXI_BVALID,
        input wire                                  S00_AXI_BREADY,
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0]       S00_AXI_ARADDR,
        input wire [2 : 0]                          S00_AXI_ARPROT,
        input wire                                  S00_AXI_ARVALID,
        output wire                                 S00_AXI_ARREADY,
        output wire [C_S_AXI_DATA_WIDTH-1 : 0]      S00_AXI_RDATA,
        output wire [1 : 0]                         S00_AXI_RRESP,
        output wire                                 S00_AXI_RVALID,
        input wire                                  S00_AXI_RREADY,
        
        input wire  S01_AXI_ACLK,
        input wire  S01_AXI_ARESETN,
        
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0]       S01_AXI_AWADDR,
        input wire [2 : 0]                          S01_AXI_AWPROT,
        input wire                                  S01_AXI_AWVALID,
        output wire                                 S01_AXI_AWREADY,
        input wire [C_S_AXI_DATA_WIDTH-1 : 0]       S01_AXI_WDATA,
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0]   S01_AXI_WSTRB,
        input wire                                  S01_AXI_WVALID,
        output wire                                 S01_AXI_WREADY,
        output wire [1 : 0]                         S01_AXI_BRESP,
        output wire                                 S01_AXI_BVALID,
        input wire                                  S01_AXI_BREADY,
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0]       S01_AXI_ARADDR,
        input wire [2 : 0]                          S01_AXI_ARPROT,
        input wire                                  S01_AXI_ARVALID,
        output wire                                 S01_AXI_ARREADY,
        output wire [C_S_AXI_DATA_WIDTH-1 : 0]      S01_AXI_RDATA,
        output wire [1 : 0]                         S01_AXI_RRESP,
        output wire                                 S01_AXI_RVALID,
        input wire                                  S01_AXI_RREADY,
        
        output reg                                  int_mb              //microblaze interrupt
                );
                
    wire [7:0]	w_cr_command;
    wire [7:0]	w_cr_data;
    wire [7:0]	w_cr_status;
    wire [7:0]	w_cr_resp;
    
    
    wire p_int;
    wire i_int_ack;
    wire o_int_ack;
    
    assign p_int = w_cmd_stb & w_cr_status[7]; //interrupt activates when a command is received and interrupts are enabled in the status byte
    assign i_int_ack = o_int_ack;   //Interrupt acknowledge strobe triggered by reading command register from MB side, clears command byte

    always @(posedge S00_AXI_ACLK)
        if (i_int_ack)
            int_mb <= 1'b0;
        else if (p_int)
            int_mb <= 1'b1;
                
    birdwtch_iface_v1_0_S00_AXI birdwtch_iface_v1_0_S00_AXI_inst(
    S00_AXI_ACLK,
    S00_AXI_ARESETN,
    S00_AXI_AWADDR, 
    S00_AXI_AWPROT, 
    S00_AXI_AWVALID,
    S00_AXI_AWREADY,
    S00_AXI_WDATA,  
    S00_AXI_WSTRB,  
    S00_AXI_WVALID, 
    S00_AXI_WREADY, 
    S00_AXI_BRESP,  
    S00_AXI_BVALID, 
    S00_AXI_BREADY, 
    S00_AXI_ARADDR, 
    S00_AXI_ARPROT, 
    S00_AXI_ARVALID,
    S00_AXI_ARREADY,
    S00_AXI_RDATA,  
    S00_AXI_RRESP,  
    S00_AXI_RVALID, 
    S00_AXI_RREADY,
  
    w_cr_status,					//o_cr_command
    w_cr_resp,                        //o_cr_data   
    w_cr_command,					//i_cr_status
   	w_cr_data,						//i_cr_resp   
   	
    i_int_ack,
    w_cmd_stb
    );
    
    birdwtch_iface_v1_0_S01_AXI birdwtch_iface_v1_0_S01_AXI_inst(
    S00_AXI_ACLK,
    S00_AXI_ARESETN,
    S01_AXI_AWADDR, 
    S01_AXI_AWPROT, 
    S01_AXI_AWVALID,
    S01_AXI_AWREADY,
    S01_AXI_WDATA,  
    S01_AXI_WSTRB,  
    S01_AXI_WVALID, 
    S01_AXI_WREADY, 
    S01_AXI_BRESP,  
    S01_AXI_BVALID, 
    S01_AXI_BREADY, 
    S01_AXI_ARADDR, 
    S01_AXI_ARPROT, 
    S01_AXI_ARVALID,
    S01_AXI_ARREADY,
    S01_AXI_RDATA,  
    S01_AXI_RRESP,  
    S01_AXI_RVALID, 
    S01_AXI_RREADY,
    
    w_cr_status,					//o_cr_command
    w_cr_resp,                        //o_cr_data    
    w_cr_command,					//i_cr_status
   	w_cr_data,						//i_cr_resp

    o_int_ack
    );
    
   
    
   
endmodule
