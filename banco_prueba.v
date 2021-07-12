`timescale 1ns / 100ps

`include "probador_sistema.v"
`include "sistema.v"
`include "sistema_x.v"

module banco_prueba#(parameter byte=8);
	
	wire clk, reset, finished;
	wire [12*byte-1:0] data_in;
	wire [31:0] nonce_out;
	wire [7:0] target;

/*	sistema sistema(
		// Input
    	.clk (clk),
    	.reset (reset),
    	.data_in (data_in [byte*12-1:0]),
		.target(target[7:0]),
		// Output
		.finished(finished),
		.nonce_out(nonce_out[31:0]));
*/

	sistema_x sistema_x(
		// Input
    	.clk (clk),
    	.reset (reset),
    	.data_in (data_in [byte*12-1:0]),
		.target(target[7:0]),
		// Output
		.finished(finished),
		.nonce_out(nonce_out[31:0]));

	probador_sistema probador_sistema(			   
        // Input 
        .clk (clk),
        .reset (reset),
		.data_in (data_in [byte*12-1:0]),
		.target(target[7:0]),
		// Output
		.finished(finished),
		.nonce_out(nonce_out[31:0]));

endmodule
