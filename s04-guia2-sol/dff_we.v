module dff_we (
    input clk,
    input reset,
    input we,  
    input d,   
    output reg q
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;  
        else if (we)
            q <= d;  
    end

endmodule