module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c;
    add16 add16_1(.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(c));
    add16 add16_2(.a(a[31:16]), .b(b[31:16]), .cin(c), .sum(sum[31:16]), .cout());
endmodule
/*
module add16( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    wire [14:0] c;
    add1 a0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c[0]));
    genvar i;
    generate
        for(i=1; i<15; i=i+1) begin: gen_add1
            add1_a1_14(.a(a[i]), .b(b[i]), .cin(c[i-1]), .sum(sum[i]), .cout(c[i]));
        end
    endgenerate
    add1 a15(.a(a[15]), .b(b[15]), .cin(cout), .sum(sum[15]), .cout(cout));
    
endmodule
*/
module add1 ( input a, input b, input cin, output sum, output cout );
	
    assign sum = a^b^cin;  
    assign cout = a&b | a&cin | b&cin;

endmodule