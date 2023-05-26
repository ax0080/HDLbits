module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );

    wire [99:0] c;
    FA FA0[99:0] (.a(a[99:0]), .b(b[99:0]), .cin({c[98:0], cin}), .cout(c[99:0]), .sum(sum[99:0]));
    assign cout = c[99];
    
endmodule

module FA( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule