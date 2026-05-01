`timescale 1ns / 1ps

module tb_fft_naive;

    localparam int FFT_LEN    = 256;
    localparam int DATA_WIDTH = 12;
    localparam int MAG_WIDTH  = (2 * DATA_WIDTH) + 1;
    localparam int IDX_WIDTH  = 8;

    localparam time CLK_PERIOD = 5ns; // 200 MHz

    logic clk;
    logic rst;

    logic                         in_valid;
    wire                          in_ready;
    logic                         in_last;
    logic signed [DATA_WIDTH-1:0] in_real;
    logic signed [DATA_WIDTH-1:0] in_imag;

    wire [IDX_WIDTH-1:0]          peak_index;
    wire [MAG_WIDTH-1:0]          peak_value;
    wire                          peak_valid;

    wire                          fft_out_valid;
    wire                          fft_out_last;
    wire [IDX_WIDTH-1:0]          fft_xk_index;
    wire [MAG_WIDTH-1:0]          fft_abs_sq;

    logic [DATA_WIDTH-1:0] tone12_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone12_im [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone10_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone10_im [0:FFT_LEN-1];

    logic [IDX_WIDTH-1:0] detected_index [0:1];
    logic [MAG_WIDTH-1:0] detected_value [0:1];
    int peak_count;
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

    initial begin
        clk = 1'b0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    task automatic read_tone_file(
        input string path,
        output logic [DATA_WIDTH-1:0] real_mem [0:FFT_LEN-1],
        output logic [DATA_WIDTH-1:0] imag_mem [0:FFT_LEN-1]
    );
        int fd;
        int code;
        int i;
        logic [DATA_WIDTH-1:0] r;
        logic [DATA_WIDTH-1:0] im;
        begin
            fd = $fopen(path, "r");
            if (fd == 0) begin
                $fatal(1, "Cannot open input sample file: %s", path);
            end

            for (i = 0; i < FFT_LEN; i++) begin
                code = $fscanf(fd, "%h %h\n", r, im);
                if (code != 2) begin
                    $fatal(1, "Bad sample format in %s at line %0d", path, i + 1);
                end
                real_mem[i] = r;
                imag_mem[i] = im;
            end

            $fclose(fd);
            $display("Loaded %s", path);
        end
    endtask

    task automatic send_frame(
        input string label,
        input logic [DATA_WIDTH-1:0] real_mem [0:FFT_LEN-1],
        input logic [DATA_WIDTH-1:0] imag_mem [0:FFT_LEN-1]
    );
        int i;
        begin
            $display("[%0t] Sending frame: %s", $time, label);

            for (i = 0; i < FFT_LEN; i++) begin
                // Drive each sample before the active clock edge and hold
                // in_real/in_imag/in_last stable until in_valid && in_ready
                // is observed. This makes the source robust to FFT IP stalls.
                @(negedge clk);
                in_valid = 1'b1;
                in_last  = (i == FFT_LEN-1);
                in_real  = real_mem[i];
                in_imag  = imag_mem[i];

                do begin
                    @(posedge clk);
                end while (!in_ready);
            end

            @(negedge clk);
            in_valid = 1'b0;
            in_last  = 1'b0;
            in_real  = '0;
            in_imag  = '0;
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            peak_count <= 0;
        end else if (peak_valid) begin
            if (peak_count < 2) begin
                detected_index[peak_count] <= peak_index;
                detected_value[peak_count] <= peak_value;
            end

            $display("[%0t] peak_valid[%0d]: index=%0d value=%0d",
                     $time, peak_count, peak_index, peak_value);
            peak_count <= peak_count + 1;
        end
    end

    initial begin
        if (!$value$plusargs("MEM_DIR=%s", mem_dir)) begin
            mem_dir = "../mem";
        end

        rst      = 1'b1;
        in_valid = 1'b0;
        in_last  = 1'b0;
        in_real  = '0;
        in_imag  = '0;

        read_tone_file({mem_dir, "/tone_12p5MHz.mem"}, tone12_re, tone12_im);
        read_tone_file({mem_dir, "/tone_10MHz.mem"}, tone10_re, tone10_im);

        repeat (20) @(posedge clk);
        rst <= 1'b0;
        repeat (20) @(posedge clk);

        send_frame("12.5 MHz", tone12_re, tone12_im);
        send_frame("10.0 MHz", tone10_re, tone10_im);

        wait (peak_count >= 2);
        repeat (5) @(posedge clk);

        $display("Frame 0 detected peak: index=%0d value=%0d",
                 detected_index[0], detected_value[0]);
        $display("Frame 1 detected peak: index=%0d value=%0d",
                 detected_index[1], detected_value[1]);

        if (detected_index[0] !== 8'd16) begin
            $error("12.5 MHz frame peak mismatch: expected 16, got %0d",
                   detected_index[0]);
        end

        if (!((detected_index[1] == 8'd13) || (detected_index[1] == 8'd12))) begin
            $error("10.0 MHz frame peak mismatch: expected 12 or 13, got %0d",
                   detected_index[1]);
        end

        if (detected_index[1] == 8'd13) begin
            $display("10.0 MHz peak is bin 13 as expected for natural order.");
        end else begin
            $display("10.0 MHz peak is bin 12; accepted because the tone is between bins.");
        end

        $display("tb_fft_naive completed.");
        $finish;
    end

endmodule
