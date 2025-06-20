module testbench;

  reg A, B, Cin;
  wire S, Cout;
  integer i;

  full_adder FA(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

  initial begin
    $dumpfile("full_adder.vcd"); 
    $dumpvars;                     
    for (i = 0; i < 8; i = i + 1) begin
      {A, B, Cin} = i; // pasar por los 8 casos de los 3 inputs
      #10;
    end
    $finish; // Es buena práctica terminar la simulación
  end

endmodule
