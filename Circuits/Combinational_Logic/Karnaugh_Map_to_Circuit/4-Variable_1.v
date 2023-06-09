module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    
    //SOP
    //assign out = (~a & ~d) | (~b & ~c) | (~a & b & c) | (a & c & d) | (b & c & d) | (a & ~b & d);

    //POS
    assign out = (a | b |  ~c | ~d) & (~a | ~b | c) & (~b | c | ~d) & (~a | ~c | d);
    
endmodule