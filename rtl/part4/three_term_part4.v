// -----------------------------------------------------------------------------
// three_term_part4.v
//
// Frequency-domain Hamming windowing (Part 3 of the Baryonic Space FPGA FFT
// project).
//
// Implements the three-term equivalent of multiplying a time-domain signal by a
// Hamming window. From R. Lyons, "Understanding Digital Signal Processing"
// Eq. 13-11:
//
//     X_three_term(m) = alpha * X(m) - (beta/2) * X(m-1) - (beta/2) * X(m+1)
//
// with alpha = 0.54 and beta = 0.46.
//
// Because the FFT output is 2*pi periodic, the indices m-1 and m+1 are taken
// modulo N (circular wrap: X(-1) = X(N-1), X(N) = X(0)).
//
// Architecture
// ------------
//   1. AXIS-like input port captures one FFT bin per valid clock cycle. The
//      bin index is provided in xk_index_in. The xk_last_in flag marks the
//      last bin of a frame.
//   2. While capturing, the bin pair (re,im) is stored in two W-bit register
//      RAMs (xre_mem, xim_mem) -- 256 entries each map cleanly to distributed
//      RAM on a 7-series part.
//   3. After xk_last_in, the FSM enters the SWEEP state and steps m = 0..N-1.
//      For each m it reads X(m), X(m-1) and X(m+1) (wrapping) and feeds a
//      4-stage pipeline:
//          s0  RAM read addresses driven from m
//          s1  RAM read data registered
//          s2  alpha*X(m) and (beta/2)*(X(m-1)+X(m+1))
//          s3  subtract, round/truncate, register on the AXIS-like output
//   4. xk_last_out is asserted on the bin where m = N-1 (i.e. the final
//      three-term sample of the frame).
//
// Fixed-point handling
// --------------------
// FFT output samples are W-bit signed (default W = 16; the testbench is
// expected to truncate / round the wider FFT IP output back to W bits before
// driving this block, exactly as Part 2 does for the Hamming windowed path).
//
// Coefficients are Q1.15 unsigned magnitudes embedded in 17-bit signed-positive
// constants:
//     ALPHA_Q15 = round(0.54 * 32768) = 17695
//     HBETA_Q15 = round(0.23 * 32768) =  7537   ( = beta/2 )
//
// After the multiply each product is W+17 bits wide (alpha) or W+18 bits wide
// (beta, because the neighbour sum is W+1 bits). We sign-extend alpha to W+18,
// subtract, round-to-nearest by adding 2^14 before the arithmetic shift, and
// return the W-bit rounded result. This Part 4 copy intentionally omits the
// saturation clamp used by Part 3 so the PS/PL hardware build can close timing.
// -----------------------------------------------------------------------------

