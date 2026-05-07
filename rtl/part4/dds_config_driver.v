`timescale 1ns / 1ps

// Converts the PS-visible DDS PINC register into the DDS Compiler streaming
// config handshake. A new config word is sent after reset and after each
// AXI-Lite write to dds_pinc.
module dds_config_driver #(
    parameter integer PINC_WIDTH   = 32,
    parameter [31:0]  DEFAULT_PINC  = 32'd214748365
) (
    input  wire                   clk,
    input  wire                   rst_n,

    input  wire [PINC_WIDTH-1:0]  pinc,
    input  wire                   pinc_wr_pulse,

    output wire [PINC_WIDTH-1:0]  m_axis_config_tdata,
    output reg                    m_axis_config_tvalid,
    input  wire                   m_axis_config_tready,

    output wire                   busy
);

    reg [PINC_WIDTH-1:0] pinc_latched;
    reg                  config_pending;

    assign m_axis_config_tdata = pinc_latched;
    assign busy = config_pending || m_axis_config_tvalid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pinc_latched         <= DEFAULT_PINC[PINC_WIDTH-1:0];
            config_pending       <= 1'b1;
            m_axis_config_tvalid <= 1'b0;
        end else begin
            if (pinc_wr_pulse) begin
                pinc_latched   <= pinc;
                config_pending <= 1'b1;
            end

            if (!m_axis_config_tvalid && config_pending) begin
                m_axis_config_tvalid <= 1'b1;
                config_pending       <= 1'b0;
            end else if (m_axis_config_tvalid && m_axis_config_tready) begin
                m_axis_config_tvalid <= 1'b0;
            end
        end
    end

endmodule
