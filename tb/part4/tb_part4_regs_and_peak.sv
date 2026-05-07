`timescale 1ns/1ps

module tb_part4_regs_and_peak;

    localparam int INDEX_WIDTH = 8;
    localparam int MAG_WIDTH   = 25;

    logic clk = 1'b0;
    logic rst_n = 1'b0;

    always #2.5ns clk = ~clk; // 200 MHz

    logic [3:0]  awaddr;
    logic        awvalid;
    wire         awready;
    logic [31:0] wdata;
    logic [3:0]  wstrb;
    logic        wvalid;
    wire         wready;
    wire [1:0]   bresp;
    wire         bvalid;
    logic        bready;
    logic [3:0]  araddr;
    logic        arvalid;
    wire         arready;
    wire [31:0]  rdata;
    wire [1:0]   rresp;
    wire         rvalid;
    logic        rready;

    wire [31:0] dds_pinc;
    wire        dds_pinc_wr_pulse;

    logic [MAG_WIDTH-1:0]   abs_sq;
    logic                   sample_valid;
    logic                   frame_end;
    logic [INDEX_WIDTH-1:0] xk_index;
    wire [INDEX_WIDTH-1:0]  peak_index;
    wire [MAG_WIDTH-1:0]    peak_value;
    wire                    peak_valid;

    peak_detector #(
        .MAG_WIDTH  (MAG_WIDTH),
        .INDEX_WIDTH(INDEX_WIDTH)
    ) u_peak_detector (
        .clk         (clk),
        .rst         (~rst_n),
        .sample_valid(sample_valid),
        .frame_end   (frame_end),
        .abs_sq      (abs_sq),
        .xk_index    (xk_index),
        .peak_index  (peak_index),
        .peak_value  (peak_value),
        .peak_valid  (peak_valid)
    );

    part4_axi_lite_regs #(
        .INDEX_WIDTH(INDEX_WIDTH),
        .MAG_WIDTH  (MAG_WIDTH)
    ) u_regs (
        .s_axi_aclk       (clk),
        .s_axi_aresetn    (rst_n),
        .s_axi_awaddr     (awaddr),
        .s_axi_awvalid    (awvalid),
        .s_axi_awready    (awready),
        .s_axi_wdata      (wdata),
        .s_axi_wstrb      (wstrb),
        .s_axi_wvalid     (wvalid),
        .s_axi_wready     (wready),
        .s_axi_bresp      (bresp),
        .s_axi_bvalid     (bvalid),
        .s_axi_bready     (bready),
        .s_axi_araddr     (araddr),
        .s_axi_arvalid    (arvalid),
        .s_axi_arready    (arready),
        .s_axi_rdata      (rdata),
        .s_axi_rresp      (rresp),
        .s_axi_rvalid     (rvalid),
        .s_axi_rready     (rready),
        .dds_pinc         (dds_pinc),
        .dds_pinc_wr_pulse(dds_pinc_wr_pulse),
        .peak_index       (peak_index),
        .peak_value       (peak_value),
        .peak_valid       (peak_valid)
    );

    task automatic axi_write(input logic [3:0] addr, input logic [31:0] data);
        begin
            @(negedge clk);
            awaddr  = addr;
            wdata   = data;
            wstrb   = 4'hf;
            awvalid = 1'b1;
            wvalid  = 1'b1;
            bready  = 1'b1;

            do @(posedge clk); while (!(awready && wready));

            @(negedge clk);
            awvalid = 1'b0;
            wvalid  = 1'b0;

            do @(posedge clk); while (!bvalid);
            if (bresp !== 2'b00)
                $fatal(1, "AXI write response error: %b", bresp);

            @(negedge clk);
            bready = 1'b0;
        end
    endtask

    task automatic axi_read(input logic [3:0] addr, output logic [31:0] data);
        begin
            @(negedge clk);
            araddr  = addr;
            arvalid = 1'b1;
            rready  = 1'b1;

            do @(posedge clk); while (!arready);

            @(negedge clk);
            arvalid = 1'b0;

            do @(posedge clk); while (!rvalid);
            if (rresp !== 2'b00)
                $fatal(1, "AXI read response error: %b", rresp);
            data = rdata;

            @(negedge clk);
            rready = 1'b0;
        end
    endtask

    task automatic send_bin(input logic [INDEX_WIDTH-1:0] index,
                            input logic [MAG_WIDTH-1:0] magnitude,
                            input logic last);
        begin
            @(negedge clk);
            xk_index     = index;
            abs_sq       = magnitude;
            sample_valid = 1'b1;
            frame_end    = last;
            @(negedge clk);
            sample_valid = 1'b0;
            frame_end    = 1'b0;
            abs_sq       = '0;
            xk_index     = '0;
        end
    endtask

    initial begin
        logic [31:0] rd;

        awaddr       = '0;
        awvalid      = 1'b0;
        wdata        = '0;
        wstrb        = 4'h0;
        wvalid       = 1'b0;
        bready       = 1'b0;
        araddr       = '0;
        arvalid      = 1'b0;
        rready       = 1'b0;
        abs_sq       = '0;
        sample_valid = 1'b0;
        frame_end    = 1'b0;
        xk_index     = '0;

        repeat (5) @(posedge clk);
        rst_n = 1'b1;
        repeat (3) @(posedge clk);

        axi_write(4'h0, 32'h0ccc_cccd);
        axi_read(4'h0, rd);
        if (rd !== 32'h0ccc_cccd)
            $fatal(1, "DDS PINC readback mismatch: got 0x%08x", rd);

        send_bin(8'd0, 25'd10, 1'b0);
        send_bin(8'd1, 25'd50, 1'b0);
        send_bin(8'd2, 25'd90, 1'b0);
        send_bin(8'd3, 25'd80, 1'b1);

        repeat (3) @(posedge clk);
        axi_read(4'h4, rd);
        if (rd[8] !== 1'b1 || rd[7:0] !== 8'd2)
            $fatal(1, "Peak status mismatch: got 0x%08x", rd);

        axi_read(4'h8, rd);
        if (rd !== 32'd90)
            $fatal(1, "Peak value mismatch: got %0d", rd);

        axi_write(4'h4, 32'h0000_0100);
        axi_read(4'h4, rd);
        if (rd[8] !== 1'b0 || rd[7:0] !== 8'd2)
            $fatal(1, "Peak valid clear mismatch: got 0x%08x", rd);

        $display("tb_part4_regs_and_peak: PASS");
        $finish;
    end

    initial begin
        #100_000ns;
        $fatal(1, "tb_part4_regs_and_peak: watchdog timeout");
    end

endmodule
