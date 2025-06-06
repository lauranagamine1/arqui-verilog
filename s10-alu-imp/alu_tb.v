`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2025 04:52:13 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
    reg [4:0] a,b;
    reg [1:0] bshift;
    reg select;
    reg [2:0] ALUControl;
    wire [4:0] Result;
    wire [3:0] ALUFlags;
        
    
    top ut(.a(a), .b(b), .ALUControl(ALUControl), .bshift(bshift), .select(select), .Result(Result), .ALUFlags(ALUFlags));
    
    initial begin
   
    a = -4;
    b=5;
    ALUControl = 3'b101;
    bshift = 0;
    select = 0;
    
    #10
  
    
    $finish;
    end 
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end 
    
    
endmodule
