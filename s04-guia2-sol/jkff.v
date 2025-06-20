module jkff (
    input clk,
    input reset,
    input j,
    input k,
    output reg q
);
  
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;  // Reset the output to 0
        else begin
            if (j == 0 && k == 0)
                q <= q;     // No change
            else if (j == 0 && k == 1)
                q <= 0;     // Reset
            else if (j == 1 && k == 0)
                q <= 1;     // Set
            else if (j == 1 && k == 1)
                q <= ~q;    // Toggle
        end
    end

endmodule