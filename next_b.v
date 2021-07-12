module next_b#(parameter byte=8)(
    output reg [byte*12-1:0] next_out,
    input [byte*12-1:0] data_in, 
    input reset,
    input clk,
    input finished);

reg [byte*12-1:0] data_in_prev;

always @(posedge clk) begin
	if (reset == 0)begin
        next_out <= 0;
    end
  	else begin
        if(finished == 1)begin
            next_out <= data_in;
            data_in_prev <= data_in;
        end
        if (finished==0) begin
            next_out <= data_in_prev;
        end        
    end
end
endmodule