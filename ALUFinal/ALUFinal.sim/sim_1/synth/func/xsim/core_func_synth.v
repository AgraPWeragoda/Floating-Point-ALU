// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Dec 18 20:38:07 2025
// Host        : DESKTOP-087OT34 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/Agrajith/Desktop/Sem 5/Digital System
//               Design/ALUFinal/ALUFinal/ALUFinal.sim/sim_1/synth/func/xsim/core_func_synth.v}
// Design      : core
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (E,
    Q,
    reset_IBUF,
    oper,
    CLK,
    start,
    enable_IBUF);
  output [0:0]E;
  output [24:0]Q;
  input reset_IBUF;
  input [0:0]oper;
  input CLK;
  input start;
  input enable_IBUF;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire [24:0]Q;
  wire decAEn;
  wire decAEn_i_1_n_0;
  wire decA_n_0;
  wire decA_n_1;
  wire decA_n_2;
  wire decA_n_3;
  wire decA_n_4;
  wire decA_n_5;
  wire decBEn;
  wire \divA[22]_i_1_n_0 ;
  wire [18:18]divB;
  wire \divB[18]_i_1_n_0 ;
  wire divEn_i_1_n_0;
  wire divEn_reg_n_0;
  wire divRst;
  wire divRst_i_1_n_0;
  wire divRst_reg_n_0;
  wire dut_n_0;
  wire dut_n_1;
  wire dut_n_10;
  wire dut_n_11;
  wire dut_n_12;
  wire dut_n_13;
  wire dut_n_14;
  wire dut_n_15;
  wire dut_n_16;
  wire dut_n_17;
  wire dut_n_18;
  wire dut_n_19;
  wire dut_n_2;
  wire dut_n_20;
  wire dut_n_21;
  wire dut_n_22;
  wire dut_n_23;
  wire dut_n_24;
  wire dut_n_25;
  wire dut_n_26;
  wire dut_n_3;
  wire dut_n_4;
  wire dut_n_5;
  wire dut_n_6;
  wire dut_n_7;
  wire dut_n_8;
  wire dut_n_9;
  wire enable_IBUF;
  wire [0:0]flagALU;
  wire [72:72]in4;
  wire [19:3]in8;
  wire [22:22]manA;
  wire [18:18]manB;
  wire [0:0]oper;
  wire outflag;
  wire outflag_i_1_n_0;
  wire readA;
  wire readA_reg_n_0;
  wire readB;
  wire reset_IBUF;
  wire start;
  wire \value[10]_i_3_n_0 ;
  wire \value[14]_i_3_n_0 ;
  wire \value[18]_i_3_n_0 ;
  wire \value[18]_i_4_n_0 ;
  wire \value[18]_i_5_n_0 ;
  wire \value[18]_i_6_n_0 ;
  wire \value[24]_i_2_n_0 ;
  wire \value[5]_i_3_n_0 ;
  wire \value_reg[10]_i_2_n_2 ;
  wire \value_reg[10]_i_2_n_3 ;
  wire \value_reg[14]_i_2_n_2 ;
  wire \value_reg[14]_i_2_n_3 ;
  wire \value_reg[18]_i_2_n_0 ;
  wire \value_reg[18]_i_2_n_1 ;
  wire \value_reg[18]_i_2_n_2 ;
  wire \value_reg[18]_i_2_n_3 ;
  wire \value_reg[5]_i_2_n_3 ;
  wire [2:2]\NLW_value_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_value_reg[10]_i_2_O_UNCONNECTED ;
  wire [2:2]\NLW_value_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_value_reg[14]_i_2_O_UNCONNECTED ;
  wire [0:0]\NLW_value_reg[18]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_value_reg[19]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_value_reg[19]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_value_reg[5]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_value_reg[5]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(start),
        .I1(readA),
        .I2(decAEn),
        .I3(divRst),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:01000,iSTATE3:10000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(1'b0),
        .PRE(reset_IBUF),
        .Q(decAEn));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:01000,iSTATE3:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(decA_n_1),
        .Q(readA));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:01000,iSTATE3:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(decA_n_0),
        .Q(divRst));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:01000,iSTATE3:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(dut_n_25),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "iSTATE:00001,iSTATE0:00010,iSTATE1:00100,iSTATE2:01000,iSTATE3:10000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(dut_n_24),
        .Q(outflag));
  decoder decA
       (.D({decA_n_0,decA_n_1}),
        .Q({divRst,readA,decAEn}),
        .decBEn(decBEn),
        .enALU_reg(decA_n_4),
        .enALU_reg_0(decA_n_5),
        .manA(manA),
        .\manA_reg[22] (readA_reg_n_0),
        .manB(manB),
        .oper(oper),
        .readA_reg(decA_n_2),
        .readB(readB),
        .readB_reg(decA_n_3),
        .reset_IBUF(reset_IBUF),
        .start(start));
  LUT3 #(
    .INIT(8'hF8)) 
    decAEn_i_1
       (.I0(start),
        .I1(decAEn),
        .I2(decBEn),
        .O(decAEn_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    decAEn_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(decAEn_i_1_n_0),
        .Q(decBEn));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \divA[22]_i_1 
       (.I0(manA),
        .I1(oper),
        .I2(divRst),
        .I3(start),
        .I4(reset_IBUF),
        .I5(in4),
        .O(\divA[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divA_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(\divA[22]_i_1_n_0 ),
        .Q(in4),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \divB[18]_i_1 
       (.I0(manB),
        .I1(oper),
        .I2(divRst),
        .I3(start),
        .I4(reset_IBUF),
        .I5(divB),
        .O(\divB[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \divB_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\divB[18]_i_1_n_0 ),
        .Q(divB),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    divEn_i_1
       (.I0(oper),
        .I1(divRst),
        .I2(start),
        .I3(reset_IBUF),
        .I4(divEn_reg_n_0),
        .O(divEn_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    divEn_reg
       (.C(CLK),
        .CE(1'b1),
        .D(divEn_i_1_n_0),
        .Q(divEn_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFBFFF40400000)) 
    divRst_i_1
       (.I0(reset_IBUF),
        .I1(start),
        .I2(oper),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(divRst),
        .I5(divRst_reg_n_0),
        .O(divRst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    divRst_reg
       (.C(CLK),
        .CE(1'b1),
        .D(divRst_i_1_n_0),
        .Q(divRst_reg_n_0),
        .R(1'b0));
  divider dut
       (.CLK(CLK),
        .D({dut_n_0,dut_n_1,dut_n_2,dut_n_3,dut_n_4,dut_n_5,dut_n_6,dut_n_7,dut_n_8,dut_n_9,dut_n_10,dut_n_11,dut_n_12,dut_n_13,dut_n_14,dut_n_15,dut_n_16,dut_n_17,dut_n_18,dut_n_19,dut_n_20,dut_n_21,dut_n_22,dut_n_23}),
        .E(dut_n_26),
        .\FSM_onehot_state_reg[2]_0 (divEn_reg_n_0),
        .\FSM_onehot_state_reg[3] ({dut_n_24,dut_n_25}),
        .Q({\FSM_onehot_state_reg_n_0_[3] ,divRst,readA,decAEn}),
        .\count_reg[0]_0 (divRst_reg_n_0),
        .divB(divB),
        .in4(in4),
        .in8({in8[19:16],in8[14:12],in8[10:8],in8[5:3]}),
        .manA(manA),
        .manB(manB),
        .oper(oper),
        .start(start));
  FDCE #(
    .INIT(1'b0)) 
    \manA_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(decA_n_2),
        .Q(manA));
  FDCE #(
    .INIT(1'b0)) 
    \manB_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(decA_n_3),
        .Q(manB));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    outflag_i_1
       (.I0(start),
        .I1(outflag),
        .I2(flagALU),
        .O(outflag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    outflag_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(outflag_i_1_n_0),
        .Q(flagALU));
  FDCE #(
    .INIT(1'b0)) 
    readA_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(decA_n_5),
        .Q(readA_reg_n_0));
  FDCE #(
    .INIT(1'b0)) 
    readB_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(decA_n_4),
        .Q(readB));
  LUT2 #(
    .INIT(4'h6)) 
    \value[10]_i_3 
       (.I0(manA),
        .I1(manB),
        .O(\value[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \value[14]_i_3 
       (.I0(manA),
        .I1(manB),
        .O(\value[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \value[18]_i_3 
       (.I0(manA),
        .I1(manB),
        .O(\value[18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \value[18]_i_4 
       (.I0(manA),
        .I1(manB),
        .O(\value[18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \value[18]_i_5 
       (.I0(manA),
        .I1(manB),
        .O(\value[18]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \value[18]_i_6 
       (.I0(manA),
        .I1(manB),
        .O(\value[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \value[24]_i_1__0 
       (.I0(enable_IBUF),
        .I1(flagALU),
        .I2(start),
        .O(E));
  LUT3 #(
    .INIT(8'h80)) 
    \value[24]_i_2 
       (.I0(divRst),
        .I1(manB),
        .I2(manA),
        .O(\value[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \value[5]_i_3 
       (.I0(manA),
        .I1(manB),
        .O(\value[5]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[0] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_23),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[10] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_13),
        .Q(Q[10]));
  CARRY4 \value_reg[10]_i_2 
       (.CI(1'b0),
        .CO({in8[10],\NLW_value_reg[10]_i_2_CO_UNCONNECTED [2],\value_reg[10]_i_2_n_2 ,\value_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,manA,manA,manA}),
        .O({\NLW_value_reg[10]_i_2_O_UNCONNECTED [3],in8[9:7]}),
        .S({1'b1,manA,manA,\value[10]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[11] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_12),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[12] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_11),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[13] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_10),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[14] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_9),
        .Q(Q[14]));
  CARRY4 \value_reg[14]_i_2 
       (.CI(1'b0),
        .CO({in8[14],\NLW_value_reg[14]_i_2_CO_UNCONNECTED [2],\value_reg[14]_i_2_n_2 ,\value_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,manA,1'b0,manA}),
        .O({\NLW_value_reg[14]_i_2_O_UNCONNECTED [3],in8[13:11]}),
        .S({1'b1,manA,manB,\value[14]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[15] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_8),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[16] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_7),
        .Q(Q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[17] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_6),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[18] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_5),
        .Q(Q[18]));
  CARRY4 \value_reg[18]_i_2 
       (.CI(1'b0),
        .CO({\value_reg[18]_i_2_n_0 ,\value_reg[18]_i_2_n_1 ,\value_reg[18]_i_2_n_2 ,\value_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({manA,manA,manA,manA}),
        .O(in8[18:15]),
        .S({\value[18]_i_3_n_0 ,\value[18]_i_4_n_0 ,\value[18]_i_5_n_0 ,\value[18]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[19] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_4),
        .Q(Q[19]));
  CARRY4 \value_reg[19]_i_2 
       (.CI(\value_reg[18]_i_2_n_0 ),
        .CO({\NLW_value_reg[19]_i_2_CO_UNCONNECTED [3:1],in8[19]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_value_reg[19]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[1] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_22),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[20] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_3),
        .Q(Q[20]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[21] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_2),
        .Q(Q[21]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[22] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_1),
        .Q(Q[22]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[23] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_0),
        .Q(Q[23]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[24] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(\value[24]_i_2_n_0 ),
        .Q(Q[24]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[2] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_21),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[3] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_20),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[4] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_19),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[5] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_18),
        .Q(Q[5]));
  CARRY4 \value_reg[5]_i_2 
       (.CI(1'b0),
        .CO({\NLW_value_reg[5]_i_2_CO_UNCONNECTED [3],in8[5],\NLW_value_reg[5]_i_2_CO_UNCONNECTED [1],\value_reg[5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,manA}),
        .O({\NLW_value_reg[5]_i_2_O_UNCONNECTED [3:2],in8[4:3]}),
        .S({1'b0,1'b1,manB,\value[5]_i_3_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[6] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_17),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[7] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_16),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[8] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_15),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[9] 
       (.C(CLK),
        .CE(dut_n_26),
        .CLR(reset_IBUF),
        .D(dut_n_14),
        .Q(Q[9]));
endmodule

module clkdiv
   (newClk,
    CLK,
    reset_IBUF);
  output newClk;
  input CLK;
  input reset_IBUF;

  wire CLK;
  wire [31:1]data0;
  wire newClk;
  wire reset_IBUF;
  wire state_i_1_n_0;
  wire timer1count;
  wire timer1count0_carry__0_n_0;
  wire timer1count0_carry__0_n_1;
  wire timer1count0_carry__0_n_2;
  wire timer1count0_carry__0_n_3;
  wire timer1count0_carry__1_n_0;
  wire timer1count0_carry__1_n_1;
  wire timer1count0_carry__1_n_2;
  wire timer1count0_carry__1_n_3;
  wire timer1count0_carry__2_n_0;
  wire timer1count0_carry__2_n_1;
  wire timer1count0_carry__2_n_2;
  wire timer1count0_carry__2_n_3;
  wire timer1count0_carry__3_n_0;
  wire timer1count0_carry__3_n_1;
  wire timer1count0_carry__3_n_2;
  wire timer1count0_carry__3_n_3;
  wire timer1count0_carry__4_n_0;
  wire timer1count0_carry__4_n_1;
  wire timer1count0_carry__4_n_2;
  wire timer1count0_carry__4_n_3;
  wire timer1count0_carry__5_n_0;
  wire timer1count0_carry__5_n_1;
  wire timer1count0_carry__5_n_2;
  wire timer1count0_carry__5_n_3;
  wire timer1count0_carry__6_n_2;
  wire timer1count0_carry__6_n_3;
  wire timer1count0_carry_n_0;
  wire timer1count0_carry_n_1;
  wire timer1count0_carry_n_2;
  wire timer1count0_carry_n_3;
  wire \timer1count[0]_i_1_n_0 ;
  wire \timer1count[10]_i_1_n_0 ;
  wire \timer1count[11]_i_1_n_0 ;
  wire \timer1count[12]_i_1_n_0 ;
  wire \timer1count[13]_i_1_n_0 ;
  wire \timer1count[14]_i_1_n_0 ;
  wire \timer1count[15]_i_1_n_0 ;
  wire \timer1count[16]_i_1_n_0 ;
  wire \timer1count[17]_i_1_n_0 ;
  wire \timer1count[18]_i_1_n_0 ;
  wire \timer1count[19]_i_1_n_0 ;
  wire \timer1count[1]_i_1_n_0 ;
  wire \timer1count[20]_i_1_n_0 ;
  wire \timer1count[21]_i_1_n_0 ;
  wire \timer1count[22]_i_1_n_0 ;
  wire \timer1count[23]_i_1_n_0 ;
  wire \timer1count[24]_i_1_n_0 ;
  wire \timer1count[25]_i_1_n_0 ;
  wire \timer1count[26]_i_1_n_0 ;
  wire \timer1count[27]_i_1_n_0 ;
  wire \timer1count[28]_i_1_n_0 ;
  wire \timer1count[29]_i_1_n_0 ;
  wire \timer1count[2]_i_1_n_0 ;
  wire \timer1count[30]_i_1_n_0 ;
  wire \timer1count[31]_i_10_n_0 ;
  wire \timer1count[31]_i_2_n_0 ;
  wire \timer1count[31]_i_3_n_0 ;
  wire \timer1count[31]_i_4_n_0 ;
  wire \timer1count[31]_i_5_n_0 ;
  wire \timer1count[31]_i_6_n_0 ;
  wire \timer1count[31]_i_7_n_0 ;
  wire \timer1count[31]_i_8_n_0 ;
  wire \timer1count[31]_i_9_n_0 ;
  wire \timer1count[3]_i_1_n_0 ;
  wire \timer1count[4]_i_1_n_0 ;
  wire \timer1count[5]_i_1_n_0 ;
  wire \timer1count[6]_i_1_n_0 ;
  wire \timer1count[7]_i_1_n_0 ;
  wire \timer1count[8]_i_1_n_0 ;
  wire \timer1count[9]_i_1_n_0 ;
  wire \timer1count_reg_n_0_[0] ;
  wire \timer1count_reg_n_0_[10] ;
  wire \timer1count_reg_n_0_[11] ;
  wire \timer1count_reg_n_0_[12] ;
  wire \timer1count_reg_n_0_[13] ;
  wire \timer1count_reg_n_0_[14] ;
  wire \timer1count_reg_n_0_[15] ;
  wire \timer1count_reg_n_0_[16] ;
  wire \timer1count_reg_n_0_[17] ;
  wire \timer1count_reg_n_0_[18] ;
  wire \timer1count_reg_n_0_[19] ;
  wire \timer1count_reg_n_0_[1] ;
  wire \timer1count_reg_n_0_[20] ;
  wire \timer1count_reg_n_0_[21] ;
  wire \timer1count_reg_n_0_[22] ;
  wire \timer1count_reg_n_0_[23] ;
  wire \timer1count_reg_n_0_[24] ;
  wire \timer1count_reg_n_0_[25] ;
  wire \timer1count_reg_n_0_[26] ;
  wire \timer1count_reg_n_0_[27] ;
  wire \timer1count_reg_n_0_[28] ;
  wire \timer1count_reg_n_0_[29] ;
  wire \timer1count_reg_n_0_[2] ;
  wire \timer1count_reg_n_0_[30] ;
  wire \timer1count_reg_n_0_[31] ;
  wire \timer1count_reg_n_0_[3] ;
  wire \timer1count_reg_n_0_[4] ;
  wire \timer1count_reg_n_0_[5] ;
  wire \timer1count_reg_n_0_[6] ;
  wire \timer1count_reg_n_0_[7] ;
  wire \timer1count_reg_n_0_[8] ;
  wire \timer1count_reg_n_0_[9] ;
  wire [3:2]NLW_timer1count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_timer1count0_carry__6_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hFFFB0004)) 
    state_i_1
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(newClk),
        .O(state_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    state_reg
       (.C(CLK),
        .CE(1'b1),
        .D(state_i_1_n_0),
        .PRE(reset_IBUF),
        .Q(newClk));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry
       (.CI(1'b0),
        .CO({timer1count0_carry_n_0,timer1count0_carry_n_1,timer1count0_carry_n_2,timer1count0_carry_n_3}),
        .CYINIT(\timer1count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\timer1count_reg_n_0_[4] ,\timer1count_reg_n_0_[3] ,\timer1count_reg_n_0_[2] ,\timer1count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__0
       (.CI(timer1count0_carry_n_0),
        .CO({timer1count0_carry__0_n_0,timer1count0_carry__0_n_1,timer1count0_carry__0_n_2,timer1count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\timer1count_reg_n_0_[8] ,\timer1count_reg_n_0_[7] ,\timer1count_reg_n_0_[6] ,\timer1count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__1
       (.CI(timer1count0_carry__0_n_0),
        .CO({timer1count0_carry__1_n_0,timer1count0_carry__1_n_1,timer1count0_carry__1_n_2,timer1count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\timer1count_reg_n_0_[12] ,\timer1count_reg_n_0_[11] ,\timer1count_reg_n_0_[10] ,\timer1count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__2
       (.CI(timer1count0_carry__1_n_0),
        .CO({timer1count0_carry__2_n_0,timer1count0_carry__2_n_1,timer1count0_carry__2_n_2,timer1count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\timer1count_reg_n_0_[16] ,\timer1count_reg_n_0_[15] ,\timer1count_reg_n_0_[14] ,\timer1count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__3
       (.CI(timer1count0_carry__2_n_0),
        .CO({timer1count0_carry__3_n_0,timer1count0_carry__3_n_1,timer1count0_carry__3_n_2,timer1count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\timer1count_reg_n_0_[20] ,\timer1count_reg_n_0_[19] ,\timer1count_reg_n_0_[18] ,\timer1count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__4
       (.CI(timer1count0_carry__3_n_0),
        .CO({timer1count0_carry__4_n_0,timer1count0_carry__4_n_1,timer1count0_carry__4_n_2,timer1count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\timer1count_reg_n_0_[24] ,\timer1count_reg_n_0_[23] ,\timer1count_reg_n_0_[22] ,\timer1count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__5
       (.CI(timer1count0_carry__4_n_0),
        .CO({timer1count0_carry__5_n_0,timer1count0_carry__5_n_1,timer1count0_carry__5_n_2,timer1count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\timer1count_reg_n_0_[28] ,\timer1count_reg_n_0_[27] ,\timer1count_reg_n_0_[26] ,\timer1count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 timer1count0_carry__6
       (.CI(timer1count0_carry__5_n_0),
        .CO({NLW_timer1count0_carry__6_CO_UNCONNECTED[3:2],timer1count0_carry__6_n_2,timer1count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_timer1count0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\timer1count_reg_n_0_[31] ,\timer1count_reg_n_0_[30] ,\timer1count_reg_n_0_[29] }));
  LUT5 #(
    .INIT(32'h0000FFFB)) 
    \timer1count[0]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(\timer1count_reg_n_0_[0] ),
        .O(\timer1count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[10]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[10]),
        .O(\timer1count[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[11]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[11]),
        .O(\timer1count[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[12]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[12]),
        .O(\timer1count[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[13]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[13]),
        .O(\timer1count[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[14]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[14]),
        .O(\timer1count[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[15]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[15]),
        .O(\timer1count[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[16]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[16]),
        .O(\timer1count[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[17]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[17]),
        .O(\timer1count[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[18]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[18]),
        .O(\timer1count[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[19]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[19]),
        .O(\timer1count[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[1]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[1]),
        .O(\timer1count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[20]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[20]),
        .O(\timer1count[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[21]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[21]),
        .O(\timer1count[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[22]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[22]),
        .O(\timer1count[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[23]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[23]),
        .O(\timer1count[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[24]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[24]),
        .O(\timer1count[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[25]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[25]),
        .O(\timer1count[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[26]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[26]),
        .O(\timer1count[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[27]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[27]),
        .O(\timer1count[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[28]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[28]),
        .O(\timer1count[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[29]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[29]),
        .O(\timer1count[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[2]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[2]),
        .O(\timer1count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[30]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[30]),
        .O(\timer1count[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \timer1count[31]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(reset_IBUF),
        .O(timer1count));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer1count[31]_i_10 
       (.I0(\timer1count_reg_n_0_[3] ),
        .I1(\timer1count_reg_n_0_[17] ),
        .I2(\timer1count_reg_n_0_[29] ),
        .I3(\timer1count_reg_n_0_[0] ),
        .O(\timer1count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[31]_i_2 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[31]),
        .O(\timer1count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \timer1count[31]_i_3 
       (.I0(\timer1count_reg_n_0_[16] ),
        .I1(\timer1count_reg_n_0_[11] ),
        .I2(\timer1count_reg_n_0_[30] ),
        .I3(\timer1count_reg_n_0_[1] ),
        .I4(\timer1count[31]_i_7_n_0 ),
        .O(\timer1count[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \timer1count[31]_i_4 
       (.I0(\timer1count_reg_n_0_[20] ),
        .I1(\timer1count_reg_n_0_[5] ),
        .I2(\timer1count_reg_n_0_[23] ),
        .I3(\timer1count_reg_n_0_[18] ),
        .I4(\timer1count[31]_i_8_n_0 ),
        .O(\timer1count[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer1count[31]_i_5 
       (.I0(\timer1count_reg_n_0_[9] ),
        .I1(\timer1count_reg_n_0_[8] ),
        .I2(\timer1count_reg_n_0_[19] ),
        .I3(\timer1count_reg_n_0_[12] ),
        .I4(\timer1count[31]_i_9_n_0 ),
        .O(\timer1count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \timer1count[31]_i_6 
       (.I0(\timer1count_reg_n_0_[22] ),
        .I1(\timer1count_reg_n_0_[25] ),
        .I2(\timer1count_reg_n_0_[21] ),
        .I3(\timer1count_reg_n_0_[2] ),
        .I4(\timer1count[31]_i_10_n_0 ),
        .O(\timer1count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer1count[31]_i_7 
       (.I0(\timer1count_reg_n_0_[10] ),
        .I1(\timer1count_reg_n_0_[31] ),
        .I2(\timer1count_reg_n_0_[13] ),
        .I3(\timer1count_reg_n_0_[26] ),
        .O(\timer1count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \timer1count[31]_i_8 
       (.I0(\timer1count_reg_n_0_[6] ),
        .I1(\timer1count_reg_n_0_[28] ),
        .I2(\timer1count_reg_n_0_[14] ),
        .I3(\timer1count_reg_n_0_[24] ),
        .O(\timer1count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \timer1count[31]_i_9 
       (.I0(\timer1count_reg_n_0_[27] ),
        .I1(\timer1count_reg_n_0_[15] ),
        .I2(\timer1count_reg_n_0_[4] ),
        .I3(\timer1count_reg_n_0_[7] ),
        .O(\timer1count[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[3]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[3]),
        .O(\timer1count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[4]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[4]),
        .O(\timer1count[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[5]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[5]),
        .O(\timer1count[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[6]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[6]),
        .O(\timer1count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[7]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[7]),
        .O(\timer1count[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[8]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[8]),
        .O(\timer1count[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \timer1count[9]_i_1 
       (.I0(\timer1count[31]_i_3_n_0 ),
        .I1(\timer1count[31]_i_4_n_0 ),
        .I2(\timer1count[31]_i_5_n_0 ),
        .I3(\timer1count[31]_i_6_n_0 ),
        .I4(data0[9]),
        .O(\timer1count[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[0] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[0]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[10] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[10]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[11] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[11]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[12] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[12]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[13] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[13]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[14] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[14]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[15] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[15]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[16] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[16]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[17] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[17]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[18] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[18]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[19] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[19]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[1] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[1]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[20] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[20]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[21] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[21]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[22] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[22]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[23] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[23]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[24] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[24]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[25] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[25]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[26] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[26]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[27] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[27]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[28] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[28]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[29] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[29]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[2] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[2]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[30] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[30]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[31] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[31]_i_2_n_0 ),
        .Q(\timer1count_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[3] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[3]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[4] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[4]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[5] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[5]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[6] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[6]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[7] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[7]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[8] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[8]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \timer1count_reg[9] 
       (.C(CLK),
        .CE(timer1count),
        .CLR(reset_IBUF),
        .D(\timer1count[9]_i_1_n_0 ),
        .Q(\timer1count_reg_n_0_[9] ));
endmodule

(* NotValidForBitStream *)
module core
   (clk,
    reset,
    enable,
    switches,
    toggleSwitches,
    leds);
  input clk;
  input reset;
  input enable;
  input [2:0]switches;
  input [2:0]toggleSwitches;
  output [3:0]leds;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire enALU;
  wire enable;
  wire enable_IBUF;
  wire [3:0]leds;
  wire [3:0]leds_OBUF;
  wire newClk;
  wire newClk_BUFG;
  wire [0:0]oper;
  wire \oper[0]_i_1_n_0 ;
  wire [24:0]outVal;
  wire [24:0]p_2_in;
  wire reset;
  wire reset_IBUF;
  wire start;
  wire [2:0]switches;
  wire [2:0]switches_IBUF;
  wire [2:0]toggleSwitches;
  wire [2:0]toggleSwitches_IBUF;
  wire value;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  ALU dut
       (.CLK(newClk_BUFG),
        .E(value),
        .Q(outVal),
        .enable_IBUF(enable_IBUF),
        .oper(oper),
        .reset_IBUF(reset_IBUF),
        .start(start));
  LUT2 #(
    .INIT(4'h2)) 
    enALU_i_1
       (.I0(enable_IBUF),
        .I1(start),
        .O(enALU));
  FDCE #(
    .INIT(1'b0)) 
    enALU_reg
       (.C(newClk_BUFG),
        .CE(enALU),
        .CLR(reset_IBUF),
        .D(enable_IBUF),
        .Q(start));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  OBUF \leds_OBUF[3]_inst 
       (.I(leds_OBUF[3]),
        .O(leds[3]));
  ledDisplay myDisplay
       (.CLK(newClk_BUFG),
        .Q(leds_OBUF),
        .\regNumber_reg[24]_0 (p_2_in),
        .reset_IBUF(reset_IBUF),
        .switches_IBUF(switches_IBUF),
        .toggleSwitches_IBUF({toggleSwitches_IBUF[2],toggleSwitches_IBUF[0]}));
  clkdiv nclk
       (.CLK(clk_IBUF_BUFG),
        .newClk(newClk),
        .reset_IBUF(reset_IBUF));
  BUFG newClk_BUFG_inst
       (.I(newClk),
        .O(newClk_BUFG));
  LUT3 #(
    .INIT(8'hF4)) 
    \oper[0]_i_1 
       (.I0(start),
        .I1(enable_IBUF),
        .I2(oper),
        .O(\oper[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \oper_reg[0] 
       (.C(newClk_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\oper[0]_i_1_n_0 ),
        .Q(oper));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \switches_IBUF[0]_inst 
       (.I(switches[0]),
        .O(switches_IBUF[0]));
  IBUF \switches_IBUF[1]_inst 
       (.I(switches[1]),
        .O(switches_IBUF[1]));
  IBUF \switches_IBUF[2]_inst 
       (.I(switches[2]),
        .O(switches_IBUF[2]));
  IBUF \toggleSwitches_IBUF[0]_inst 
       (.I(toggleSwitches[0]),
        .O(toggleSwitches_IBUF[0]));
  IBUF \toggleSwitches_IBUF[2]_inst 
       (.I(toggleSwitches[2]),
        .O(toggleSwitches_IBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[0] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[0]),
        .Q(p_2_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[10] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[10]),
        .Q(p_2_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[11] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[11]),
        .Q(p_2_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[12] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[12]),
        .Q(p_2_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[13] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[13]),
        .Q(p_2_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[14] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[14]),
        .Q(p_2_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[15] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[15]),
        .Q(p_2_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[16] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[16]),
        .Q(p_2_in[16]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[17] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[17]),
        .Q(p_2_in[17]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[18] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[18]),
        .Q(p_2_in[18]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[19] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[19]),
        .Q(p_2_in[19]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[1] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[1]),
        .Q(p_2_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[20] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[20]),
        .Q(p_2_in[20]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[21] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[21]),
        .Q(p_2_in[21]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[22] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[22]),
        .Q(p_2_in[22]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[23] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[23]),
        .Q(p_2_in[23]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[24] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[24]),
        .Q(p_2_in[24]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[2] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[2]),
        .Q(p_2_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[3] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[3]),
        .Q(p_2_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[4] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[4]),
        .Q(p_2_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[5] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[5]),
        .Q(p_2_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[6] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[6]),
        .Q(p_2_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[7] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[7]),
        .Q(p_2_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[8] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[8]),
        .Q(p_2_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \value_reg[9] 
       (.C(newClk_BUFG),
        .CE(value),
        .CLR(reset_IBUF),
        .D(outVal[9]),
        .Q(p_2_in[9]));
endmodule

module decoder
   (D,
    readA_reg,
    readB_reg,
    enALU_reg,
    enALU_reg_0,
    decBEn,
    reset_IBUF,
    oper,
    Q,
    \manA_reg[22] ,
    readB,
    start,
    manA,
    manB);
  output [1:0]D;
  output readA_reg;
  output readB_reg;
  output enALU_reg;
  output enALU_reg_0;
  input decBEn;
  input reset_IBUF;
  input [0:0]oper;
  input [2:0]Q;
  input \manA_reg[22] ;
  input readB;
  input start;
  input [0:0]manA;
  input [0:0]manB;

  wire [1:0]D;
  wire [2:0]Q;
  wire [22:22]decAMan;
  wire decAValid;
  wire decBEn;
  wire enALU_reg;
  wire enALU_reg_0;
  wire [0:0]manA;
  wire \manA_reg[22] ;
  wire [0:0]manB;
  wire [0:0]oper;
  wire readA_reg;
  wire readB;
  wire readB_reg;
  wire reset_IBUF;
  wire start;

  LUT5 #(
    .INIT(32'hAABFAAAA)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(Q[0]),
        .I1(\manA_reg[22] ),
        .I2(readB),
        .I3(decAValid),
        .I4(Q[1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF800FFFFF800F800)) 
    \FSM_onehot_state[2]_i_1__0 
       (.I0(\manA_reg[22] ),
        .I1(readB),
        .I2(decAValid),
        .I3(Q[1]),
        .I4(oper),
        .I5(Q[2]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \manA[22]_i_1 
       (.I0(decAMan),
        .I1(\manA_reg[22] ),
        .I2(decAValid),
        .I3(Q[1]),
        .I4(start),
        .I5(manA),
        .O(readA_reg));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \manB[18]_i_1 
       (.I0(decAMan),
        .I1(readB),
        .I2(decAValid),
        .I3(Q[1]),
        .I4(start),
        .I5(manB),
        .O(readB_reg));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    readA_i_1
       (.I0(decAValid),
        .I1(start),
        .I2(Q[1]),
        .I3(\manA_reg[22] ),
        .O(enALU_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    readB_i_1
       (.I0(decAValid),
        .I1(start),
        .I2(Q[1]),
        .I3(readB),
        .O(enALU_reg));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    \regMan_reg[22] 
       (.CLR(reset_IBUF),
        .D(oper),
        .G(decBEn),
        .GE(1'b1),
        .Q(decAMan));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE" *) 
  LDCE #(
    .INIT(1'b0)) 
    regValid_reg
       (.CLR(reset_IBUF),
        .D(decBEn),
        .G(decBEn),
        .GE(1'b1),
        .Q(decAValid));
endmodule

module divider
   (D,
    \FSM_onehot_state_reg[3] ,
    E,
    CLK,
    \count_reg[0]_0 ,
    manB,
    manA,
    Q,
    oper,
    start,
    in8,
    divB,
    \FSM_onehot_state_reg[2]_0 ,
    in4);
  output [23:0]D;
  output [1:0]\FSM_onehot_state_reg[3] ;
  output [0:0]E;
  input CLK;
  input \count_reg[0]_0 ;
  input [0:0]manB;
  input [0:0]manA;
  input [3:0]Q;
  input [0:0]oper;
  input start;
  input [12:0]in8;
  input [0:0]divB;
  input \FSM_onehot_state_reg[2]_0 ;
  input [0:0]in4;

  wire CLK;
  wire [23:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [1:0]\FSM_onehot_state_reg[3] ;
  wire [3:0]Q;
  wire [6:0]count;
  wire \count[6]_i_1_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire [6:0]count_reg;
  wire \count_reg[0]_0 ;
  wire [0:0]divB;
  wire dividerFin;
  wire finish;
  wire finish_i_1_n_0;
  wire [0:0]in4;
  wire [24:3]in6;
  wire [12:0]in8;
  wire [23:0]man;
  wire [0:0]manA;
  wire [0:0]manB;
  wire man_1;
  wire [3:3]neg;
  wire \neg[3]_i_1_n_0 ;
  wire neg_0;
  wire [0:0]oper;
  wire p_0_in;
  wire [74:1]q0;
  wire q1_carry__0_i_1_n_0;
  wire q1_carry__0_i_2_n_0;
  wire q1_carry__0_i_3_n_0;
  wire q1_carry__0_n_0;
  wire q1_carry__0_n_1;
  wire q1_carry__0_n_2;
  wire q1_carry__0_n_3;
  wire q1_carry__1_i_1_n_0;
  wire q1_carry__1_i_2_n_0;
  wire q1_carry__1_n_0;
  wire q1_carry__1_n_1;
  wire q1_carry__1_n_2;
  wire q1_carry__1_n_3;
  wire q1_carry__2_n_0;
  wire q1_carry__2_n_1;
  wire q1_carry__2_n_2;
  wire q1_carry__2_n_3;
  wire q1_carry__3_i_1_n_0;
  wire q1_carry__3_i_2_n_0;
  wire q1_carry__3_i_3_n_0;
  wire q1_carry__3_i_4_n_0;
  wire q1_carry__3_n_0;
  wire q1_carry__3_n_1;
  wire q1_carry__3_n_2;
  wire q1_carry__3_n_3;
  wire q1_carry__4_i_1_n_0;
  wire q1_carry__4_n_3;
  wire q1_carry_i_1_n_0;
  wire q1_carry_i_2_n_0;
  wire q1_carry_i_3_n_0;
  wire q1_carry_n_0;
  wire q1_carry_n_1;
  wire q1_carry_n_2;
  wire q1_carry_n_3;
  wire \q[0]_i_1_n_0 ;
  wire \q[10]_i_1_n_0 ;
  wire \q[11]_i_1_n_0 ;
  wire \q[12]_i_1_n_0 ;
  wire \q[13]_i_1_n_0 ;
  wire \q[14]_i_1_n_0 ;
  wire \q[15]_i_1_n_0 ;
  wire \q[16]_i_1_n_0 ;
  wire \q[17]_i_1_n_0 ;
  wire \q[18]_i_1_n_0 ;
  wire \q[19]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[20]_i_1_n_0 ;
  wire \q[21]_i_1_n_0 ;
  wire \q[22]_i_1_n_0 ;
  wire \q[23]_i_1_n_0 ;
  wire \q[24]_i_1_n_0 ;
  wire \q[25]_i_1_n_0 ;
  wire \q[26]_i_1_n_0 ;
  wire \q[27]_i_1_n_0 ;
  wire \q[28]_i_1_n_0 ;
  wire \q[29]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q[30]_i_1_n_0 ;
  wire \q[31]_i_1_n_0 ;
  wire \q[32]_i_1_n_0 ;
  wire \q[33]_i_1_n_0 ;
  wire \q[34]_i_1_n_0 ;
  wire \q[35]_i_1_n_0 ;
  wire \q[36]_i_1_n_0 ;
  wire \q[37]_i_1_n_0 ;
  wire \q[38]_i_1_n_0 ;
  wire \q[39]_i_1_n_0 ;
  wire \q[3]_i_1_n_0 ;
  wire \q[40]_i_1_n_0 ;
  wire \q[41]_i_1_n_0 ;
  wire \q[42]_i_1_n_0 ;
  wire \q[43]_i_1_n_0 ;
  wire \q[44]_i_1_n_0 ;
  wire \q[45]_i_1_n_0 ;
  wire \q[46]_i_1_n_0 ;
  wire \q[47]_i_1_n_0 ;
  wire \q[48]_i_1_n_0 ;
  wire \q[49]_i_1_n_0 ;
  wire \q[4]_i_1_n_0 ;
  wire \q[50]_i_1_n_0 ;
  wire \q[51]_i_1_n_0 ;
  wire \q[52]_i_1_n_0 ;
  wire \q[53]_i_1_n_0 ;
  wire \q[54]_i_1_n_0 ;
  wire \q[55]_i_1_n_0 ;
  wire \q[56]_i_1_n_0 ;
  wire \q[57]_i_1_n_0 ;
  wire \q[58]_i_1_n_0 ;
  wire \q[59]_i_1_n_0 ;
  wire \q[5]_i_1_n_0 ;
  wire \q[60]_i_1_n_0 ;
  wire \q[61]_i_1_n_0 ;
  wire \q[62]_i_1_n_0 ;
  wire \q[63]_i_1_n_0 ;
  wire \q[64]_i_1_n_0 ;
  wire \q[65]_i_1_n_0 ;
  wire \q[66]_i_1_n_0 ;
  wire \q[67]_i_1_n_0 ;
  wire \q[68]_i_1_n_0 ;
  wire \q[69]_i_1_n_0 ;
  wire \q[6]_i_1_n_0 ;
  wire \q[70]_i_1_n_0 ;
  wire \q[71]_i_1_n_0 ;
  wire \q[72]_i_1_n_0 ;
  wire \q[73]_i_1_n_0 ;
  wire \q[74]_i_1_n_0 ;
  wire \q[74]_i_2_n_0 ;
  wire \q[7]_i_1_n_0 ;
  wire \q[8]_i_1_n_0 ;
  wire \q[9]_i_1_n_0 ;
  wire [23:0]r;
  wire r0_carry__0_i_1_n_0;
  wire r0_carry__0_n_0;
  wire r0_carry__0_n_1;
  wire r0_carry__0_n_2;
  wire r0_carry__0_n_3;
  wire r0_carry__1_i_1_n_0;
  wire r0_carry__1_i_2_n_0;
  wire r0_carry__1_n_0;
  wire r0_carry__1_n_1;
  wire r0_carry__1_n_2;
  wire r0_carry__1_n_3;
  wire r0_carry__2_i_1_n_0;
  wire r0_carry__2_i_2_n_0;
  wire r0_carry__2_i_3_n_0;
  wire r0_carry__2_i_4_n_0;
  wire r0_carry__2_n_0;
  wire r0_carry__2_n_1;
  wire r0_carry__2_n_2;
  wire r0_carry__2_n_3;
  wire r0_carry__3_n_0;
  wire r0_carry__3_n_1;
  wire r0_carry__3_n_2;
  wire r0_carry__3_n_3;
  wire r0_carry__4_i_1_n_0;
  wire r0_carry_i_1_n_0;
  wire r0_carry_i_2_n_0;
  wire r0_carry_n_0;
  wire r0_carry_n_1;
  wire r0_carry_n_2;
  wire r0_carry_n_3;
  wire \r[11]_i_10_n_0 ;
  wire \r[11]_i_11_n_0 ;
  wire \r[11]_i_2_n_0 ;
  wire \r[11]_i_3_n_0 ;
  wire \r[11]_i_4_n_0 ;
  wire \r[11]_i_5_n_0 ;
  wire \r[11]_i_6_n_0 ;
  wire \r[11]_i_7_n_0 ;
  wire \r[11]_i_8_n_0 ;
  wire \r[11]_i_9_n_0 ;
  wire \r[15]_i_2_n_0 ;
  wire \r[15]_i_3_n_0 ;
  wire \r[15]_i_4_n_0 ;
  wire \r[15]_i_5_n_0 ;
  wire \r[15]_i_6_n_0 ;
  wire \r[15]_i_7_n_0 ;
  wire \r[15]_i_8_n_0 ;
  wire \r[15]_i_9_n_0 ;
  wire \r[19]_i_2_n_0 ;
  wire \r[19]_i_3_n_0 ;
  wire \r[19]_i_4_n_0 ;
  wire \r[19]_i_5_n_0 ;
  wire \r[19]_i_6_n_0 ;
  wire \r[19]_i_7_n_0 ;
  wire \r[23]_i_10_n_0 ;
  wire \r[23]_i_11_n_0 ;
  wire \r[23]_i_12_n_0 ;
  wire \r[23]_i_13_n_0 ;
  wire \r[23]_i_1_n_0 ;
  wire \r[23]_i_3_n_0 ;
  wire \r[23]_i_4_n_0 ;
  wire \r[23]_i_5_n_0 ;
  wire \r[23]_i_6_n_0 ;
  wire \r[23]_i_7_n_0 ;
  wire \r[23]_i_8_n_0 ;
  wire \r[23]_i_9_n_0 ;
  wire \r[3]_i_2_n_0 ;
  wire \r[3]_i_3_n_0 ;
  wire \r[3]_i_4_n_0 ;
  wire \r[3]_i_5_n_0 ;
  wire \r[3]_i_6_n_0 ;
  wire \r[3]_i_7_n_0 ;
  wire \r[3]_i_8_n_0 ;
  wire \r[7]_i_2_n_0 ;
  wire \r[7]_i_3_n_0 ;
  wire \r[7]_i_4_n_0 ;
  wire \r[7]_i_5_n_0 ;
  wire \r[7]_i_6_n_0 ;
  wire \r[7]_i_7_n_0 ;
  wire \r[7]_i_8_n_0 ;
  wire \r[7]_i_9_n_0 ;
  wire [23:3]r_2;
  wire \r_reg[11]_i_1_n_0 ;
  wire \r_reg[11]_i_1_n_1 ;
  wire \r_reg[11]_i_1_n_2 ;
  wire \r_reg[11]_i_1_n_3 ;
  wire \r_reg[11]_i_1_n_4 ;
  wire \r_reg[11]_i_1_n_5 ;
  wire \r_reg[11]_i_1_n_6 ;
  wire \r_reg[11]_i_1_n_7 ;
  wire \r_reg[15]_i_1_n_0 ;
  wire \r_reg[15]_i_1_n_1 ;
  wire \r_reg[15]_i_1_n_2 ;
  wire \r_reg[15]_i_1_n_3 ;
  wire \r_reg[15]_i_1_n_4 ;
  wire \r_reg[15]_i_1_n_5 ;
  wire \r_reg[15]_i_1_n_6 ;
  wire \r_reg[15]_i_1_n_7 ;
  wire \r_reg[19]_i_1_n_0 ;
  wire \r_reg[19]_i_1_n_1 ;
  wire \r_reg[19]_i_1_n_2 ;
  wire \r_reg[19]_i_1_n_3 ;
  wire \r_reg[19]_i_1_n_4 ;
  wire \r_reg[19]_i_1_n_5 ;
  wire \r_reg[19]_i_1_n_6 ;
  wire \r_reg[19]_i_1_n_7 ;
  wire \r_reg[23]_i_2_n_1 ;
  wire \r_reg[23]_i_2_n_2 ;
  wire \r_reg[23]_i_2_n_3 ;
  wire \r_reg[23]_i_2_n_4 ;
  wire \r_reg[23]_i_2_n_5 ;
  wire \r_reg[23]_i_2_n_6 ;
  wire \r_reg[23]_i_2_n_7 ;
  wire \r_reg[3]_i_1_n_0 ;
  wire \r_reg[3]_i_1_n_1 ;
  wire \r_reg[3]_i_1_n_2 ;
  wire \r_reg[3]_i_1_n_3 ;
  wire \r_reg[3]_i_1_n_4 ;
  wire \r_reg[3]_i_1_n_5 ;
  wire \r_reg[3]_i_1_n_6 ;
  wire \r_reg[3]_i_1_n_7 ;
  wire \r_reg[7]_i_1_n_0 ;
  wire \r_reg[7]_i_1_n_1 ;
  wire \r_reg[7]_i_1_n_2 ;
  wire \r_reg[7]_i_1_n_3 ;
  wire \r_reg[7]_i_1_n_4 ;
  wire \r_reg[7]_i_1_n_5 ;
  wire \r_reg[7]_i_1_n_6 ;
  wire \r_reg[7]_i_1_n_7 ;
  wire start;
  wire [1:1]state__0;
  wire [3:1]NLW_q1_carry__4_CO_UNCONNECTED;
  wire [3:2]NLW_q1_carry__4_O_UNCONNECTED;
  wire [3:0]NLW_r0_carry__4_CO_UNCONNECTED;
  wire [3:1]NLW_r0_carry__4_O_UNCONNECTED;
  wire [3:3]\NLW_r_reg[23]_i_2_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(neg_0),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFC8C)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(state__0),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(neg_0),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCFFFC040)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(state__0),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(neg_0),
        .I4(finish),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004FFFFFFFFF)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(count_reg[2]),
        .I1(\count[6]_i_3_n_0 ),
        .I2(count_reg[3]),
        .I3(count_reg[4]),
        .I4(count_reg[5]),
        .I5(count_reg[6]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBFA0)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(Q[2]),
        .I1(dividerFin),
        .I2(oper),
        .I3(Q[3]),
        .O(\FSM_onehot_state_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(Q[3]),
        .I1(oper),
        .I2(dividerFin),
        .O(\FSM_onehot_state_reg[3] [1]));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(\count_reg[0]_0 ),
        .Q(neg_0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(state__0));
  (* FSM_ENCODED_STATES = "iSTATE:001,iSTATE0:010,iSTATE1:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(finish));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(count_reg[0]),
        .O(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[3]),
        .O(count[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(count[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(count_reg[4]),
        .I1(count_reg[3]),
        .I2(count_reg[2]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .I5(count_reg[5]),
        .O(count[5]));
  LUT3 #(
    .INIT(8'h80)) 
    \count[6]_i_1 
       (.I0(state__0),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \count[6]_i_2 
       (.I0(count_reg[5]),
        .I1(\count[6]_i_3_n_0 ),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .I5(count_reg[6]),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \count[6]_i_3 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(\count[6]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[0]),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[1]),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[2]),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[3]),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[4]),
        .Q(count_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[5]),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(\count[6]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(count[6]),
        .Q(count_reg[6]));
  LUT3 #(
    .INIT(8'hF8)) 
    finish_i_1
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(finish),
        .I2(dividerFin),
        .O(finish_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    finish_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(finish_i_1_n_0),
        .Q(dividerFin));
  LUT3 #(
    .INIT(8'h08)) 
    \man[23]_i_1 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(finish),
        .I2(\count_reg[0]_0 ),
        .O(man_1));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[0] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[1]),
        .Q(man[0]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[10] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[11]),
        .Q(man[10]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[11] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[12]),
        .Q(man[11]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[12] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[13]),
        .Q(man[12]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[13] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[14]),
        .Q(man[13]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[14] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[15]),
        .Q(man[14]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[15] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[16]),
        .Q(man[15]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[16] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[17]),
        .Q(man[16]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[17] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[18]),
        .Q(man[17]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[18] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[19]),
        .Q(man[18]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[19] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[20]),
        .Q(man[19]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[1] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[2]),
        .Q(man[1]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[20] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[21]),
        .Q(man[20]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[21] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[22]),
        .Q(man[21]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[22] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[23]),
        .Q(man[22]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[23] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[24]),
        .Q(man[23]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[2] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[3]),
        .Q(man[2]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[3] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[4]),
        .Q(man[3]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[4] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[5]),
        .Q(man[4]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[5] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[6]),
        .Q(man[5]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[6] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[7]),
        .Q(man[6]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[7] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[8]),
        .Q(man[7]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[8] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[9]),
        .Q(man[8]));
  FDCE #(
    .INIT(1'b0)) 
    \man_reg[9] 
       (.C(CLK),
        .CE(man_1),
        .CLR(\count_reg[0]_0 ),
        .D(q0[10]),
        .Q(man[9]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \neg[3]_i_1 
       (.I0(divB),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(neg_0),
        .I3(neg),
        .O(\neg[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \neg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\count_reg[0]_0 ),
        .D(\neg[3]_i_1_n_0 ),
        .Q(neg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q1_carry
       (.CI(1'b0),
        .CO({q1_carry_n_0,q1_carry_n_1,q1_carry_n_2,q1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(r[5:2]),
        .O(in6[6:3]),
        .S({q1_carry_i_1_n_0,q1_carry_i_2_n_0,r[3],q1_carry_i_3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q1_carry__0
       (.CI(q1_carry_n_0),
        .CO({q1_carry__0_n_0,q1_carry__0_n_1,q1_carry__0_n_2,q1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(r[9:6]),
        .O(in6[10:7]),
        .S({q1_carry__0_i_1_n_0,q1_carry__0_i_2_n_0,q1_carry__0_i_3_n_0,r[6]}));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__0_i_1
       (.I0(r[9]),
        .I1(neg),
        .O(q1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__0_i_2
       (.I0(r[8]),
        .I1(neg),
        .O(q1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__0_i_3
       (.I0(r[7]),
        .I1(neg),
        .O(q1_carry__0_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q1_carry__1
       (.CI(q1_carry__0_n_0),
        .CO({q1_carry__1_n_0,q1_carry__1_n_1,q1_carry__1_n_2,q1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(r[13:10]),
        .O(in6[14:11]),
        .S({q1_carry__1_i_1_n_0,q1_carry__1_i_2_n_0,r[11:10]}));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__1_i_1
       (.I0(r[13]),
        .I1(neg),
        .O(q1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__1_i_2
       (.I0(r[12]),
        .I1(neg),
        .O(q1_carry__1_i_2_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q1_carry__2
       (.CI(q1_carry__1_n_0),
        .CO({q1_carry__2_n_0,q1_carry__2_n_1,q1_carry__2_n_2,q1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(r[17:14]),
        .O(in6[18:15]),
        .S(r[17:14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q1_carry__3
       (.CI(q1_carry__2_n_0),
        .CO({q1_carry__3_n_0,q1_carry__3_n_1,q1_carry__3_n_2,q1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(r[21:18]),
        .O(in6[22:19]),
        .S({q1_carry__3_i_1_n_0,q1_carry__3_i_2_n_0,q1_carry__3_i_3_n_0,q1_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__3_i_1
       (.I0(r[21]),
        .I1(neg),
        .O(q1_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__3_i_2
       (.I0(r[20]),
        .I1(neg),
        .O(q1_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__3_i_3
       (.I0(r[19]),
        .I1(neg),
        .O(q1_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__3_i_4
       (.I0(r[18]),
        .I1(neg),
        .O(q1_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 q1_carry__4
       (.CI(q1_carry__3_n_0),
        .CO({NLW_q1_carry__4_CO_UNCONNECTED[3:1],q1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r[22]}),
        .O({NLW_q1_carry__4_O_UNCONNECTED[3:2],in6[24:23]}),
        .S({1'b0,1'b0,q1_carry__4_i_1_n_0,r[22]}));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry__4_i_1
       (.I0(r[23]),
        .I1(neg),
        .O(q1_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry_i_1
       (.I0(r[5]),
        .I1(neg),
        .O(q1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry_i_2
       (.I0(r[4]),
        .I1(neg),
        .O(q1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    q1_carry_i_3
       (.I0(r[2]),
        .I1(neg),
        .O(q1_carry_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \q[0]_i_1 
       (.I0(state__0),
        .I1(in6[24]),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[10]_i_1 
       (.I0(state__0),
        .I1(q0[10]),
        .O(\q[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[11]_i_1 
       (.I0(state__0),
        .I1(q0[11]),
        .O(\q[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[12]_i_1 
       (.I0(state__0),
        .I1(q0[12]),
        .O(\q[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[13]_i_1 
       (.I0(state__0),
        .I1(q0[13]),
        .O(\q[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[14]_i_1 
       (.I0(state__0),
        .I1(q0[14]),
        .O(\q[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[15]_i_1 
       (.I0(state__0),
        .I1(q0[15]),
        .O(\q[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[16]_i_1 
       (.I0(state__0),
        .I1(q0[16]),
        .O(\q[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[17]_i_1 
       (.I0(state__0),
        .I1(q0[17]),
        .O(\q[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[18]_i_1 
       (.I0(state__0),
        .I1(q0[18]),
        .O(\q[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[19]_i_1 
       (.I0(state__0),
        .I1(q0[19]),
        .O(\q[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \q[1]_i_1 
       (.I0(state__0),
        .I1(q0[1]),
        .O(\q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[20]_i_1 
       (.I0(state__0),
        .I1(q0[20]),
        .O(\q[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[21]_i_1 
       (.I0(state__0),
        .I1(q0[21]),
        .O(\q[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[22]_i_1 
       (.I0(state__0),
        .I1(q0[22]),
        .O(\q[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[23]_i_1 
       (.I0(state__0),
        .I1(q0[23]),
        .O(\q[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[24]_i_1 
       (.I0(state__0),
        .I1(q0[24]),
        .O(\q[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[25]_i_1 
       (.I0(state__0),
        .I1(q0[25]),
        .O(\q[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[26]_i_1 
       (.I0(state__0),
        .I1(q0[26]),
        .O(\q[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[27]_i_1 
       (.I0(state__0),
        .I1(q0[27]),
        .O(\q[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[28]_i_1 
       (.I0(state__0),
        .I1(q0[28]),
        .O(\q[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[29]_i_1 
       (.I0(state__0),
        .I1(q0[29]),
        .O(\q[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[2]_i_1 
       (.I0(state__0),
        .I1(q0[2]),
        .O(\q[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[30]_i_1 
       (.I0(state__0),
        .I1(q0[30]),
        .O(\q[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[31]_i_1 
       (.I0(state__0),
        .I1(q0[31]),
        .O(\q[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[32]_i_1 
       (.I0(state__0),
        .I1(q0[32]),
        .O(\q[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[33]_i_1 
       (.I0(state__0),
        .I1(q0[33]),
        .O(\q[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[34]_i_1 
       (.I0(state__0),
        .I1(q0[34]),
        .O(\q[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[35]_i_1 
       (.I0(state__0),
        .I1(q0[35]),
        .O(\q[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[36]_i_1 
       (.I0(state__0),
        .I1(q0[36]),
        .O(\q[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[37]_i_1 
       (.I0(state__0),
        .I1(q0[37]),
        .O(\q[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[38]_i_1 
       (.I0(state__0),
        .I1(q0[38]),
        .O(\q[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[39]_i_1 
       (.I0(state__0),
        .I1(q0[39]),
        .O(\q[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[3]_i_1 
       (.I0(state__0),
        .I1(q0[3]),
        .O(\q[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[40]_i_1 
       (.I0(state__0),
        .I1(q0[40]),
        .O(\q[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[41]_i_1 
       (.I0(state__0),
        .I1(q0[41]),
        .O(\q[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[42]_i_1 
       (.I0(state__0),
        .I1(q0[42]),
        .O(\q[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[43]_i_1 
       (.I0(state__0),
        .I1(q0[43]),
        .O(\q[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[44]_i_1 
       (.I0(state__0),
        .I1(q0[44]),
        .O(\q[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[45]_i_1 
       (.I0(state__0),
        .I1(q0[45]),
        .O(\q[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[46]_i_1 
       (.I0(state__0),
        .I1(q0[46]),
        .O(\q[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[47]_i_1 
       (.I0(state__0),
        .I1(q0[47]),
        .O(\q[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[48]_i_1 
       (.I0(state__0),
        .I1(q0[48]),
        .O(\q[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[49]_i_1 
       (.I0(state__0),
        .I1(q0[49]),
        .O(\q[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[4]_i_1 
       (.I0(state__0),
        .I1(q0[4]),
        .O(\q[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[50]_i_1 
       (.I0(q0[50]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[51]_i_1 
       (.I0(state__0),
        .I1(q0[51]),
        .O(\q[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[52]_i_1 
       (.I0(q0[52]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[53]_i_1 
       (.I0(q0[53]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[54]_i_1 
       (.I0(state__0),
        .I1(q0[54]),
        .O(\q[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[55]_i_1 
       (.I0(state__0),
        .I1(q0[55]),
        .O(\q[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[56]_i_1 
       (.I0(q0[56]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[57]_i_1 
       (.I0(q0[57]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[58]_i_1 
       (.I0(q0[58]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[59]_i_1 
       (.I0(q0[59]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[5]_i_1 
       (.I0(state__0),
        .I1(q0[5]),
        .O(\q[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[60]_i_1 
       (.I0(state__0),
        .I1(q0[60]),
        .O(\q[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[61]_i_1 
       (.I0(q0[61]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[62]_i_1 
       (.I0(state__0),
        .I1(q0[62]),
        .O(\q[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[63]_i_1 
       (.I0(q0[63]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[63]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[64]_i_1 
       (.I0(state__0),
        .I1(q0[64]),
        .O(\q[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[65]_i_1 
       (.I0(q0[65]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[65]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[66]_i_1 
       (.I0(q0[66]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[66]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[67]_i_1 
       (.I0(q0[67]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[67]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[68]_i_1 
       (.I0(q0[68]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[68]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[69]_i_1 
       (.I0(state__0),
        .I1(q0[69]),
        .O(\q[69]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[6]_i_1 
       (.I0(state__0),
        .I1(q0[6]),
        .O(\q[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[70]_i_1 
       (.I0(state__0),
        .I1(q0[70]),
        .O(\q[70]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[71]_i_1 
       (.I0(state__0),
        .I1(q0[71]),
        .O(\q[71]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[72]_i_1 
       (.I0(q0[72]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[72]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \q[73]_i_1 
       (.I0(q0[73]),
        .I1(state__0),
        .I2(in4),
        .I3(neg_0),
        .O(\q[73]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCC80)) 
    \q[74]_i_1 
       (.I0(state__0),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .I2(\FSM_onehot_state[2]_i_2_n_0 ),
        .I3(neg_0),
        .O(\q[74]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[74]_i_2 
       (.I0(state__0),
        .I1(q0[74]),
        .O(\q[74]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[7]_i_1 
       (.I0(state__0),
        .I1(q0[7]),
        .O(\q[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[8]_i_1 
       (.I0(state__0),
        .I1(q0[8]),
        .O(\q[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \q[9]_i_1 
       (.I0(state__0),
        .I1(q0[9]),
        .O(\q[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[0]_i_1_n_0 ),
        .Q(q0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[10] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[10]_i_1_n_0 ),
        .Q(q0[11]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[11] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[11]_i_1_n_0 ),
        .Q(q0[12]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[12] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[12]_i_1_n_0 ),
        .Q(q0[13]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[13] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[13]_i_1_n_0 ),
        .Q(q0[14]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[14] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[14]_i_1_n_0 ),
        .Q(q0[15]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[15] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[15]_i_1_n_0 ),
        .Q(q0[16]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[16] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[16]_i_1_n_0 ),
        .Q(q0[17]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[17] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[17]_i_1_n_0 ),
        .Q(q0[18]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[18] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[18]_i_1_n_0 ),
        .Q(q0[19]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[19] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[19]_i_1_n_0 ),
        .Q(q0[20]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[1]_i_1_n_0 ),
        .Q(q0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[20] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[20]_i_1_n_0 ),
        .Q(q0[21]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[21] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[21]_i_1_n_0 ),
        .Q(q0[22]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[22] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[22]_i_1_n_0 ),
        .Q(q0[23]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[23] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[23]_i_1_n_0 ),
        .Q(q0[24]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[24] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[24]_i_1_n_0 ),
        .Q(q0[25]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[25] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[25]_i_1_n_0 ),
        .Q(q0[26]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[26] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[26]_i_1_n_0 ),
        .Q(q0[27]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[27] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[27]_i_1_n_0 ),
        .Q(q0[28]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[28] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[28]_i_1_n_0 ),
        .Q(q0[29]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[29] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[29]_i_1_n_0 ),
        .Q(q0[30]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[2]_i_1_n_0 ),
        .Q(q0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[30] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[30]_i_1_n_0 ),
        .Q(q0[31]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[31] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[31]_i_1_n_0 ),
        .Q(q0[32]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[32] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[32]_i_1_n_0 ),
        .Q(q0[33]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[33] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[33]_i_1_n_0 ),
        .Q(q0[34]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[34] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[34]_i_1_n_0 ),
        .Q(q0[35]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[35] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[35]_i_1_n_0 ),
        .Q(q0[36]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[36] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[36]_i_1_n_0 ),
        .Q(q0[37]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[37] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[37]_i_1_n_0 ),
        .Q(q0[38]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[38] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[38]_i_1_n_0 ),
        .Q(q0[39]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[39] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[39]_i_1_n_0 ),
        .Q(q0[40]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[3]_i_1_n_0 ),
        .Q(q0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[40] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[40]_i_1_n_0 ),
        .Q(q0[41]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[41] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[41]_i_1_n_0 ),
        .Q(q0[42]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[42] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[42]_i_1_n_0 ),
        .Q(q0[43]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[43] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[43]_i_1_n_0 ),
        .Q(q0[44]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[44] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[44]_i_1_n_0 ),
        .Q(q0[45]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[45] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[45]_i_1_n_0 ),
        .Q(q0[46]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[46] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[46]_i_1_n_0 ),
        .Q(q0[47]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[47] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[47]_i_1_n_0 ),
        .Q(q0[48]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[48] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[48]_i_1_n_0 ),
        .Q(q0[49]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[49] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[49]_i_1_n_0 ),
        .Q(q0[50]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[4]_i_1_n_0 ),
        .Q(q0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[50] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[50]_i_1_n_0 ),
        .Q(q0[51]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[51] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[51]_i_1_n_0 ),
        .Q(q0[52]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[52] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[52]_i_1_n_0 ),
        .Q(q0[53]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[53] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[53]_i_1_n_0 ),
        .Q(q0[54]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[54] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[54]_i_1_n_0 ),
        .Q(q0[55]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[55] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[55]_i_1_n_0 ),
        .Q(q0[56]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[56] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[56]_i_1_n_0 ),
        .Q(q0[57]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[57] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[57]_i_1_n_0 ),
        .Q(q0[58]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[58] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[58]_i_1_n_0 ),
        .Q(q0[59]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[59] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[59]_i_1_n_0 ),
        .Q(q0[60]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[5]_i_1_n_0 ),
        .Q(q0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[60] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[60]_i_1_n_0 ),
        .Q(q0[61]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[61] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[61]_i_1_n_0 ),
        .Q(q0[62]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[62] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[62]_i_1_n_0 ),
        .Q(q0[63]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[63] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[63]_i_1_n_0 ),
        .Q(q0[64]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[64] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[64]_i_1_n_0 ),
        .Q(q0[65]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[65] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[65]_i_1_n_0 ),
        .Q(q0[66]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[66] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[66]_i_1_n_0 ),
        .Q(q0[67]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[67] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[67]_i_1_n_0 ),
        .Q(q0[68]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[68] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[68]_i_1_n_0 ),
        .Q(q0[69]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[69] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[69]_i_1_n_0 ),
        .Q(q0[70]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[6]_i_1_n_0 ),
        .Q(q0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[70] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[70]_i_1_n_0 ),
        .Q(q0[71]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[71] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[71]_i_1_n_0 ),
        .Q(q0[72]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[72] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[72]_i_1_n_0 ),
        .Q(q0[73]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[73] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[73]_i_1_n_0 ),
        .Q(q0[74]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[74] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[74]_i_2_n_0 ),
        .Q(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[7]_i_1_n_0 ),
        .Q(q0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[8] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[8]_i_1_n_0 ),
        .Q(q0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \q_reg[9] 
       (.C(CLK),
        .CE(\q[74]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\q[9]_i_1_n_0 ),
        .Q(q0[10]));
  CARRY4 r0_carry
       (.CI(1'b0),
        .CO({r0_carry_n_0,r0_carry_n_1,r0_carry_n_2,r0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(in6[6:3]),
        .O(r_2[6:3]),
        .S({in6[6:5],r0_carry_i_1_n_0,r0_carry_i_2_n_0}));
  CARRY4 r0_carry__0
       (.CI(r0_carry_n_0),
        .CO({r0_carry__0_n_0,r0_carry__0_n_1,r0_carry__0_n_2,r0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(in6[10:7]),
        .O(r_2[10:7]),
        .S({in6[10:8],r0_carry__0_i_1_n_0}));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__0_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[7]),
        .O(r0_carry__0_i_1_n_0));
  CARRY4 r0_carry__1
       (.CI(r0_carry__0_n_0),
        .CO({r0_carry__1_n_0,r0_carry__1_n_1,r0_carry__1_n_2,r0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(in6[14:11]),
        .O(r_2[14:11]),
        .S({in6[14:13],r0_carry__1_i_1_n_0,r0_carry__1_i_2_n_0}));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__1_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[12]),
        .O(r0_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__1_i_2
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[11]),
        .O(r0_carry__1_i_2_n_0));
  CARRY4 r0_carry__2
       (.CI(r0_carry__1_n_0),
        .CO({r0_carry__2_n_0,r0_carry__2_n_1,r0_carry__2_n_2,r0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(in6[18:15]),
        .O(r_2[18:15]),
        .S({r0_carry__2_i_1_n_0,r0_carry__2_i_2_n_0,r0_carry__2_i_3_n_0,r0_carry__2_i_4_n_0}));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__2_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[18]),
        .O(r0_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__2_i_2
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[17]),
        .O(r0_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__2_i_3
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[16]),
        .O(r0_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__2_i_4
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[15]),
        .O(r0_carry__2_i_4_n_0));
  CARRY4 r0_carry__3
       (.CI(r0_carry__2_n_0),
        .CO({r0_carry__3_n_0,r0_carry__3_n_1,r0_carry__3_n_2,r0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(in6[22:19]),
        .O(r_2[22:19]),
        .S(in6[22:19]));
  CARRY4 r0_carry__4
       (.CI(r0_carry__3_n_0),
        .CO(NLW_r0_carry__4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r0_carry__4_O_UNCONNECTED[3:1],r_2[23]}),
        .S({1'b0,1'b0,1'b0,r0_carry__4_i_1_n_0}));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry__4_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[23]),
        .O(r0_carry__4_i_1_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[4]),
        .O(r0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7F80)) 
    r0_carry_i_2
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(in6[24]),
        .I2(divB),
        .I3(in6[3]),
        .O(r0_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[11]_i_10 
       (.I0(state__0),
        .I1(r_2[9]),
        .I2(in6[9]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[11]_i_11 
       (.I0(state__0),
        .I1(r_2[8]),
        .I2(in6[8]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[11]_i_2 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[11]_i_3 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[11]_i_4 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[11]_i_5 
       (.I0(state__0),
        .I1(r_2[11]),
        .I2(in6[11]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[10]),
        .O(\r[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[11]_i_6 
       (.I0(neg),
        .I1(r[9]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[11]_i_9_n_0 ),
        .O(\r[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[11]_i_7 
       (.I0(neg),
        .I1(r[8]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[11]_i_10_n_0 ),
        .O(\r[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[11]_i_8 
       (.I0(neg),
        .I1(r[7]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[11]_i_11_n_0 ),
        .O(\r[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[11]_i_9 
       (.I0(state__0),
        .I1(r_2[10]),
        .I2(in6[10]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[15]_i_2 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[15]_i_3 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[15]_i_4 
       (.I0(state__0),
        .I1(r_2[15]),
        .I2(in6[15]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[14]),
        .O(\r[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[15]_i_5 
       (.I0(neg),
        .I1(r[13]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[15]_i_8_n_0 ),
        .O(\r[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[15]_i_6 
       (.I0(neg),
        .I1(r[12]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[15]_i_9_n_0 ),
        .O(\r[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[15]_i_7 
       (.I0(state__0),
        .I1(r_2[12]),
        .I2(in6[12]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[11]),
        .O(\r[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[15]_i_8 
       (.I0(state__0),
        .I1(r_2[14]),
        .I2(in6[14]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[15]_i_9 
       (.I0(state__0),
        .I1(r_2[13]),
        .I2(in6[13]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[19]_i_2 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[19]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[19]_i_3 
       (.I0(neg),
        .I1(r[18]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[19]_i_7_n_0 ),
        .O(\r[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[19]_i_4 
       (.I0(state__0),
        .I1(r_2[18]),
        .I2(in6[18]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[17]),
        .O(\r[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[19]_i_5 
       (.I0(state__0),
        .I1(r_2[17]),
        .I2(in6[17]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[16]),
        .O(\r[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[19]_i_6 
       (.I0(state__0),
        .I1(r_2[16]),
        .I2(in6[16]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[15]),
        .O(\r[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[19]_i_7 
       (.I0(state__0),
        .I1(r_2[19]),
        .I2(in6[19]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8000C000)) 
    \r[23]_i_1 
       (.I0(in6[24]),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(state__0),
        .I3(\FSM_onehot_state_reg[2]_0 ),
        .I4(\count_reg[0]_0 ),
        .O(\r[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[23]_i_10 
       (.I0(finish),
        .I1(neg_0),
        .O(\r[23]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[23]_i_11 
       (.I0(state__0),
        .I1(r_2[22]),
        .I2(in6[22]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[23]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[23]_i_12 
       (.I0(state__0),
        .I1(r_2[21]),
        .I2(in6[21]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[23]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[23]_i_13 
       (.I0(state__0),
        .I1(r_2[20]),
        .I2(in6[20]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[23]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[23]_i_3 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[23]_i_4 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[23]_i_5 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[23]_i_6 
       (.I0(state__0),
        .I1(r_2[23]),
        .I2(in6[23]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[22]),
        .O(\r[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[23]_i_7 
       (.I0(neg),
        .I1(r[21]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[23]_i_11_n_0 ),
        .O(\r[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[23]_i_8 
       (.I0(neg),
        .I1(r[20]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[23]_i_12_n_0 ),
        .O(\r[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[23]_i_9 
       (.I0(neg),
        .I1(r[19]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[23]_i_13_n_0 ),
        .O(\r[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[3]_i_2 
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[3]_i_3 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[3]_i_4 
       (.I0(neg),
        .I1(r[2]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[3]_i_8_n_0 ),
        .O(\r[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \r[3]_i_5 
       (.I0(state__0),
        .I1(finish),
        .I2(neg_0),
        .I3(\FSM_onehot_state_reg[2]_0 ),
        .I4(r[1]),
        .O(\r[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0000)) 
    \r[3]_i_6 
       (.I0(state__0),
        .I1(finish),
        .I2(neg_0),
        .I3(\FSM_onehot_state_reg[2]_0 ),
        .I4(r[0]),
        .O(\r[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h88888880)) 
    \r[3]_i_7 
       (.I0(\FSM_onehot_state_reg[2]_0 ),
        .I1(p_0_in),
        .I2(neg_0),
        .I3(finish),
        .I4(state__0),
        .O(\r[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[3]_i_8 
       (.I0(state__0),
        .I1(r_2[3]),
        .I2(in6[3]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[7]_i_2 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[7]_i_3 
       (.I0(neg),
        .I1(\FSM_onehot_state_reg[2]_0 ),
        .O(\r[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[7]_i_4 
       (.I0(state__0),
        .I1(r_2[7]),
        .I2(in6[7]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[6]),
        .O(\r[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[7]_i_5 
       (.I0(neg),
        .I1(r[5]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[7]_i_8_n_0 ),
        .O(\r[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \r[7]_i_6 
       (.I0(neg),
        .I1(r[4]),
        .I2(\FSM_onehot_state_reg[2]_0 ),
        .I3(\r[7]_i_9_n_0 ),
        .O(\r[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \r[7]_i_7 
       (.I0(state__0),
        .I1(r_2[4]),
        .I2(in6[4]),
        .I3(\r[23]_i_10_n_0 ),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(r[3]),
        .O(\r[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[7]_i_8 
       (.I0(state__0),
        .I1(r_2[6]),
        .I2(in6[6]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F888)) 
    \r[7]_i_9 
       (.I0(state__0),
        .I1(r_2[5]),
        .I2(in6[5]),
        .I3(finish),
        .I4(neg_0),
        .O(\r[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[0] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[3]_i_1_n_7 ),
        .Q(r[0]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[10] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[11]_i_1_n_5 ),
        .Q(r[10]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[11] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[11]_i_1_n_4 ),
        .Q(r[11]));
  CARRY4 \r_reg[11]_i_1 
       (.CI(\r_reg[7]_i_1_n_0 ),
        .CO({\r_reg[11]_i_1_n_0 ,\r_reg[11]_i_1_n_1 ,\r_reg[11]_i_1_n_2 ,\r_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\r[11]_i_2_n_0 ,\r[11]_i_3_n_0 ,\r[11]_i_4_n_0 }),
        .O({\r_reg[11]_i_1_n_4 ,\r_reg[11]_i_1_n_5 ,\r_reg[11]_i_1_n_6 ,\r_reg[11]_i_1_n_7 }),
        .S({\r[11]_i_5_n_0 ,\r[11]_i_6_n_0 ,\r[11]_i_7_n_0 ,\r[11]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[12] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[15]_i_1_n_7 ),
        .Q(r[12]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[13] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[15]_i_1_n_6 ),
        .Q(r[13]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[14] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[15]_i_1_n_5 ),
        .Q(r[14]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[15] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[15]_i_1_n_4 ),
        .Q(r[15]));
  CARRY4 \r_reg[15]_i_1 
       (.CI(\r_reg[11]_i_1_n_0 ),
        .CO({\r_reg[15]_i_1_n_0 ,\r_reg[15]_i_1_n_1 ,\r_reg[15]_i_1_n_2 ,\r_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\r[15]_i_2_n_0 ,\r[15]_i_3_n_0 ,1'b0}),
        .O({\r_reg[15]_i_1_n_4 ,\r_reg[15]_i_1_n_5 ,\r_reg[15]_i_1_n_6 ,\r_reg[15]_i_1_n_7 }),
        .S({\r[15]_i_4_n_0 ,\r[15]_i_5_n_0 ,\r[15]_i_6_n_0 ,\r[15]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[16] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[19]_i_1_n_7 ),
        .Q(r[16]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[17] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[19]_i_1_n_6 ),
        .Q(r[17]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[18] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[19]_i_1_n_5 ),
        .Q(r[18]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[19] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[19]_i_1_n_4 ),
        .Q(r[19]));
  CARRY4 \r_reg[19]_i_1 
       (.CI(\r_reg[15]_i_1_n_0 ),
        .CO({\r_reg[19]_i_1_n_0 ,\r_reg[19]_i_1_n_1 ,\r_reg[19]_i_1_n_2 ,\r_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\r[19]_i_2_n_0 ,1'b0,1'b0,1'b0}),
        .O({\r_reg[19]_i_1_n_4 ,\r_reg[19]_i_1_n_5 ,\r_reg[19]_i_1_n_6 ,\r_reg[19]_i_1_n_7 }),
        .S({\r[19]_i_3_n_0 ,\r[19]_i_4_n_0 ,\r[19]_i_5_n_0 ,\r[19]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[1] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[3]_i_1_n_6 ),
        .Q(r[1]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[20] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[23]_i_2_n_7 ),
        .Q(r[20]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[21] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[23]_i_2_n_6 ),
        .Q(r[21]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[22] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[23]_i_2_n_5 ),
        .Q(r[22]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[23] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[23]_i_2_n_4 ),
        .Q(r[23]));
  CARRY4 \r_reg[23]_i_2 
       (.CI(\r_reg[19]_i_1_n_0 ),
        .CO({\NLW_r_reg[23]_i_2_CO_UNCONNECTED [3],\r_reg[23]_i_2_n_1 ,\r_reg[23]_i_2_n_2 ,\r_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\r[23]_i_3_n_0 ,\r[23]_i_4_n_0 ,\r[23]_i_5_n_0 }),
        .O({\r_reg[23]_i_2_n_4 ,\r_reg[23]_i_2_n_5 ,\r_reg[23]_i_2_n_6 ,\r_reg[23]_i_2_n_7 }),
        .S({\r[23]_i_6_n_0 ,\r[23]_i_7_n_0 ,\r[23]_i_8_n_0 ,\r[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[2] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[3]_i_1_n_5 ),
        .Q(r[2]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[3] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[3]_i_1_n_4 ),
        .Q(r[3]));
  CARRY4 \r_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\r_reg[3]_i_1_n_0 ,\r_reg[3]_i_1_n_1 ,\r_reg[3]_i_1_n_2 ,\r_reg[3]_i_1_n_3 }),
        .CYINIT(\r[3]_i_2_n_0 ),
        .DI({\r[3]_i_3_n_0 ,1'b0,1'b0,1'b0}),
        .O({\r_reg[3]_i_1_n_4 ,\r_reg[3]_i_1_n_5 ,\r_reg[3]_i_1_n_6 ,\r_reg[3]_i_1_n_7 }),
        .S({\r[3]_i_4_n_0 ,\r[3]_i_5_n_0 ,\r[3]_i_6_n_0 ,\r[3]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[4] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[7]_i_1_n_7 ),
        .Q(r[4]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[5] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[7]_i_1_n_6 ),
        .Q(r[5]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[6] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[7]_i_1_n_5 ),
        .Q(r[6]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[7] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[7]_i_1_n_4 ),
        .Q(r[7]));
  CARRY4 \r_reg[7]_i_1 
       (.CI(\r_reg[3]_i_1_n_0 ),
        .CO({\r_reg[7]_i_1_n_0 ,\r_reg[7]_i_1_n_1 ,\r_reg[7]_i_1_n_2 ,\r_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\r[7]_i_2_n_0 ,\r[7]_i_3_n_0 ,1'b0}),
        .O({\r_reg[7]_i_1_n_4 ,\r_reg[7]_i_1_n_5 ,\r_reg[7]_i_1_n_6 ,\r_reg[7]_i_1_n_7 }),
        .S({\r[7]_i_4_n_0 ,\r[7]_i_5_n_0 ,\r[7]_i_6_n_0 ,\r[7]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[8] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[11]_i_1_n_7 ),
        .Q(r[8]));
  FDCE #(
    .INIT(1'b0)) 
    \r_reg[9] 
       (.C(CLK),
        .CE(\r[23]_i_1_n_0 ),
        .CLR(\count_reg[0]_0 ),
        .D(\r_reg[11]_i_1_n_6 ),
        .Q(r[9]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \value[0]_i_1 
       (.I0(manA),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(man[0]),
        .I4(Q[3]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[10]_i_1 
       (.I0(in8[5]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[10]),
        .I4(Q[1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFFFF60FF60FF60)) 
    \value[11]_i_1 
       (.I0(manB),
        .I1(manA),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(man[11]),
        .I5(Q[3]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[12]_i_1 
       (.I0(in8[6]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[12]),
        .I4(Q[1]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[13]_i_1 
       (.I0(in8[7]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[13]),
        .I4(Q[1]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[14]_i_1 
       (.I0(in8[8]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[14]),
        .I4(Q[1]),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFFFF60FF60FF60)) 
    \value[15]_i_1 
       (.I0(manB),
        .I1(manA),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(man[15]),
        .I5(Q[3]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[16]_i_1 
       (.I0(in8[9]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[16]),
        .I4(Q[1]),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[17]_i_1 
       (.I0(in8[10]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[17]),
        .I4(Q[1]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[18]_i_1 
       (.I0(in8[11]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[18]),
        .I4(Q[1]),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[19]_i_1 
       (.I0(in8[12]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[19]),
        .I4(Q[1]),
        .O(D[19]));
  LUT3 #(
    .INIT(8'hEA)) 
    \value[1]_i_1 
       (.I0(Q[1]),
        .I1(man[1]),
        .I2(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \value[20]_i_1 
       (.I0(Q[1]),
        .I1(man[20]),
        .I2(Q[3]),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \value[21]_i_1 
       (.I0(Q[1]),
        .I1(man[21]),
        .I2(Q[3]),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \value[22]_i_1 
       (.I0(manA),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(man[22]),
        .I4(Q[3]),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFFFF60FF60FF60)) 
    \value[23]_i_1 
       (.I0(manB),
        .I1(manA),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(man[23]),
        .I5(Q[3]),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \value[24]_i_1 
       (.I0(start),
        .I1(Q[3]),
        .I2(oper),
        .I3(dividerFin),
        .I4(Q[0]),
        .O(E));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \value[2]_i_1 
       (.I0(manA),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(man[2]),
        .I4(Q[3]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[3]_i_1 
       (.I0(in8[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[3]),
        .I4(Q[1]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[4]_i_1 
       (.I0(in8[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[4]),
        .I4(Q[1]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[5]_i_1 
       (.I0(in8[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[5]),
        .I4(Q[1]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \value[6]_i_1 
       (.I0(manA),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(man[6]),
        .I4(Q[3]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFF60FF60FF60)) 
    \value[7]_i_1 
       (.I0(manB),
        .I1(manA),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(man[7]),
        .I5(Q[3]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[8]_i_1 
       (.I0(in8[3]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[8]),
        .I4(Q[1]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \value[9]_i_1 
       (.I0(in8[4]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(man[9]),
        .I4(Q[1]),
        .O(D[9]));
endmodule

module ledDisplay
   (Q,
    toggleSwitches_IBUF,
    CLK,
    reset_IBUF,
    switches_IBUF,
    \regNumber_reg[24]_0 );
  output [3:0]Q;
  input [1:0]toggleSwitches_IBUF;
  input CLK;
  input reset_IBUF;
  input [2:0]switches_IBUF;
  input [24:0]\regNumber_reg[24]_0 ;

  wire CLK;
  wire [3:0]Q;
  wire control;
  wire \count[0]_i_1_n_0 ;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[1]_i_3_n_0 ;
  wire \count[1]_i_4_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_3_n_0 ;
  wire \count[2]_i_4_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count[3]_i_4_n_0 ;
  wire \count[3]_i_5_n_0 ;
  wire \count[3]_i_6_n_0 ;
  wire \count[3]_i_7_n_0 ;
  wire \count_reg[1]_i_2_n_0 ;
  wire \count_reg[2]_i_2_n_0 ;
  wire \count_reg[3]_i_3_n_0 ;
  wire p_0_in;
  wire prev_ctrl0;
  wire prev_ctrl2;
  wire [24:0]regNumber;
  wire regNumber1;
  wire [24:0]\regNumber_reg[24]_0 ;
  wire reset_IBUF;
  wire [2:0]switches_IBUF;
  wire [1:0]toggleSwitches_IBUF;

  LUT2 #(
    .INIT(4'h2)) 
    control_i_1
       (.I0(toggleSwitches_IBUF[0]),
        .I1(prev_ctrl0),
        .O(regNumber1));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT1 #(
    .INIT(2'h1)) 
    control_i_2
       (.I0(control),
        .O(p_0_in));
  FDPE #(
    .INIT(1'b1)) 
    control_reg
       (.C(CLK),
        .CE(regNumber1),
        .D(p_0_in),
        .PRE(reset_IBUF),
        .Q(control));
  LUT6 #(
    .INIT(64'h4447444744474444)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .I1(\count[3]_i_4_n_0 ),
        .I2(regNumber1),
        .I3(\count[0]_i_2_n_0 ),
        .I4(switches_IBUF[0]),
        .I5(\count[0]_i_3_n_0 ),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0A002A2AAAA02A2)) 
    \count[0]_i_2 
       (.I0(switches_IBUF[0]),
        .I1(regNumber[4]),
        .I2(switches_IBUF[2]),
        .I3(regNumber[20]),
        .I4(switches_IBUF[1]),
        .I5(regNumber[12]),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \count[0]_i_3 
       (.I0(regNumber[24]),
        .I1(regNumber[8]),
        .I2(switches_IBUF[1]),
        .I3(regNumber[16]),
        .I4(switches_IBUF[2]),
        .I5(regNumber[0]),
        .O(\count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFF00B0B0B0B0)) 
    \count[1]_i_1 
       (.I0(prev_ctrl0),
        .I1(toggleSwitches_IBUF[0]),
        .I2(\count_reg[1]_i_2_n_0 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\count[3]_i_4_n_0 ),
        .O(\count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \count[1]_i_3 
       (.I0(regNumber[9]),
        .I1(switches_IBUF[1]),
        .I2(regNumber[17]),
        .I3(switches_IBUF[2]),
        .I4(regNumber[1]),
        .O(\count[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \count[1]_i_4 
       (.I0(regNumber[13]),
        .I1(switches_IBUF[1]),
        .I2(regNumber[21]),
        .I3(switches_IBUF[2]),
        .I4(regNumber[5]),
        .O(\count[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0F0F044444444)) 
    \count[2]_i_1 
       (.I0(regNumber1),
        .I1(\count_reg[2]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\count[3]_i_4_n_0 ),
        .O(\count[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \count[2]_i_3 
       (.I0(regNumber[10]),
        .I1(switches_IBUF[1]),
        .I2(regNumber[18]),
        .I3(switches_IBUF[2]),
        .I4(regNumber[2]),
        .O(\count[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \count[2]_i_4 
       (.I0(regNumber[14]),
        .I1(switches_IBUF[1]),
        .I2(regNumber[22]),
        .I3(switches_IBUF[2]),
        .I4(regNumber[6]),
        .O(\count[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F400F044F4FFFF)) 
    \count[3]_i_1 
       (.I0(prev_ctrl2),
        .I1(toggleSwitches_IBUF[1]),
        .I2(toggleSwitches_IBUF[0]),
        .I3(prev_ctrl0),
        .I4(control),
        .I5(reset_IBUF),
        .O(\count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h04F4F404F404F404)) 
    \count[3]_i_2 
       (.I0(regNumber1),
        .I1(\count_reg[3]_i_3_n_0 ),
        .I2(\count[3]_i_4_n_0 ),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(\count[3]_i_5_n_0 ),
        .O(\count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \count[3]_i_4 
       (.I0(prev_ctrl2),
        .I1(toggleSwitches_IBUF[1]),
        .I2(control),
        .O(\count[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_5 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \count[3]_i_6 
       (.I0(regNumber[11]),
        .I1(switches_IBUF[1]),
        .I2(regNumber[19]),
        .I3(switches_IBUF[2]),
        .I4(regNumber[3]),
        .O(\count[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \count[3]_i_7 
       (.I0(regNumber[15]),
        .I1(switches_IBUF[1]),
        .I2(regNumber[23]),
        .I3(switches_IBUF[2]),
        .I4(regNumber[7]),
        .O(\count[3]_i_7_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\count[1]_i_1_n_0 ),
        .Q(Q[1]));
  MUXF7 \count_reg[1]_i_2 
       (.I0(\count[1]_i_3_n_0 ),
        .I1(\count[1]_i_4_n_0 ),
        .O(\count_reg[1]_i_2_n_0 ),
        .S(switches_IBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]));
  MUXF7 \count_reg[2]_i_2 
       (.I0(\count[2]_i_3_n_0 ),
        .I1(\count[2]_i_4_n_0 ),
        .O(\count_reg[2]_i_2_n_0 ),
        .S(switches_IBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\count[3]_i_2_n_0 ),
        .Q(Q[3]));
  MUXF7 \count_reg[3]_i_3 
       (.I0(\count[3]_i_6_n_0 ),
        .I1(\count[3]_i_7_n_0 ),
        .O(\count_reg[3]_i_3_n_0 ),
        .S(switches_IBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    prev_ctrl0_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(toggleSwitches_IBUF[0]),
        .Q(prev_ctrl0));
  FDCE #(
    .INIT(1'b0)) 
    prev_ctrl2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(toggleSwitches_IBUF[1]),
        .Q(prev_ctrl2));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[0] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [0]),
        .Q(regNumber[0]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[10] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [10]),
        .Q(regNumber[10]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[11] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [11]),
        .Q(regNumber[11]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[12] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [12]),
        .Q(regNumber[12]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[13] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [13]),
        .Q(regNumber[13]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[14] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [14]),
        .Q(regNumber[14]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[15] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [15]),
        .Q(regNumber[15]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[16] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [16]),
        .Q(regNumber[16]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[17] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [17]),
        .Q(regNumber[17]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[18] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [18]),
        .Q(regNumber[18]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[19] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [19]),
        .Q(regNumber[19]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[1] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [1]),
        .Q(regNumber[1]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[20] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [20]),
        .Q(regNumber[20]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[21] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [21]),
        .Q(regNumber[21]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[22] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [22]),
        .Q(regNumber[22]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[23] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [23]),
        .Q(regNumber[23]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[24] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [24]),
        .Q(regNumber[24]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[2] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [2]),
        .Q(regNumber[2]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[3] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [3]),
        .Q(regNumber[3]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[4] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [4]),
        .Q(regNumber[4]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[5] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [5]),
        .Q(regNumber[5]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[6] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [6]),
        .Q(regNumber[6]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[7] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [7]),
        .Q(regNumber[7]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[8] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [8]),
        .Q(regNumber[8]));
  FDCE #(
    .INIT(1'b0)) 
    \regNumber_reg[9] 
       (.C(CLK),
        .CE(regNumber1),
        .CLR(reset_IBUF),
        .D(\regNumber_reg[24]_0 [9]),
        .Q(regNumber[9]));
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
