`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/08/2025 05:03:41 PM
// Design Name:
// Module Name: cl_tb
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


module cl_tb(

    );
endmodule

integer i, j;
initial begin
    for (i = 0; i < 4; i = i + 1) begin
        {a, b} = i; // pasar por los 4 casos de a, b
        for (j = 0; j < 4; j = j + 1) begin
            sel = j; // pasar por los 4 casos de sel[1:0]
            #10;
        end
        #10;
    end
end
endmodule;