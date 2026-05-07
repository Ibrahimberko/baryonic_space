`timescale 1ns / 1ps

// AXI4-Lite register bank for Part 4 PL/PS communication.
//
// This follows the same register-bank idea as the standard Vivado AXI-Lite
// peripheral template:
//   - AW/W handshakes latch a write address and write data
//   - byte strobes update only selected byte lanes
//   - a read-address handshake drives a register read mux
//   - PL-side status can update PS-readable registers independently
//
// The difference is that this block exposes a small semantic register map
// instead of generic slv_reg0..slv_reg7 names.
//
// Register map:
//   0x00 RW    dds_pinc
//   0x04 RO/W1C peak_status {23'b0, peak_valid_sticky, peak_index[7:0]}
//              write bit 8 = 1 to clear peak_valid_sticky
//   0x08 RO    peak_value, zero-extended or truncated to 32 bits
//   0x0c RO    build/info word
module part4_axi_lite_regs #(
    parameter integer ADDR_WIDTH  = 4,
    parameter integer DATA_WIDTH  = 32,
    parameter integer INDEX_WIDTH = 8,
    parameter integer MAG_WIDTH   = 25,
    parameter [31:0]  DEFAULT_DDS_PINC = 32'd214748365,
    parameter [31:0]  BUILD_INFO  = 32'h0004_0001
) (
    input  wire                         s_axi_aclk,
    input  wire                         s_axi_aresetn,

    input  wire [ADDR_WIDTH-1:0]        s_axi_awaddr,
    input  wire                         s_axi_awvalid,
    output wire                         s_axi_awready,

    input  wire [DATA_WIDTH-1:0]        s_axi_wdata,
    input  wire [(DATA_WIDTH/8)-1:0]    s_axi_wstrb,
    input  wire                         s_axi_wvalid,
    output wire                         s_axi_wready,

    output reg  [1:0]                   s_axi_bresp,
    output reg                          s_axi_bvalid,
    input  wire                         s_axi_bready,

    input  wire [ADDR_WIDTH-1:0]        s_axi_araddr,
    input  wire                         s_axi_arvalid,
    output wire                         s_axi_arready,

    output reg  [DATA_WIDTH-1:0]        s_axi_rdata,
    output reg  [1:0]                   s_axi_rresp,
    output reg                          s_axi_rvalid,
    input  wire                         s_axi_rready,

    output reg  [31:0]                  dds_pinc,
    output reg                          dds_pinc_wr_pulse,

    input  wire [INDEX_WIDTH-1:0]       peak_index,
    input  wire [MAG_WIDTH-1:0]         peak_value,
    input  wire                         peak_valid
);

    localparam [ADDR_WIDTH-1:0] ADDR_DDS_PINC    = 4'h0;
    localparam [ADDR_WIDTH-1:0] ADDR_PEAK_STATUS = 4'h4;
    localparam [ADDR_WIDTH-1:0] ADDR_PEAK_VALUE  = 4'h8;
    localparam [ADDR_WIDTH-1:0] ADDR_BUILD_INFO  = 4'hc;

    reg [ADDR_WIDTH-1:0] awaddr_reg;
    reg                  awaddr_valid;
    reg [DATA_WIDTH-1:0] wdata_reg;
    reg [(DATA_WIDTH/8)-1:0] wstrb_reg;
    reg                  wdata_valid;
    reg                  peak_valid_sticky;

    wire write_ready = awaddr_valid && wdata_valid && !s_axi_bvalid;
    assign s_axi_awready = !awaddr_valid && !s_axi_bvalid;
    assign s_axi_wready  = !wdata_valid  && !s_axi_bvalid;
    assign s_axi_arready = !s_axi_rvalid;

    wire accept_aw = s_axi_awready && s_axi_awvalid;
    wire accept_w  = s_axi_wready  && s_axi_wvalid;
    wire accept_ar = s_axi_arready && s_axi_arvalid;
    wire [31:0] peak_value_rd = {{(32-MAG_WIDTH){1'b0}}, peak_value};

    function [DATA_WIDTH-1:0] apply_wstrb;
        input [DATA_WIDTH-1:0] old_value;
        input [DATA_WIDTH-1:0] new_value;
        input [(DATA_WIDTH/8)-1:0] strobe;
        integer i;
        begin
            apply_wstrb = old_value;
            for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
                if (strobe[i])
                    apply_wstrb[(8*i) +: 8] = new_value[(8*i) +: 8];
            end
        end
    endfunction

    always @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            s_axi_bresp        <= 2'b00;
            s_axi_bvalid       <= 1'b0;
            s_axi_rdata        <= {DATA_WIDTH{1'b0}};
            s_axi_rresp        <= 2'b00;
            s_axi_rvalid       <= 1'b0;
            awaddr_reg         <= {ADDR_WIDTH{1'b0}};
            awaddr_valid       <= 1'b0;
            wdata_reg          <= {DATA_WIDTH{1'b0}};
            wstrb_reg          <= {(DATA_WIDTH/8){1'b0}};
            wdata_valid        <= 1'b0;
            dds_pinc           <= DEFAULT_DDS_PINC;
            dds_pinc_wr_pulse  <= 1'b0;
            peak_valid_sticky  <= 1'b0;
        end else begin
            dds_pinc_wr_pulse <= 1'b0;

            if (peak_valid)
                peak_valid_sticky <= 1'b1;

            if (accept_aw) begin
                awaddr_reg   <= s_axi_awaddr;
                awaddr_valid <= 1'b1;
            end

            if (accept_w) begin
                wdata_reg   <= s_axi_wdata;
                wstrb_reg   <= s_axi_wstrb;
                wdata_valid <= 1'b1;
            end

            if (write_ready) begin
                case (awaddr_reg[ADDR_WIDTH-1:0])
                    ADDR_DDS_PINC: begin
                        dds_pinc          <= apply_wstrb(dds_pinc, wdata_reg, wstrb_reg);
                        dds_pinc_wr_pulse <= 1'b1;
                    end
                    ADDR_PEAK_STATUS: begin
                        if (wdata_reg[8])
                            peak_valid_sticky <= 1'b0;
                    end
                    default: begin
                    end
                endcase

                awaddr_valid <= 1'b0;
                wdata_valid  <= 1'b0;
                s_axi_bresp  <= 2'b00;
                s_axi_bvalid <= 1'b1;
            end else if (s_axi_bvalid && s_axi_bready) begin
                s_axi_bvalid <= 1'b0;
            end

            if (accept_ar) begin
                case (s_axi_araddr[ADDR_WIDTH-1:0])
                    ADDR_DDS_PINC:
                        s_axi_rdata <= dds_pinc;
                    ADDR_PEAK_STATUS:
                        s_axi_rdata <= {{(DATA_WIDTH-INDEX_WIDTH-1){1'b0}}, peak_valid_sticky, peak_index};
                    ADDR_PEAK_VALUE:
                        s_axi_rdata <= peak_value_rd;
                    ADDR_BUILD_INFO:
                        s_axi_rdata <= BUILD_INFO;
                    default:
                        s_axi_rdata <= {DATA_WIDTH{1'b0}};
                endcase

                s_axi_rresp  <= 2'b00;
                s_axi_rvalid <= 1'b1;
            end else if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid <= 1'b0;
            end
        end
    end

endmodule
