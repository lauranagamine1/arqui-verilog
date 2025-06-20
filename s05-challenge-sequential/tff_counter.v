`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 04:27:53 PM
// Design Name: 
// Module Name: tff_counter
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


module tff_counter(input clk, input reset, input t, output [3:0] q);
    // wires para conectar los tffs
    wire c1, c2, c3;
    
    
    
    t_ff t1(clk, reset, 1,q[0]);
    t_ff t2(clk, reset, c1,q[1]);
    t_ff t3(clk, reset, c2, q[2]);
    t_ff t4(clk, reset, c3, q[3]);
    
    
    assign c1 = q[0];
    and and1(c2, q[0],q[1]);
    and and2(c3, q[1],q[2],q[0]);
    
    
endmodule
