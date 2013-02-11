//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Feb 10 20:44:07 2013
// Version: 10.1 SP3 10.1.3.1
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// mss_capture
module mss_capture(
    // Inputs
    MAC_CRSDV,
    MAC_RXD,
    MAC_RXER,
    MSS_RESET_N,
    RESET,
    SPI_0_DI,
    SPI_1_DI,
    UART_0_RXD,
    UART_1_RXD,
    miso,
    // Outputs
    EMC_AB,
    EMC_BYTEN,
    EMC_CLK,
    EMC_CS0_N,
    EMC_CS1_N,
    EMC_OEN0_N,
    EMC_OEN1_N,
    EMC_RW_N,
    MAC_MDC,
    MAC_TXD,
    MAC_TXEN,
    SPI_0_DO,
    SPI_1_DO,
    SPI_CLK,
    UART_0_TXD,
    UART_1_TXD,
    cs,
    ledsout,
    startCaptureTP,
    // Inouts
    EMC_DB,
    I2C_0_SCL,
    I2C_0_SDA,
    I2C_1_SCL,
    I2C_1_SDA,
    MAC_MDIO,
    SPI_0_CLK,
    SPI_0_SS,
    SPI_1_CLK,
    SPI_1_SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         MAC_CRSDV;
input  [1:0]  MAC_RXD;
input         MAC_RXER;
input         MSS_RESET_N;
input         RESET;
input         SPI_0_DI;
input         SPI_1_DI;
input         UART_0_RXD;
input         UART_1_RXD;
input         miso;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [25:0] EMC_AB;
output [1:0]  EMC_BYTEN;
output        EMC_CLK;
output        EMC_CS0_N;
output        EMC_CS1_N;
output        EMC_OEN0_N;
output        EMC_OEN1_N;
output        EMC_RW_N;
output        MAC_MDC;
output [1:0]  MAC_TXD;
output        MAC_TXEN;
output        SPI_0_DO;
output        SPI_1_DO;
output        SPI_CLK;
output        UART_0_TXD;
output        UART_1_TXD;
output        cs;
output [7:0]  ledsout;
output        startCaptureTP;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] EMC_DB;
inout         I2C_0_SCL;
inout         I2C_0_SDA;
inout         I2C_1_SCL;
inout         I2C_1_SDA;
inout         MAC_MDIO;
inout         SPI_0_CLK;
inout         SPI_0_SS;
inout         SPI_1_CLK;
inout         SPI_1_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          cs_net_0;
wire   [25:0] EMC_AB_net_0;
wire   [1:0]  EMC_BYTEN_net_0;
wire          EMC_CLK_net_0;
wire          EMC_CS0_N_net_0;
wire          EMC_CS1_N_net_0;
wire   [15:0] EMC_DB;
wire          EMC_OEN0_N_net_0;
wire          EMC_OEN1_N_net_0;
wire          EMC_RW_N_net_0;
wire          I2C_0_SCL;
wire          I2C_0_SDA;
wire          I2C_1_SCL;
wire          I2C_1_SDA;
wire   [7:0]  ledsout_net_0;
wire          MAC_CRSDV;
wire          MAC_MDC_net_0;
wire          MAC_MDIO;
wire   [1:0]  MAC_RXD;
wire          MAC_RXER;
wire   [1:0]  MAC_TXD_net_0;
wire          MAC_TXEN_net_0;
wire          miso;
wire          mss_capture_MSS_0_M2F_RESET_N;
wire          MSS_RESET_N;
wire          RESET;
wire          SPI_0_CLK;
wire          SPI_0_DI;
wire          SPI_0_DO_net_0;
wire          SPI_0_SS;
wire          SPI_1_CLK;
wire          SPI_1_DI;
wire          SPI_1_DO_net_0;
wire          SPI_1_SS;
wire          SPI_CLK_net_0;
wire          startCaptureTP_net_0;
wire          UART_0_RXD;
wire          UART_0_TXD_net_0;
wire          UART_1_RXD;
wire          UART_1_TXD_net_0;
wire          EMC_CLK_net_1;
wire          EMC_CS0_N_net_1;
wire          EMC_CS1_N_net_1;
wire          EMC_OEN0_N_net_1;
wire          EMC_OEN1_N_net_1;
wire          EMC_RW_N_net_1;
wire          UART_1_TXD_net_1;
wire          UART_0_TXD_net_1;
wire          SPI_1_DO_net_1;
wire          SPI_0_DO_net_1;
wire          MAC_MDC_net_1;
wire          MAC_TXEN_net_1;
wire          cs_net_1;
wire          SPI_CLK_net_1;
wire          startCaptureTP_net_1;
wire   [25:0] EMC_AB_net_1;
wire   [1:0]  EMC_BYTEN_net_1;
wire   [1:0]  MAC_TXD_net_1;
wire   [7:0]  ledsout_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign EMC_CLK_net_1        = EMC_CLK_net_0;
assign EMC_CLK              = EMC_CLK_net_1;
assign EMC_CS0_N_net_1      = EMC_CS0_N_net_0;
assign EMC_CS0_N            = EMC_CS0_N_net_1;
assign EMC_CS1_N_net_1      = EMC_CS1_N_net_0;
assign EMC_CS1_N            = EMC_CS1_N_net_1;
assign EMC_OEN0_N_net_1     = EMC_OEN0_N_net_0;
assign EMC_OEN0_N           = EMC_OEN0_N_net_1;
assign EMC_OEN1_N_net_1     = EMC_OEN1_N_net_0;
assign EMC_OEN1_N           = EMC_OEN1_N_net_1;
assign EMC_RW_N_net_1       = EMC_RW_N_net_0;
assign EMC_RW_N             = EMC_RW_N_net_1;
assign UART_1_TXD_net_1     = UART_1_TXD_net_0;
assign UART_1_TXD           = UART_1_TXD_net_1;
assign UART_0_TXD_net_1     = UART_0_TXD_net_0;
assign UART_0_TXD           = UART_0_TXD_net_1;
assign SPI_1_DO_net_1       = SPI_1_DO_net_0;
assign SPI_1_DO             = SPI_1_DO_net_1;
assign SPI_0_DO_net_1       = SPI_0_DO_net_0;
assign SPI_0_DO             = SPI_0_DO_net_1;
assign MAC_MDC_net_1        = MAC_MDC_net_0;
assign MAC_MDC              = MAC_MDC_net_1;
assign MAC_TXEN_net_1       = MAC_TXEN_net_0;
assign MAC_TXEN             = MAC_TXEN_net_1;
assign cs_net_1             = cs_net_0;
assign cs                   = cs_net_1;
assign SPI_CLK_net_1        = SPI_CLK_net_0;
assign SPI_CLK              = SPI_CLK_net_1;
assign startCaptureTP_net_1 = startCaptureTP_net_0;
assign startCaptureTP       = startCaptureTP_net_1;
assign EMC_AB_net_1         = EMC_AB_net_0;
assign EMC_AB[25:0]         = EMC_AB_net_1;
assign EMC_BYTEN_net_1      = EMC_BYTEN_net_0;
assign EMC_BYTEN[1:0]       = EMC_BYTEN_net_1;
assign MAC_TXD_net_1        = MAC_TXD_net_0;
assign MAC_TXD[1:0]         = MAC_TXD_net_1;
assign ledsout_net_1        = ledsout_net_0;
assign ledsout[7:0]         = ledsout_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AdcCap
AdcCap AdcCap_0(
        // Inputs
        .clk          ( SPI_CLK_net_0 ),
        .reset        ( mss_capture_MSS_0_M2F_RESET_N ),
        .startCapture ( startCaptureTP_net_0 ),
        .miso         ( miso ),
        // Outputs
        .cs           ( cs_net_0 ),
        .dataout      ( ledsout_net_0 ) 
        );

