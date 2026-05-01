`timescale 1ns / 1ps

module peak_detector #(
    parameter integer MAG_WIDTH   = 25,
    parameter integer INDEX_WIDTH = 8
) (
    input  wire                   clk,
    input  wire                   rst,

    input  wire                   sample_valid,
    input  wire                   frame_start,
    input  wire                   frame_end,
    input  wire [MAG_WIDTH-1:0]   abs_sq,
    input  wire [INDEX_WIDTH-1:0] xk_index,

    output reg  [INDEX_WIDTH-1:0] peak_index,
    output reg  [MAG_WIDTH-1:0]   peak_value,
    output reg                    peak_valid
);

    reg [INDEX_WIDTH-1:0] max_index;
    reg [MAG_WIDTH-1:0]   max_value;

    // The generated Xilinx FFT IP provides xk_index in natural order.
    // A new output frame starts when a valid output sample has xk_index == 0.
    // frame_start is kept in the interface for readability, but the clear
    // condition is intentionally derived from sample_valid && xk_index == 0.
    wire start_of_frame = sample_valid && (xk_index == {INDEX_WIDTH{1'b0}});
    wire end_of_frame   = sample_valid && frame_end;

    always @(posedge clk) begin
        if (rst) begin
            max_index  <= {INDEX_WIDTH{1'b0}};
            max_value  <= {MAG_WIDTH{1'b0}};
            peak_index <= {INDEX_WIDTH{1'b0}};
            peak_value <= {MAG_WIDTH{1'b0}};
            peak_valid <= 1'b0;
        end else begin
            peak_valid <= 1'b0;

            if (start_of_frame) begin
                max_index <= {INDEX_WIDTH{1'b0}};
                max_value <= {MAG_WIDTH{1'b0}};
            end

            if (sample_valid) begin
                if (start_of_frame || (abs_sq > max_value)) begin
                    max_index <= xk_index;
                    max_value <= abs_sq;
                end

                if (end_of_frame) begin
                    peak_valid <= 1'b1;
                    if (start_of_frame || (abs_sq > max_value)) begin
                        peak_index <= xk_index;
                        peak_value <= abs_sq;
                    end else begin
                        peak_index <= max_index;
                        peak_value <= max_value;
                    end
                end
            end
        end
    end

endmodule
