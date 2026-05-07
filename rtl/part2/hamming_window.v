`timescale 1ns / 1ps

// Streaming Hamming-window multiplier for Part 2 .  
// Each complex sample (in_real, in_imag) is multiplied by the
// Hamming coefficient that corresponds to its index inside the current
// 256-sample frame, then re-quantised back to DATA_WIDTH-bit signed and
// forwarded one-for-one to the FFT IP.
//
// Coefficient format (default): Q1.15 signed, 16-bit
//   - All coefficients are non-negative (Hamming is non-negative).
//   - Loaded at elaboration time from COEF_FILE via $readmemh.
//
// Numerical analysis (DATA_WIDTH = 12, COEF_WIDTH = 16, COEF_FRAC = 15)
// ---------------------------------------------------------------------
//   in       : signed 12-bit, in [-2048, +2047]
//   coef     : signed 16-bit, in [0, 32767]   (max = 32767 ≈ 0.99997)
//   prod     : signed 28-bit, |prod| <= 2048 * 32767 = 67_100_416 < 2^27
//   prod_rnd : prod + 2^14   (round-half-up before arithmetic shift)
//   out      : prod_rnd[26:15], signed 12-bit
//
// Magnitude after the >>>15 step is at most 2048, so the result fits in
// 12-bit signed exactly without saturation logic.
//
// AXI-Stream-style handshake
// --------------------------
// The data path is purely combinational, so valid/last/ready are all just
// passed through:
//     out_valid = in_valid
//     out_last  = in_last
//     in_ready  = out_ready
// The internal sample_index counter advances only on a real handshake
// (in_valid && out_ready) and wraps on the in_last sample, so back-pressure
// from the FFT IP keeps the pencere/coef alignment intact.

module hamming_window #(
    parameter integer DATA_WIDTH = 12,
    parameter integer COEF_WIDTH = 16,
    parameter integer COEF_FRAC  = 15,
    parameter integer FRAME_LEN  = 256,
    parameter         COEF_FILE  = "hamming_256.mem"
) (
    input  wire                         clk,
    input  wire                         rst,

    // Input side (from the testbench / upstream)
    input  wire                         in_valid,
    output wire                         in_ready,
    input  wire                         in_last,
    input  wire signed [DATA_WIDTH-1:0] in_real,
    input  wire signed [DATA_WIDTH-1:0] in_imag,

    // Output side (to the FFT IP)
    output wire                         out_valid,
    input  wire                         out_ready,
    output wire                         out_last,
    output wire signed [DATA_WIDTH-1:0] out_real,
    output wire signed [DATA_WIDTH-1:0] out_imag,

    // Optional debug
    output wire [$clog2(FRAME_LEN)-1:0] sample_index_dbg,
    output wire signed [COEF_WIDTH-1:0] coef_dbg
);

    localparam integer IDX_WIDTH  = $clog2(FRAME_LEN);
    localparam integer PROD_WIDTH = DATA_WIDTH + COEF_WIDTH;

    // -------------------------------------------------------------------------
    // Coefficient ROM (loaded once at elaboration / sim start)
    // -------------------------------------------------------------------------
    reg signed [COEF_WIDTH-1:0] hamming_rom [0:FRAME_LEN-1];
    initial begin
        $readmemh(COEF_FILE, hamming_rom);
    end

    // -------------------------------------------------------------------------
    // Sample-index counter — position within the current frame
    //   - Resets to 0 at reset.
    //   - Advances only on accepted handshake.
    //   - Wraps to 0 after the in_last sample of the frame.
    // -------------------------------------------------------------------------
    reg [IDX_WIDTH-1:0] sample_index;

    wire xfer = in_valid & out_ready; // fft_config_done is waiting

    always @(posedge clk) begin
        if (rst) begin
            sample_index <= {IDX_WIDTH{1'b0}};
        end else if (xfer) begin
            if (in_last)
                sample_index <= {IDX_WIDTH{1'b0}};
            else
                sample_index <= sample_index + 1'b1;
        end
    end

    // -------------------------------------------------------------------------
    // Multiply, round, and slice back to DATA_WIDTH-bit signed
    // -------------------------------------------------------------------------
    wire signed [COEF_WIDTH-1:0] coef = hamming_rom[sample_index];

    wire signed [PROD_WIDTH-1:0] prod_real = in_real * coef;
    wire signed [PROD_WIDTH-1:0] prod_imag = in_imag * coef;

    // Round-half-up: add 0.5 in the fractional domain before the shift.
    // (For PROD_WIDTH-wide signed adds, this never overflows.)
    wire signed [PROD_WIDTH-1:0] prod_real_rnd = prod_real + (1 <<< (COEF_FRAC - 1));
    wire signed [PROD_WIDTH-1:0] prod_imag_rnd = prod_imag + (1 <<< (COEF_FRAC - 1));

    // Bit slice equivalent to (prod_rnd >>> COEF_FRAC) truncated to DATA_WIDTH.
    // Safe because |coef| < 1 -> |out| <= |in|, so the high bits above
    // [COEF_FRAC + DATA_WIDTH - 1] are pure sign extension.
    assign out_real = prod_real_rnd[COEF_FRAC + DATA_WIDTH - 1 : COEF_FRAC];
    assign out_imag = prod_imag_rnd[COEF_FRAC + DATA_WIDTH - 1 : COEF_FRAC];

    // -------------------------------------------------------------------------
    // Pass-through handshake
    // -------------------------------------------------------------------------
    assign out_valid = in_valid;
    assign out_last  = in_last;
    assign in_ready  = out_ready;

    // Debug taps
    assign sample_index_dbg = sample_index;
    assign coef_dbg         = coef;

endmodule
