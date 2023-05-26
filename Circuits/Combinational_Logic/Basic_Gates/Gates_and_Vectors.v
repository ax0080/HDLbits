module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );
    
    assign out_both = {&in[3:2], &in[2:1], &in[1:0]};
    assign out_any = {|in[3:2], |in[2:1], |in[1:0]};
    assign out_different = {(in[3] ^ in[0]), ^in[3:2], ^in[2:1], ^in[1:0]};

endmodule