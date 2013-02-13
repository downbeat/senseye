`timescale 1 ns/100 ps
// Version: 9.1 SP5 9.1.5.1


module MSS_CORE2(
       CLKC,
       GLC,
       FAB_CLK,
       MAINXIN,
       M2F_RESET_N,
       FABINT,
       MSSHWRITE,
       MSSHLOCK,
       MSSHREADY,
       MSSHRESP,
       MSSHADDR,
       MSSHTRANS,
       MSSHSIZE,
       MSSHWDATA,
       MSSHRDATA,
       UART_0_TXD,
       UART_0_RXD,
       MAC_RXD,
       MAC_TXD,
       MAC_MDIO,
       MAC_CRSDV,
       MAC_RXER,
       MAC_TXEN,
       MAC_MDC,
       MSS_RESET_N
    );
input  CLKC;
output GLC;
output FAB_CLK;
input  MAINXIN;
output M2F_RESET_N;
input  FABINT;
output MSSHWRITE;
output MSSHLOCK;
input  MSSHREADY;
input  MSSHRESP;
output [19:0] MSSHADDR;
output [1:0] MSSHTRANS;
output [1:0] MSSHSIZE;
output [31:0] MSSHWDATA;
input  [31:0] MSSHRDATA;
output UART_0_TXD;
input  UART_0_RXD;
input  [1:0] MAC_RXD;
output [1:0] MAC_TXD;
inout  MAC_MDIO;
input  MAC_CRSDV;
input  MAC_RXER;
output MAC_TXEN;
output MAC_MDC;
input  MSS_RESET_N;

    wire MSS_ADLIB_INST_EMCCLK, MSS_ADLIB_INST_FCLK, 
        MSS_ADLIB_INST_MACCLK, MSS_ADLIB_INST_MACCLKCCC, 
        MSS_ADLIB_INST_PLLLOCK, MSS_MAC_0_CRSDV_Y, MSS_MAC_0_MDC_D, 
        MSS_MAC_0_MDIO_D, MSS_MAC_0_MDIO_E, MSS_MAC_0_MDIO_Y, 
        MSS_MAC_0_RXD_0_Y, MSS_MAC_0_RXD_1_Y, MSS_MAC_0_RXER_Y, 
        MSS_MAC_0_TXD_0_D, MSS_MAC_0_TXD_1_D, MSS_MAC_0_TXEN_D, 
        MSS_RESET_0_MSS_RESET_N_Y, MSS_UART_0_RXD_Y, MSS_UART_0_TXD_D, 
        GND_net, VCC_net;
    
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("AA3") )  MSS_MAC_0_MDC (.D(
        MSS_MAC_0_MDC_D), .PAD(MAC_MDC));
    GND GND (.Y(GND_net));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("W5") )  MSS_MAC_0_TXD_1 (
        .D(MSS_MAC_0_TXD_1_D), .PAD(MAC_TXD[1]));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("AA5") )  MSS_MAC_0_TXD_0 (
        .D(MSS_MAC_0_TXD_0_D), .PAD(MAC_TXD[0]));
    BIBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("V4") )  MSS_MAC_0_MDIO (
        .PAD(MAC_MDIO), .D(MSS_MAC_0_MDIO_D), .E(MSS_MAC_0_MDIO_E), .Y(
        MSS_MAC_0_MDIO_Y));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("W4") )  MSS_MAC_0_CRSDV (
        .PAD(MAC_CRSDV), .Y(MSS_MAC_0_CRSDV_Y));
    VCC VCC (.Y(VCC_net));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("AA4") )  MSS_MAC_0_RXER (
        .PAD(MAC_RXER), .Y(MSS_MAC_0_RXER_Y));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("V5") )  MSS_MAC_0_RXD_0 (
        .PAD(MAC_RXD[0]), .Y(MSS_MAC_0_RXD_0_Y));
    MSS_AHB #( .ACT_CONFIG(128), .ACT_DIE("IP6X5M2"), .ACT_FCLK(80000000)
        , .ACT_PKG("fg484") )  MSS_ADLIB_INST (.MSSHADDR({MSSHADDR[19], 
        MSSHADDR[18], MSSHADDR[17], MSSHADDR[16], MSSHADDR[15], 
        MSSHADDR[14], MSSHADDR[13], MSSHADDR[12], MSSHADDR[11], 
        MSSHADDR[10], MSSHADDR[9], MSSHADDR[8], MSSHADDR[7], 
        MSSHADDR[6], MSSHADDR[5], MSSHADDR[4], MSSHADDR[3], 
        MSSHADDR[2], MSSHADDR[1], MSSHADDR[0]}), .MSSHWDATA({
        MSSHWDATA[31], MSSHWDATA[30], MSSHWDATA[29], MSSHWDATA[28], 
        MSSHWDATA[27], MSSHWDATA[26], MSSHWDATA[25], MSSHWDATA[24], 
        MSSHWDATA[23], MSSHWDATA[22], MSSHWDATA[21], MSSHWDATA[20], 
        MSSHWDATA[19], MSSHWDATA[18], MSSHWDATA[17], MSSHWDATA[16], 
        MSSHWDATA[15], MSSHWDATA[14], MSSHWDATA[13], MSSHWDATA[12], 
        MSSHWDATA[11], MSSHWDATA[10], MSSHWDATA[9], MSSHWDATA[8], 
        MSSHWDATA[7], MSSHWDATA[6], MSSHWDATA[5], MSSHWDATA[4], 
        MSSHWDATA[3], MSSHWDATA[2], MSSHWDATA[1], MSSHWDATA[0]}), 
        .MSSHTRANS({MSSHTRANS[1], MSSHTRANS[0]}), .MSSHSIZE({
        MSSHSIZE[1], MSSHSIZE[0]}), .MSSHLOCK(MSSHLOCK), .MSSHWRITE(
        MSSHWRITE), .MSSHRDATA({MSSHRDATA[31], MSSHRDATA[30], 
        MSSHRDATA[29], MSSHRDATA[28], MSSHRDATA[27], MSSHRDATA[26], 
        MSSHRDATA[25], MSSHRDATA[24], MSSHRDATA[23], MSSHRDATA[22], 
        MSSHRDATA[21], MSSHRDATA[20], MSSHRDATA[19], MSSHRDATA[18], 
        MSSHRDATA[17], MSSHRDATA[16], MSSHRDATA[15], MSSHRDATA[14], 
        MSSHRDATA[13], MSSHRDATA[12], MSSHRDATA[11], MSSHRDATA[10], 
        MSSHRDATA[9], MSSHRDATA[8], MSSHRDATA[7], MSSHRDATA[6], 
        MSSHRDATA[5], MSSHRDATA[4], MSSHRDATA[3], MSSHRDATA[2], 
        MSSHRDATA[1], MSSHRDATA[0]}), .MSSHREADY(MSSHREADY), .MSSHRESP(
        MSSHRESP), .FABHADDR({GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net})
        , .FABHWDATA({GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net}), 
        .FABHTRANS({GND_net, GND_net}), .FABHSIZE({GND_net, GND_net}), 
        .FABHMASTLOCK(GND_net), .FABHWRITE(GND_net), .FABHSEL(GND_net), 
        .FABHREADY(VCC_net), .FABHRDATA({nc0, nc1, nc2, nc3, nc4, nc5, 
        nc6, nc7, nc8, nc9, nc10, nc11, nc12, nc13, nc14, nc15, nc16, 
        nc17, nc18, nc19, nc20, nc21, nc22, nc23, nc24, nc25, nc26, 
        nc27, nc28, nc29, nc30, nc31}), .FABHREADYOUT(), .FABHRESP(), 
        .SYNCCLKFDBK(FAB_CLK), .CALIBOUT(), .CALIBIN(GND_net), .FABINT(
        FABINT), .MSSINT({nc32, nc33, nc34, nc35, nc36, nc37, nc38, 
        nc39}), .WDINT(), .F2MRESETn(VCC_net), .DMAREADY({GND_net, 
        GND_net}), .RXEV(GND_net), .VRON(GND_net), .M2FRESETn(
        M2F_RESET_N), .DEEPSLEEP(), .SLEEP(), .TXEV(), .GPI({GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net}), .GPO({nc40, nc41, nc42, nc43, 
        nc44, nc45, nc46, nc47, nc48, nc49, nc50, nc51, nc52, nc53, 
        nc54, nc55, nc56, nc57, nc58, nc59, nc60, nc61, nc62, nc63, 
        nc64, nc65, nc66, nc67, nc68, nc69, nc70, nc71}), .UART0CTSn(
        GND_net), .UART0DSRn(GND_net), .UART0RIn(GND_net), .UART0DCDn(
        GND_net), .UART0RTSn(), .UART0DTRn(), .UART1CTSn(GND_net), 
        .UART1DSRn(GND_net), .UART1RIn(GND_net), .UART1DCDn(GND_net), 
        .UART1RTSn(), .UART1DTRn(), .I2C0SMBUSNI(GND_net), 
        .I2C0SMBALERTNI(GND_net), .I2C0BCLK(GND_net), .I2C0SMBUSNO(), 
        .I2C0SMBALERTNO(), .I2C1SMBUSNI(GND_net), .I2C1SMBALERTNI(
        GND_net), .I2C1BCLK(GND_net), .I2C1SMBUSNO(), .I2C1SMBALERTNO()
        , .MACM2FTXD({nc72, nc73}), .MACF2MRXD({GND_net, GND_net}), 
        .MACM2FTXEN(), .MACF2MCRSDV(GND_net), .MACF2MRXER(GND_net), 
        .MACF2MMDI(GND_net), .MACM2FMDO(), .MACM2FMDEN(), .MACM2FMDC(), 
        .FABSDD0D(GND_net), .FABSDD1D(GND_net), .FABSDD2D(GND_net), 
        .FABSDD0CLK(GND_net), .FABSDD1CLK(GND_net), .FABSDD2CLK(
        GND_net), .FABACETRIG(GND_net), .ACEFLAGS({nc74, nc75, nc76, 
        nc77, nc78, nc79, nc80, nc81, nc82, nc83, nc84, nc85, nc86, 
        nc87, nc88, nc89, nc90, nc91, nc92, nc93, nc94, nc95, nc96, 
        nc97, nc98, nc99, nc100, nc101, nc102, nc103, nc104, nc105}), 
        .CMP0(), .CMP1(), .CMP2(), .CMP3(), .CMP4(), .CMP5(), .CMP6(), 
        .CMP7(), .CMP8(), .CMP9(), .CMP10(), .CMP11(), .LVTTL0EN(
        GND_net), .LVTTL1EN(GND_net), .LVTTL2EN(GND_net), .LVTTL3EN(
        GND_net), .LVTTL4EN(GND_net), .LVTTL5EN(GND_net), .LVTTL6EN(
        GND_net), .LVTTL7EN(GND_net), .LVTTL8EN(GND_net), .LVTTL9EN(
        GND_net), .LVTTL10EN(GND_net), .LVTTL11EN(GND_net), .LVTTL0(), 
        .LVTTL1(), .LVTTL2(), .LVTTL3(), .LVTTL4(), .LVTTL5(), .LVTTL6(
        ), .LVTTL7(), .LVTTL8(), .LVTTL9(), .LVTTL10(), .LVTTL11(), 
        .PUFABn(), .VCC15GOOD(), .VCC33GOOD(), .FCLK(
        MSS_ADLIB_INST_FCLK), .MACCLKCCC(MSS_ADLIB_INST_MACCLKCCC), 
        .RCOSC(GND_net), .MACCLK(MSS_ADLIB_INST_MACCLK), .PLLLOCK(
        MSS_ADLIB_INST_PLLLOCK), .MSSRESETn(MSS_RESET_0_MSS_RESET_N_Y), 
        .GPOE({nc106, nc107, nc108, nc109, nc110, nc111, nc112, nc113, 
        nc114, nc115, nc116, nc117, nc118, nc119, nc120, nc121, nc122, 
        nc123, nc124, nc125, nc126, nc127, nc128, nc129, nc130, nc131, 
        nc132, nc133, nc134, nc135, nc136, nc137}), .SPI0DO(), 
        .SPI0DOE(), .SPI0DI(GND_net), .SPI0CLKI(GND_net), .SPI0CLKO(), 
        .SPI0MODE(), .SPI0SSI(GND_net), .SPI0SSO({nc138, nc139, nc140, 
        nc141, nc142, nc143, nc144, nc145}), .UART0TXD(
        MSS_UART_0_TXD_D), .UART0RXD(MSS_UART_0_RXD_Y), .I2C0SDAI(
        GND_net), .I2C0SDAO(), .I2C0SCLI(GND_net), .I2C0SCLO(), 
        .SPI1DO(), .SPI1DOE(), .SPI1DI(GND_net), .SPI1CLKI(GND_net), 
        .SPI1CLKO(), .SPI1MODE(), .SPI1SSI(GND_net), .SPI1SSO({nc146, 
        nc147, nc148, nc149, nc150, nc151, nc152, nc153}), .UART1TXD(), 
        .UART1RXD(GND_net), .I2C1SDAI(GND_net), .I2C1SDAO(), .I2C1SCLI(
        GND_net), .I2C1SCLO(), .MACTXD({MSS_MAC_0_TXD_1_D, 
        MSS_MAC_0_TXD_0_D}), .MACRXD({MSS_MAC_0_RXD_1_Y, 
        MSS_MAC_0_RXD_0_Y}), .MACTXEN(MSS_MAC_0_TXEN_D), .MACCRSDV(
        MSS_MAC_0_CRSDV_Y), .MACRXER(MSS_MAC_0_RXER_Y), .MACMDI(
        MSS_MAC_0_MDIO_Y), .MACMDO(MSS_MAC_0_MDIO_D), .MACMDEN(
        MSS_MAC_0_MDIO_E), .MACMDC(MSS_MAC_0_MDC_D), .EMCCLK(
        MSS_ADLIB_INST_EMCCLK), .EMCCLKRTN(MSS_ADLIB_INST_EMCCLK), 
        .EMCRDB({GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net}), .EMCAB({nc154, nc155, nc156, 
        nc157, nc158, nc159, nc160, nc161, nc162, nc163, nc164, nc165, 
        nc166, nc167, nc168, nc169, nc170, nc171, nc172, nc173, nc174, 
        nc175, nc176, nc177, nc178, nc179}), .EMCWDB({nc180, nc181, 
        nc182, nc183, nc184, nc185, nc186, nc187, nc188, nc189, nc190, 
        nc191, nc192, nc193, nc194, nc195}), .EMCRWn(), .EMCCS0n(), 
        .EMCCS1n(), .EMCOEN0n(), .EMCOEN1n(), .EMCBYTEN({nc196, nc197})
        , .EMCDBOE(), .ADC0(GND_net), .ADC1(GND_net), .ADC2(GND_net), 
        .ADC3(GND_net), .ADC4(GND_net), .ADC5(GND_net), .ADC6(GND_net), 
        .ADC7(GND_net), .ADC8(GND_net), .ADC9(GND_net), .ADC10(GND_net)
        , .ADC11(GND_net), .SDD0(), .SDD1(), .SDD2(), .ABPS0(GND_net), 
        .ABPS1(GND_net), .ABPS2(GND_net), .ABPS3(GND_net), .ABPS4(
        GND_net), .ABPS5(GND_net), .ABPS6(GND_net), .ABPS7(GND_net), 
        .ABPS8(GND_net), .ABPS9(GND_net), .ABPS10(GND_net), .ABPS11(
        GND_net), .TM0(GND_net), .TM1(GND_net), .TM2(GND_net), .TM3(
        GND_net), .TM4(GND_net), .TM5(GND_net), .CM0(GND_net), .CM1(
        GND_net), .CM2(GND_net), .CM3(GND_net), .CM4(GND_net), .CM5(
        GND_net), .GNDTM0(GND_net), .GNDTM1(GND_net), .GNDTM2(GND_net), 
        .VAREF0(GND_net), .VAREF1(GND_net), .VAREF2(GND_net), 
        .VAREFOUT(), .GNDVAREF(GND_net), .PUn(GND_net));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("Y4") )  MSS_MAC_0_TXEN (.D(
        MSS_MAC_0_TXEN_D), .PAD(MAC_TXEN));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("U5") )  MSS_MAC_0_RXD_1 (
        .PAD(MAC_RXD[1]), .Y(MSS_MAC_0_RXD_1_Y));
    OUTBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("Y22") )  MSS_UART_0_TXD (
        .D(MSS_UART_0_TXD_D), .PAD(UART_0_TXD));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("U18") )  MSS_UART_0_RXD (
        .PAD(UART_0_RXD), .Y(MSS_UART_0_RXD_Y));
    MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC MSS_CCC_0 (.CLKA(GND_net), 
        .CLKA_PAD(GND_net), .CLKA_PADP(GND_net), .CLKA_PADN(GND_net), 
        .CLKB(GND_net), .CLKB_PAD(GND_net), .CLKB_PADP(GND_net), 
        .CLKB_PADN(GND_net), .CLKC(CLKC), .CLKC_PAD(GND_net), 
        .CLKC_PADP(GND_net), .CLKC_PADN(GND_net), .GLA(), .GLB(), .GLC(
        GLC), .FAB_CLK(FAB_CLK), .YB(), .YC(), .MAINXIN(MAINXIN), 
        .LPXIN(GND_net), .FAB_LOCK(), .MAC_CLK(GND_net), .RCOSC_CLKOUT(
        ), .MAINXIN_CLKOUT(), .LPXIN_CLKOUT(), .GLA0(
        MSS_ADLIB_INST_FCLK), .MSS_LOCK(MSS_ADLIB_INST_PLLLOCK), 
        .MAC_CLK_CCC(MSS_ADLIB_INST_MACCLKCCC), .MAC_CLK_IO(
        MSS_ADLIB_INST_MACCLK));
    INBUF_MSS #( .ACT_CONFIG(0), .ACT_PIN("R1") )  
        MSS_RESET_0_MSS_RESET_N (.PAD(MSS_RESET_N), .Y(
        MSS_RESET_0_MSS_RESET_N_Y));
    
endmodule
