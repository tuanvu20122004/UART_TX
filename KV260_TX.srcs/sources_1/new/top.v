`timescale 1ns/1ps

module top #(
    parameter integer CLK_FREQ_HZ = 100_000_000,
    parameter integer BAUDRATE    = 921600,   // ??t gi?ng PC
    parameter integer PAYLOAD_LEN = 100
)(
    input  wire clk_in,
    input  wire rst_n,      // t? PS: pl_resetn0 (active-low)
    output wire uart_tx
);

    // reset n?i b? active-high, synchronous
    reg rst_ff1 = 1'b1, rst_ff2 = 1'b1;
    always @(posedge clk_in) begin
        rst_ff1 <= ~rst_n;
        rst_ff2 <= rst_ff1;
    end
    wire rst_int = rst_ff2;

    // Frame length: AA 55 + LEN + payload + CRC32
    localparam integer FRAME_LEN = 2 + 1 + PAYLOAD_LEN + 4; // 107

    // ---------------- UART TX core ----------------
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

    // ---------------- Payload buffer ----------------
    reg [7:0] payload_mem [0:PAYLOAD_LEN-1];

    // ---------------- CRC32 (reflected) ----------------
    function automatic [31:0] crc32_update;
        input [31:0] crc_in;
        input [7:0]  data;
        integer k;
        reg [31:0] c;
        begin
            c = crc_in ^ data;
            for (k = 0; k < 8; k = k + 1) begin
                if (c[0]) c = (c >> 1) ^ 32'hEDB88320;
                else      c = (c >> 1);
            end
            crc32_update = c;
        end
    endfunction

    reg [31:0] crc_work  = 32'hFFFFFFFF;
    reg [31:0] crc_final = 32'h0;

    // ---------------- Simple payload generator (LFSR) ----------------
    reg [31:0] lfsr = 32'h1ACE_B00C;
    wire lfsr_fb = lfsr[0] ^ lfsr[1] ^ lfsr[21] ^ lfsr[31];

    // ---------------- Frame byte mux ----------------
    function automatic [7:0] frame_byte;
        input [7:0] i;
        begin
            if (i == 8'd0) frame_byte = 8'hAA;
            else if (i == 8'd1) frame_byte = 8'h55;
            else if (i == 8'd2) frame_byte = PAYLOAD_LEN[7:0];
            else if (i >= 8'd3 && i < (8'd3 + PAYLOAD_LEN)) begin
                frame_byte = payload_mem[i - 8'd3];
            end else begin
                case (i - (8'd3 + PAYLOAD_LEN))
                    8'd0: frame_byte = crc_final[7:0];
                    8'd1: frame_byte = crc_final[15:8];
                    8'd2: frame_byte = crc_final[23:16];
                    8'd3: frame_byte = crc_final[31:24];
                    default: frame_byte = 8'h00;
                endcase
            end
        end
    endfunction

    // ---------------- FSM: GEN -> SEND (liên t?c, không GAP) ----------------
    localparam [1:0] S_GEN        = 2'd0;
    localparam [1:0] S_SEND_LOAD  = 2'd1;
    localparam [1:0] S_SEND_PULSE = 2'd2;

    reg [1:0] state = S_GEN;
    reg [6:0] gen_idx  = 7'd0; // 0..PAYLOAD_LEN-1
    reg [7:0] send_idx = 8'd0; // 0..FRAME_LEN-1

    always @(posedge clk_in) begin
        if (rst_int) begin
            state     <= S_GEN;
            gen_idx   <= 7'd0;
            send_idx  <= 8'd0;
            tx_valid  <= 1'b0;
            tx_data   <= 8'h00;
            lfsr      <= 32'h1ACE_B00C;
            crc_work  <= 32'hFFFFFFFF;
            crc_final <= 32'h0;
        end else begin
            tx_valid <= 1'b0;

            case (state)
                // generate payload 1 byte/clock + update crc
                S_GEN: begin
                    payload_mem[gen_idx] <= lfsr[7:0];
                    crc_work <= crc32_update(crc_work, lfsr[7:0]);
                    lfsr <= {lfsr_fb, lfsr[31:1]};

                    if (gen_idx == PAYLOAD_LEN-1) begin
                        // finalize CRC after last payload byte
                        crc_final <= (crc32_update(crc_work, lfsr[7:0]) ^ 32'hFFFFFFFF);
                        send_idx  <= 8'd0;
                        gen_idx   <= 7'd0;
                        crc_work  <= 32'hFFFFFFFF;
                        state     <= S_SEND_LOAD;
                    end else begin
                        gen_idx <= gen_idx + 1'b1;
                    end
                end

                // load byte when uart idle
                S_SEND_LOAD: begin
                    if (!tx_busy) begin
                        tx_data <= frame_byte(send_idx);
                        state   <= S_SEND_PULSE;
                    end
                end

                // pulse valid then advance index
                S_SEND_PULSE: begin
                    if (!tx_busy) begin
                        tx_valid <= 1'b1;

                        if (send_idx == FRAME_LEN-1) begin
                            send_idx <= 8'd0;
                            state    <= S_GEN;        // g?i liên t?c, không WAIT
                        end else begin
                            send_idx <= send_idx + 1'b1;
                            state    <= S_SEND_LOAD;
                        end
                    end
                end

                default: state <= S_GEN;
            endcase
        end
    end

endmodule
