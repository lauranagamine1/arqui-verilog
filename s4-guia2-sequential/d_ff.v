// Code your design here
module d_ff_we(input clk, input [3:0] d, output reg [3:0] q);
always @ (posedge clk)
    q <= d; // q obtiene d 
endmodule 