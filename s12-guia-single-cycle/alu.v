`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2025 02:37:07 PM
// Design Name: 
// Module Name: alu
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


module alu(input [31:0] SrcA, SrcB,
    input [1:0] ALUControl,
    output reg [31:0] Result,
    output wire [3:0] ALUFlags);
    
    wire neg, zero, carry, overflow;
    wire [31:0] condinvb;
    wire [32:0] sum;
    
    assign condinvb = ALUControl[0] ? ~SrcB : SrcB;
    assign sum = SrcA + condinvb + ALUControl[0];
    always @(*)
    begin
    casex (ALUControl[1:0])
    2'b0?: Result = sum;
    2'b10: Result = SrcA & SrcB;
    2'b11: Result = SrcA | SrcB;
    endcase
    end
    
    assign neg = Result[31];
    assign zero = (Result == 32'b0);
    assign carry = (ALUControl[1] ==
    1'b0)
    & sum[32];
    assign overflow = (ALUControl[1] ==
    1'b0)
    & ~(SrcA[31] ^ SrcB[31] ^
    ALUControl[0]) &
    (SrcA[31]
    ^ sum[31]);
    assign ALUFlags = {neg, zero, carry,
    overflow};
    
    
endmodule