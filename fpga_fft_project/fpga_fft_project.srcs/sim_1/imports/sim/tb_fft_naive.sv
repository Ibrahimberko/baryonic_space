`timescale 1ns / 1ps

module tb_fft_naive;

    localparam int FFT_LEN         = 256;
    localparam int DATA_WIDTH      = 12;
    localparam int AXIS_LANE_WIDTH = 16;
    localparam int AXIS_DATA_WIDTH = 32;
    localparam int INDEX_WIDTH     = 8;

    localparam time CLK_PERIOD = 5ns; // 200 MHz

    logic aclk = 1'b0;
    logic aresetn = 1'b0;

    logic                       s_tvalid;
    wire                        s_tready;
    logic [AXIS_DATA_WIDTH-1:0] s_tdata;
    logic                       s_tlast;

    wire                        m_tvalid;
    logic                       m_tready;
    wire [AXIS_DATA_WIDTH-1:0]  m_tdata;
    wire [INDEX_WIDTH-1:0]      m_tuser;
    wire                        m_tlast;

    wire                        abs_sq_valid;
    wire [2*DATA_WIDTH:0]       abs_sq_power;
    wire                        peak_valid;
    wire [INDEX_WIDTH-1:0]      peak_index;
    wire [2*DATA_WIDTH:0]       peak_power;

    wire event_frame_started;
    wire event_tlast_unexpected;
    wire event_tlast_missing;
    wire event_status_channel_halt;
    wire event_data_in_channel_halt;
    wire event_data_out_channel_halt;

    logic [DATA_WIDTH-1:0] tone_re [0:FFT_LEN-1];
    logic [DATA_WIDTH-1:0] tone_im [0:FFT_LEN-1];
    string mem_dir;

    always #(CLK_PERIOD/2) aclk = ~aclk;

    fft_naive_top #(
        .FFT_LEN(FFT_LEN),
        .DATA_WIDTH(DATA_WIDTH),
        .AXIS_LANE_WIDTH(AXIS_LANE_WIDTH),
        .AXIS_DATA_WIDTH(AXIS_DATA_WIDTH),
        .INDEX_WIDTH(INDEX_WIDTH),
        .FFT_CONFIG_TDATA(16'h5555)
    ) dut (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axis_data_tvalid(s_tvalid),
        .s_axis_data_tready(s_tready),
        .s_axis_data_tdata(s_tdata),
        .s_axis_data_tlast(s_tlast),
        .m_axis_data_tvalid(m_tvalid),
        .m_axis_data_tready(m_tready),
        .m_axis_data_tdata(m_tdata),
        .m_axis_data_tuser(m_tuser),
        .m_axis_data_tlast(m_tlast),
        .abs_sq_valid(abs_sq_valid),
        .abs_sq_power(abs_sq_power),
        .peak_valid(peak_valid),
        .peak_index(peak_index),
        .peak_power(peak_power),
        .event_frame_started(event_frame_started),
        .event_tlast_unexpected(event_tlast_unexpected),
        .event_tlast_missing(event_tlast_missing),
        .event_status_channel_halt(event_status_channel_halt),
        .event_data_in_channel_halt(event_data_in_channel_halt),
        .event_data_out_channel_halt(event_data_out_channel_halt)
    );

    function automatic [AXIS_DATA_WIDTH-1:0] pack_complex_sample(
        input logic [DATA_WIDTH-1:0] real_part,
        input logic [DATA_WIDTH-1:0] imag_part
    );
        pack_complex_sample = {
            {(AXIS_LANE_WIDTH-DATA_WIDTH){1'b0}},
            imag_part,
            {(AXIS_LANE_WIDTH-DATA_WIDTH){1'b0}},
            real_part
        };
    endfunction

    task automatic load_tone(input string path);
        int fd;
        int code;
        int i;
        logic [DATA_WIDTH-1:0] re_tmp;
        logic [DATA_WIDTH-1:0] im_tmp;
        begin
            fd = $fopen(path, "r");
            if (fd == 0) begin
                $fatal(1, "Could not open tone file: %s", path);
            end

            for (i = 0; i < FFT_LEN; i++) begin
                code = $fscanf(fd, "%h %h\n", re_tmp, im_tmp);
                if (code != 2) begin
                    $fatal(1, "Bad tone file format at sample %0d in %s", i, path);
                end
                tone_re[i] = re_tmp;
                tone_im[i] = im_tmp;
            end

            $fclose(fd);
        end
    endtask

    task automatic send_loaded_frame(input string label);
        int i;
        begin
            $display("[%0t] Sending %s frame", $time, label);
            for (i = 0; i < FFT_LEN; i++) begin
                @(posedge aclk);
                s_tvalid <= 1'b1;
                s_tdata  <= pack_complex_sample(tone_re[i], tone_im[i]);
                s_tlast  <= (i == FFT_LEN-1);

                while (!s_tready) begin
                    @(posedge aclk);
                end
            end

            @(posedge aclk);
            s_tvalid <= 1'b0;
            s_tdata  <= '0;
            s_tlast  <= 1'b0;
        end
    endtask

    task automatic wait_for_peak(
        input string label,
        input int expected_bin
    );
        int cycles;
        begin
            cycles = 0;
            while (!peak_valid && cycles < 5000) begin
                @(posedge aclk);
                cycles++;
            end

            if (!peak_valid) begin
                $fatal(1, "Timeout waiting for peak for %s", label);
            end

            $display("[%0t] %s peak bin = %0d, expected around %0d, power = %0d",
                     $time, label, peak_index, expected_bin, peak_power);

            if (peak_index !== expected_bin[INDEX_WIDTH-1:0]) begin
                $error("%s peak mismatch: got %0d, expected %0d",
                       label, peak_index, expected_bin);
            end

            @(posedge aclk);
        end
    endtask

    always @(posedge aclk) begin
        if (event_tlast_unexpected) begin
            $error("[%0t] FFT event_tlast_unexpected", $time);
        end
        if (event_tlast_missing) begin
            $error("[%0t] FFT event_tlast_missing", $time);
        end
        if (event_data_in_channel_halt) begin
            $warning("[%0t] FFT event_data_in_channel_halt", $time);
        end
        if (event_data_out_channel_halt) begin
            $warning("[%0t] FFT event_data_out_channel_halt", $time);
        end
    end

    initial begin
        m_tready = 1'b1;
        s_tvalid = 1'b0;
        s_tdata  = '0;
        s_tlast  = 1'b0;

        repeat (10) @(posedge aclk);
        aresetn = 1'b1;
        repeat (20) @(posedge aclk);

        if (!$value$plusargs("MEM_DIR=%s", mem_dir)) begin
            mem_dir = "../mem";
        end

        $display("Using MEM_DIR=%s", mem_dir);

        load_tone({mem_dir, "/tone_12p5MHz.mem"});
        send_loaded_frame("12.5 MHz");
        wait_for_peak("12.5 MHz", 16);

        repeat (30) @(posedge aclk);

        load_tone({mem_dir, "/tone_10MHz.mem"});
        send_loaded_frame("10.0 MHz");
        wait_for_peak("10.0 MHz", 13);

        repeat (50) @(posedge aclk);
        $display("Naive FFT simulation finished.");
        $finish;
    end

endmodule
