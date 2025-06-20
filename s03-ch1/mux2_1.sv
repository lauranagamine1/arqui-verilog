`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/08/2025 04:19:25 PM
// Design Name:
// Module Name: cl
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
module mux2_1(s,a,b,f);
    input s,a,b;
    output f;
    wire not_s_out, and_a_out, and_b_out;
   
    not not_s (not_s_out,s);
    and and_a (and_a_out, a,not_s_out);
    and and_b (and_b_out,b,s);
    or or_out_mux(f,and_a_out,and_b_out);
   
endmodule

module cl(input a,b,[1:0] sel,sel2, output f);
    wire entrada1;
    wire entrada2;
    wire entrada3;
    wire entrada4 = 1'b1;
   
    and and_ab (w1.a,b);
    or or_ab(w2,a,b);
    not not_or(w3,a,b);
   
   
    // usar assign o instanciar compuertas para cada entrada...
    // and and_1 (entrada1, a, b);
    // Hacer un MUX 4:1 usando MUX 2:1
    // o puedes instanciar tu modulo de MUX 4:1 si ya lo tienes
    wire f1, f2;
   
    mux2_1 mux2_1_test1(A(.a),B(.b),S(.sel),F(.entrada1));
    mux2_1 mux2_1_test2(A(.a),B(.b),S(.sel2),F(.entrada2));
    mux2_1 mux2_1_test3(A(.a),B(.b),S(),F());
   
endmodule