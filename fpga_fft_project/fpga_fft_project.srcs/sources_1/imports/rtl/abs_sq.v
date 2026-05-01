`timescale 1ns / 1ps

module abs_sq #(
    parameter integer DATA_WIDTH = 12,
    parameter integer OUT_WIDTH  = 2 * DATA_WIDTH + 1
) (
    input  wire signed [DATA_WIDTH-1:0] real_in,
    input  wire signed [DATA_WIDTH-1:0] imag_in,
    output wire        [OUT_WIDTH-1:0]  power_out
);

    wire signed [2*DATA_WIDTH-1:0] real_sq = real_in * real_in;
    wire signed [2*DATA_WIDTH-1:0] imag_sq = imag_in * imag_in;

    assign power_out = {1'b0, real_sq} + {1'b0, imag_sq};

endmodule
