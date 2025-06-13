`timescale 1ns / 1ps

module testbench;

    // Entradas
    reg clk;
    reg reset;

    // Salidas
    wire x, y;

    // Instancia del módulo a probar
    signal_generator uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    // Generación de reloj (10 ns período)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Proceso de prueba
    initial begin
        // Inicialización
        reset = 1;
        #12;
        reset = 0;

        // Simulación por 200 ns
        #220;
        $finish;
    end

    

endmodule