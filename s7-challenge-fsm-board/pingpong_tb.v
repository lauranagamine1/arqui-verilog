`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2025 11:56:27 AM
// Design Name: 
// Module Name: clock_divider_tb
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


`timescale 1ns/1ps

module clock_divider_tb;
    reg  in_clk;
    reg  reset;
    wire out_clk;

    
    clockdivider clock (
        .in_clk(in_clk),
        .reset(reset),
        .out_clk(out_clk)
    );

    initial begin
        in_clk = 0;
        forever #5 in_clk = ~in_clk;
    end

    initial begin
        reset = 1;      
        #12;            
        reset = 0;      
        #2000;
        $finish;
    end

    initial begin
        $display(" Time (ns) │ in_clk │ out_clk");
        $monitor("%10dns │   %b    │   %b", $time, in_clk, out_clk);
    end

endmodule

