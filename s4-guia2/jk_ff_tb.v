`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 12:11:24 PM
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();
    
    reg clk, j, k, reset;
    wire q;
    // Instanciar JKFF
    // jkff utt (...)
    jk_ff jk_ff_tb(.clk(clk), .j(j), .k(k), .reset(reset), .q(q));
    
    always #5 clk = ~clk;
    
    initial begin
    clk = 0; j = 0; k = 0; reset = 0;
    #2 reset = 1;
    #5 reset = 0;
    #10 j = 1; k = 0;
    #10 j = 0; k = 1;
    #10 j = 1; k = 1;
    #10 j = 0; k = 0;
    #10 reset = 1;
    #5 reset = 0;
    #20 $finish;
    end
    
endmodule
