module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
 
    wire [7:0] c;
    FA FA0(.a(a[0]), .b(b[0]), .cin(1'b0), .cout(c[0]), .sum(s[0]));
    FA FA1(.a(a[1]), .b(b[1]), .cin(c[0]), .cout(c[1]), .sum(s[1]));
    FA FA2(.a(a[2]), .b(b[2]), .cin(c[1]), .cout(c[2]), .sum(s[2]));
    FA FA3(.a(a[3]), .b(b[3]), .cin(c[2]), .cout(c[3]), .sum(s[3]));
    FA FA4(.a(a[4]), .b(b[4]), .cin(c[3]), .cout(c[4]), .sum(s[4]));
    FA FA5(.a(a[5]), .b(b[5]), .cin(c[4]), .cout(c[5]), .sum(s[5]));
    FA FA6(.a(a[6]), .b(b[6]), .cin(c[5]), .cout(c[6]), .sum(s[6]));
    FA FA7(.a(a[7]), .b(b[7]), .cin(c[6]), .cout(c[7]), .sum(s[7]));
    
    assign overflow = c[6] ^ c[7];

endmodule

module FA( 
    input a, b, cin,
    output cout, sum );
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule