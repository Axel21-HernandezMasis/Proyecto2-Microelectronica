module comparador_3(
    output reg valid, 
    output reg next,
    input valid_hash,
    input clk, 
    input reset,
    input [23:0] h,
    input [7:0] target
    );

always @(posedge clk) begin
	if (reset == 0)begin
        valid <= 0;
        next <= 0;
    end
  	else begin
        if (valid_hash==1) begin
            if((h[23:16] < target) && (h[15:8] < target)) begin
                valid <= 1;
                next <= 0;
            end
            else begin
                valid <= 0;
                next <= 1;
            end
        end
        else begin
          valid <= 0;
          next <= 0;
        end     
    end
end
endmodule