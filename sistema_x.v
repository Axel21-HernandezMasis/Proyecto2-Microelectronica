// Incluir archivos
`include "next_b.v"
`include "nonce_generator.v"
`include "nonce_generator_2.v"
`include "nonce_generator_3.v"
`include "concatenador.v"
`include "concatenador_2.v"
`include "concatenador_3.v"
`include "micro_hash_ucr.v"
`include "micro_hash_ucr_2.v"
`include "micro_hash_ucr_3.v"
`include "comparador.v"
`include "comparador_2.v"
`include "comparador_3.v"
`include "system_out.v"
`include "system_out_2.v"
`include "system_out_3.v"
`include "system_out_universal.v"

module sistema_x #(parameter byte=8)(
    input clk,
    input reset,
    input [byte*12-1:0]data_in,
    input [7:0] target,
    output  finished,
    output  [31:0] nonce_out);

    // Wires
    wire [byte*12-1:0] next_conc;
    wire [31:0] nonce_gen;
    wire [31:0] nonce_gen_2;
    wire [31:0] nonce_gen_3;
    wire [byte*16-1:0] data_in_micro;
    wire [byte*16-1:0] data_in_micro_2;
    wire [byte*16-1:0] data_in_micro_3;
    wire [3*byte-1:0] H;
    wire [3*byte-1:0] H_2;
    wire [3*byte-1:0] H_3;
    wire valid_micro_hash;
    wire valid_micro_hash_2;
    wire valid_micro_hash_3;
    wire valid_comparador;
    wire valid_comparador_2;
    wire valid_comparador_3;
    wire next;
    wire finished_1;
    wire finished_2;
    wire finished_3;
    wire [31:0]nonce_out_1;
    wire [31:0]nonce_out_2;
    wire [31:0]nonce_out_3;
    wire valfinal_1;
    wire valfinal_2;
    wire valfinal_3;   
 

    next_b next_b(
        // Output
        .next_out(next_conc),
        // Input
        .data_in(data_in),
        .reset(reset),
        .clk(clk),
        .finished(finished));
/*******************************************************************************************************************************************************************/
    nonce_generator nonce_generator(
        // Output
        .nonce(nonce_gen),
        // Input
        .clk(clk),
        .reset(reset),
        .success(finished),
        .next(next));


    nonce_generator_2 nonce_generator_2(
        // Output
        .nonce(nonce_gen_2),
        // Input
        .clk(clk),
        .reset(reset),
        .success(finished),
        .next(next));


    nonce_generator_3 nonce_generator_3(
        // Output
        .nonce(nonce_gen_3),
        // Input
        .clk(clk),
        .reset(reset),
        .success(finished),
        .next(next));

/****************************************************************************************************************************************************************/
    concatenador concatenador(
        // Output
        .data_out(data_in_micro),
        // Input
        .clk(clk),
        .reset(reset),
        .bloque(next_conc),
        .nonce(nonce_gen));

    concatenador_2 concatenador_2(
        // Output
        .data_out(data_in_micro_2),
        // Input
        .clk(clk),
        .reset(reset),
        .bloque(next_conc),
        .nonce(nonce_gen_2));


    concatenador_3 concatenador_3(
        // Output
        .data_out(data_in_micro_3),
        // Input
        .clk(clk),
        .reset(reset),
        .bloque(next_conc),
        .nonce(nonce_gen_3));

/*************************************************************************************************************************************************************/
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

    micro_hash_ucr_2 micro_hash_ucr_2(
        // Output
        .h(H_2),
        .valid_out(valid_micro_hash_2),
        // Input
        .clk(clk),
        .reset(reset),
        .finished(finished),
        .block(data_in_micro_2),
        .next(next)
    );


    micro_hash_ucr_3 micro_hash_ucr_3(
        // Output
        .h(H_3),
        .valid_out(valid_micro_hash_3),
        // Input
        .clk(clk),
        .reset(reset),
        .finished(finished),
        .block(data_in_micro_3),
        .next(next)
    );


/**********************************************************************************************************************************************************************/
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
    
    comparador_2 comparador_2(
        // Output
        .valid(valid_comparador_2),
        .next(next),
        // Input
        .clk(clk),
        .reset(reset),
        .valid_hash(valid_micro_hash_2),
        .h(H_2),
        .target(target));

    comparador_3 comparador_3(
        // Output
        .valid(valid_comparador_3),
        .next(next),
        // Input
        .clk(clk),
        .reset(reset),
        .valid_hash(valid_micro_hash_3),
        .h(H_3),
        .target(target));

/**************************************************************************************************************************************************************************/



    system_out system_out(
        // Output
        .finished(finished_1),
        .nonce_out(nonce_out_1),
        .valid_sal(valfinal_1),
        // Input
        .clk(clk),
        .reset(reset),
        .valid(valid_comparador),
        .nonce(nonce_gen));

    system_out_2 system_out_2(
        // Output
        .finished(finished_2),
        .nonce_out(nonce_out_2),
        .valid_sal(valfinal_2),
        // Input
        .clk(clk),
        .reset(reset),
        .valid(valid_comparador_2),
        .nonce(nonce_gen_2)
        );

    system_out_3 system_out_3(
        // Output
        .finished(finished_3),
        .nonce_out(nonce_out_3),
        .valid_sal(valfinal_3),
        // Input
        .clk(clk),
        .reset(reset),
        .valid(valid_comparador_3),
        .nonce(nonce_gen_3)
        );

/**************************************************************************************************************************************************************************/

    system_out_universal system_out_universal(
        // Output
        .finished_universal(finished),
        .nonce_out_universal(nonce_out),

        // Input
        .finished1(finished_1),
        .finished2(finished_2),
        .finished3(finished_3),
        .reset(reset),
        .clk(clk),
        .nonce_out_1(nonce_out_1),
        .nonce_out_2(nonce_out_2),
        .nonce_out_3(nonce_out_3)
         );

endmodule