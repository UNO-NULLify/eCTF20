`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2020 09:02:43 PM
// Design Name: 
// Module Name: splitchannel
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


module splitchannel(i_stereo, o_left, o_right);
    input wire  [31:0]  i_stereo;
    output wire [15:0]  o_left;
    output wire [15:0]  o_right;
    
    assign o_left = i_stereo[15:0];
    assign o_right = i_stereo[31:16];
endmodule
