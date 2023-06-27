module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] in_d;
    always@(posedge clk)begin
        in_d <= in;
        if(!reset)begin
            for(int i=0; i<32; i=i+1)begin
                out[i] <= (in_d[i] & (~in[i])) ? 1'b1 : out[i];
            end
        end
        else begin
           out <= 32'b0; 
        end
    end

endmodule