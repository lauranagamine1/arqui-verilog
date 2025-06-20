`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/22/2025 04:21:16 PM
// Design Name: 
// Module Name: tff_tb
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


module tff_tb();
reg clk, reset;
wire [3:0] q;
// Instancia del módulo counter
tff_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);
// Generador de reloj: alterna cada 5 unidades de tiempo
always #5 clk = ~clk;
initial begin
    // Inicialización
    clk = 0;
    reset = 1;
    #10;
    reset = 0; // Liberar el reset y empezar a contar
    // Simular durante varios ciclos de reloj
    #200;
    // Aplicar reset durante la simulación
    reset = 1;
    #10;
    reset = 0;
    #100;
    $finish;
end
endmodule
