`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2025 09:19:51 PM
// Design Name: 
// Module Name: d_ff_we_tb
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


module dff_we_t_tb();
    reg clk; 
    reg [3:0] d;
    reg we;
    reg reset;
    wire [3:0] q;
    
    always #5 clk = ~clk;
    
    d_ff_we d_ff_we_test(.clk(clk), .d(d), .we(we), .reset(reset), .q(q));
    
    initial begin
    clk = 0; d = 0; we = 0; reset = 0;
    #2 reset = 1;
    #5 reset = 0;
    #5 d = 1; we = 1;
    #10 d = 0; we = 1;
    #10 d = 1; we = 0;
    #10 reset = 1;
    #5 reset = 0;
    #20 $finish;
    end
    
endmodule
