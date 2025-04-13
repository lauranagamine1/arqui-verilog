// Code your design here
module module_design(s, a, b, f);
    input s, a, b;
    output f;
    wire not_s_out, and_a_out, and_b_out;

    not not_s (not_s_out, s);
    and and_a (and_a_out, a, not_s_out);
    and and_b (and_b_out, b, s);
    or or_out_mux (f, and_a_out, and_b_out);
endmodule

module mux8_1(a, b, c, d, e, f, g, h, s1, s2, s3, F);
    input s1, s2, s3;
    input a, b, c, d, e, f, g, h;
  	output F;
  	wire w1, w2, w3, w4, w5, w6;




  module_design mux8_1_test1(.a(a), .b(b), .f(w1), .s(s1));
  module_design mux8_1_test2(.a(c), .b(d), .f(w2), .s(s1));
  module_design mux8_1_test3(.a(e), .b(f), .f(w3), .s(s1));
  module_design mux8_1_test4(.a(g), .b(h), .f(w4), .s(s1));

  module_design mux8_1_test5(.a(w1), .b(w2), .f(w5), .s(s2));
  module_design mux8_1_test6(.a(w3), .b(w4), .f(w6), .s(s2));

  module_design mux8_1_test7(.a(w5), .b(w6), .f(F), .s(s3));


endmodule
