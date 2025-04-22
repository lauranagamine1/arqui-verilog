`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 04:37:09 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch( input clk, input [3:0] d, output reg [3:0] q);

always @ (clk, d)
    if (clk) q <= d; 
    
endmodule


// d flip flop
module d_latch_extended(input clk, input [3:0] d, output reg [3:0] q);

always @ (posedge clk)
    q <= d;
endmodule 