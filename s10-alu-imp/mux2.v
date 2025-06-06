`timescale 1ns / 1ps
module mux2(input [4:0] a, input [4:0] b, input s, output [4:0] y);
  assign y = (s) ? b : a;
endmodule
