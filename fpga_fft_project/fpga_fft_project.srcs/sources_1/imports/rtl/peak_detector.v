`timescale 1ns / 1ps

module peak_detector #(
    parameter integer FFT_LEN     = 256,
    parameter integer INDEX_WIDTH = 8,
    parameter integer POWER_WIDTH = 25
) (
    input  wire                   aclk,
    input  wire                   aresetn,

    input  wire                   sample_valid,
    input  wire [INDEX_WIDTH-1:0] sample_index,
    input  wire [POWER_WIDTH-1:0] sample_power,
    input  wire                   sample_last,

    output reg                    peak_valid,
    output reg  [INDEX_WIDTH-1:0] peak_index,
    output reg  [POWER_WIDTH-1:0] peak_power
);

    reg [INDEX_WIDTH-1:0] best_index;
    reg [POWER_WIDTH-1:0] best_power;

    always @(posedge aclk) begin
        if (!aresetn) begin
            best_index <= {INDEX_WIDTH{1'b0}};
            best_power <= {POWER_WIDTH{1'b0}};
            peak_valid <= 1'b0;
            peak_index <= {INDEX_WIDTH{1'b0}};
            peak_power <= {POWER_WIDTH{1'b0}};
        end else begin
            peak_valid <= 1'b0;

            if (sample_valid) begin
                if ((sample_index == {INDEX_WIDTH{1'b0}}) ||
                    (sample_power > best_power)) begin
                    best_index <= sample_index;
                    best_power <= sample_power;
                end

                if (sample_last) begin
                    peak_valid <= 1'b1;
                    if (sample_power > best_power) begin
                        peak_index <= sample_index;
                        peak_power <= sample_power;
                    end else begin
                        peak_index <= best_index;
                        peak_power <= best_power;
                    end
                end
            end
        end
    end

endmodule
