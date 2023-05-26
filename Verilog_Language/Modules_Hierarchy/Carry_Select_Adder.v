module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire sel;
    wire [15:0] sum0, sum1;
    add16 alow( .a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(sel) );
    add16 ahigh1( .a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum1[15:0]), .cout() );
    add16 ahigh0( .a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum0[15:0]), .cout() );
    
    assign sum[31:16] =  (sel)? sum1[15:0] : sum0[15:0]; //多工器
endmodule