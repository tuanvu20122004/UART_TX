`timescale 1ns/1ps

module top #(
    parameter integer CLK_FREQ_HZ = 100_000_000,
    parameter integer BAUDRATE    = 115200,
    parameter integer GAP_MS      = 500,
    parameter integer POR_MS      = 50
)(
    input  wire clk_in,
    output wire uart_tx
);

    // ---------------- POR ----------------
    localparam integer POR_CLKS = (CLK_FREQ_HZ/1000) * POR_MS;
    localparam integer POR_W    = (POR_CLKS <= 1) ? 1 : $clog2(POR_CLKS);

    reg [POR_W-1:0] por_cnt = {POR_W{1'b0}};
    wire rst_int = (POR_CLKS <= 1) ? 1'b0 : (por_cnt != POR_CLKS-1);

    always @(posedge clk_in) begin
        if (POR_CLKS > 1) begin
            if (por_cnt != POR_CLKS-1)
                por_cnt <= por_cnt + 1'b1;
        end
    end

    // ---------------- GAP ----------------
    localparam integer GAP_CLKS = (CLK_FREQ_HZ/1000) * GAP_MS;
    localparam integer GAP_W    = (GAP_CLKS <= 1) ? 1 : $clog2(GAP_CLKS);
    reg [GAP_W-1:0] gap_cnt = {GAP_W{1'b0}};

    // ---------------- MSG ----------------
    localparam integer MSG_LEN = 7;

    function [7:0] msg_byte;
        input [2:0] i;
        begin
            case (i)
                3'd0: msg_byte = "H";
                3'd1: msg_byte = "E";
                3'd2: msg_byte = "L";
                3'd3: msg_byte = "L";
                3'd4: msg_byte = "O";
                3'd5: msg_byte = 8'h0D;
                3'd6: msg_byte = 8'h0A;
                default: msg_byte = 8'h00;
            endcase
        end
    endfunction

    // ---------------- UART TX ----------------
    reg        tx_valid = 1'b0;
    reg [7:0]  tx_data  = 8'h00;
    wire       tx_busy;

    uart_tx #(
        .CLK_FREQ_HZ(CLK_FREQ_HZ),
        .BAUDRATE   (BAUDRATE)
    ) u_uart_tx (
        .clk      (clk_in),
        .rst      (rst_int),
        .tx_valid (tx_valid),
        .tx_data  (tx_data),
        .tx       (uart_tx),
        .tx_busy  (tx_busy)
    );

    // ---------------- FSM: WAIT -> LOAD -> PULSE ----------------
    localparam [1:0] S_WAIT  = 2'd0;
    localparam [1:0] S_LOAD  = 2'd1;
    localparam [1:0] S_PULSE = 2'd2;

    reg [1:0] state = S_WAIT;
    reg [2:0] idx   = 3'd0;

    always @(posedge clk_in) begin
        if (rst_int) begin
            state    <= S_WAIT;
            idx      <= 3'd0;
            gap_cnt  <= {GAP_W{1'b0}};
            tx_valid <= 1'b0;
            tx_data  <= 8'h00;
        end else begin
            tx_valid <= 1'b0; // pulse 1 clock

            case (state)
                S_WAIT: begin
                    if (GAP_CLKS <= 1) begin
                        idx   <= 3'd0;
                        state <= S_LOAD;
                    end else if (gap_cnt == GAP_CLKS-1) begin
                        gap_cnt <= {GAP_W{1'b0}};
                        idx     <= 3'd0;
                        state   <= S_LOAD;
                    end else begin
                        gap_cnt <= gap_cnt + 1'b1;
                    end
                end

                S_LOAD: begin
                    if (!tx_busy) begin
                        tx_data <= msg_byte(idx); // n?p tr??c
                        state   <= S_PULSE;
                    end
                end

                S_PULSE: begin
                    if (!tx_busy) begin
                        tx_valid <= 1'b1; // chu k? sau m?i kick
                        if (idx == MSG_LEN-1) begin
                            idx   <= 3'd0;
                            state <= S_WAIT;
                        end else begin
                            idx   <= idx + 1'b1;
                            state <= S_LOAD;
                        end
                    end
                end

                default: state <= S_WAIT;
            endcase
        end
    end

endmodule
