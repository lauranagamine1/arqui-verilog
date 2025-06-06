module mux2([4:0] input a, [4:0] input b, input s, [4:0] y);
  assign y = (~s and a) or (s and b);
