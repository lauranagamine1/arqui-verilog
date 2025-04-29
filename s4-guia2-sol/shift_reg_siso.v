module dff (
    input clk,
    input reset,  
    input d,   
    output reg q
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 0;  
        else
            q <= d;  
    end

endmodule

module shift_register_siso (
    input clk,
    input reset,
    input s_in,
    output s_out
);
    wire q0, q1, q2;

    dff dff0 (clk,reset,s_in, q0);
    dff dff1 (clk,reset,q0, q1);
    dff dff2 (clk,reset,q1, q2);
    dff dff3 (clk,reset,q2, s_out);

endmodule