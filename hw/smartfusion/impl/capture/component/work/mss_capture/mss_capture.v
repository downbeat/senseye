//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Feb 26 03:50:01 2013
// Version: 10.1 SP3 10.1.3.1
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// mss_capture
module mss_capture(
    // Inputs
    MSS_RESET_N,
    miso,
    // Outputs
    SPI_CLK,
    cs,
    incp,
    incv,
    inphi,
    ledsout,
    resp,
    resv,
    startCaptureTP
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        MSS_RESET_N;
input        miso;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       SPI_CLK;
output       cs;
output       incp;
output       incv;
output       inphi;
output [7:0] ledsout;
output       resp;
output       resv;
output       startCaptureTP;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         AdcCap_0_conversionComplete;
wire   [7:0] AdcCap_0_dataout_0;
wire         cs_net_0;
wire         incp_net_0;
wire         incv_net_0;
wire         inphi_net_0;
wire   [3:0] ledsout_net_0;
wire   [3:0] ledsout_0;
wire         miso;
wire         mss_capture_MSS_0_M2F_RESET_N;
wire         MSS_RESET_N;
wire         resp_net_0;
wire         resv_net_0;
wire         SPI_CLK_net_0;
wire         stonyman_0_startAdcCapture;
wire         cs_net_1;
wire         SPI_CLK_net_1;
wire         incv_net_1;
wire         resv_net_1;
wire         resp_net_1;
wire         incp_net_1;
wire         inphi_net_1;
wire   [3:0] ledsout_0_net_0;
wire   [7:4] ledsout_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// TieOff assignments
//--------------------------------------------------------------------
assign startCaptureTP  = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign cs_net_1        = cs_net_0;
assign cs              = cs_net_1;
assign SPI_CLK_net_1   = SPI_CLK_net_0;
assign SPI_CLK         = SPI_CLK_net_1;
assign incv_net_1      = incv_net_0;
assign incv            = incv_net_1;
assign resv_net_1      = resv_net_0;
assign resv            = resv_net_1;
assign resp_net_1      = resp_net_0;
assign resp            = resp_net_1;
assign incp_net_1      = incp_net_0;
assign incp            = incp_net_1;
assign inphi_net_1     = inphi_net_0;
assign inphi           = inphi_net_1;
assign ledsout_0_net_0 = ledsout_0;
assign ledsout[3:0]    = ledsout_0_net_0;
assign ledsout_net_1   = ledsout_net_0;
assign ledsout[7:4]    = ledsout_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------adc081s101
adc081s101 adc081s101_0(
        // Inputs
        .clk                ( SPI_CLK_net_0 ),
        .reset              ( mss_capture_MSS_0_M2F_RESET_N ),
        .startCapture       ( stonyman_0_startAdcCapture ),
        .miso               ( miso ),
        // Outputs
        .cs                 ( cs_net_0 ),
        .dataout            ( AdcCap_0_dataout_0 ),
        .conversionComplete ( AdcCap_0_conversionComplete ) 
        );

//--------blinker
blinker blinker_0(
        // Inputs
        .CLK   ( SPI_CLK_net_0 ),
        .RESET ( mss_capture_MSS_0_M2F_RESET_N ),
        // Outputs
        .LED   (  ) 
        );

//--------mss_capture_MSS
mss_capture_MSS mss_capture_MSS_0(
        // Inputs
        .MSS_RESET_N ( MSS_RESET_N ),
        // Outputs
        .FAB_CLK     ( SPI_CLK_net_0 ),
        .M2F_RESET_N ( mss_capture_MSS_0_M2F_RESET_N ) 
        );

//--------stonyman
stonyman stonyman_0(
        // Inputs
        .clk             ( SPI_CLK_net_0 ),
        .reset           ( mss_capture_MSS_0_M2F_RESET_N ),
        .startCapture    ( GND_net ),
        .adcConvComplete ( AdcCap_0_conversionComplete ),
        .pixelin         ( AdcCap_0_dataout_0 ),
        // Outputs
        .resp            ( resp_net_0 ),
        .incp            ( incp_net_0 ),
        .resv            ( resv_net_0 ),
        .incv            ( incv_net_0 ),
        .inphi           ( inphi_net_0 ),
        .startAdcCapture ( stonyman_0_startAdcCapture ),
        .pixelout        (  ),
        .tp_stateout     ( ledsout_net_0 ),
        .tp_substateout  ( ledsout_0 ) 
        );


endmodule
