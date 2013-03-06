`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1


module FIFO_PIXEL(
       DATA,
       Q,
       WEN,
       REN,
       CLK,
       FULL,
       EMPTY,
       RESET
    );
input  [7:0] DATA;
output [7:0] Q;
input  WEN;
input  REN;
input  CLK;
output FULL;
output EMPTY;
input  RESET;

    wire WEP, REP, \MEM_RADDR[0] , \RBINNXTSHIFT[0] , \MEM_WADDR[0] , 
        \WBINNXTSHIFT[0] , \MEM_RADDR[1] , \RBINNXTSHIFT[1] , 
        \MEM_WADDR[1] , \WBINNXTSHIFT[1] , \MEM_RADDR[2] , 
        \RBINNXTSHIFT[2] , \MEM_WADDR[2] , \WBINNXTSHIFT[2] , 
        \MEM_RADDR[3] , \RBINNXTSHIFT[3] , \MEM_WADDR[3] , 
        \WBINNXTSHIFT[3] , \MEM_RADDR[4] , \RBINNXTSHIFT[4] , 
        \MEM_WADDR[4] , \WBINNXTSHIFT[4] , \MEM_RADDR[5] , 
        \RBINNXTSHIFT[5] , \MEM_WADDR[5] , \WBINNXTSHIFT[5] , 
        \MEM_RADDR[6] , \RBINNXTSHIFT[6] , \MEM_WADDR[6] , 
        \WBINNXTSHIFT[6] , \MEM_RADDR[7] , \RBINNXTSHIFT[7] , 
        \MEM_WADDR[7] , \WBINNXTSHIFT[7] , \MEM_RADDR[8] , 
        \RBINNXTSHIFT[8] , \MEM_WADDR[8] , \WBINNXTSHIFT[8] , FULLINT, 
        MEMORYWE, MEMWENEG, \WGRY[0] , \WGRY[1] , \WGRY[2] , \WGRY[3] , 
        \WGRY[4] , \WGRY[5] , \WGRY[6] , \WGRY[7] , \WGRY[8] , 
        EMPTYINT, MEMORYRE, MEMRENEG, DVLDI, DVLDX, \RGRY[0] , 
        \RGRY[1] , \RGRY[2] , \RGRY[3] , \RGRY[4] , \RGRY[5] , 
        \RGRY[6] , \RGRY[7] , \RGRY[8] , \QXI[0] , \QXI[1] , \QXI[2] , 
        \QXI[3] , \QXI[4] , \QXI[5] , \QXI[6] , \QXI[7] , XOR2_7_Y, 
        XOR2_14_Y, XOR2_27_Y, XOR2_28_Y, XOR2_45_Y, XOR2_49_Y, 
        XOR2_39_Y, XOR2_11_Y, XOR2_38_Y, AND2_25_Y, AND2_12_Y, 
        AND2_30_Y, AND2_2_Y, AND2_11_Y, AND2_0_Y, AND2_23_Y, AND2_17_Y, 
        XOR2_40_Y, XOR2_3_Y, XOR2_4_Y, XOR2_1_Y, XOR2_5_Y, XOR2_15_Y, 
        XOR2_36_Y, XOR2_2_Y, XOR2_8_Y, AND2_26_Y, AO1_18_Y, AND2_18_Y, 
        AO1_7_Y, AND2_5_Y, AO1_23_Y, AND2_16_Y, AND2_14_Y, AO1_11_Y, 
        AND2_34_Y, AND2_15_Y, AND2_24_Y, AND2_31_Y, AND2_27_Y, 
        AND2_39_Y, AO1_2_Y, AND2_1_Y, AND2_41_Y, AO1_10_Y, AO1_0_Y, 
        AO1_19_Y, AO1_13_Y, AO1_20_Y, AO1_21_Y, AO1_6_Y, XOR2_34_Y, 
        XOR2_50_Y, XOR2_23_Y, XOR2_21_Y, XOR2_35_Y, XOR2_51_Y, 
        XOR2_13_Y, XOR2_47_Y, NAND2_1_Y, XOR2_20_Y, XOR2_17_Y, 
        XOR2_10_Y, XOR2_37_Y, XOR2_31_Y, XOR2_18_Y, XOR2_24_Y, 
        XOR2_29_Y, XOR2_30_Y, AND2_29_Y, AND2_6_Y, AND2_3_Y, AND2_32_Y, 
        AND2_7_Y, AND2_33_Y, AND2_10_Y, AND2_37_Y, XOR2_22_Y, 
        XOR2_19_Y, XOR2_9_Y, XOR2_46_Y, XOR2_44_Y, XOR2_41_Y, XOR2_0_Y, 
        XOR2_32_Y, XOR2_12_Y, AND2_43_Y, AO1_14_Y, AND2_40_Y, AO1_3_Y, 
        AND2_13_Y, AO1_4_Y, AND2_8_Y, AND2_36_Y, AO1_22_Y, AND2_35_Y, 
        AND2_38_Y, AND2_28_Y, AND2_4_Y, AND2_9_Y, AND2_21_Y, AO1_8_Y, 
        AND2_19_Y, AND2_20_Y, AO1_1_Y, AO1_17_Y, AO1_12_Y, AO1_5_Y, 
        AO1_15_Y, AO1_9_Y, AO1_16_Y, XOR2_43_Y, XOR2_16_Y, XOR2_33_Y, 
        XOR2_6_Y, XOR2_48_Y, XOR2_52_Y, XOR2_25_Y, XOR2_42_Y, 
        \RAM4K9_QXI[7]_DOUTA0 , \RAM4K9_QXI[7]_DOUTA1 , 
        \RAM4K9_QXI[7]_DOUTA2 , \RAM4K9_QXI[7]_DOUTA3 , 
        \RAM4K9_QXI[7]_DOUTA4 , \RAM4K9_QXI[7]_DOUTA5 , 
        \RAM4K9_QXI[7]_DOUTA6 , \RAM4K9_QXI[7]_DOUTA7 , AND3_5_Y, 
        XNOR2_15_Y, XNOR2_6_Y, XNOR2_3_Y, XNOR2_7_Y, XNOR2_8_Y, 
        XNOR2_16_Y, XNOR2_5_Y, XNOR2_11_Y, XNOR2_13_Y, AND3_4_Y, 
        AND2_42_Y, AND3_3_Y, AND2A_0_Y, AND3_0_Y, XOR2_26_Y, XNOR2_1_Y, 
        XNOR2_10_Y, XNOR2_14_Y, XNOR2_12_Y, XNOR2_0_Y, XNOR2_2_Y, 
        XNOR2_9_Y, XNOR2_4_Y, AND3_2_Y, AND2_22_Y, AND3_1_Y, NAND2_0_Y, 
        VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    AND2 AND2_2 (.A(\MEM_RADDR[4] ), .B(GND), .Y(AND2_2_Y));
    AND2 AND2_20 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_20_Y));
    XNOR2 XNOR2_13 (.A(\RBINNXTSHIFT[7] ), .B(\MEM_WADDR[7] ), .Y(
        XNOR2_13_Y));
    AO1 AO1_11 (.A(AND2_16_Y), .B(AO1_7_Y), .C(AO1_23_Y), .Y(AO1_11_Y));
    AND2 AND2_11 (.A(\MEM_RADDR[5] ), .B(GND), .Y(AND2_11_Y));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_16_Y), .B(AO1_1_Y), .Y(
        \WBINNXTSHIFT[2] ));
    AND2 AND2_22 (.A(XNOR2_9_Y), .B(XNOR2_4_Y), .Y(AND2_22_Y));
    DFN1C0 DFN1C0_FULL (.D(FULLINT), .CLK(CLK), .CLR(RESET), .Q(FULL));
    XNOR2 XNOR2_9 (.A(\MEM_RADDR[6] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XNOR2_9_Y));
    XOR2 XOR2_19 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_19_Y));
    XOR2 XOR2_1 (.A(\MEM_RADDR[3] ), .B(GND), .Y(XOR2_1_Y));
    XOR2 XOR2_23 (.A(\MEM_RADDR[3] ), .B(GND), .Y(XOR2_23_Y));
    DFN1E1C0 \DFN1E1C0_Q[1]  (.D(\QXI[1] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[1]));
    DFN1E1C0 \DFN1E1C0_Q[4]  (.D(\QXI[4] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[4]));
    DFN1E1C0 \DFN1E1C0_Q[7]  (.D(\QXI[7] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[7]));
    XOR2 XOR2_47 (.A(\MEM_RADDR[8] ), .B(GND), .Y(XOR2_47_Y));
    XOR2 XOR2_38 (.A(\RBINNXTSHIFT[8] ), .B(GND), .Y(XOR2_38_Y));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    AO1 AO1_7 (.A(XOR2_15_Y), .B(AND2_2_Y), .C(AND2_11_Y), .Y(AO1_7_Y));
    DFN1C0 \DFN1C0_WGRY[6]  (.D(XOR2_24_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[6] ));
    AND2 AND2_18 (.A(XOR2_4_Y), .B(XOR2_1_Y), .Y(AND2_18_Y));
    AND2 AND2_15 (.A(AND2_14_Y), .B(AND2_34_Y), .Y(AND2_15_Y));
    XOR2 XOR2_45 (.A(\RBINNXTSHIFT[4] ), .B(\RBINNXTSHIFT[5] ), .Y(
        XOR2_45_Y));
    AND2 AND2_1 (.A(AND2_15_Y), .B(XOR2_8_Y), .Y(AND2_1_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[0] ));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[3] ));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[1] ));
    AO1 AO1_8 (.A(XOR2_12_Y), .B(AO1_16_Y), .C(AND2_37_Y), .Y(AO1_8_Y));
    AND2 AND2_10 (.A(\MEM_WADDR[7] ), .B(GND), .Y(AND2_10_Y));
    AND2 AND2_7 (.A(\MEM_WADDR[5] ), .B(GND), .Y(AND2_7_Y));
    XOR2 XOR2_20 (.A(\WBINNXTSHIFT[0] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XOR2_20_Y));
    AND2 AND2_12 (.A(\MEM_RADDR[2] ), .B(GND), .Y(AND2_12_Y));
    DFN1C0 \DFN1C0_WGRY[5]  (.D(XOR2_18_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[5] ));
    XOR2 XOR2_52 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_52_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[4] ));
    AO1 AO1_15 (.A(AND2_13_Y), .B(AO1_12_Y), .C(AO1_3_Y), .Y(AO1_15_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    DFN1C0 \DFN1C0_WGRY[7]  (.D(XOR2_29_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[7] ));
    AND2 AND2_EMPTYINT (.A(AND3_5_Y), .B(XNOR2_15_Y), .Y(EMPTYINT));
    XOR2 XOR2_24 (.A(\WBINNXTSHIFT[6] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XOR2_24_Y));
    XOR2 XOR2_21 (.A(\MEM_RADDR[4] ), .B(GND), .Y(XOR2_21_Y));
    XOR2 \XOR2_RBINNXTSHIFT[8]  (.A(XOR2_47_Y), .B(AO1_6_Y), .Y(
        \RBINNXTSHIFT[8] ));
    XOR2 XOR2_16 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_16_Y));
    AND2 AND2_43 (.A(XOR2_22_Y), .B(XOR2_19_Y), .Y(AND2_43_Y));
    AND3 AND3_3 (.A(XNOR2_8_Y), .B(XNOR2_16_Y), .C(XNOR2_5_Y), .Y(
        AND3_3_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    AND2 AND2_6 (.A(\MEM_WADDR[2] ), .B(GND), .Y(AND2_6_Y));
    AND3 AND3_0 (.A(AND2_22_Y), .B(AND3_2_Y), .C(AND3_1_Y), .Y(
        AND3_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[2] ));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_27_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[2] ));
    XOR2 XOR2_33 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_33_Y));
    XNOR2 XNOR2_2 (.A(\MEM_RADDR[5] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XNOR2_2_Y));
    XOR2 XOR2_49 (.A(\RBINNXTSHIFT[5] ), .B(\RBINNXTSHIFT[6] ), .Y(
        XOR2_49_Y));
    XOR2 \XOR2_WBINNXTSHIFT[8]  (.A(XOR2_42_Y), .B(AO1_16_Y), .Y(
        \WBINNXTSHIFT[8] ));
    AO1 AO1_14 (.A(XOR2_46_Y), .B(AND2_6_Y), .C(AND2_3_Y), .Y(AO1_14_Y)
        );
    XOR2 XOR2_4 (.A(\MEM_RADDR[2] ), .B(GND), .Y(XOR2_4_Y));
    AND3 AND3_1 (.A(XNOR2_12_Y), .B(XNOR2_0_Y), .C(XNOR2_2_Y), .Y(
        AND3_1_Y));
    AND2 AND2_24 (.A(AND2_14_Y), .B(AND2_5_Y), .Y(AND2_24_Y));
    XNOR2 XNOR2_0 (.A(\MEM_RADDR[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XNOR2_0_Y));
    AND2 AND2_31 (.A(AND2_26_Y), .B(XOR2_4_Y), .Y(AND2_31_Y));
    XOR2 XOR2_18 (.A(\WBINNXTSHIFT[5] ), .B(\WBINNXTSHIFT[6] ), .Y(
        XOR2_18_Y));
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_21_Y), .B(AO1_19_Y), .Y(
        \RBINNXTSHIFT[4] ));
    DFN1C0 \DFN1C0_MEM_WADDR[8]  (.D(\WBINNXTSHIFT[8] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[8] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_14_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[1] ));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_37_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[3] ));
    XOR2 XOR2_8 (.A(\MEM_RADDR[8] ), .B(GND), .Y(XOR2_8_Y));
    DFN1E1C0 \DFN1E1C0_Q[6]  (.D(\QXI[6] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[6]));
    XOR2 XOR2_30 (.A(\WBINNXTSHIFT[8] ), .B(GND), .Y(XOR2_30_Y));
    XOR2 \XOR2_RBINNXTSHIFT[6]  (.A(XOR2_51_Y), .B(AO1_20_Y), .Y(
        \RBINNXTSHIFT[6] ));
    AND2 AND2_38 (.A(AND2_36_Y), .B(AND2_35_Y), .Y(AND2_38_Y));
    AND2 AND2_35 (.A(AND2_13_Y), .B(AND2_8_Y), .Y(AND2_35_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    DFN1C0 \DFN1C0_MEM_WADDR[7]  (.D(\WBINNXTSHIFT[7] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[7] ));
    AND2 AND2_29 (.A(\MEM_WADDR[1] ), .B(GND), .Y(AND2_29_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[4] ));
    XOR2 XOR2_34 (.A(\MEM_RADDR[1] ), .B(GND), .Y(XOR2_34_Y));
    XOR2 XOR2_31 (.A(\WBINNXTSHIFT[4] ), .B(\WBINNXTSHIFT[5] ), .Y(
        XOR2_31_Y));
    INV WEBUBBLE (.A(WEN), .Y(WEP));
    AND2 AND2_3 (.A(\MEM_WADDR[3] ), .B(GND), .Y(AND2_3_Y));
    AND2 AND2_30 (.A(\MEM_RADDR[3] ), .B(GND), .Y(AND2_30_Y));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_6_Y), .B(AO1_12_Y), .Y(
        \WBINNXTSHIFT[4] ));
    XNOR2 XNOR2_6 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[0] ), .Y(
        XNOR2_6_Y));
    AND2 AND2_14 (.A(AND2_26_Y), .B(AND2_18_Y), .Y(AND2_14_Y));
    AND2 AND2_32 (.A(\MEM_WADDR[4] ), .B(GND), .Y(AND2_32_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[5]  (.D(\RBINNXTSHIFT[5] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[5] ));
    XOR2 \XOR2_WBINNXTSHIFT[6]  (.A(XOR2_52_Y), .B(AO1_15_Y), .Y(
        \WBINNXTSHIFT[6] ));
    XOR2 XOR2_46 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_46_Y));
    XNOR2 XNOR2_11 (.A(\RBINNXTSHIFT[6] ), .B(\MEM_WADDR[6] ), .Y(
        XNOR2_11_Y));
    AO1 AO1_2 (.A(XOR2_8_Y), .B(AO1_6_Y), .C(AND2_17_Y), .Y(AO1_2_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[8]  (.D(\RBINNXTSHIFT[8] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[8] ));
    DFN1C0 \DFN1C0_WGRY[0]  (.D(XOR2_20_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[0] ));
    AND2 AND2_26 (.A(XOR2_40_Y), .B(XOR2_3_Y), .Y(AND2_26_Y));
    XOR2 XOR2_9 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_9_Y));
    RAM4K9 \RAM4K9_QXI[7]  (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(GND), 
        .ADDRA8(GND), .ADDRA7(\MEM_WADDR[7] ), .ADDRA6(\MEM_WADDR[6] ), 
        .ADDRA5(\MEM_WADDR[5] ), .ADDRA4(\MEM_WADDR[4] ), .ADDRA3(
        \MEM_WADDR[3] ), .ADDRA2(\MEM_WADDR[2] ), .ADDRA1(
        \MEM_WADDR[1] ), .ADDRA0(\MEM_WADDR[0] ), .ADDRB11(GND), 
        .ADDRB10(GND), .ADDRB9(GND), .ADDRB8(GND), .ADDRB7(
        \MEM_RADDR[7] ), .ADDRB6(\MEM_RADDR[6] ), .ADDRB5(
        \MEM_RADDR[5] ), .ADDRB4(\MEM_RADDR[4] ), .ADDRB3(
        \MEM_RADDR[3] ), .ADDRB2(\MEM_RADDR[2] ), .ADDRB1(
        \MEM_RADDR[1] ), .ADDRB0(\MEM_RADDR[0] ), .DINA8(GND), .DINA7(
        DATA[7]), .DINA6(DATA[6]), .DINA5(DATA[5]), .DINA4(DATA[4]), 
        .DINA3(DATA[3]), .DINA2(DATA[2]), .DINA1(DATA[1]), .DINA0(
        DATA[0]), .DINB8(GND), .DINB7(GND), .DINB6(GND), .DINB5(GND), 
        .DINB4(GND), .DINB3(GND), .DINB2(GND), .DINB1(GND), .DINB0(GND)
        , .WIDTHA0(VCC), .WIDTHA1(VCC), .WIDTHB0(VCC), .WIDTHB1(VCC), 
        .PIPEA(GND), .PIPEB(GND), .WMODEA(GND), .WMODEB(GND), .BLKA(
        MEMWENEG), .BLKB(MEMRENEG), .WENA(GND), .WENB(VCC), .CLKA(CLK), 
        .CLKB(CLK), .RESET(RESET), .DOUTA8(), .DOUTA7(
        \RAM4K9_QXI[7]_DOUTA7 ), .DOUTA6(\RAM4K9_QXI[7]_DOUTA6 ), 
        .DOUTA5(\RAM4K9_QXI[7]_DOUTA5 ), .DOUTA4(
        \RAM4K9_QXI[7]_DOUTA4 ), .DOUTA3(\RAM4K9_QXI[7]_DOUTA3 ), 
        .DOUTA2(\RAM4K9_QXI[7]_DOUTA2 ), .DOUTA1(
        \RAM4K9_QXI[7]_DOUTA1 ), .DOUTA0(\RAM4K9_QXI[7]_DOUTA0 ), 
        .DOUTB8(), .DOUTB7(\QXI[7] ), .DOUTB6(\QXI[6] ), .DOUTB5(
        \QXI[5] ), .DOUTB4(\QXI[4] ), .DOUTB3(\QXI[3] ), .DOUTB2(
        \QXI[2] ), .DOUTB1(\QXI[1] ), .DOUTB0(\QXI[0] ));
    AND3 AND3_5 (.A(AND2_42_Y), .B(AND3_4_Y), .C(AND3_3_Y), .Y(
        AND3_5_Y));
    AND2 AND2_23 (.A(\MEM_RADDR[7] ), .B(GND), .Y(AND2_23_Y));
    XNOR2 XNOR2_4 (.A(\MEM_RADDR[7] ), .B(\WBINNXTSHIFT[7] ), .Y(
        XNOR2_4_Y));
    XOR2 XOR2_5 (.A(\MEM_RADDR[4] ), .B(GND), .Y(XOR2_5_Y));
    DFN1C0 \DFN1C0_RGRY[8]  (.D(XOR2_38_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[8] ));
    AND2 AND2_19 (.A(AND2_38_Y), .B(XOR2_12_Y), .Y(AND2_19_Y));
    DFN1E1C0 \DFN1E1C0_Q[0]  (.D(\QXI[0] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[0]));
    DFN1C0 \DFN1C0_MEM_RADDR[6]  (.D(\RBINNXTSHIFT[6] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[6] ));
    XOR2 XOR2_22 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(XOR2_22_Y));
    AO1 AO1_1 (.A(XOR2_19_Y), .B(AND2_20_Y), .C(AND2_29_Y), .Y(AO1_1_Y)
        );
    XOR2 XOR2_13 (.A(\MEM_RADDR[7] ), .B(GND), .Y(XOR2_13_Y));
    INV REBUBBLE (.A(REN), .Y(REP));
    AO1 AO1_3 (.A(XOR2_41_Y), .B(AND2_32_Y), .C(AND2_7_Y), .Y(AO1_3_Y));
    AO1 AO1_18 (.A(XOR2_1_Y), .B(AND2_12_Y), .C(AND2_30_Y), .Y(
        AO1_18_Y));
    XOR2 XOR2_48 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_48_Y));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_23_Y), .B(AO1_0_Y), .Y(
        \RBINNXTSHIFT[3] ));
    DFN1C0 \DFN1C0_MEM_RADDR[7]  (.D(\RBINNXTSHIFT[7] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[7] ));
    AND2 AND2_16 (.A(XOR2_36_Y), .B(XOR2_2_Y), .Y(AND2_16_Y));
    AND2 AND2_13 (.A(XOR2_44_Y), .B(XOR2_41_Y), .Y(AND2_13_Y));
    XOR2 XOR2_10 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_10_Y));
    XNOR2 XNOR2_1 (.A(\MEM_RADDR[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        XNOR2_1_Y));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_45_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[4] ));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[2] ));
    XOR2 XOR2_27 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_27_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_1_Y), .B(REP), .Y(MEMORYRE));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_33_Y), .B(AO1_17_Y), .Y(
        \WBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_7_Y));
    AND2 AND2_5 (.A(XOR2_5_Y), .B(XOR2_15_Y), .Y(AND2_5_Y));
    XOR2 XOR2_14 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_14_Y));
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[1] ), .Y(
        XNOR2_3_Y));
    XOR2 XOR2_11 (.A(\RBINNXTSHIFT[7] ), .B(\RBINNXTSHIFT[8] ), .Y(
        XOR2_11_Y));
    XOR2 XOR2_25 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_25_Y));
    AO1 AO1_22 (.A(AND2_8_Y), .B(AO1_3_Y), .C(AO1_4_Y), .Y(AO1_22_Y));
    XNOR2 XNOR2_15 (.A(\RBINNXTSHIFT[8] ), .B(\MEM_WADDR[8] ), .Y(
        XNOR2_15_Y));
    AND2 AND2_34 (.A(AND2_5_Y), .B(AND2_16_Y), .Y(AND2_34_Y));
    AO1 AO1_6 (.A(AND2_34_Y), .B(AO1_19_Y), .C(AO1_11_Y), .Y(AO1_6_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[3] ));
    AND3 AND3_2 (.A(XNOR2_1_Y), .B(XNOR2_10_Y), .C(XNOR2_14_Y), .Y(
        AND3_2_Y));
    AO1 AO1_12 (.A(AND2_40_Y), .B(AO1_1_Y), .C(AO1_14_Y), .Y(AO1_12_Y));
    XOR2 XOR2_32 (.A(\MEM_WADDR[7] ), .B(GND), .Y(XOR2_32_Y));
    AND2 AND2_9 (.A(AND2_36_Y), .B(XOR2_44_Y), .Y(AND2_9_Y));
    DFN1E1C0 \DFN1E1C0_Q[5]  (.D(\QXI[5] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[5]));
    XOR2 XOR2_43 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_43_Y));
    AO1 AO1_9 (.A(XOR2_0_Y), .B(AO1_15_Y), .C(AND2_33_Y), .Y(AO1_9_Y));
    AND2 AND2_39 (.A(AND2_24_Y), .B(XOR2_36_Y), .Y(AND2_39_Y));
    DFN1C0 DFN1C0_DVLDX (.D(DVLDI), .CLK(CLK), .CLR(RESET), .Q(DVLDX));
    NAND2 NAND2_0 (.A(FULL), .B(VCC), .Y(NAND2_0_Y));
    DFN1C0 \DFN1C0_RGRY[6]  (.D(XOR2_39_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[6] ));
    AND2 AND2_27 (.A(AND2_14_Y), .B(XOR2_5_Y), .Y(AND2_27_Y));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(CLK), .CLR(RESET), .Q(
        DVLDI));
    XNOR2 XNOR2_10 (.A(\MEM_RADDR[1] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XNOR2_10_Y));
    AND2 AND2_MEMORYWE (.A(NAND2_0_Y), .B(WEP), .Y(MEMORYWE));
    AO1 AO1_20 (.A(AND2_5_Y), .B(AO1_19_Y), .C(AO1_7_Y), .Y(AO1_20_Y));
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_10_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[2] ));
    AO1 AO1_0 (.A(XOR2_4_Y), .B(AO1_10_Y), .C(AND2_12_Y), .Y(AO1_0_Y));
    XOR2 XOR2_29 (.A(\WBINNXTSHIFT[7] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XOR2_29_Y));
    XOR2 XOR2_40 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(XOR2_40_Y));
    XOR2 XOR2_2 (.A(\MEM_RADDR[7] ), .B(GND), .Y(XOR2_2_Y));
    DFN1C0 \DFN1C0_RGRY[5]  (.D(XOR2_49_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[5] ));
    AND2 AND2_36 (.A(AND2_43_Y), .B(AND2_40_Y), .Y(AND2_36_Y));
    XOR2 XOR2_37 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_37_Y));
    AND2A AND2A_0 (.A(EMPTY), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_RGRY[7]  (.D(XOR2_11_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[7] ));
    XOR2 \XOR2_RBINNXTSHIFT[5]  (.A(XOR2_35_Y), .B(AO1_13_Y), .Y(
        \RBINNXTSHIFT[5] ));
    AO1 AO1_23 (.A(XOR2_2_Y), .B(AND2_0_Y), .C(AND2_23_Y), .Y(AO1_23_Y)
        );
    AND2 AND2_33 (.A(\MEM_WADDR[6] ), .B(GND), .Y(AND2_33_Y));
    XOR2 XOR2_44 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_44_Y));
    AO1 AO1_10 (.A(XOR2_3_Y), .B(AND2_41_Y), .C(AND2_25_Y), .Y(
        AO1_10_Y));
    XOR2 XOR2_41 (.A(\MEM_WADDR[5] ), .B(GND), .Y(XOR2_41_Y));
    XOR2 XOR2_35 (.A(\MEM_RADDR[5] ), .B(GND), .Y(XOR2_35_Y));
    DFN1C0 \DFN1C0_WGRY[1]  (.D(XOR2_17_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[1] ));
    DFN1P0 DFN1P0_EMPTY (.D(EMPTYINT), .CLK(CLK), .PRE(RESET), .Q(
        EMPTY));
    DFN1E1C0 \DFN1E1C0_Q[3]  (.D(\QXI[3] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[3]));
    AND2 AND2_41 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_41_Y));
    AND2 AND2_0 (.A(\MEM_RADDR[6] ), .B(GND), .Y(AND2_0_Y));
    XOR2 \XOR2_RBINNXTSHIFT[7]  (.A(XOR2_13_Y), .B(AO1_21_Y), .Y(
        \RBINNXTSHIFT[7] ));
    AO1 AO1_16 (.A(AND2_35_Y), .B(AO1_12_Y), .C(AO1_22_Y), .Y(AO1_16_Y)
        );
    AND2 AND2_17 (.A(\MEM_RADDR[8] ), .B(GND), .Y(AND2_17_Y));
    XOR2 XOR2_6 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_6_Y));
    AO1 AO1_13 (.A(XOR2_5_Y), .B(AO1_19_Y), .C(AND2_2_Y), .Y(AO1_13_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[6]  (.D(\WBINNXTSHIFT[6] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[6] ));
    XOR2 \XOR2_WBINNXTSHIFT[5]  (.A(XOR2_48_Y), .B(AO1_5_Y), .Y(
        \WBINNXTSHIFT[5] ));
    XNOR2 XNOR2_12 (.A(\MEM_RADDR[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_12_Y));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_7_Y));
    XOR2 XOR2_12 (.A(\MEM_WADDR[8] ), .B(GND), .Y(XOR2_12_Y));
    AO1 AO1_19 (.A(AND2_18_Y), .B(AO1_10_Y), .C(AO1_18_Y), .Y(AO1_19_Y)
        );
    XOR2 \XOR2_WBINNXTSHIFT[7]  (.A(XOR2_25_Y), .B(AO1_9_Y), .Y(
        \WBINNXTSHIFT[7] ));
    XOR2 XOR2_26 (.A(\MEM_RADDR[8] ), .B(\WBINNXTSHIFT[8] ), .Y(
        XOR2_26_Y));
    AND2 AND2_4 (.A(AND2_43_Y), .B(XOR2_9_Y), .Y(AND2_4_Y));
    AND2 AND2_FULLINT (.A(AND3_0_Y), .B(XOR2_26_Y), .Y(FULLINT));
    AND2 AND2_40 (.A(XOR2_9_Y), .B(XOR2_46_Y), .Y(AND2_40_Y));
    XOR2 XOR2_50 (.A(\MEM_RADDR[2] ), .B(GND), .Y(XOR2_50_Y));
    AND2 AND2_42 (.A(XNOR2_11_Y), .B(XNOR2_13_Y), .Y(AND2_42_Y));
    DFN1E1C0 \DFN1E1C0_Q[2]  (.D(\QXI[2] ), .CLK(CLK), .CLR(RESET), .E(
        DVLDI), .Q(Q[2]));
    DFN1C0 \DFN1C0_WGRY[8]  (.D(XOR2_30_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[8] ));
    XNOR2 XNOR2_5 (.A(\RBINNXTSHIFT[5] ), .B(\MEM_WADDR[5] ), .Y(
        XNOR2_5_Y));
    AO1 AO1_5 (.A(XOR2_44_Y), .B(AO1_12_Y), .C(AND2_32_Y), .Y(AO1_5_Y));
    XNOR2 XNOR2_16 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_16_Y));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_28_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[3] ));
    XOR2 XOR2_39 (.A(\RBINNXTSHIFT[6] ), .B(\RBINNXTSHIFT[7] ), .Y(
        XOR2_39_Y));
    AND2 AND2_8 (.A(XOR2_0_Y), .B(XOR2_32_Y), .Y(AND2_8_Y));
    XOR2 XOR2_3 (.A(\MEM_RADDR[1] ), .B(GND), .Y(XOR2_3_Y));
    XOR2 XOR2_51 (.A(\MEM_RADDR[6] ), .B(GND), .Y(XOR2_51_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[1] ));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_34_Y), .B(AND2_41_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 XOR2_17 (.A(\WBINNXTSHIFT[1] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XOR2_17_Y));
    XOR2 XOR2_28 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_28_Y));
    XOR2 XOR2_15 (.A(\MEM_RADDR[5] ), .B(GND), .Y(XOR2_15_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[5]  (.D(\WBINNXTSHIFT[5] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_WADDR[5] ));
    AO1 AO1_17 (.A(XOR2_9_Y), .B(AO1_1_Y), .C(AND2_6_Y), .Y(AO1_17_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(CLK), 
        .CLR(RESET), .Q(\MEM_RADDR[0] ));
    AND3 AND3_4 (.A(XNOR2_6_Y), .B(XNOR2_3_Y), .C(XNOR2_7_Y), .Y(
        AND3_4_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_7_Y), .CLK(CLK), .CLR(RESET), .Q(
        \RGRY[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_43_Y), .B(AND2_20_Y), .Y(
        \WBINNXTSHIFT[1] ));
    AND2 AND2_21 (.A(AND2_28_Y), .B(XOR2_0_Y), .Y(AND2_21_Y));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_31_Y), .CLK(CLK), .CLR(RESET), .Q(
        \WGRY[4] ));
    XOR2 XOR2_0 (.A(\MEM_WADDR[6] ), .B(GND), .Y(XOR2_0_Y));
    NAND2 NAND2_1 (.A(EMPTY), .B(VCC), .Y(NAND2_1_Y));
    AO1 AO1_4 (.A(XOR2_32_Y), .B(AND2_33_Y), .C(AND2_10_Y), .Y(AO1_4_Y)
        );
    AND2 AND2_37 (.A(\MEM_WADDR[8] ), .B(GND), .Y(AND2_37_Y));
    XNOR2 XNOR2_14 (.A(\MEM_RADDR[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_14_Y));
    XOR2 XOR2_42 (.A(\MEM_WADDR[8] ), .B(GND), .Y(XOR2_42_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_50_Y), .B(AO1_10_Y), .Y(
        \RBINNXTSHIFT[2] ));
    AO1 AO1_21 (.A(XOR2_36_Y), .B(AO1_20_Y), .C(AND2_0_Y), .Y(AO1_21_Y)
        );
    XOR2 XOR2_36 (.A(\MEM_RADDR[6] ), .B(GND), .Y(XOR2_36_Y));
    XNOR2 XNOR2_8 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_8_Y));
    AND2 AND2_28 (.A(AND2_36_Y), .B(AND2_13_Y), .Y(AND2_28_Y));
    AND2 AND2_25 (.A(\MEM_RADDR[1] ), .B(GND), .Y(AND2_25_Y));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:10.1.3.1
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3SOC2
// OUTFORMAT:Verilog
// LPMTYPE:LPM_SOFTFIFO
// LPM_HINT:MEMFF
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:Z:/russ/private/research/insight/git/sw/smartfusion/impl/libero/insight/smartgen\FIFO_PIXEL
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IP6X5M2
// SMARTGEN_PACKAGE:fg484
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:8
// WDEPTH:256
// RWIDTH:8
// RDEPTH:256
// CLKS:1
// CLOCK_PN:CLK
// WCLK_EDGE:RISE
// ACLR_PN:RESET
// RESET_POLARITY:0
// INIT_RAM:F
// WE_POLARITY:0
// RE_POLARITY:0
// FF_PN:FULL
// AF_PN:AFULL
// WACK_PN:WACK
// OVRFLOW_PN:OVERFLOW
// WRCNT_PN:WRCNT
// WE_PN:WEN
// EF_PN:EMPTY
// AE_PN:AEMPTY
// DVLD_PN:DVLD
// UDRFLOW_PN:UNDERFLOW
// RDCNT_PN:RDCNT
// RE_PN:REN
// CONTROLLERONLY:F
// FSTOP:YES
// ESTOP:YES
// WRITEACK:NO
// OVERFLOW:NO
// WRCOUNT:NO
// DATAVALID:NO
// UNDERFLOW:NO
// RDCOUNT:NO
// AF_PORT_PN:AFVAL
// AE_PORT_PN:AEVAL
// AFFLAG:NONE
// AEFLAG:NONE
// DATA_IN_PN:DATA
// DATA_OUT_PN:Q
// CASCADE:1

// _End_Comments_

