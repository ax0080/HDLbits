module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
); 
    //sop
    assign out_sop = (c & d) | (~a & ~b & c);
    
    //pos
    assign out_pos = c & (~b | d) & (~a | d);

endmodule