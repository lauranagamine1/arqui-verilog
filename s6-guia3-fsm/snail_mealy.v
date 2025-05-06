`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025 03:14:16 PM
// Design Name: 
// Module Name: snail_mealy
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


module snail_mealy(input clk,
                   input reset,
                   input number,
                   output smile);
    
    reg[1:0] state, nextstate;
    // encoding
    parameter S0 = 2'b00;
    parameter S1 = 2'b01;
    parameter S2 = 2'b10;
    parameter S3 = 2'b11;
    // state register
    
    always @ (posedge clk, posedge reset) begin
    if (reset) state <= S0;
    else state <= nextstate;
    end
    
    // next state logic
    
    always @ (*) begin
    case (state)
    S0: if (number) nextstate = S1;
        else
    nextstate = S0;
    S1: if (number) nextstate = S2;
    else
        nextstate = S0;
    S2: if (number) nextstate = S2;
    else
        nextstate = S3;
    S3: if (number) nextstate = S1;
    else
        nextstate = S0;
    default:
        nextstate = S0;
    endcase
    end
    // output logic
    
    assign smile = (number & state == S3);
    
endmodule
