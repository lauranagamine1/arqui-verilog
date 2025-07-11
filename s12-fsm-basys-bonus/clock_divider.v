module clockdivider (
    input  wire        in_clk,
    input  wire        reset,    // reset asíncrono, activo alto
    output reg         out_clk
);

    // contador de 25 bits (genera un toggle cada vez que desborda)
    reg [24:0] counter;

    // reset asíncrono + lógica de división
    always @(posedge in_clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            out_clk <= 0;
        end else begin
            counter <= counter + 1;
            if (counter == 0)
                out_clk <= ~out_clk;
        end
    end

endmodule
