`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2025
// Design Name: Moore FSM
// Module Name: snail_moore
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: FSM con 5 estados tipo Moore
// 
//////////////////////////////////////////////////////////////////////////////////

module snail_moore(
    input clk,
    input reset,
    input number,
    output reg smile
);

// Se necesitan 5 estados => al menos 3 bits (2^3 = 8 > 5)
reg [2:0] state, nextstate;

// Declaración de parámetros (estados)
parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;

// Registro de estado
always @(posedge clk or posedge reset) begin
    if (reset)
        state <= S0;
    else
        state <= nextstate;
end

// Lógica de transición de estados (next state logic)
always @(*) begin
    case (state)
        S0: begin
            if (number)
                nextstate = S1;
            else
                nextstate = S0;
        end
        S1: begin
            if (number)
                nextstate = S2;
            else
                nextstate = S2; 
        end
        S2: begin
            if (number)
                nextstate = S2;
            else
                nextstate = S3;
        end
        S3: begin
            if (number)
                nextstate = S4;
            else
                nextstate = S4; 
        end
        S4: begin
            if (number)
                nextstate = S2;
            else
                nextstate = S0;
        end
        default: nextstate = S0;
    endcase
end


// Lógica de salida (depende solo del estado en una Moore)
always @(*) begin
    case (state)
        S0: smile = 0;
        S1: smile = 0;
        S2: smile = 0;
        S3: smile = 0;
        S4: smile = 1; 
        default: smile = 0;
    endcase
end

endmodule
