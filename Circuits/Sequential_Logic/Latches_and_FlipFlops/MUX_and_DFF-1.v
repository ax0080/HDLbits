module top_module (
	input clk,
	input L,
	input r_in,
	input q_in,
	output reg Q);
    
    reg mux_out;
    always @ (posedge clk) begin
        
        mux_out = (L)? r_in : q_in;
        Q  <= mux_out;
    end
        
        
        

endmodule