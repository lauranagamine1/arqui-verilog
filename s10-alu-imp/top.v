`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2025 02:38:17 PM
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


module top(input[4:0] a,b,input [2:0] ALUControl, input [1:0] bshift, output [4:0] Result,
    output wire [3:0] ALUFlags);
    wire [4:0] w1;
    
    shift_operator s(.A(a), .bshift(bshift), .y(w1));
    alu_xor ut(.a(w1), .b(b), .ALUControl(ALUControl), .Result(Result), .ALUFlags(ALUFlags));
    
       
    
endmodule
