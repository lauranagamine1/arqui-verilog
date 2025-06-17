`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2025 11:42:33 PM
// Design Name: 
// Module Name: top
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


module top (input  wire reset, input  wire clk, output wire [0:4] led);

    wire clk_div;

    clockdivider u_clkdiv (
        .in_clk (clk),
        .reset  (reset),
        .out_clk(clk_div)
    );
    
    signal_generator sig(.clk(clk_div), .reset(reset), .x(x), .y(y), .led(led));

endmodule