`timescale 1ns/1ps

module three_term_part4 #(
    parameter integer N         = 256,
    parameter integer LOG2N     = 8,
    parameter integer W         = 16,
    // Q1.15 fixed-point window coefficients (17-bit signed-positive form)
    parameter [16:0]  ALPHA_Q15 = 17'd17695,  // round(0.54 * 2^15)
    parameter [16:0]  HBETA_Q15 = 17'd7537    // round(0.23 * 2^15)  ( beta/2 )
) (
    input  wire                    clk,
    input  wire                    rst_n,

    // ------------ AXIS-like input from the FFT IP ------------
    input  wire signed [W-1:0]     xk_re_in,
    input  wire signed [W-1:0]     xk_im_in,
    input  wire        [LOG2N-1:0] xk_index_in,
    input  wire                    xk_valid_in,
    input  wire                    xk_last_in,

    // ------------ AXIS-like output ------------
    output reg  signed [W-1:0]     xk_re_out,
    output reg  signed [W-1:0]     xk_im_out,
    output reg         [LOG2N-1:0] xk_index_out,
    output reg                     xk_valid_out,
    output reg                     xk_last_out
);

    // -------------------------------------------------------------------------
    // Bin storage. 256 x W bits maps to distributed RAM on a 7-series part.
    // -------------------------------------------------------------------------
    reg signed [W-1:0] xre_mem [0:N-1];
    reg signed [W-1:0] xim_mem [0:N-1];

    // -------------------------------------------------------------------------
    // FSM
    // -------------------------------------------------------------------------
    localparam [1:0] S_CAPTURE = 2'd0;
    localparam [1:0] S_SWEEP   = 2'd1;
    localparam [1:0] S_DONE    = 2'd2;

    reg [1:0]        state;
    reg [LOG2N-1:0]  m;            // sweep counter

    // Pipeline valid / last / index propagation
    reg              vld_s1, vld_s2, vld_s3;
    reg              last_s1, last_s2, last_s3;
    reg [LOG2N-1:0]  m_s1, m_s2, m_s3;

    // Stage 1 RAM read registers
    reg signed [W-1:0] xre_m, xre_mm1, xre_mp1;
    reg signed [W-1:0] xim_m, xim_mm1, xim_mp1;

    // Stage 2 products
    reg signed [W+17:0] prod_alpha_re;
    reg signed [W+17:0] prod_alpha_im;
    reg signed [W+17:0] prod_hbeta_re;
    reg signed [W+17:0] prod_hbeta_im;

    integer i;

    // -------------------------------------------------------------------------
    // Capture phase: write FFT output bins into xre_mem / xim_mem
    // -------------------------------------------------------------------------
    always @(posedge clk) begin
        if (state == S_CAPTURE && xk_valid_in) begin
            xre_mem[xk_index_in] <= xk_re_in;
            xim_mem[xk_index_in] <= xk_im_in;
        end
    end

    // -------------------------------------------------------------------------
    // FSM + sweep counter
    // -------------------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            state <= S_CAPTURE;
            m     <= {LOG2N{1'b0}};
        end else begin
            case (state)
                S_CAPTURE: begin
                    if (xk_valid_in && xk_last_in) begin
                        state <= S_SWEEP;
                        m     <= {LOG2N{1'b0}};
                    end
                end

                S_SWEEP: begin
                    if (m == N-1)
                        state <= S_DONE;
                    m <= m + 1'b1;
                end

                S_DONE: begin
                    // Re-arm whenever a fresh FFT transaction begins.
                    if (xk_valid_in)
                        state <= S_CAPTURE;
                end

                default: state <= S_CAPTURE;
            endcase
        end
    end

    // -------------------------------------------------------------------------
    // Stage 1 : RAM read with circular indexing
    // -------------------------------------------------------------------------
    wire [LOG2N-1:0] m_minus_1 = (m == {LOG2N{1'b0}}) ? (N-1)              : (m - 1'b1);
    wire [LOG2N-1:0] m_plus_1  = (m == N-1)           ? {LOG2N{1'b0}}      : (m + 1'b1);

    always @(posedge clk) begin
        if (!rst_n) begin
            vld_s1   <= 1'b0;
            last_s1  <= 1'b0;
            m_s1     <= {LOG2N{1'b0}};
            xre_m    <= {W{1'b0}};
            xre_mm1  <= {W{1'b0}};
            xre_mp1  <= {W{1'b0}};
            xim_m    <= {W{1'b0}};
            xim_mm1  <= {W{1'b0}};
            xim_mp1  <= {W{1'b0}};
        end else begin
            vld_s1  <= (state == S_SWEEP);
            last_s1 <= (state == S_SWEEP) && (m == N-1);
            m_s1    <= m;

            xre_m   <= xre_mem[m];
            xre_mm1 <= xre_mem[m_minus_1];
            xre_mp1 <= xre_mem[m_plus_1];

            xim_m   <= xim_mem[m];
            xim_mm1 <= xim_mem[m_minus_1];
            xim_mp1 <= xim_mem[m_plus_1];
        end
    end

    // -------------------------------------------------------------------------
    // Stage 2 : multiplies
    //   alpha * X(m)
    //   (beta/2) * ( X(m-1) + X(m+1) )
    //
    // The (W+1)-bit neighbour sum is computed combinationally from the
    // stage-1 registers and registered together with the products.
    // -------------------------------------------------------------------------
    wire signed [W:0] sum_re_neighbors = $signed({xre_mm1[W-1], xre_mm1})
                                       + $signed({xre_mp1[W-1], xre_mp1});
    wire signed [W:0] sum_im_neighbors = $signed({xim_mm1[W-1], xim_mm1})
                                       + $signed({xim_mp1[W-1], xim_mp1});

    always @(posedge clk) begin
        if (!rst_n) begin
            vld_s2        <= 1'b0;
            last_s2       <= 1'b0;
            m_s2          <= {LOG2N{1'b0}};
            prod_alpha_re <= {(W+18){1'b0}};
            prod_alpha_im <= {(W+18){1'b0}};
            prod_hbeta_re <= {(W+18){1'b0}};
            prod_hbeta_im <= {(W+18){1'b0}};
        end else begin
            vld_s2  <= vld_s1;
            last_s2 <= last_s1;
            m_s2    <= m_s1;

            // alpha is unsigned-positive in a 17-bit container -> sign-extend
            // X(m) by one bit so both operands are W+1 / 17 bits and the
            // signed multiply produces W+18-bit results.
            prod_alpha_re <= $signed({xre_m[W-1], xre_m}) * $signed({1'b0, ALPHA_Q15});
            prod_alpha_im <= $signed({xim_m[W-1], xim_m}) * $signed({1'b0, ALPHA_Q15});
            prod_hbeta_re <= sum_re_neighbors             * $signed({1'b0, HBETA_Q15});
            prod_hbeta_im <= sum_im_neighbors             * $signed({1'b0, HBETA_Q15});
        end
    end

    // -------------------------------------------------------------------------
    // Stage 3 : subtract, round-to-nearest, truncate to W bits
    // -------------------------------------------------------------------------
    localparam signed [W+17:0] ROUND_BIAS = (1 <<< 14);  // round-to-nearest

    function signed [W-1:0] round_w;
        input signed [W+17:0] x;
        reg   signed [W+17:0] x_shr;
        begin
            x_shr   = (x + ROUND_BIAS) >>> 15;
            round_w = x_shr[W-1:0];
        end
    endfunction

    wire signed [W+17:0] diff_re = prod_alpha_re - prod_hbeta_re;
    wire signed [W+17:0] diff_im = prod_alpha_im - prod_hbeta_im;

    always @(posedge clk) begin
        if (!rst_n) begin
            vld_s3        <= 1'b0;
            last_s3       <= 1'b0;
            m_s3          <= {LOG2N{1'b0}};
            xk_valid_out  <= 1'b0;
            xk_last_out   <= 1'b0;
            xk_index_out  <= {LOG2N{1'b0}};
            xk_re_out     <= {W{1'b0}};
            xk_im_out     <= {W{1'b0}};
        end else begin
            vld_s3   <= vld_s2;
            last_s3  <= last_s2;
            m_s3     <= m_s2;

            xk_valid_out <= vld_s2;
            xk_last_out  <= last_s2;
            xk_index_out <= m_s2;
            xk_re_out    <= round_w(diff_re);
            xk_im_out    <= round_w(diff_im);
        end
    end

    // -------------------------------------------------------------------------
    // RAM init (sim only) -- avoid X-propagation on the first frame edges.
    // -------------------------------------------------------------------------
    // synthesis translate_off
    initial begin
        for (i = 0; i < N; i = i + 1) begin
            xre_mem[i] = {W{1'b0}};
            xim_mem[i] = {W{1'b0}};
        end
    end
    // synthesis translate_on

endmodule
