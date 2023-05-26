module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    and and1(out_and, in[3], in[2], in[1], in[0]);
    assign out_or = in[0] | in[1] | in[2] | in[3];
    assign out_xor = ^in;

endmodule