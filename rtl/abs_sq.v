`timescale 1ns / 1ps

// Computes |x|^2 = real^2 + imag^2 for a complex fixed-point sample.
// Both inputs are signed; intermediate products are kept signed so that
// the multiplier correctly handles the most-negative input (-2^(N-1)).
module abs_sq #(
    parameter integer IN_WIDTH  = 12,
    parameter integer OUT_WIDTH = (2 * IN_WIDTH) + 1
) (
    input  wire signed [IN_WIDTH-1:0]  real_in,
    input  wire signed [IN_WIDTH-1:0]  imag_in,
    output wire        [OUT_WIDTH-1:0] abs_sq_out
);

    wire signed [2*IN_WIDTH-1:0] real_sq;
    wire signed [2*IN_WIDTH-1:0] imag_sq;

    assign real_sq = real_in * real_in;
    assign imag_sq = imag_in * imag_in;

    // Squares are always non-negative; zero-extend by one bit for the sum
    assign abs_sq_out = {1'b0, real_sq} + {1'b0, imag_sq};

endmodule
