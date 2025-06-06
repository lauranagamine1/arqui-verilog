`timescale 1ns / 1ps
module conversor([4:0] input result, [4:0] output converted);
  assign converted = ~(result - 1);
endmodule
