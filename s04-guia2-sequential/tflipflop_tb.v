`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 05:38:52 PM
// Design Name: 
// Module Name: tflipflop_tb
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


module tflipflop_tb();
    wire [3:0] q;
    reg clk;
    reg [3:0] d;
    
    always #1 clk = ~clk;
    d_latch_extended d_flipflop_test(.clk(clk), .d(d), .q(q));
    
    initial begin
    
    clk =0;
    d =0;
    #10
  
    d =1;
    #10
    
    d =1;
    #10
    $finish;
    
    end
    
endmodule
