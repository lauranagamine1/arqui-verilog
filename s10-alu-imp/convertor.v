`timescale 1ns / 1ps
module convertor(input [4:0]resultado, output [4:0] converted);
  assign converted = (resultado[4] == 1'b0) ? resultado : ~(resultado - 1);
endmodule
