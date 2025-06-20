`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 10:18:07 AM
// Design Name: 
// Module Name: clock_divider
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

module clockdivider (
    input  wire        in_clk,
    input  wire        reset,     // señal de reset opcional
    output reg         out_clk
);

    parameter DIV_COUNT = 25_000_000;  
    reg [24:0] counter;
     
     // reinicio ascinrono
    always @(posedge in_clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            out_clk <= 0;
        end
        else if (counter == DIV_COUNT-1) begin
            counter <= 0;
            out_clk <= ~out_clk;
        end
        else begin
            counter <= counter + 1;
        end
    end

endmodule

