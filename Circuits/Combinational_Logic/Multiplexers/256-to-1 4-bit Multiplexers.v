module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    
    wire [3:0] in_tmp[256:0];
    
    genvar i;
    generate
        for(i=0; i<256; i++) begin: gen_data
            assign in_tmp[i] = {in[i*4+3 : i*4]};
        end
    endgenerate
    assign out = in_tmp[sel];
    
endmodule