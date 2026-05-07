`timescale 1ns/1ps

// Testbench for fft_freqwin_top - Part 3 of the Baryonic Space FPGA project.
//
// Frequency-domain Hamming windowing (three-term) is the analytical equivalent
// of time-domain windowing (Part 2). Peak bins must therefore match Part 2:
//   12.5 MHz -> bin 16
//   10.0 MHz -> bin 13
//
// Python note: no additional Python files are needed for Part 3.
// The same mem/ stimulus files generated for Part 1 & 2 are reused here.
//
// MEM_DIR can be overridden from the simulator with +MEM_DIR=<path>.

module tb_fft_freqwin;

    // -----------------------------------------------------------------------
    // Parameters
    // -----------------------------------------------------------------------
    localparam integer N         = 256;
    localparam integer LOG2N     = 8;
    localparam integer IN_W      = 16;
    localparam integer FFT_W     = 12;
    localparam integer ABS_W     = (2 * FFT_W) + 1;

    localparam time CLK_PERIOD   = 5ns;  // 200 MHz

    localparam real ENERGY_RATIO_TOL   = 0.25;
    localparam int  PEAK_DOMINANCE_MIN = 4;

    localparam integer EXP_PEAK_12p5 = 16;
    localparam integer EXP_PEAK_10   = 13;

    // -----------------------------------------------------------------------
    // DUT signals
    // -----------------------------------------------------------------------
    logic                      clk = 1'b0;
    logic                      rst_n = 1'b0;

    logic signed [IN_W-1:0]    din_re;
    logic signed [IN_W-1:0]    din_im;
    logic                      din_valid;
    logic                      din_last;
    wire                       din_ready;

    wire [LOG2N-1:0]           peak_index;
    wire [ABS_W-1:0]           peak_value;
    wire                       peak_valid;

    wire [ABS_W-1:0]           fft_abs_sq;
    wire [LOG2N-1:0]           fft_xk_index;
    wire                       fft_out_valid;
    wire                       fft_out_last;

    // -----------------------------------------------------------------------
    // Tone storage
    // -----------------------------------------------------------------------
    logic signed [IN_W-1:0] tone12_re [0:N-1];
    logic signed [IN_W-1:0] tone12_im [0:N-1];
    logic signed [IN_W-1:0] tone10_re [0:N-1];
    logic signed [IN_W-1:0] tone10_im [0:N-1];

    logic [LOG2N-1:0] detected_index [0:1];
    logic [ABS_W-1:0] detected_value [0:1];
    int               peak_count;

    longint frame_energy [0:1];
    int     frame_energy_idx;
    longint running_energy;
    int     bins_in_frame;

    int input_count;
    int output_count;

    string mem_dir;

    // -----------------------------------------------------------------------
    // Clock
    // -----------------------------------------------------------------------
    always #(CLK_PERIOD/2) clk = ~clk;

    // -----------------------------------------------------------------------
    // DUT
    // -----------------------------------------------------------------------
    fft_freqwin_top #(
        .N      (N),
        .LOG2N  (LOG2N),
        .IN_W   (IN_W),
        .FFT_W  (FFT_W),
        .ABS_W  (ABS_W)
    ) dut (
        .clk                  (clk),
        .rst_n                (rst_n),

        .s_axis_data_tdata_re (din_re),
        .s_axis_data_tdata_im (din_im),
        .s_axis_data_tvalid   (din_valid),
        .s_axis_data_tlast    (din_last),
        .s_axis_data_tready   (din_ready),

        .peak_index_o         (peak_index),
        .peak_value_o         (peak_value),
        .peak_valid_o         (peak_valid),

        .fft_abs_sq           (fft_abs_sq),
        .fft_xk_index         (fft_xk_index),
        .fft_out_valid        (fft_out_valid),
        .fft_out_last         (fft_out_last)
    );

    // -----------------------------------------------------------------------
    // Stimulus task - drive one 256-sample frame, honour AXI backpressure
    // -----------------------------------------------------------------------
    task automatic send_frame(
        input string             label,
        input int                frame_num,
        ref   logic signed [IN_W-1:0] real_mem [0:N-1],
        ref   logic signed [IN_W-1:0] imag_mem [0:N-1]
    );
        int i;
        begin
            $display("[%0t] === Frame %0d: Sending frame: %s ===",
                     $time, frame_num, label);

            for (i = 0; i < N; i++) begin
                @(negedge clk);
                din_valid = 1'b1;
                din_last  = (i == N - 1);
                din_re    = real_mem[i];
                din_im    = imag_mem[i];

                do @(posedge clk); while (!din_ready);
            end

            @(negedge clk);
            din_valid = 1'b0;
            din_last  = 1'b0;
            din_re    = '0;
            din_im    = '0;

            $display("[%0t] === Frame %0d: Input send done ===",
                     $time, frame_num);
        end
    endtask

    // -----------------------------------------------------------------------
    // Capture peak results as they arrive
    // -----------------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
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

    // -----------------------------------------------------------------------
    // Bin-range debug: print bins 10..18 with frame label
    // -----------------------------------------------------------------------
    always @(posedge clk) begin
        if (fft_out_valid && (fft_xk_index >= 8'd10) && (fft_xk_index <= 8'd18)) begin
            if (frame_energy_idx == 0)
                $display("[%0t] [Frame0 12.5MHz freqwin] xk=%0d abs_sq=%0d",
                         $time, fft_xk_index, fft_abs_sq);
            else
                $display("[%0t] [Frame1 10.0MHz freqwin] xk=%0d abs_sq=%0d",
                         $time, fft_xk_index, fft_abs_sq);
        end
    end

    // -----------------------------------------------------------------------
    // Total energy accumulation per output frame
    // -----------------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
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
                         $time,
                         frame_energy_idx,
                         running_energy + fft_abs_sq,
                         bins_in_frame + 1);
            end
        end
    end

    // -----------------------------------------------------------------------
    // Sample counters on AXI streams
    // -----------------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            input_count  <= 0;
            output_count <= 0;
        end else begin
            if (din_valid && din_ready) begin
                if (din_last) begin
                    if (input_count + 1 != N)
                        $error("Input frame length wrong: tlast on sample %0d, expected %0d",
                               input_count + 1, N);
                    input_count <= 0;
                end else begin
                    input_count <= input_count + 1;
                end
            end

            if (fft_out_valid) begin
                if (fft_out_last) begin
                    if (output_count + 1 != N)
                        $error("Output frame length wrong: tlast on sample %0d, expected %0d",
                               output_count + 1, N);
                    output_count <= 0;
                end else begin
                    output_count <= output_count + 1;
                end
            end
        end
    end

    // -----------------------------------------------------------------------
    // Main sequence
    // -----------------------------------------------------------------------
    initial begin
        if (!$value$plusargs("MEM_DIR=%s", mem_dir))
            mem_dir = "../mem";

        $display("Using MEM_DIR=%s", mem_dir);

        $readmemh($sformatf("%s/tone_12p5MHz_re.mem", mem_dir), tone12_re);
        $readmemh($sformatf("%s/tone_12p5MHz_im.mem", mem_dir), tone12_im);
        $readmemh($sformatf("%s/tone_10MHz_re.mem",   mem_dir), tone10_re);
        $readmemh($sformatf("%s/tone_10MHz_im.mem",   mem_dir), tone10_im);

        din_valid = 1'b0;
        din_last  = 1'b0;
        din_re    = '0;
        din_im    = '0;

        repeat (20) @(posedge clk);
        rst_n = 1'b1;
        repeat (20) @(posedge clk);

        // -------------------------------------------------------------------
        // Frame 0
        // -------------------------------------------------------------------
        send_frame("12.5 MHz freqwin", 0, tone12_re, tone12_im);

        // Part 3 uses a single-buffer three_term stage:
        // first it captures a full FFT frame, then it sweeps 256 bins.
        // Therefore, do not send Frame 1 until Frame 0 has produced its peak.
        wait (peak_count >= 1 && frame_energy_idx >= 1);
        repeat (20) @(posedge clk);

        // -------------------------------------------------------------------
        // Frame 1
        // -------------------------------------------------------------------
        send_frame("10.0 MHz freqwin", 1, tone10_re, tone10_im);

        wait (peak_count >= 2 && frame_energy_idx >= 2);
        repeat (10) @(posedge clk);

        // -------------------------------------------------------------------
        // Final reporting and assertions
        // -------------------------------------------------------------------
        $display("---------------------------------------------------------");
        $display("Frame 0 (12.5 MHz freqwin): peak bin=%0d, |X|^2=%0d, total=%0d",
                 detected_index[0], detected_value[0], frame_energy[0]);
        $display("Frame 1 (10.0 MHz freqwin): peak bin=%0d, |X|^2=%0d, total=%0d",
                 detected_index[1], detected_value[1], frame_energy[1]);

        if (detected_index[0] !== EXP_PEAK_12p5[LOG2N-1:0])
            $fatal(1, "12.5 MHz freqwin peak mismatch: expected %0d, got %0d",
                   EXP_PEAK_12p5, detected_index[0]);

        if (detected_index[1] !== EXP_PEAK_10[LOG2N-1:0])
            $fatal(1, "10.0 MHz freqwin peak mismatch: expected %0d, got %0d",
                   EXP_PEAK_10, detected_index[1]);

        begin
            real e0, e1, ratio;
            e0 = $itor(frame_energy[0]);
            e1 = $itor(frame_energy[1]);
            ratio = (e0 > e1) ? (e1 / e0) : (e0 / e1);

            $display("Energy ratio (smaller/larger) = %0.3f, required >= %0.3f",
                     ratio, 1.0 - ENERGY_RATIO_TOL);

            if (ratio < (1.0 - ENERGY_RATIO_TOL))
                $fatal(1, "Energy mismatch between freqwin frames: ratio=%0.3f", ratio);
        end

        begin
            real mean0, mean1, dom0, dom1;
            mean0 = $itor(frame_energy[0]) / N;
            mean1 = $itor(frame_energy[1]) / N;
            dom0  = $itor(detected_value[0]) / mean0;
            dom1  = $itor(detected_value[1]) / mean1;

            $display("Peak dominance: tone0=%0.1fx, tone1=%0.1fx, min=%0d",
                     dom0, dom1, PEAK_DOMINANCE_MIN);

            if (dom0 < PEAK_DOMINANCE_MIN)
                $fatal(1, "12.5 MHz freqwin peak does not dominate: %0.1fx", dom0);

            if (dom1 < PEAK_DOMINANCE_MIN)
                $fatal(1, "10.0 MHz freqwin peak does not dominate: %0.1fx", dom1);

            $display("NOTE: compare freqwin dom1 (%0.1fx) vs naive/windowed dom1 in the report.",
                     dom1);
        end

        $display("---------------------------------------------------------");
        $display("tb_fft_freqwin: PASS");
        $finish;
    end

    // -----------------------------------------------------------------------
    // Watchdog
    // -----------------------------------------------------------------------
    initial begin
        // The FFT IP is configured as Pipelined Streaming I/O.
        // The log timestamps are simulator time units; observed latency is in
        // microseconds, not milliseconds.
        // This timeout is intentionally generous only to catch FSM hangs.
        #500_000ns;
        $display("tb_fft_freqwin: FAIL (watchdog timeout)");
        $finish;
    end

endmodule