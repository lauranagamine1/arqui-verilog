// Code your testbench here
// or browse Examples
module dff_we_t_tb();
    reg clk; 
    reg [3:0] d;
    wire [3:0] q;
    
    always #5 clk = ~clk;
    
    d_ff_we d_ff_we_test(.clk(clk), .d(d),  .q(q));
    
    initial begin
    clk = 0; d = 0;
    #5 d = 1;
    #10 d = 0;
    #10 d = 1; 
    #20 $finish;
    end
  
  initial begin
  $dumpfile("wave.vcd");
  $dumpvars(0);
end

  
    
endmodule