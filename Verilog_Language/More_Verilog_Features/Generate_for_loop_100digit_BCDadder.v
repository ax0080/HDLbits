module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    
    wire [98:0] cout_a;
    
    bcd_fadd bcd[99:0] (.a(a), .b(b), .cin({cout_a[98:0], cin}), .cout({cout, cout_a[98:0]}), .sum(sum));

endmodule