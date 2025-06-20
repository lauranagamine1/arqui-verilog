module full_adder(A, B, Cin, S, Cout);
  input A, B, Cin;
  output S, Cout;

  wire w1, w2, w3;

  // S = A XOR B XOR Cin
  assign w1 = A ^ B;
  assign S = w1 ^ Cin;

  // Cout = (A AND B) OR (Cin AND (A XOR B))
  assign w2 = A & B;
  assign w3 = Cin & w1;
  assign Cout = w2 | w3;

endmodule
