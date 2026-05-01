`timescale 1ns / 1ps

module fft_naive_top #(
    parameter integer FFT_LEN          = 256,
    parameter integer DATA_WIDTH       = 12,
    parameter integer AXIS_LANE_WIDTH  = 16,
    parameter integer AXIS_DATA_WIDTH  = 32,
    parameter integer INDEX_WIDTH      = 8,
    parameter [15:0] FFT_CONFIG_TDATA = 16'h5555
) (
    input  wire                         aclk,
    input  wire                         aresetn,

    input  wire                         s_axis_data_tvalid,
    output wire                         s_axis_data_tready,
    input  wire [AXIS_DATA_WIDTH-1:0]   s_axis_data_tdata,
    input  wire                         s_axis_data_tlast,

    output wire                         m_axis_data_tvalid,
    input  wire                         m_axis_data_tready,
    output wire [AXIS_DATA_WIDTH-1:0]   m_axis_data_tdata,
    output wire [INDEX_WIDTH-1:0]       m_axis_data_tuser,
    output wire                         m_axis_data_tlast,

    output wire                         abs_sq_valid,
    output wire [2*DATA_WIDTH:0]        abs_sq_power,

    output wire                         peak_valid,
    output wire [INDEX_WIDTH-1:0]       peak_index,
    output wire [2*DATA_WIDTH:0]        peak_power,

    output wire                         event_frame_started,
    output wire                         event_tlast_unexpected,
    output wire                         event_tlast_missing,
    output wire                         event_status_channel_halt,
    output wire                         event_data_in_channel_halt,
    output wire                         event_data_out_channel_halt
);

    localparam integer POWER_WIDTH = 2 * DATA_WIDTH + 1;

    reg config_tvalid;
    reg config_done;
    wire config_tready;

    wire fft_s_axis_data_tready;
    wire fft_s_axis_data_tvalid = s_axis_data_tvalid & config_done;

    assign s_axis_data_tready = fft_s_axis_data_tready & config_done;

    always @(posedge aclk) begin
        if (!aresetn) begin
            config_tvalid <= 1'b1;
            config_done   <= 1'b0;
        end else begin
            if (config_tvalid && config_tready) begin
                config_tvalid <= 1'b0;
                config_done   <= 1'b1;
            end
        end
    end

    xfft_0 u_xfft_0 (
        .aclk(aclk),
        .aresetn(aresetn),

        .s_axis_config_tdata(FFT_CONFIG_TDATA),
        .s_axis_config_tvalid(config_tvalid),
        .s_axis_config_tready(config_tready),

        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tvalid(fft_s_axis_data_tvalid),
        .s_axis_data_tready(fft_s_axis_data_tready),
        .s_axis_data_tlast(s_axis_data_tlast),

        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tuser(m_axis_data_tuser),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tlast(m_axis_data_tlast),

        .event_frame_started(event_frame_started),
        .event_tlast_unexpected(event_tlast_unexpected),
        .event_tlast_missing(event_tlast_missing),
        .event_status_channel_halt(event_status_channel_halt),
        .event_data_in_channel_halt(event_data_in_channel_halt),
        .event_data_out_channel_halt(event_data_out_channel_halt)
    );

    wire signed [DATA_WIDTH-1:0] fft_real =
        m_axis_data_tdata[DATA_WIDTH-1:0];
    wire signed [DATA_WIDTH-1:0] fft_imag =
        m_axis_data_tdata[AXIS_LANE_WIDTH + DATA_WIDTH - 1:AXIS_LANE_WIDTH];

    assign abs_sq_valid = m_axis_data_tvalid & m_axis_data_tready;

    abs_sq #(
        .DATA_WIDTH(DATA_WIDTH),
        .OUT_WIDTH(POWER_WIDTH)
    ) u_abs_sq (
        .real_in(fft_real),
        .imag_in(fft_imag),
        .power_out(abs_sq_power)
    );

    peak_detector #(
        .FFT_LEN(FFT_LEN),
        .INDEX_WIDTH(INDEX_WIDTH),
        .POWER_WIDTH(POWER_WIDTH)
    ) u_peak_detector (
        .aclk(aclk),
        .aresetn(aresetn),
        .sample_valid(abs_sq_valid),
        .sample_index(m_axis_data_tuser[INDEX_WIDTH-1:0]),
        .sample_power(abs_sq_power),
        .sample_last(m_axis_data_tlast),
        .peak_valid(peak_valid),
        .peak_index(peak_index),
        .peak_power(peak_power)
    );

endmodule
