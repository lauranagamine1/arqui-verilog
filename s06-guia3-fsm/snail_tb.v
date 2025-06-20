`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 03:23:46 PM
// Design Name: 
// Module Name: snail_tb
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


module SmilingSnail_tb();
    reg clk, number, reset;
    wire smile;
    integer i;
    //snail_mealy caracol(clk, reset, number, smile);
    snail_moore caracol2(clk, reset, number, smile);
    always #4 clk = ~clk; // clk changes every 4 ns.
    
    initial begin // initialize regs
    clk = 0;
    number = 0;
    reset = 0;
    
    end
    initial begin
    #1 // offset clk and number by 1 ns.
    for (i = 0; i < 255; i = i + 7) begin
    #2 // change number every 2 ns.
    number = i[3]; // assign arbitrary value (bit 3 of i)
    
    end
    reset = 1;
    #10
    
    $finish;
    end
endmodule