//--------AdcCapStub
AdcCapStub AdcCapStub_0(
        // Inputs
        .clk          ( SPI_CLK_net_0 ),
        .reset        ( mss_capture_MSS_0_M2F_RESET_N ),
        // Outputs
        .startCapture ( startCaptureTP_net_0 ) 
        );

//--------blinker
blinker blinker_0(
        // Inputs
        .CLK   ( SPI_CLK_net_0 ),
        .RESET ( RESET ),
        // Outputs
        .LED   (  ) 
        );

//--------mss_capture_MSS
mss_capture_MSS mss_capture_MSS_0(
        // Inputs
        .UART_0_RXD  ( UART_0_RXD ),
        .UART_1_RXD  ( UART_1_RXD ),
        .SPI_1_DI    ( SPI_1_DI ),
        .SPI_0_DI    ( SPI_0_DI ),
        .MSS_RESET_N ( MSS_RESET_N ),
        .MAC_CRSDV   ( MAC_CRSDV ),
        .MAC_RXER    ( MAC_RXER ),
        .MAC_RXD     ( MAC_RXD ),
        // Outputs
        .EMC_CLK     ( EMC_CLK_net_0 ),
        .EMC_CS0_N   ( EMC_CS0_N_net_0 ),
        .EMC_CS1_N   ( EMC_CS1_N_net_0 ),
        .EMC_OEN0_N  ( EMC_OEN0_N_net_0 ),
        .EMC_OEN1_N  ( EMC_OEN1_N_net_0 ),
        .EMC_RW_N    ( EMC_RW_N_net_0 ),
        .UART_0_TXD  ( UART_0_TXD_net_0 ),
        .UART_1_TXD  ( UART_1_TXD_net_0 ),
        .SPI_1_DO    ( SPI_1_DO_net_0 ),
        .SPI_0_DO    ( SPI_0_DO_net_0 ),
        .MAC_TXEN    ( MAC_TXEN_net_0 ),
        .MAC_MDC     ( MAC_MDC_net_0 ),
        .FAB_CLK     ( SPI_CLK_net_0 ),
        .M2F_RESET_N ( mss_capture_MSS_0_M2F_RESET_N ),
        .EMC_AB      ( EMC_AB_net_0 ),
        .EMC_BYTEN   ( EMC_BYTEN_net_0 ),
        .MAC_TXD     ( MAC_TXD_net_0 ),
        // Inouts
        .I2C_1_SDA   ( I2C_1_SDA ),
        .I2C_1_SCL   ( I2C_1_SCL ),
        .SPI_1_CLK   ( SPI_1_CLK ),
        .SPI_1_SS    ( SPI_1_SS ),
        .SPI_0_CLK   ( SPI_0_CLK ),
        .SPI_0_SS    ( SPI_0_SS ),
        .I2C_0_SCL   ( I2C_0_SCL ),
        .I2C_0_SDA   ( I2C_0_SDA ),
        .MAC_MDIO    ( MAC_MDIO ),
        .EMC_DB      ( EMC_DB ) 
        );


endmodule
