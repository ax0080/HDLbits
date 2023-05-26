module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    reg mux_end;
    always @ (posedge clk) begin
        mux_end = (L)? R : (E)? w : Q;
        Q <= mux_end;
    end 

endmodule