`timescale 1ns / 1ps

// Testbench for fft_windowed_top - Part 2 of the Baryonic Space FPGA project.
//
// Reads tone data from separate _re.mem / _im.mem files (matching the
// existing mem/ directory layout) and drives them through the windowing+FFT
// pipeline. The Hamming coefficients are loaded by hamming_window.v using
// $readmemh from hamming_256.mem.
//
// Expected observations in the waveform viewer:
//   - 12.5 MHz: peak stays at bin 16 (exact-bin tone, no leakage either way)
//   - 10.0 MHz: peak stays at bin 13, but side-lobe floor in fft_abs_sq
//               drops compared to the unwindowed Part 1 run.
//
// Cross-validation mechanisms (mirroring tb_fft_naive for report comparison):
//   A) Parseval-like total energy comparison between the two frames
//   B) Peak dominance ratio (peak / mean) - windowing must keep the signal peaky
//   C) Sample counting on both AXI streams to catch off-by-one frame errors
//
// MEM_DIR can be overridden from the simulator with +MEM_DIR=<path>.

module tb_fft_windowed;

    localparam int FFT_LEN     = 256;
    localparam int DATA_WIDTH  = 12;
    localparam int INDEX_WIDTH = 8;
    localparam int MAG_WIDTH   = (2 * DATA_WIDTH) + 1;
    localparam time CLK_PERIOD = 5ns;  // 200 MHz

    // Heuristic check thresholds (same as tb_fft_naive for apples-to-apples comparison)
    //   - Energy ratio: total energy of frame 1 vs frame 0 should match within 25%
    //     (Hamming window attenuates overall energy, but both tones are scaled equally)
    //   - Peak dominance: |X(peak)|^2 must be at least 4x the mean bin energy
    localparam real ENERGY_RATIO_TOL   = 0.25;
    localparam int  PEAK_DOMINANCE_MIN = 4;

    logic                          clk = 1'b0;
    logic                          rst = 1'b1;
    logic                          in_valid;
    wire                           in_ready;
    logic                          in_last;
    logic signed [DATA_WIDTH-1:0]  in_real;
    logic signed [DATA_WIDTH-1:0]  in_imag;

    wire [INDEX_WIDTH-1:0]         peak_index;
    wire [MAG_WIDTH-1:0]           peak_value;
    wire                           peak_valid;
    wire                           fft_out_valid;
    wire                           fft_out_last;
    wire [INDEX_WIDTH-1:0]         fft_xk_index;
    wire [MAG_WIDTH-1:0]           fft_abs_sq;


    logic [DATA_WIDTH-1:0] tone12_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone12_im [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone10_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone10_im [0:FFT_LEN-1];

    // Captured peak per frame - [0]=12.5 MHz, [1]=10.0 MHz
    logic [INDEX_WIDTH-1:0] detected_index [0:1];
    logic [MAG_WIDTH-1:0]   detected_value [0:1];
    int                     peak_count;

    // Mechanism A - total energy per frame (Parseval-style)
    longint frame_energy [0:1];
    int     frame_energy_idx;
    longint running_energy;
    int     bins_in_frame;

    // Mechanism C - AXI sample counters
    int input_count;
    int output_count;

    string mem_dir;

    always #(CLK_PERIOD/2) clk = ~clk;

    // ------------------------------------------------------------------
    // DUT instantiation
    // ------------------------------------------------------------------
    fft_windowed_top #(
        .DATA_WIDTH      (DATA_WIDTH),
        .INDEX_WIDTH     (INDEX_WIDTH),
        .FRAME_LEN       (FFT_LEN),
        .COEF_FILE       ("hamming_256.mem"),
        .FFT_CONFIG_TDATA(16'h0155)
    ) dut (
        .clk          (clk),
        .rst          (rst),
        .in_valid     (in_valid),
        .in_ready     (in_ready),
        .in_last      (in_last),
        .in_real      (in_real),
        .in_imag      (in_imag),
        .peak_index   (peak_index),
        .peak_value   (peak_value),
        .peak_valid   (peak_valid),
        .fft_out_valid(fft_out_valid),
        .fft_out_last (fft_out_last),
        .fft_xk_index (fft_xk_index),
        .fft_abs_sq   (fft_abs_sq)
    );

    // ------------------------------------------------------------------
    // Stimulus task - drive one 256-sample frame, honour AXI backpressure
    // ------------------------------------------------------------------
    task automatic send_frame(
        input string label,
        input int    frame_num,
        ref logic [DATA_WIDTH-1:0] real_mem [0:FFT_LEN-1],
        ref logic [DATA_WIDTH-1:0] imag_mem [0:FFT_LEN-1]
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
                do @(posedge clk); while (!in_ready); // Wait until DUT is ready
            end
            @(negedge clk);
            in_valid = 1'b0;
            in_last  = 1'b0;
            in_real  = '0;
            in_imag  = '0;
        end
    endtask

    // ------------------------------------------------------------------
    // Capture peak results as they arrive (one pulse per output frame)
    // ------------------------------------------------------------------
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

    // ------------------------------------------------------------------
    // Bin-range debug: print bins 10..18 with frame label
    // frame_energy_idx tells us which output frame is currently streaming out.
    // This matches tb_fft_naive format for direct side-lobe comparison.
    // ------------------------------------------------------------------
    always @(posedge clk) begin
        if (fft_out_valid && (fft_xk_index >= 8'd10) && (fft_xk_index <= 8'd18)) begin
            if (frame_energy_idx == 0)
                $display("[%0t] [Frame0 12.5MHz windowed] xk=%0d abs_sq=%0d",
                         $time, fft_xk_index, fft_abs_sq);
            else
                $display("[%0t] [Frame1 10.0MHz windowed] xk=%0d abs_sq=%0d",
                         $time, fft_xk_index, fft_abs_sq);
        end
    end

    // ------------------------------------------------------------------
    // Mechanism A - total energy accumulation (Parseval-style)
    // Sum |X[k]|^2 over a complete output frame, latch at frame end.
    // ------------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            running_energy   <= 0;
            bins_in_frame    <= 0;
            frame_energy_idx <= 0;
        end else if (fft_out_valid) begin
            // Reset accumulator at the first bin of a new frame
            if (fft_xk_index == 0) begin
                running_energy <= fft_abs_sq;
                bins_in_frame  <= 1;
            end else begin
                running_energy <= running_energy + fft_abs_sq;
                bins_in_frame  <= bins_in_frame + 1;
            end

            // Latch on the last bin
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

    // ------------------------------------------------------------------
    // Mechanism C - sample counters on AXI streams
    // Catches off-by-one frame errors (e.g. tlast on the wrong sample).
    // ------------------------------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            input_count  <= 0;
            output_count <= 0;
        end else begin
            // Input side: count handshakes, verify tlast on sample 256
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

            // Output side: same check on FFT IP output
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

    // ------------------------------------------------------------------
    // Main sequence
    // ------------------------------------------------------------------
    initial begin
        if (!$value$plusargs("MEM_DIR=%s", mem_dir))
            mem_dir = "../mem";

        $display("Using MEM_DIR=%s", mem_dir);

        $readmemh($sformatf("%s/tone_12p5MHz_re.mem", mem_dir), tone12_re);
        $readmemh($sformatf("%s/tone_12p5MHz_im.mem", mem_dir), tone12_im);
        $readmemh($sformatf("%s/tone_10MHz_re.mem",   mem_dir), tone10_re);
        $readmemh($sformatf("%s/tone_10MHz_im.mem",   mem_dir), tone10_im);

        in_valid = 1'b0;
        in_last  = 1'b0;
        in_real  = '0;
        in_imag  = '0;

        repeat (20) @(posedge clk);
        rst = 1'b0;
        repeat (20) @(posedge clk);

        send_frame("12.5 MHz windowed", 0, tone12_re, tone12_im);
        send_frame("10.0 MHz windowed", 1, tone10_re, tone10_im);

        // Wait for both peaks and both frame energies
        wait (peak_count >= 2 && frame_energy_idx >= 2);
        repeat (10) @(posedge clk);

        // ------------------------------------------------------------------
        // Final reporting and assertions
        // ------------------------------------------------------------------
        $display("---------------------------------------------------------");
        $display("Frame 0 (12.5 MHz windowed): peak bin=%0d, |X|^2=%0d, total=%0d",
                 detected_index[0], detected_value[0], frame_energy[0]);
        $display("Frame 1 (10.0 MHz windowed): peak bin=%0d, |X|^2=%0d, total=%0d",
                 detected_index[1], detected_value[1], frame_energy[1]);

        // ----- Peak-bin check -----------------------------------------------
        if (detected_index[0] !== 8'd16)
            $fatal(1, "12.5 MHz windowed peak mismatch: expected 16, got %0d", detected_index[0]);

        if (detected_index[1] !== 8'd13)
            $fatal(1, "10.0 MHz windowed peak mismatch: expected 13, got %0d", detected_index[1]);

        // ----- Mechanism A: energy conservation between frames ---------------
        // Hamming window reduces total energy uniformly for both tones,
        // so the ratio between the two frames must still be near 1.
        begin
            real e0, e1, ratio;
            e0 = $itor(frame_energy[0]);
            e1 = $itor(frame_energy[1]);
            ratio = (e0 > e1) ? (e1 / e0) : (e0 / e1);
            $display("Energy ratio (smaller/larger) = %0.3f (tol >= %0.3f)",
                     ratio, 1.0 - ENERGY_RATIO_TOL);
            if (ratio < (1.0 - ENERGY_RATIO_TOL))
                $fatal(1, "Energy mismatch between windowed frames: ratio=%0.3f", ratio);
        end

        // ----- Mechanism B: peak dominance ----------------------------------
        // After windowing the 10 MHz tone must become significantly more peaky
        // (less side-lobe energy) compared to the naive case - the defining
        // benefit of windowing. Both tones must still clear the minimum threshold.
        begin
            real mean0, mean1, dom0, dom1;
            mean0 = $itor(frame_energy[0]) / FFT_LEN;
            mean1 = $itor(frame_energy[1]) / FFT_LEN;
            dom0  = $itor(detected_value[0]) / mean0;
            dom1  = $itor(detected_value[1]) / mean1;
            $display("Peak dominance: tone0=%0.1fx, tone1=%0.1fx (min=%0d)",
                     dom0, dom1, PEAK_DOMINANCE_MIN);

            if (dom0 < PEAK_DOMINANCE_MIN)
                $fatal(1, "12.5 MHz windowed peak does not dominate: %0.1fx", dom0);
            if (dom1 < PEAK_DOMINANCE_MIN)
                $fatal(1, "10.0 MHz windowed peak does not dominate: %0.1fx", dom1);

            // Key windowing benefit: 10 MHz tone must be more peaky than in naive TB.
            // Compare dom1 here with naive TB's dom1 in the report.
            $display("NOTE: compare windowed dom1 (%0.1fx) vs naive dom1 to confirm windowing benefit.", dom1);
        end

        $display("---------------------------------------------------------");
        $display("tb_fft_windowed: PASS");
        $finish;
    end

endmodule