// ======================= uart_tx.v =======================
// UART TX: 8N1, LSB-first, idle=1
// - Synchronous reset, active-high
// - tx_valid: pulse 1 clock, only asserted when tx_busy=0
// - Baud divider uses rounding to reduce baud error
`timescale 1ns / 1ps

module uart_tx #(
    parameter integer CLK_FREQ_HZ = 100_000_000,
    parameter integer BAUDRATE    = 115200
)(
    input  wire       clk,
    input  wire       rst,        // synchronous reset, active-high
    input  wire       tx_valid,   // 1-cycle pulse request (only accepted when not busy)
    input  wire [7:0] tx_data,
    output reg        tx,         // UART TX line (idle = 1)
    output reg        tx_busy      // 1 while transmitting a frame
);

    // ---------------------------------------------------------
    // clocks per UART bit (rounded): CLK_PER_BIT ? CLK_FREQ_HZ/BAUDRATE
    // ---------------------------------------------------------
    localparam integer CLK_PER_BIT = (BAUDRATE <= 0) ? 1 :
                                     (CLK_FREQ_HZ + (BAUDRATE/2)) / BAUDRATE;

    localparam integer CTR_W = (CLK_PER_BIT <= 1) ? 1 : $clog2(CLK_PER_BIT);

    reg [CTR_W-1:0] clk_ctr    = {CTR_W{1'b0}};
    reg [7:0]       data_latch = 8'h00;
    reg [2:0]       bit_idx    = 3'd0;

    localparam [1:0] ST_IDLE  = 2'd0;
    localparam [1:0] ST_START = 2'd1;
    localparam [1:0] ST_DATA  = 2'd2;
    localparam [1:0] ST_STOP  = 2'd3;

    reg [1:0] state = ST_IDLE;

    // tick at end of each bit-time
    wire bit_tick = (CLK_PER_BIT <= 1) ? 1'b1 : (clk_ctr == CLK_PER_BIT-1);

    always @(posedge clk) begin
        if (rst) begin
            tx         <= 1'b1;
            tx_busy    <= 1'b0;
            clk_ctr    <= {CTR_W{1'b0}};
            data_latch <= 8'h00;
            bit_idx    <= 3'd0;
            state      <= ST_IDLE;
        end else begin
            // -----------------------------
            // bit-time counter
            // -----------------------------
            if (state == ST_IDLE) begin
                clk_ctr <= {CTR_W{1'b0}};
            end else if (CLK_PER_BIT > 1) begin
                if (bit_tick) clk_ctr <= {CTR_W{1'b0}};
                else          clk_ctr <= clk_ctr + 1'b1;
            end

            // -----------------------------
            // FSM
            // -----------------------------
            case (state)
                ST_IDLE: begin
                    tx      <= 1'b1;   // idle high
                    tx_busy <= 1'b0;
                    bit_idx <= 3'd0;

                    // accept request only when idle/not busy
                    if (tx_valid) begin
                        data_latch <= tx_data;
                        tx         <= 1'b0; // start bit
                        tx_busy    <= 1'b1;
                        state      <= ST_START;
                    end
                end

                ST_START: begin
                    tx      <= 1'b0;
                    tx_busy <= 1'b1;

                    // after 1 bit-time, move to data bits
                    if (bit_tick) begin
                        bit_idx <= 3'd0;
                        tx      <= data_latch[0]; // first data bit (LSB)
                        state   <= ST_DATA;
                    end
                end

                ST_DATA: begin
                    tx      <= data_latch[bit_idx];
                    tx_busy <= 1'b1;

                    if (bit_tick) begin
                        if (bit_idx == 3'd7) begin
                            tx    <= 1'b1; // stop bit next
                            state <= ST_STOP;
                        end else begin
                            bit_idx <= bit_idx + 1'b1;
                        end
                    end
                end

                ST_STOP: begin
                    tx      <= 1'b1; // stop bit
                    tx_busy <= 1'b1;

                    // after stop bit-time, return to idle
                    if (bit_tick) begin
                        tx_busy <= 1'b0;
                        state   <= ST_IDLE;
                    end
                end

                default: begin
                    tx      <= 1'b1;
                    tx_busy <= 1'b0;
                    state   <= ST_IDLE;
                end
            endcase
        end
    end

endmodule
