// Incluir archivos
/*`include "next_b.v"
`include "nonce_generator.v"
`include "concatenador.v"
`include "micro_hash_ucr.v"
`include "comparador.v"
`include "system_out.v"
*/
module sistema #(parameter byte=8)(
    input clk,
    input reset,
    input [byte*12-1:0]data_in,
    input [7:0] target,
    output  finished,
    output  [31:0] nonce_out);

    // Wires
    wire [byte*12-1:0] next_conc;
    wire [31:0] nonce_gen;
    wire [byte*16-1:0] data_in_micro;
    wire [3*byte-1:0] H;
    wire valid_micro_hash;
    wire valid_comparador;
    wire next;
 

    next_b next_b(
        // Output
        .next_out(next_conc),
        // Input
        .data_in(data_in),
        .reset(reset),
        .clk(clk),
        .finished(finished));

    nonce_generator nonce_generator(
        // Output
        .nonce(nonce_gen),
        // Input
        .clk(clk),
        .reset(reset),
        .success(finished),
        .next(next));

    concatenador concatenador(
        // Output
        .data_out(data_in_micro),
        // Input
        .clk(clk),
        .reset(reset),
        .bloque(next_conc),
        .nonce(nonce_gen));

    micro_hash_ucr micro_hash_ucr(
        // Output
        .h(H),
        .valid_out(valid_micro_hash),
        // Input
        .clk(clk),
        .reset(reset),
        .finished(finished),
        .block(data_in_micro),
        .next(next)
    );

    comparador comparador(
        // Output
        .valid(valid_comparador),
        .next(next),
        // Input
        .clk(clk),
        .reset(reset),
        .valid_hash(valid_micro_hash),
        .h(H),
        .target(target));


    system_out system_out(
        // Output
        .finished(finished),
        .nonce_out(nonce_out),
        // Input
        .clk(clk),
        .reset(reset),
        .valid(valid_comparador),
        .nonce(nonce_gen));

endmodule