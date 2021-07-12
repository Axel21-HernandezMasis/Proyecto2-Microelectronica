module concatenador_2#(parameter byte = 8 )(
    input[byte*4-1:0] nonce,
    input [byte*12-1:0]bloque, 
    input clk, 
    input reset,
    output reg [byte*16-1:0]data_out);

always @(posedge clk) begin
    data_out[byte*4-1:0] <= nonce[byte*4-1:0];
    data_out[byte*16-1:byte*4] <= bloque[byte*12-1:0];
end

endmodule