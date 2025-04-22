
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2025 04:37:09 PM
// Design Name: 
// Module Name: d_latch
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


module d_latch( input clk, input [3:0] d, output reg [3:0] q);

always @ (clk, d)
    if (clk) q <= d;  // si clock ==1 entonces q = d
    
endmodule


// d flip flop
// el Flip-Flop solo actualiza su estado en el flanco de subida (posedge) del reloj (clk)
module d_latch_extended(input clk, input [3:0] d, output reg [3:0] q);

always @ (posedge clk)
    q <= d; // q obtiene d 
endmodule 

// d flip flop con WE y RESET asincrono


module d_ff_we(input clk, input [3:0] d, input we, input reset, output reg [3:0] q);
    // asynchronous reset
always @(posedge clk or negedge reset)
    if (!reset)           // flanco de bajada del reset
        q <= 0;
    else if (we)       // write habilita la escritura
         q <= d;

endmodule

// T flip flop
module t_ff(input clk, input reset, input t,output reg q);
always @ (posedge clk)
    if (reset)
      q <= 0;
    else
    	if (t)
      		q <= ~q;
    	else
      		q <= q;
endmodule

// JK FLip flop

module jk_ff(input clk,     // reloj
    input j,       // entrada J
    input k,   input reset,    // entrada K
    output reg q);
  
  always @(posedge clk) begin
        case ({j, k})
            2'b00: q <= q;         // No cambia, j=0 k=0
            2'b01: q <= 1'b0;      // Reset j=0, k=1
            2'b10: q <= 1'b1;      // Set, j=1, k=0
            2'b11: q <= ~q;        // Toggle, j=1, k=1
        endcase
    end

endmodule;