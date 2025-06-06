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


module top(input[4:0] a,b,input [2:0] ALUControl, input [1:0] bshift, input select, output [4:0] Result,
    output wire [3:0] ALUFlags);
    wire [4:0] w1;
    wire [4:0] w2;
    wire [4:0] w3;
    
    shift_operator_l s(.A(a), .bshift(bshift), .y(w1));
    shift_operator_r s(.A(a), .bshift(bshift), .y(w2));
    mux2 s(.a(w1), .b(w2), .s(select), .y(w3));
    alu_xor ut(.a(w3), .b(b), .ALUControl(ALUControl), .Result(Result), .ALUFlags(ALUFlags));
    
       
    
endmodule
