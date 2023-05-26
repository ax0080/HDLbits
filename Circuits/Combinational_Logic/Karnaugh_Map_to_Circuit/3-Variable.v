module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    
    //SOP
    //assign out = a | b | c;
    
    //POS
    assign out = ~(~a & ~b & ~c);

endmodule
