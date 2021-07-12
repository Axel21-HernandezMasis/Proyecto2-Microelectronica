module nonce_generator#(parameter byte = 8 )(
    output reg [31:0] nonce, 
    input clk, 
    input reset,
    input success,
    input next);

always @(posedge clk) begin
	if (reset == 0 || success == 1)begin
        nonce <= 0;
    end
  	else begin
        if(next == 1) nonce <= nonce + 1;
        else nonce <= nonce;
    end     
end
endmodule

