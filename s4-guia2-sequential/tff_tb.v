`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 10:36:21 AM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
    reg clk, t, reset;
    wire q;
    // Instanciar TFF
    t_ff t_ff_tb(.clk(clk), .t(t), .reset(reset),.q(q));
    
    always #5 clk = ~clk;
    initial begin
    clk = 0; t = 0; reset = 0;
    #2 reset = 1;
    #5 reset = 0;
    #10 t = 1;
    #10 t = 0;
    #10 t = 1;
    #10 reset = 1;
    #5 reset = 0;
    #20 $finish;
    end
    initial begin
    $monitor("Time = %0t | clk = %b | t = %b | reset = %b | q = %b",
    $time, clk, t, reset, q);
    end
endmodule
