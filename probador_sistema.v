module probador_sistema #(parameter byte = 8,parameter i=0)( 
	output reg clk,
	output reg reset,
    output reg [byte*12-1:0] data_in,
	output reg [7:0] target,
	input finished,
	input [31:0] nonce_out);

	initial begin
		$dumpfile("system.vcd");
		$dumpvars;
		
		// Inicializacion de variables
		reset = 0;
		data_in = 0;

		@(posedge clk);		
			reset = 0;
			data_in = 0;

		@(posedge clk);
		 target <= 150;
		 data_in <= 'h397d9f2f40ca9e6c6b1f3324;		

		// Repite 8 veces
			
		//	block <= 0;


		@(posedge clk);
		
		// Repite 8 veces
			
			reset <= 1;
			
			//block <='h3c87edfd24331f6b6c9eca402f9f7d39;
		@(posedge clk);
			data_in  <= 'h3c87edfd24331f6b6c9eca40;

			

			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			@(posedge clk);
		
		// Repite 8 veces
			
			reset <= 1;
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
		
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(200)begin
				@(posedge clk);
				reset <= 1;
			end
			repeat(70000)begin
				@(posedge clk);
				reset <= 1;
			end
		



		$finish;			// Termina de almacenar se�ales
		//end
end
	initial	begin
		clk 	<= 0;			// Valor inicial al reloj, sino siempre ser� indeterminado
	
	end
	always  begin
	  		#310 clk 		<= ~clk;		// Hace "toggle"
	end


 
		 
	

endmodule
