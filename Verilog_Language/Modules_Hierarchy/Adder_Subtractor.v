module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] xor_b;
    wire c;
    assign xor_b = {32{sub}} ^ b;
    
    add16 a0( .a(a[15:0]), .b(xor_b[15:0]), .cin(sub), .sum(sum[15:0]), .cout(c) );
    add16 a1( .a(a[31:16]), .b(xor_b[31:16]), .cin(c), .sum(sum[31:16]), .cout() );
    
endmodule