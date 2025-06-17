module clockdivider (
    input  wire        in_clk,
    input  wire        reset,     // señal de reset opcional
    output reg         out_clk
);

    parameter DIV_COUNT = 3;  
    reg [3:0] counter;
     
     // reinicio ascinrono
    always @(posedge in_clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            out_clk <= 0;
        end
        else if (counter == DIV_COUNT-1) begin
            counter <= 0;
            out_clk <= ~out_clk;
        end
        else begin
            counter <= counter + 1;
        end
    end

endmodule