// Code your testbench here
// or browse Examples
module mux8_1_tb();
    reg s1, s2, s3;
    reg a, b, c, d, e, f, g, h;
    wire w1, w2, w3, w4, w5, w6;

    initial begin
        a = 0;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        s1 = 0;

        $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
        #1
        $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);

        $finish;
      	a = 0;
        b = 1;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        s1 = 0;
      
      $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
        #1
        $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
      $finish;
      	a = 0;
        b = 1;
        c = 1;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        s1 = 0;
      
      $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
        #1
        $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
      $finish;
      	a = 0;
        b = 1;
        c = 1;
        d = 1;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        s1 = 0;
      
      $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
        #1
        $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
      $finish;
      	a = 0;
        b = 1;
        c = 0;
        d = 0;
        e = 0;
        f = 0;
        g = 0;
        h = 0;
        s1 = 0;
      
      $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
        #1
        $display("A=%b, a=%b, B=%b, b=%b, S=%b, s=%b, F=%b, f=%b", a, a, b, b, s1, s1, f, f);
    end
  initial begin
    $dumpfile("mux2_1.vcd");
    $dumpvars;
  end
endmodule
