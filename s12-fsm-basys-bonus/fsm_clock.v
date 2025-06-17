`timescale 1ns / 1ps
module signal_generator (
    input  wire clk,
    input  wire reset,
    output reg  x,
    output reg  y,
    output reg [0:3] led
);

    // Estado actual y siguiente (4 bits para 11 estados)
    parameter S0  = 4'b0000,
          S1  = 4'b0001,
          S2  = 4'b0010,
          S3  = 4'b0011,
          S4  = 4'b0100,
          S5  = 4'b0101,
          S6  = 4'b0110,
          S7  = 4'b0111,
          S8  = 4'b1000,
          S9  = 4'b1001,
          S10 = 4'b1010;

// registro de estado
    reg [3:0] state, next_state;

always @(posedge clk or posedge reset) begin
    if (reset)
        state <= S0;
    else
        state <= next_state;
end

// lógica de transición de estados
always @(*) begin
    case (state)
        S0:   next_state = S1;
        S1:   next_state = S2;
        S2:   next_state = S3;
        S3:   next_state = S4;
        S4:   next_state = S5;
        S5:   next_state = S6;
        S6:   next_state = S7;
        S7:   next_state = S8;
        S8:   next_state = S9;
        S9:   next_state = S10;
        S10:  next_state = S0;
        default: next_state = S0;
    endcase
end

// lógica de salida (Moore)
always @(*) begin
    case (state)
        S0:  begin x = 0; y = 0; end
        S1:  begin x = 0; y = 1; end
        S2:  begin x = 1; y = 0; end
        S3:  begin x = 0; y = 1; end
        S4:  begin x = 0; y = 0; end
        S5:  begin x = 0; y = 1; end
        S6:  begin x = 0; y = 0; end
        S7:  begin x = 1; y = 0; end
        S8:  begin x = 0; y = 0; end
        S9:  begin x = 0; y = 1; end
        S10: begin x = 0; y = 0; end
        default: begin x = 0; y = 0; end
    endcase
end
always @(*) begin
    led = state;
end

endmodule