`timescale 1ns / 1ps

module abs_sq #(
    parameter integer IN_WIDTH  = 12,
    parameter integer OUT_WIDTH = (2 * IN_WIDTH) + 1
) (
    input  wire signed [IN_WIDTH-1:0] real_in,
    input  wire signed [IN_WIDTH-1:0] imag_in,
    output wire        [OUT_WIDTH-1:0] abs_sq_out
);

    wire [2*IN_WIDTH-1:0] real_sq;
    wire [2*IN_WIDTH-1:0] imag_sq;

    assign real_sq = real_in * real_in;
    assign imag_sq = imag_in * imag_in;

    assign abs_sq_out = {1'b0, real_sq} + {1'b0, imag_sq};

endmodule
