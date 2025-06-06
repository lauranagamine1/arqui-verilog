`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2025 02:17:54 PM
// Design Name: 
// Module Name: alu_xor
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


module alu_xor(input [4:0] a, b,
    input [2:0] ALUControl,
    output reg [4:0] Result,
    output wire [3:0] ALUFlags);

    wire neg, zero, carry, overflow;
    wire [31:0] condinvb;
    wire [31:0] sum;
    
    assign condinvb = ALUControl[0] ? ~b : b;
    assign sum = a + condinvb + ALUControl[0];
    
    always @(*)
    begin
    casex (ALUControl[2:0])
    3'b00?: Result = sum;
    3'b010: Result = a & b;
    3'b011: Result = a | b;
    3'b100: Result = a^b;
    
    endcase
    end
    
    assign neg = Result[4];
    assign zero = (Result == 5'b0);
    assign carry = (ALUControl[1] ==
    1'b0)
    & sum[31];
    assign overflow = (ALUControl[1] ==
    1'b0)
    & ~(a[4] ^ b[4] ^
    ALUControl[0]) &
    (a[4]
    ^ sum[4]);
    assign ALUFlags = {neg, zero, carry,
    overflow};

endmodule
