module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    wire[4:0] TT = {a, b, c, d, e};
    assign out[24:20] = ~( {5{a}} ^ TT);
    assign out[19:15] = ~( {5{b}} ^ TT);
    assign out[14:10] = ~( {5{c}} ^ TT);
    assign out[9:5] = ~( {5{d}} ^ TT);
    assign out[4:0] = ~({5{e}} ^ TT);

endmodule