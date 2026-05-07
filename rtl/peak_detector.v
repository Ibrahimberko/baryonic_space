`timescale 1ns / 1ps

// Scans one FFT output frame and latches the bin with the highest
// magnitude-squared value.
// peak_valid pulses for one cycle at frame end;
// peak_index and peak_value remain registered until the next frame result.

module peak_detector #(
    parameter integer MAG_WIDTH   = 25,
    parameter integer INDEX_WIDTH = 8
) (
    input  wire                   clk,
    input  wire                   rst,

    input  wire                   sample_valid,  // FFT output handshake
    input  wire                   frame_end,     // high on the last valid sample of a frame
    input  wire [MAG_WIDTH-1:0]   abs_sq,        // magnitude-squared of the current bin
    input  wire [INDEX_WIDTH-1:0] xk_index,      // natural-order bin index from FFT IP

    output reg  [INDEX_WIDTH-1:0] peak_index,
    output reg  [MAG_WIDTH-1:0]   peak_value,
    output reg                    peak_valid     // one-cycle pulse when peak_index/value are valid
);

    reg [INDEX_WIDTH-1:0] max_index;
    reg [MAG_WIDTH-1:0]   max_value;

    // xk_index == 0 marks the first bin of a new output frame
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

            if (sample_valid) begin
                // Track the running maximum within the frame.
                // start_of_frame initialises the tracker with the first bin
                // (non-blocking semantics: max_value resets *after* this cycle,
                // so the first-sample comparison uses the old max — the OR
                // forces capture regardless of value).
                if (start_of_frame || abs_sq > max_value) begin
                    max_index <= xk_index;
                    max_value <= abs_sq;
                end

                // On the last sample, latch the winner as the output.
                if (end_of_frame) begin
                    peak_valid <= 1'b1;
                    if (abs_sq > max_value) begin
                        // Last bin beats everything seen so far
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
