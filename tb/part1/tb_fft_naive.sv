`timescale 1ns / 1ps

// Testbench for fft_naive_top.
//
// Beyond the basic peak-bin check, this TB cross-validates the DUT with three independent mechanisms:
//   A) Parseval-like total energy comparison between the two frames
//   B) Peak dominance ratio (peak / mean) - sinusoid spectra must be peaky
//   C) Sample counting on both AXI streams to catch off-by-one frame errors
//
// MEM_DIR can be overridden from the simulator with +MEM_DIR=<path>.
module tb_fft_naive;

    localparam int FFT_LEN    = 256;
    localparam int DATA_WIDTH = 12;
    localparam int MAG_WIDTH  = (2 * DATA_WIDTH) + 1;
    localparam int IDX_WIDTH  = 8;

    localparam time CLK_PERIOD = 5ns; // 200 MHz

    // Heuristic check thresholds (tuned for these specific tones)
    //   - Energy ratio: total energy of frame 1 vs frame 0 should match within 25%
    //   - Peak dominance: |X(peak)|^2 must be at least 4x the mean bin energy
    localparam real ENERGY_RATIO_TOL   = 0.25;
    localparam int  PEAK_DOMINANCE_MIN = 4;

    logic clk;
    logic rst;

    logic                         in_valid;
    wire                          in_ready;
    logic                         in_last;
    logic signed [DATA_WIDTH-1:0] in_real;
    logic signed [DATA_WIDTH-1:0] in_imag;

    wire [IDX_WIDTH-1:0]  peak_index;
    wire [MAG_WIDTH-1:0]  peak_value;
    wire                  peak_valid;

    wire                  fft_out_valid;
    wire                  fft_out_last;
    wire [IDX_WIDTH-1:0]  fft_xk_index;
    wire [MAG_WIDTH-1:0]  fft_abs_sq;

    // Tone storage - one 256-sample frame per .mem file
    logic [DATA_WIDTH-1:0] tone12_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone12_im [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone10_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone10_im [0:FFT_LEN-1];

    // Captured peak per frame: [0]=12.5 MHz, [1]=10 MHz
    logic [IDX_WIDTH-1:0] detected_index [0:1];
    logic [MAG_WIDTH-1:0] detected_value [0:1];
    int                   peak_count;

    // Captured total energy per frame (sum of |X[k]|^2 over all 256 bins)
    longint frame_energy [0:1];
    int     frame_energy_idx;
    longint running_energy; 
    int     bins_in_frame;

    // AXI sample counters (mechanism C)
    int input_count;
    int output_count;

    string mem_dir;

    fft_naive_top #(
        .DATA_WIDTH(DATA_WIDTH),
        .INDEX_WIDTH(IDX_WIDTH)
    ) dut (
        .clk(clk),
        .rst(rst),
        .in_valid(in_valid),
        .in_ready(in_ready),
        .in_last(in_last),
        .in_real(in_real),
        .in_imag(in_imag),
        .peak_index(peak_index),
        .peak_value(peak_value),
        .peak_valid(peak_valid),
        .fft_out_valid(fft_out_valid),
        .fft_out_last(fft_out_last),
        .fft_xk_index(fft_xk_index),
        .fft_abs_sq(fft_abs_sq)
    );

    // 200 MHz clock
    initial clk = 1'b0;
    always #(CLK_PERIOD / 2) clk = ~clk;

    // ----------------------------------------------------------------------
    // Stimulus task - drive one 256-sample frame, honour AXI backpressure
    // ----------------------------------------------------------------------
    task automatic send_frame(
        input string label,
        input int    frame_num,
        ref   logic [DATA_WIDTH-1:0] real_mem [0:FFT_LEN-1],
        ref   logic [DATA_WIDTH-1:0] imag_mem [0:FFT_LEN-1]
    );
        int i;
        begin
            $display("[%0t] === Frame %0d: Sending frame: %s ===", $time, frame_num, label);
            for (i = 0; i < FFT_LEN; i++) begin
                @(negedge clk);
                in_valid = 1'b1;
                in_last  = (i == FFT_LEN - 1);
                in_real  = real_mem[i];
                in_imag  = imag_mem[i];
                do @(posedge clk); while (!in_ready);
            end
            @(negedge clk);
            in_valid = 1'b0;
            in_last  = 1'b0;
            in_real  = '0;
            in_imag  = '0;
        end
    endtask

    // ----------------------------------------------------------------------
    // Capture peak results as they arrive (one pulse per output frame)
    // ----------------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            peak_count <= 0;
        end else if (peak_valid) begin
            if (peak_count < 2) begin
                detected_index[peak_count] <= peak_index;
                detected_value[peak_count] <= peak_value;
            end
            $display("[%0t] peak[%0d]: index=%0d  value=%0d",
                     $time, peak_count, peak_index, peak_value);
            peak_count <= peak_count + 1;
        end
    end

    // ----------------------------------------------------------------------
    // Bin-range debug: print bins 10..18 with frame label
    // frame_energy_idx tracks which output frame is currently being received
    // ----------------------------------------------------------------------
    always @(posedge clk) begin
        if (fft_out_valid && (fft_xk_index >= 8'd10) && (fft_xk_index <= 8'd18)) begin
            if (frame_energy_idx == 0)
                $display("[%0t] [Frame0 12.5MHz] xk=%0d abs_sq=%0d",
                         $time, fft_xk_index, fft_abs_sq);
            else
                $display("[%0t] [Frame1 10.0MHz] xk=%0d abs_sq=%0d",
                         $time, fft_xk_index, fft_abs_sq);
        end
    end

    // ----------------------------------------------------------------------
    // Mechanism A - total energy accumulation (Parseval-style)
    // Sum |X[k]|^2 over a complete output frame, latch the sum at frame end.
    // ----------------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            running_energy   <= 0;
            bins_in_frame    <= 0;
            frame_energy_idx <= 0;
        end else if (fft_out_valid) begin
            if (fft_xk_index == 0) begin
                running_energy <= fft_abs_sq;
                bins_in_frame  <= 1;
            end else begin
                running_energy <= running_energy + fft_abs_sq;
                bins_in_frame  <= bins_in_frame + 1;
            end

            if (fft_out_last) begin
                if (frame_energy_idx < 2) begin
                    frame_energy[frame_energy_idx] <= running_energy + fft_abs_sq;
                    frame_energy_idx               <= frame_energy_idx + 1;
                end
                $display("[%0t] frame %0d total energy = %0d (bins=%0d)",
                         $time, frame_energy_idx,
                         running_energy + fft_abs_sq, bins_in_frame + 1);
            end
        end
    end

    // ----------------------------------------------------------------------
    // Mechanism C - sample counters on AXI streams
    // ----------------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            input_count  <= 0;
            output_count <= 0;
        end else begin
            if (in_valid && in_ready) begin
                if (in_last) begin
                    if (input_count + 1 != FFT_LEN)
                        $error("Input frame length wrong: tlast on sample %0d (expected %0d)",
                               input_count + 1, FFT_LEN);
                    input_count <= 0;
                end else begin
                    input_count <= input_count + 1;
                end
            end

            if (fft_out_valid) begin
                if (fft_out_last) begin
                    if (output_count + 1 != FFT_LEN)
                        $error("Output frame length wrong: tlast on sample %0d (expected %0d)",
                               output_count + 1, FFT_LEN);
                    output_count <= 0;
                end else begin
                    output_count <= output_count + 1;
                end
            end
        end
    end

    // ----------------------------------------------------------------------
    // Main sequence
    // ----------------------------------------------------------------------
    initial begin
        if (!$value$plusargs("MEM_DIR=%s", mem_dir))
            mem_dir = "../mem";

        $readmemh($sformatf("%s/tone_12p5MHz_re.mem", mem_dir), tone12_re);
        $readmemh($sformatf("%s/tone_12p5MHz_im.mem", mem_dir), tone12_im);
        $readmemh($sformatf("%s/tone_10MHz_re.mem",   mem_dir), tone10_re);
        $readmemh($sformatf("%s/tone_10MHz_im.mem",   mem_dir), tone10_im);

        rst      = 1'b1;
        in_valid = 1'b0;
        in_last  = 1'b0;
        in_real  = '0;
        in_imag  = '0;

        repeat (20) @(posedge clk);
        rst = 1'b0;
        repeat (20) @(posedge clk);

        send_frame("12.5 MHz", 0, tone12_re, tone12_im);
        send_frame("10.0 MHz", 1, tone10_re, tone10_im);

        wait (peak_count >= 2 && frame_energy_idx >= 2);
        repeat (10) @(posedge clk);

        // ------------------------------------------------------------------
        // Final reporting and assertions
        // ------------------------------------------------------------------
        $display("---------------------------------------------------------");
        $display("Frame 0 (12.5 MHz): peak bin=%0d, |X|^2=%0d, total=%0d",
                 detected_index[0], detected_value[0], frame_energy[0]);
        $display("Frame 1 (10.0 MHz): peak bin=%0d, |X|^2=%0d, total=%0d",
                 detected_index[1], detected_value[1], frame_energy[1]);

        if (detected_index[0] !== 8'd16)
            $fatal(1, "12.5 MHz peak mismatch: expected 16, got %0d", detected_index[0]);

        if (detected_index[1] !== 8'd13)
            $fatal(1, "10.0 MHz peak mismatch: expected 13, got %0d", detected_index[1]);

        begin
            real e0, e1, ratio;
            e0 = $itor(frame_energy[0]);
            e1 = $itor(frame_energy[1]);
            ratio = (e0 > e1) ? (e1 / e0) : (e0 / e1);
            $display("Energy ratio (smaller/larger) = %0.3f (tol >= %0.3f)",
                     ratio, 1.0 - ENERGY_RATIO_TOL);
            if (ratio < (1.0 - ENERGY_RATIO_TOL))
                $fatal(1, "Energy mismatch between frames: ratio=%0.3f", ratio);
        end

        begin
            real mean0, mean1, dom0, dom1;
            mean0 = $itor(frame_energy[0]) / FFT_LEN;
            mean1 = $itor(frame_energy[1]) / FFT_LEN;
            dom0  = $itor(detected_value[0]) / mean0;
            dom1  = $itor(detected_value[1]) / mean1;
            $display("Peak dominance: tone0=%0.1fx, tone1=%0.1fx (min=%0d)",
                     dom0, dom1, PEAK_DOMINANCE_MIN);

            if (dom0 < PEAK_DOMINANCE_MIN)
                $fatal(1, "12.5 MHz peak does not dominate: %0.1fx", dom0);
            if (dom1 < PEAK_DOMINANCE_MIN)
                $fatal(1, "10.0 MHz peak does not dominate: %0.1fx", dom1);

            // Sanity: leakage-free tone must dominate more than the leaky one.
            if (dom0 < dom1)
                $error("Unexpected: leakage-free tone is less peaky than leaky one");
        end

        $display("---------------------------------------------------------");
        $display("tb_fft_naive: PASS");
        $finish;
    end

endmodule