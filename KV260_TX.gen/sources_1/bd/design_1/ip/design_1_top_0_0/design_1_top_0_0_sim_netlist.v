// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Feb 10 01:45:21 2026
// Host        : DESKTOP-I6BJTM0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Xlinx/FPGA_Prj/KV260_TX/KV260_TX.gen/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "top,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk_in,
    uart_tx);
  input clk_in;
  output uart_tx;

  wire clk_in;
  wire uart_tx;

  design_1_top_0_0_top inst
       (.clk_in(clk_in),
        .uart_tx(uart_tx));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (uart_tx,
    clk_in);
  output uart_tx;
  input clk_in;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[2]_i_6_n_0 ;
  wire \FSM_onehot_state[2]_i_7_n_0 ;
  wire \FSM_onehot_state[2]_i_8_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire clk_in;
  wire [25:1]data0;
  wire [25:0]gap_cnt;
  wire gap_cnt0_carry__0_n_0;
  wire gap_cnt0_carry__0_n_1;
  wire gap_cnt0_carry__0_n_2;
  wire gap_cnt0_carry__0_n_3;
  wire gap_cnt0_carry__0_n_4;
  wire gap_cnt0_carry__0_n_5;
  wire gap_cnt0_carry__0_n_6;
  wire gap_cnt0_carry__0_n_7;
  wire gap_cnt0_carry__1_n_0;
  wire gap_cnt0_carry__1_n_1;
  wire gap_cnt0_carry__1_n_2;
  wire gap_cnt0_carry__1_n_3;
  wire gap_cnt0_carry__1_n_4;
  wire gap_cnt0_carry__1_n_5;
  wire gap_cnt0_carry__1_n_6;
  wire gap_cnt0_carry__1_n_7;
  wire gap_cnt0_carry_n_0;
  wire gap_cnt0_carry_n_1;
  wire gap_cnt0_carry_n_2;
  wire gap_cnt0_carry_n_3;
  wire gap_cnt0_carry_n_4;
  wire gap_cnt0_carry_n_5;
  wire gap_cnt0_carry_n_6;
  wire gap_cnt0_carry_n_7;
  wire gap_cnt_0;
  wire [25:0]gap_cnt__0;
  wire [2:0]i;
  wire idx;
  wire \idx[0]_i_1_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx[2]_i_2_n_0 ;
  wire [6:0]msg_byte_return;
  wire \por_cnt[0]_i_2_n_0 ;
  wire [22:0]por_cnt_reg;
  wire \por_cnt_reg[0]_i_1_n_0 ;
  wire \por_cnt_reg[0]_i_1_n_1 ;
  wire \por_cnt_reg[0]_i_1_n_10 ;
  wire \por_cnt_reg[0]_i_1_n_11 ;
  wire \por_cnt_reg[0]_i_1_n_12 ;
  wire \por_cnt_reg[0]_i_1_n_13 ;
  wire \por_cnt_reg[0]_i_1_n_14 ;
  wire \por_cnt_reg[0]_i_1_n_15 ;
  wire \por_cnt_reg[0]_i_1_n_2 ;
  wire \por_cnt_reg[0]_i_1_n_3 ;
  wire \por_cnt_reg[0]_i_1_n_4 ;
  wire \por_cnt_reg[0]_i_1_n_5 ;
  wire \por_cnt_reg[0]_i_1_n_6 ;
  wire \por_cnt_reg[0]_i_1_n_7 ;
  wire \por_cnt_reg[0]_i_1_n_8 ;
  wire \por_cnt_reg[0]_i_1_n_9 ;
  wire \por_cnt_reg[16]_i_1_n_10 ;
  wire \por_cnt_reg[16]_i_1_n_11 ;
  wire \por_cnt_reg[16]_i_1_n_12 ;
  wire \por_cnt_reg[16]_i_1_n_13 ;
  wire \por_cnt_reg[16]_i_1_n_14 ;
  wire \por_cnt_reg[16]_i_1_n_15 ;
  wire \por_cnt_reg[16]_i_1_n_2 ;
  wire \por_cnt_reg[16]_i_1_n_3 ;
  wire \por_cnt_reg[16]_i_1_n_4 ;
  wire \por_cnt_reg[16]_i_1_n_5 ;
  wire \por_cnt_reg[16]_i_1_n_6 ;
  wire \por_cnt_reg[16]_i_1_n_7 ;
  wire \por_cnt_reg[16]_i_1_n_9 ;
  wire \por_cnt_reg[8]_i_1_n_0 ;
  wire \por_cnt_reg[8]_i_1_n_1 ;
  wire \por_cnt_reg[8]_i_1_n_10 ;
  wire \por_cnt_reg[8]_i_1_n_11 ;
  wire \por_cnt_reg[8]_i_1_n_12 ;
  wire \por_cnt_reg[8]_i_1_n_13 ;
  wire \por_cnt_reg[8]_i_1_n_14 ;
  wire \por_cnt_reg[8]_i_1_n_15 ;
  wire \por_cnt_reg[8]_i_1_n_2 ;
  wire \por_cnt_reg[8]_i_1_n_3 ;
  wire \por_cnt_reg[8]_i_1_n_4 ;
  wire \por_cnt_reg[8]_i_1_n_5 ;
  wire \por_cnt_reg[8]_i_1_n_6 ;
  wire \por_cnt_reg[8]_i_1_n_7 ;
  wire \por_cnt_reg[8]_i_1_n_8 ;
  wire \por_cnt_reg[8]_i_1_n_9 ;
  wire rst_int;
  wire [6:0]tx_data;
  wire tx_valid;
  wire tx_valid_reg_n_0;
  wire u_uart_tx_n_2;
  wire u_uart_tx_n_3;
  wire uart_tx;
  wire [7:0]NLW_gap_cnt0_carry__2_CO_UNCONNECTED;
  wire [7:1]NLW_gap_cnt0_carry__2_O_UNCONNECTED;
  wire [7:6]\NLW_por_cnt_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_por_cnt_reg[16]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFAA2A)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i[2]),
        .I2(i[1]),
        .I3(i[0]),
        .I4(gap_cnt_0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\FSM_onehot_state[2]_i_3_n_0 ),
        .I1(\FSM_onehot_state[2]_i_4_n_0 ),
        .I2(\FSM_onehot_state[2]_i_5_n_0 ),
        .I3(\FSM_onehot_state[2]_i_6_n_0 ),
        .I4(\FSM_onehot_state[2]_i_7_n_0 ),
        .I5(\FSM_onehot_state[2]_i_8_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(gap_cnt[15]),
        .I1(gap_cnt[14]),
        .I2(gap_cnt[17]),
        .I3(gap_cnt[16]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(gap_cnt[19]),
        .I1(gap_cnt[18]),
        .I2(gap_cnt[21]),
        .I3(gap_cnt[20]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(gap_cnt[6]),
        .I1(gap_cnt[7]),
        .I2(gap_cnt[9]),
        .I3(gap_cnt[8]),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_onehot_state[2]_i_6 
       (.I0(gap_cnt[11]),
        .I1(gap_cnt[10]),
        .I2(gap_cnt[13]),
        .I3(gap_cnt[12]),
        .O(\FSM_onehot_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_state[2]_i_7 
       (.I0(gap_cnt[3]),
        .I1(gap_cnt[2]),
        .I2(gap_cnt[5]),
        .I3(gap_cnt[4]),
        .O(\FSM_onehot_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[2]_i_8 
       (.I0(gap_cnt[24]),
        .I1(gap_cnt[25]),
        .I2(gap_cnt[22]),
        .I3(gap_cnt[23]),
        .I4(gap_cnt[1]),
        .I5(gap_cnt[0]),
        .O(\FSM_onehot_state[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "S_PULSE:100,S_LOAD:010,S_WAIT:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_in),
        .CE(u_uart_tx_n_3),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(gap_cnt_0),
        .S(rst_int));
  (* FSM_ENCODED_STATES = "S_PULSE:100,S_LOAD:010,S_WAIT:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_in),
        .CE(u_uart_tx_n_3),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(rst_int));
  (* FSM_ENCODED_STATES = "S_PULSE:100,S_LOAD:010,S_WAIT:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_in),
        .CE(u_uart_tx_n_3),
        .D(\FSM_onehot_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(rst_int));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 gap_cnt0_carry
       (.CI(gap_cnt[0]),
        .CI_TOP(1'b0),
        .CO({gap_cnt0_carry_n_0,gap_cnt0_carry_n_1,gap_cnt0_carry_n_2,gap_cnt0_carry_n_3,gap_cnt0_carry_n_4,gap_cnt0_carry_n_5,gap_cnt0_carry_n_6,gap_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:1]),
        .S(gap_cnt[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 gap_cnt0_carry__0
       (.CI(gap_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({gap_cnt0_carry__0_n_0,gap_cnt0_carry__0_n_1,gap_cnt0_carry__0_n_2,gap_cnt0_carry__0_n_3,gap_cnt0_carry__0_n_4,gap_cnt0_carry__0_n_5,gap_cnt0_carry__0_n_6,gap_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:9]),
        .S(gap_cnt[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 gap_cnt0_carry__1
       (.CI(gap_cnt0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({gap_cnt0_carry__1_n_0,gap_cnt0_carry__1_n_1,gap_cnt0_carry__1_n_2,gap_cnt0_carry__1_n_3,gap_cnt0_carry__1_n_4,gap_cnt0_carry__1_n_5,gap_cnt0_carry__1_n_6,gap_cnt0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:17]),
        .S(gap_cnt[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 gap_cnt0_carry__2
       (.CI(gap_cnt0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO(NLW_gap_cnt0_carry__2_CO_UNCONNECTED[7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_gap_cnt0_carry__2_O_UNCONNECTED[7:1],data0[25]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gap_cnt[25]}));
  LUT1 #(
    .INIT(2'h1)) 
    \gap_cnt[0]_i_1 
       (.I0(gap_cnt[0]),
        .O(gap_cnt__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[10]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[10]),
        .O(gap_cnt__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[11]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[11]),
        .O(gap_cnt__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[12]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[12]),
        .O(gap_cnt__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[13]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[13]),
        .O(gap_cnt__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[14]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[14]),
        .O(gap_cnt__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[15]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[15]),
        .O(gap_cnt__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[16]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[16]),
        .O(gap_cnt__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[17]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[17]),
        .O(gap_cnt__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[18]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[18]),
        .O(gap_cnt__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[19]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[19]),
        .O(gap_cnt__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[1]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[1]),
        .O(gap_cnt__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[20]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[20]),
        .O(gap_cnt__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[21]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[21]),
        .O(gap_cnt__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[22]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[22]),
        .O(gap_cnt__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[23]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[23]),
        .O(gap_cnt__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[24]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[24]),
        .O(gap_cnt__0[24]));
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[25]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[25]),
        .O(gap_cnt__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[2]),
        .O(gap_cnt__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[3]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[3]),
        .O(gap_cnt__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[4]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[4]),
        .O(gap_cnt__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[5]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[5]),
        .O(gap_cnt__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[6]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[6]),
        .O(gap_cnt__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[7]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[7]),
        .O(gap_cnt__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[8]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[8]),
        .O(gap_cnt__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gap_cnt[9]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(data0[9]),
        .O(gap_cnt__0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[0] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[0]),
        .Q(gap_cnt[0]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[10] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[10]),
        .Q(gap_cnt[10]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[11] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[11]),
        .Q(gap_cnt[11]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[12] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[12]),
        .Q(gap_cnt[12]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[13] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[13]),
        .Q(gap_cnt[13]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[14] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[14]),
        .Q(gap_cnt[14]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[15] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[15]),
        .Q(gap_cnt[15]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[16] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[16]),
        .Q(gap_cnt[16]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[17] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[17]),
        .Q(gap_cnt[17]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[18] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[18]),
        .Q(gap_cnt[18]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[19] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[19]),
        .Q(gap_cnt[19]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[1] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[1]),
        .Q(gap_cnt[1]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[20] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[20]),
        .Q(gap_cnt[20]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[21] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[21]),
        .Q(gap_cnt[21]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[22] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[22]),
        .Q(gap_cnt[22]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[23] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[23]),
        .Q(gap_cnt[23]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[24] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[24]),
        .Q(gap_cnt[24]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[25] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[25]),
        .Q(gap_cnt[25]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[2] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[2]),
        .Q(gap_cnt[2]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[3] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[3]),
        .Q(gap_cnt[3]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[4] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[4]),
        .Q(gap_cnt[4]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[5] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[5]),
        .Q(gap_cnt[5]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[6] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[6]),
        .Q(gap_cnt[6]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[7] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[7]),
        .Q(gap_cnt[7]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[8] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[8]),
        .Q(gap_cnt[8]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \gap_cnt_reg[9] 
       (.C(clk_in),
        .CE(gap_cnt_0),
        .D(gap_cnt__0[9]),
        .Q(gap_cnt[9]),
        .R(rst_int));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    \idx[0]_i_1 
       (.I0(i[0]),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(i[2]),
        .I3(i[1]),
        .O(\idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1A00)) 
    \idx[1]_i_1 
       (.I0(i[0]),
        .I1(i[2]),
        .I2(i[1]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\idx[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0A80)) 
    \idx[2]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(i[0]),
        .I2(i[1]),
        .I3(i[2]),
        .O(\idx[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(clk_in),
        .CE(idx),
        .D(\idx[0]_i_1_n_0 ),
        .Q(i[0]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(clk_in),
        .CE(idx),
        .D(\idx[1]_i_1_n_0 ),
        .Q(i[1]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[2] 
       (.C(clk_in),
        .CE(idx),
        .D(\idx[2]_i_2_n_0 ),
        .Q(i[2]),
        .R(rst_int));
  LUT1 #(
    .INIT(2'h1)) 
    \por_cnt[0]_i_2 
       (.I0(por_cnt_reg[0]),
        .O(\por_cnt[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[0] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_15 ),
        .Q(por_cnt_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \por_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\por_cnt_reg[0]_i_1_n_0 ,\por_cnt_reg[0]_i_1_n_1 ,\por_cnt_reg[0]_i_1_n_2 ,\por_cnt_reg[0]_i_1_n_3 ,\por_cnt_reg[0]_i_1_n_4 ,\por_cnt_reg[0]_i_1_n_5 ,\por_cnt_reg[0]_i_1_n_6 ,\por_cnt_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\por_cnt_reg[0]_i_1_n_8 ,\por_cnt_reg[0]_i_1_n_9 ,\por_cnt_reg[0]_i_1_n_10 ,\por_cnt_reg[0]_i_1_n_11 ,\por_cnt_reg[0]_i_1_n_12 ,\por_cnt_reg[0]_i_1_n_13 ,\por_cnt_reg[0]_i_1_n_14 ,\por_cnt_reg[0]_i_1_n_15 }),
        .S({por_cnt_reg[7:1],\por_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[10] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_13 ),
        .Q(por_cnt_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[11] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_12 ),
        .Q(por_cnt_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[12] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_11 ),
        .Q(por_cnt_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[13] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_10 ),
        .Q(por_cnt_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[14] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_9 ),
        .Q(por_cnt_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[15] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_8 ),
        .Q(por_cnt_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[16] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_15 ),
        .Q(por_cnt_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \por_cnt_reg[16]_i_1 
       (.CI(\por_cnt_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_por_cnt_reg[16]_i_1_CO_UNCONNECTED [7:6],\por_cnt_reg[16]_i_1_n_2 ,\por_cnt_reg[16]_i_1_n_3 ,\por_cnt_reg[16]_i_1_n_4 ,\por_cnt_reg[16]_i_1_n_5 ,\por_cnt_reg[16]_i_1_n_6 ,\por_cnt_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_por_cnt_reg[16]_i_1_O_UNCONNECTED [7],\por_cnt_reg[16]_i_1_n_9 ,\por_cnt_reg[16]_i_1_n_10 ,\por_cnt_reg[16]_i_1_n_11 ,\por_cnt_reg[16]_i_1_n_12 ,\por_cnt_reg[16]_i_1_n_13 ,\por_cnt_reg[16]_i_1_n_14 ,\por_cnt_reg[16]_i_1_n_15 }),
        .S({1'b0,por_cnt_reg[22:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[17] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_14 ),
        .Q(por_cnt_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[18] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_13 ),
        .Q(por_cnt_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[19] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_12 ),
        .Q(por_cnt_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[1] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_14 ),
        .Q(por_cnt_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[20] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_11 ),
        .Q(por_cnt_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[21] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_10 ),
        .Q(por_cnt_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[22] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[16]_i_1_n_9 ),
        .Q(por_cnt_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[2] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_13 ),
        .Q(por_cnt_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[3] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_12 ),
        .Q(por_cnt_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[4] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_11 ),
        .Q(por_cnt_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[5] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_10 ),
        .Q(por_cnt_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[6] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_9 ),
        .Q(por_cnt_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[7] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[0]_i_1_n_8 ),
        .Q(por_cnt_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[8] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_15 ),
        .Q(por_cnt_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \por_cnt_reg[8]_i_1 
       (.CI(\por_cnt_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\por_cnt_reg[8]_i_1_n_0 ,\por_cnt_reg[8]_i_1_n_1 ,\por_cnt_reg[8]_i_1_n_2 ,\por_cnt_reg[8]_i_1_n_3 ,\por_cnt_reg[8]_i_1_n_4 ,\por_cnt_reg[8]_i_1_n_5 ,\por_cnt_reg[8]_i_1_n_6 ,\por_cnt_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\por_cnt_reg[8]_i_1_n_8 ,\por_cnt_reg[8]_i_1_n_9 ,\por_cnt_reg[8]_i_1_n_10 ,\por_cnt_reg[8]_i_1_n_11 ,\por_cnt_reg[8]_i_1_n_12 ,\por_cnt_reg[8]_i_1_n_13 ,\por_cnt_reg[8]_i_1_n_14 ,\por_cnt_reg[8]_i_1_n_15 }),
        .S(por_cnt_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \por_cnt_reg[9] 
       (.C(clk_in),
        .CE(rst_int),
        .D(\por_cnt_reg[8]_i_1_n_14 ),
        .Q(por_cnt_reg[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \tx_data[0]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .I2(i[1]),
        .O(msg_byte_return[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \tx_data[1]_i_1 
       (.I0(i[2]),
        .I1(i[0]),
        .O(msg_byte_return[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h5E)) 
    \tx_data[2]_i_1 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(msg_byte_return[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \tx_data[3]_i_1 
       (.I0(i[2]),
        .I1(i[1]),
        .I2(i[0]),
        .O(msg_byte_return[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \tx_data[6]_i_2 
       (.I0(i[1]),
        .I1(i[0]),
        .I2(i[2]),
        .O(msg_byte_return[6]));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[0] 
       (.C(clk_in),
        .CE(u_uart_tx_n_2),
        .D(msg_byte_return[0]),
        .Q(tx_data[0]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[1] 
       (.C(clk_in),
        .CE(u_uart_tx_n_2),
        .D(msg_byte_return[1]),
        .Q(tx_data[1]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[2] 
       (.C(clk_in),
        .CE(u_uart_tx_n_2),
        .D(msg_byte_return[2]),
        .Q(tx_data[2]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[3] 
       (.C(clk_in),
        .CE(u_uart_tx_n_2),
        .D(msg_byte_return[3]),
        .Q(tx_data[3]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg[6] 
       (.C(clk_in),
        .CE(u_uart_tx_n_2),
        .D(msg_byte_return[6]),
        .Q(tx_data[6]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(tx_valid),
        .Q(tx_valid_reg_n_0),
        .R(rst_int));
  design_1_top_0_0_uart_tx u_uart_tx
       (.E(u_uart_tx_n_2),
        .\FSM_onehot_state_reg[0] (idx),
        .\FSM_onehot_state_reg[0]_0 (\FSM_onehot_state[2]_i_2_n_0 ),
        .\FSM_onehot_state_reg[2] (u_uart_tx_n_3),
        .\FSM_sequential_state_reg[0]_0 (tx_valid_reg_n_0),
        .Q({\FSM_onehot_state_reg_n_0_[2] ,\FSM_onehot_state_reg_n_0_[1] ,gap_cnt_0}),
        .clk_in(clk_in),
        .\data_latch_reg[6]_0 ({tx_data[6],tx_data[3:0]}),
        .por_cnt_reg(por_cnt_reg),
        .rst_int(rst_int),
        .tx_valid(tx_valid),
        .uart_tx(uart_tx));
endmodule

(* ORIG_REF_NAME = "uart_tx" *) 
module design_1_top_0_0_uart_tx
   (uart_tx,
    rst_int,
    E,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[0] ,
    tx_valid,
    clk_in,
    Q,
    \FSM_sequential_state_reg[0]_0 ,
    por_cnt_reg,
    \FSM_onehot_state_reg[0]_0 ,
    \data_latch_reg[6]_0 );
  output uart_tx;
  output rst_int;
  output [0:0]E;
  output [0:0]\FSM_onehot_state_reg[2] ;
  output [0:0]\FSM_onehot_state_reg[0] ;
  output tx_valid;
  input clk_in;
  input [2:0]Q;
  input \FSM_sequential_state_reg[0]_0 ;
  input [22:0]por_cnt_reg;
  input \FSM_onehot_state_reg[0]_0 ;
  input [4:0]\data_latch_reg[6]_0 ;

  wire [0:0]E;
  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire [0:0]\FSM_onehot_state_reg[2] ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [2:0]Q;
  wire bit_idx;
  wire \bit_idx[0]_i_1_n_0 ;
  wire \bit_idx[1]_i_1_n_0 ;
  wire \bit_idx[2]_i_2_n_0 ;
  wire \bit_idx_reg_n_0_[0] ;
  wire \bit_idx_reg_n_0_[1] ;
  wire \bit_idx_reg_n_0_[2] ;
  wire \clk_ctr[2]_i_1_n_0 ;
  wire \clk_ctr[6]_i_2_n_0 ;
  wire \clk_ctr[9]_i_1_n_0 ;
  wire \clk_ctr[9]_i_3_n_0 ;
  wire [9:0]clk_ctr_reg;
  wire clk_in;
  wire [6:1]data_latch;
  wire data_latch_0;
  wire [4:0]\data_latch_reg[6]_0 ;
  wire \data_latch_reg_n_0_[0] ;
  wire [9:0]p_0_in;
  wire p_0_in_1;
  wire [22:0]por_cnt_reg;
  wire rst_int;
  wire [1:0]state__0;
  wire [1:0]state__1;
  wire tx0;
  wire tx_busy;
  wire tx_busy_i_1_n_0;
  wire tx_i_10_n_0;
  wire tx_i_11_n_0;
  wire tx_i_12_n_0;
  wire tx_i_13_n_0;
  wire tx_i_2_n_0;
  wire tx_i_3_n_0;
  wire tx_i_4_n_0;
  wire tx_i_5_n_0;
  wire tx_i_6_n_0;
  wire tx_i_7_n_0;
  wire tx_valid;
  wire uart_tx;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h32FF3232)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(Q[2]),
        .I1(tx_busy),
        .I2(Q[1]),
        .I3(\FSM_onehot_state_reg[0]_0 ),
        .I4(Q[0]),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(p_0_in_1),
        .I2(state__0[1]),
        .O(state__1[0]));
  LUT5 #(
    .INIT(32'hCCCACC0A)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(p_0_in_1),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(tx_i_7_n_0),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(p_0_in_1),
        .O(state__1[1]));
  (* FSM_ENCODED_STATES = "ST_START:01,ST_DATA:10,ST_IDLE:00,ST_STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_in),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(rst_int));
  (* FSM_ENCODED_STATES = "ST_START:01,ST_DATA:10,ST_IDLE:00,ST_STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_in),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(rst_int));
  LUT2 #(
    .INIT(4'h2)) 
    \bit_idx[0]_i_1 
       (.I0(state__0[1]),
        .I1(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \bit_idx[1]_i_1 
       (.I0(state__0[1]),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555500007FFF5555)) 
    \bit_idx[2]_i_1 
       (.I0(state__0[1]),
        .I1(\bit_idx_reg_n_0_[1] ),
        .I2(\bit_idx_reg_n_0_[0] ),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(p_0_in_1),
        .I5(state__0[0]),
        .O(bit_idx));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \bit_idx[2]_i_2 
       (.I0(state__0[1]),
        .I1(\bit_idx_reg_n_0_[2] ),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(\bit_idx_reg_n_0_[0] ),
        .O(\bit_idx[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[0] 
       (.C(clk_in),
        .CE(bit_idx),
        .D(\bit_idx[0]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[0] ),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[1] 
       (.C(clk_in),
        .CE(bit_idx),
        .D(\bit_idx[1]_i_1_n_0 ),
        .Q(\bit_idx_reg_n_0_[1] ),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \bit_idx_reg[2] 
       (.C(clk_in),
        .CE(bit_idx),
        .D(\bit_idx[2]_i_2_n_0 ),
        .Q(\bit_idx_reg_n_0_[2] ),
        .R(rst_int));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_ctr[0]_i_1 
       (.I0(clk_ctr_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_ctr[1]_i_1 
       (.I0(clk_ctr_reg[0]),
        .I1(clk_ctr_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_ctr[2]_i_1 
       (.I0(clk_ctr_reg[1]),
        .I1(clk_ctr_reg[0]),
        .I2(clk_ctr_reg[2]),
        .O(\clk_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_ctr[3]_i_1 
       (.I0(clk_ctr_reg[0]),
        .I1(clk_ctr_reg[1]),
        .I2(clk_ctr_reg[2]),
        .I3(clk_ctr_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_ctr[4]_i_1 
       (.I0(clk_ctr_reg[2]),
        .I1(clk_ctr_reg[1]),
        .I2(clk_ctr_reg[0]),
        .I3(clk_ctr_reg[3]),
        .I4(clk_ctr_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clk_ctr[5]_i_1 
       (.I0(clk_ctr_reg[3]),
        .I1(clk_ctr_reg[0]),
        .I2(clk_ctr_reg[1]),
        .I3(clk_ctr_reg[2]),
        .I4(clk_ctr_reg[4]),
        .I5(clk_ctr_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \clk_ctr[6]_i_1 
       (.I0(clk_ctr_reg[4]),
        .I1(clk_ctr_reg[2]),
        .I2(\clk_ctr[6]_i_2_n_0 ),
        .I3(clk_ctr_reg[3]),
        .I4(clk_ctr_reg[5]),
        .I5(clk_ctr_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clk_ctr[6]_i_2 
       (.I0(clk_ctr_reg[0]),
        .I1(clk_ctr_reg[1]),
        .O(\clk_ctr[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \clk_ctr[7]_i_1 
       (.I0(\clk_ctr[9]_i_3_n_0 ),
        .I1(clk_ctr_reg[6]),
        .I2(clk_ctr_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_ctr[8]_i_1 
       (.I0(clk_ctr_reg[6]),
        .I1(\clk_ctr[9]_i_3_n_0 ),
        .I2(clk_ctr_reg[7]),
        .I3(clk_ctr_reg[8]),
        .O(p_0_in[8]));
  LUT4 #(
    .INIT(16'hFFAB)) 
    \clk_ctr[9]_i_1 
       (.I0(rst_int),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(p_0_in_1),
        .O(\clk_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_ctr[9]_i_2 
       (.I0(clk_ctr_reg[7]),
        .I1(\clk_ctr[9]_i_3_n_0 ),
        .I2(clk_ctr_reg[6]),
        .I3(clk_ctr_reg[8]),
        .I4(clk_ctr_reg[9]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clk_ctr[9]_i_3 
       (.I0(clk_ctr_reg[5]),
        .I1(clk_ctr_reg[3]),
        .I2(clk_ctr_reg[0]),
        .I3(clk_ctr_reg[1]),
        .I4(clk_ctr_reg[2]),
        .I5(clk_ctr_reg[4]),
        .O(\clk_ctr[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(clk_ctr_reg[0]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(clk_ctr_reg[1]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\clk_ctr[2]_i_1_n_0 ),
        .Q(clk_ctr_reg[2]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(clk_ctr_reg[3]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(clk_ctr_reg[4]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(clk_ctr_reg[5]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(clk_ctr_reg[6]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(clk_ctr_reg[7]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(clk_ctr_reg[8]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_ctr_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(clk_ctr_reg[9]),
        .R(\clk_ctr[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \data_latch[6]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(data_latch_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_latch_reg[0] 
       (.C(clk_in),
        .CE(data_latch_0),
        .D(\data_latch_reg[6]_0 [0]),
        .Q(\data_latch_reg_n_0_[0] ),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \data_latch_reg[1] 
       (.C(clk_in),
        .CE(data_latch_0),
        .D(\data_latch_reg[6]_0 [1]),
        .Q(data_latch[1]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \data_latch_reg[2] 
       (.C(clk_in),
        .CE(data_latch_0),
        .D(\data_latch_reg[6]_0 [2]),
        .Q(data_latch[2]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \data_latch_reg[3] 
       (.C(clk_in),
        .CE(data_latch_0),
        .D(\data_latch_reg[6]_0 [3]),
        .Q(data_latch[3]),
        .R(rst_int));
  FDRE #(
    .INIT(1'b0)) 
    \data_latch_reg[6] 
       (.C(clk_in),
        .CE(data_latch_0),
        .D(\data_latch_reg[6]_0 [4]),
        .Q(data_latch[6]),
        .R(rst_int));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \idx[2]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(Q[0]),
        .I2(tx_busy),
        .I3(Q[2]),
        .O(\FSM_onehot_state_reg[0] ));
  LUT4 #(
    .INIT(16'h5EFE)) 
    tx_busy_i_1
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state_reg[0]_0 ),
        .I2(state__0[1]),
        .I3(p_0_in_1),
        .O(tx_busy_i_1_n_0));
  FDRE tx_busy_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(tx_busy_i_1_n_0),
        .Q(tx_busy),
        .R(rst_int));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \tx_data[6]_i_1 
       (.I0(Q[1]),
        .I1(tx_busy),
        .O(E));
  LUT4 #(
    .INIT(16'hFBFF)) 
    tx_i_1
       (.I0(tx_i_3_n_0),
        .I1(tx_i_4_n_0),
        .I2(tx_i_5_n_0),
        .I3(tx_i_6_n_0),
        .O(rst_int));
  LUT6 #(
    .INIT(64'hFF000800FF0008FF)) 
    tx_i_10
       (.I0(\data_latch_reg_n_0_[0] ),
        .I1(tx_i_13_n_0),
        .I2(tx_i_11_n_0),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state_reg[0]_0 ),
        .O(tx_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    tx_i_11
       (.I0(clk_ctr_reg[9]),
        .I1(clk_ctr_reg[6]),
        .I2(clk_ctr_reg[0]),
        .I3(clk_ctr_reg[1]),
        .I4(clk_ctr_reg[5]),
        .O(tx_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    tx_i_12
       (.I0(data_latch[3]),
        .I1(data_latch[2]),
        .I2(\bit_idx_reg_n_0_[1] ),
        .I3(data_latch[1]),
        .I4(\bit_idx_reg_n_0_[0] ),
        .I5(\data_latch_reg_n_0_[0] ),
        .O(tx_i_12_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    tx_i_13
       (.I0(clk_ctr_reg[7]),
        .I1(clk_ctr_reg[4]),
        .I2(clk_ctr_reg[8]),
        .I3(clk_ctr_reg[2]),
        .I4(clk_ctr_reg[3]),
        .O(tx_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    tx_i_2
       (.I0(tx_i_7_n_0),
        .I1(p_0_in_1),
        .I2(tx0),
        .I3(state__0[1]),
        .I4(tx_i_10_n_0),
        .O(tx_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    tx_i_3
       (.I0(por_cnt_reg[0]),
        .I1(por_cnt_reg[1]),
        .I2(por_cnt_reg[2]),
        .I3(por_cnt_reg[3]),
        .I4(por_cnt_reg[4]),
        .I5(por_cnt_reg[5]),
        .O(tx_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    tx_i_4
       (.I0(por_cnt_reg[14]),
        .I1(por_cnt_reg[18]),
        .I2(por_cnt_reg[19]),
        .I3(por_cnt_reg[11]),
        .I4(por_cnt_reg[8]),
        .I5(por_cnt_reg[9]),
        .O(tx_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    tx_i_5
       (.I0(por_cnt_reg[7]),
        .I1(por_cnt_reg[22]),
        .I2(por_cnt_reg[6]),
        .I3(por_cnt_reg[13]),
        .I4(por_cnt_reg[10]),
        .I5(por_cnt_reg[12]),
        .O(tx_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    tx_i_6
       (.I0(por_cnt_reg[21]),
        .I1(por_cnt_reg[20]),
        .I2(por_cnt_reg[15]),
        .I3(por_cnt_reg[16]),
        .I4(por_cnt_reg[17]),
        .O(tx_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    tx_i_7
       (.I0(\bit_idx_reg_n_0_[1] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(\bit_idx_reg_n_0_[2] ),
        .O(tx_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    tx_i_8
       (.I0(clk_ctr_reg[3]),
        .I1(clk_ctr_reg[2]),
        .I2(clk_ctr_reg[8]),
        .I3(clk_ctr_reg[4]),
        .I4(clk_ctr_reg[7]),
        .I5(tx_i_11_n_0),
        .O(p_0_in_1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20FF2000)) 
    tx_i_9
       (.I0(\bit_idx_reg_n_0_[1] ),
        .I1(\bit_idx_reg_n_0_[0] ),
        .I2(data_latch[6]),
        .I3(\bit_idx_reg_n_0_[2] ),
        .I4(tx_i_12_n_0),
        .O(tx0));
  FDSE tx_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(tx_i_2_n_0),
        .Q(uart_tx),
        .S(rst_int));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    tx_valid_i_1
       (.I0(Q[2]),
        .I1(tx_busy),
        .O(tx_valid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
