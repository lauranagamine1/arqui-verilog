module pingpong(
    input  wire        clk,
    input  wire        reset,
    output reg  [0:4]  led
);

    // encoding
    reg [2:0] state, nextstate;

    parameter S0_R = 3'b000,
              S1_R = 3'b001,
              S2_R = 3'b010,
              S3_R = 3'b011,
              S4_R = 3'b100,
              S3_L = 3'b101,
              S2_L = 3'b110,
              S1_L = 3'b111;

    // state register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0_R;
        else
            state <= nextstate;
    end

    // next state logic
    always @(*) begin
        case (state)
            S0_R:  nextstate = S1_R;
            S1_R:  nextstate = S2_R;
            S2_R:  nextstate = S3_R;
            S3_R:  nextstate = S4_R;
            S4_R:  nextstate = S3_L;  // rebote
            S3_L:  nextstate = S2_L;
            S2_L:  nextstate = S1_L;
            S1_L:  nextstate = S0_R;  // rebote en el otro extremo
            default: nextstate = S0_R;
        endcase
    end

    
    always @(*) begin
        case (state)
            S0_R: led = 5'b10000;  // índice 0 (led[0]) encendido
            S1_R: led = 5'b01000;
            S2_R: led = 5'b00100;
            S3_R: led = 5'b00010;
            S4_R: led = 5'b00001;
            S3_L: led = 5'b00010;
            S2_L: led = 5'b00100;
            S1_L: led = 5'b01000;
            default: led = 5'b10000;
        endcase
    end

endmodule
