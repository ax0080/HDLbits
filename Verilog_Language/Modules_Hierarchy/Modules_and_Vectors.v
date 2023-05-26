module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);
    //reg [7:0] q;
    wire[7:0] m0_q, m1_q, m2_q;
    my_dff8 dff8_1(.clk(clk), .d(d), .q(m0_q));
    my_dff8 dff8_2(.clk(clk), .d(m0_q), .q(m1_q));
    my_dff8 dff8_3(.clk(clk), .d(m1_q), .q(m2_q));
    
    always@(*)
        case(sel)
            2'd0 : q=d;
            2'd1 : q=m0_q;
            2'd2 : q=m1_q;
            2'd3 : q=m2_q;
            default q=8'd0;
        endcase

endmodule