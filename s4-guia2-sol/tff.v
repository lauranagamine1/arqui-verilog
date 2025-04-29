module tff (
  	input clk,
  	input reset,
  	input t,
  output reg q);
  
  always @(posedge clk, posedge reset)
    begin
    if (reset)
      	q <= 0;
  	else
      if (t)
        q <= ~q;
    end
endmodule