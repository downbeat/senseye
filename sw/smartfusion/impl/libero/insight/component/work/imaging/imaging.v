//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Jul 31 11:27:51 2013
// Version: 10.1 SP3 10.1.3.1
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// imaging
module imaging(
    // Inputs
    PADDR,
    PENABLE,
    PSEL,
    PWDATA,
    PWRITE,
    clk,
    px0_adc_din,
    px1_adc_din,
    px2_adc_din,
    px3_adc_din,
    reset,
    // Outputs
    PRDATA,
    PREADY,
    PSLVERR,
    afull_cam0,
    afull_cam1,
    afull_cam2,
    afull_cam3,
    busy,
    incp,
    incv,
    inphi,
    px_adc_cs,
    px_adc_sclk,
    resp,
    resv,
    tp_adcConvComplete,
    tp_cam0_empty,
    tp_cam0_full,
    tp_cam0_rden,
    tp_startAdcCapture,
    tp_startcap,
    tp_stateout,
    tp_substateout,
    tp_wren,
    tp_writePending
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [31:0] PADDR;
input         PENABLE;
input         PSEL;
input  [31:0] PWDATA;
input         PWRITE;
input         clk;
input         px0_adc_din;
input         px1_adc_din;
input         px2_adc_din;
input         px3_adc_din;
input         reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] PRDATA;
output        PREADY;
output        PSLVERR;
output        afull_cam0;
output        afull_cam1;
output        afull_cam2;
output        afull_cam3;
output        busy;
output        incp;
output        incv;
output        inphi;
output        px_adc_cs;
output        px_adc_sclk;
output        resp;
output        resv;
output        tp_adcConvComplete;
output        tp_cam0_empty;
output        tp_cam0_full;
output        tp_cam0_rden;
output        tp_startAdcCapture;
output        tp_startcap;
output [3:0]  tp_stateout;
output [3:0]  tp_substateout;
output        tp_wren;
output        tp_writePending;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0]  adc081s101_0_dataout;
wire   [7:0]  adc081s101_1_dataout;
wire   [7:0]  adc081s101_2_dataout;
wire   [7:0]  adc081s101_3_dataout;
wire          afull_cam0_net_0;
wire          afull_cam1_net_0;
wire          afull_cam2_net_0;
wire          afull_cam3_net_0;
wire   [31:0] PADDR;
wire          PENABLE;
wire   [31:0] BIF_1_PRDATA;
wire          BIF_1_PREADY;
wire          PSEL;
wire          BIF_1_PSLVERR;
wire   [31:0] PWDATA;
wire          PWRITE;
wire          busy_net_0;
wire          clk;
wire          fifo_px_0_OVERFLOW;
wire   [31:0] fifo_px_0_Q;
wire          fifo_px_1_EMPTY;
wire          fifo_px_1_FULL;
wire          fifo_px_1_OVERFLOW;
wire   [31:0] fifo_px_1_Q;
wire          fifo_px_2_EMPTY;
wire          fifo_px_2_FULL;
wire          fifo_px_2_OVERFLOW;
wire   [31:0] fifo_px_2_Q;
wire          fifo_px_3_EMPTY;
wire          fifo_px_3_FULL;
wire          fifo_px_3_OVERFLOW;
wire   [31:0] fifo_px_3_Q;
wire          incp_net_0;
wire          incv_net_0;
wire          inphi_net_0;
wire          px0_adc_din;
wire          px1_adc_din;
wire          px2_adc_din;
wire          px3_adc_din;
wire          px_adc_Cs;
wire          px_adc_sclk_0;
wire          reset;
wire          resp_net_0;
wire          resv_net_0;
wire          stonyman_0_clkAdc;
wire   [7:0]  stonyman_0_px0_out;
wire   [7:0]  stonyman_0_px1_out;
wire   [7:0]  stonyman_0_px2_out;
wire   [7:0]  stonyman_0_px3_out;
wire          stonyman_apb3_0_CAM1_FIFO_RDEN;
wire          stonyman_apb3_0_CAM2_FIFO_RDEN;
wire          stonyman_apb3_0_CAM3_FIFO_RDEN;
wire          tp_adcConvComplete_net_0;
wire          tp_cam0_empty_net_0;
wire          tp_cam0_full_net_0;
wire          tp_cam0_rden_net_0;
wire          tp_startAdcCapture_net_0;
wire          tp_startcap_net_0;
wire   [3:0]  tp_stateout_net_0;
wire   [3:0]  tp_substateout_net_0;
wire          tp_wren_net_0;
wire          tp_writePending_0;
wire          px_adc_Cs_net_0;
wire          inphi_net_1;
wire          incv_net_1;
wire          resp_net_1;
wire          resv_net_1;
wire          incp_net_1;
wire          BIF_1_PREADY_net_0;
wire          BIF_1_PSLVERR_net_0;
wire          px_adc_sclk_0_net_0;
wire          tp_startcap_net_1;
wire          busy_net_1;
wire          tp_cam0_full_net_1;
wire          tp_cam0_empty_net_1;
wire          tp_cam0_rden_net_1;
wire          tp_wren_net_1;
wire          afull_cam0_net_1;
wire          tp_writePending_0_net_0;
wire          tp_startAdcCapture_net_1;
wire          tp_adcConvComplete_net_1;
wire          afull_cam1_net_1;
wire          afull_cam2_net_1;
wire          afull_cam3_net_1;
wire   [31:0] BIF_1_PRDATA_net_0;
wire   [3:0]  tp_stateout_net_1;
wire   [3:0]  tp_substateout_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign px_adc_Cs_net_0          = px_adc_Cs;
assign px_adc_cs                = px_adc_Cs_net_0;
assign inphi_net_1              = inphi_net_0;
assign inphi                    = inphi_net_1;
assign incv_net_1               = incv_net_0;
assign incv                     = incv_net_1;
assign resp_net_1               = resp_net_0;
assign resp                     = resp_net_1;
assign resv_net_1               = resv_net_0;
assign resv                     = resv_net_1;
assign incp_net_1               = incp_net_0;
assign incp                     = incp_net_1;
assign BIF_1_PREADY_net_0       = BIF_1_PREADY;
assign PREADY                   = BIF_1_PREADY_net_0;
assign BIF_1_PSLVERR_net_0      = BIF_1_PSLVERR;
assign PSLVERR                  = BIF_1_PSLVERR_net_0;
assign px_adc_sclk_0_net_0      = px_adc_sclk_0;
assign px_adc_sclk              = px_adc_sclk_0_net_0;
assign tp_startcap_net_1        = tp_startcap_net_0;
assign tp_startcap              = tp_startcap_net_1;
assign busy_net_1               = busy_net_0;
assign busy                     = busy_net_1;
assign tp_cam0_full_net_1       = tp_cam0_full_net_0;
assign tp_cam0_full             = tp_cam0_full_net_1;
assign tp_cam0_empty_net_1      = tp_cam0_empty_net_0;
assign tp_cam0_empty            = tp_cam0_empty_net_1;
assign tp_cam0_rden_net_1       = tp_cam0_rden_net_0;
assign tp_cam0_rden             = tp_cam0_rden_net_1;
assign tp_wren_net_1            = tp_wren_net_0;
assign tp_wren                  = tp_wren_net_1;
assign afull_cam0_net_1         = afull_cam0_net_0;
assign afull_cam0               = afull_cam0_net_1;
assign tp_writePending_0_net_0  = tp_writePending_0;
assign tp_writePending          = tp_writePending_0_net_0;
assign tp_startAdcCapture_net_1 = tp_startAdcCapture_net_0;
assign tp_startAdcCapture       = tp_startAdcCapture_net_1;
assign tp_adcConvComplete_net_1 = tp_adcConvComplete_net_0;
assign tp_adcConvComplete       = tp_adcConvComplete_net_1;
assign afull_cam1_net_1         = afull_cam1_net_0;
assign afull_cam1               = afull_cam1_net_1;
assign afull_cam2_net_1         = afull_cam2_net_0;
assign afull_cam2               = afull_cam2_net_1;
assign afull_cam3_net_1         = afull_cam3_net_0;
assign afull_cam3               = afull_cam3_net_1;
assign BIF_1_PRDATA_net_0       = BIF_1_PRDATA;
assign PRDATA[31:0]             = BIF_1_PRDATA_net_0;
assign tp_stateout_net_1        = tp_stateout_net_0;
assign tp_stateout[3:0]         = tp_stateout_net_1;
assign tp_substateout_net_1     = tp_substateout_net_0;
assign tp_substateout[3:0]      = tp_substateout_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------adc081s101
adc081s101 adc081s101_0(
        // Inputs
        .clk                ( stonyman_0_clkAdc ),
        .reset              ( reset ),
        .startCapture       ( tp_startAdcCapture_net_0 ),
        .miso               ( px0_adc_din ),
        // Outputs
        .cs                 ( px_adc_Cs ),
        .conversionComplete ( tp_adcConvComplete_net_0 ),
        .dataout            ( adc081s101_0_dataout ) 
        );

//--------adc081s101
adc081s101 adc081s101_1(
        // Inputs
        .clk                ( stonyman_0_clkAdc ),
        .reset              ( reset ),
        .startCapture       ( tp_startAdcCapture_net_0 ),
        .miso               ( px1_adc_din ),
        // Outputs
        .cs                 (  ),
        .conversionComplete (  ),
        .dataout            ( adc081s101_1_dataout ) 
        );

//--------adc081s101
adc081s101 adc081s101_2(
        // Inputs
        .clk                ( stonyman_0_clkAdc ),
        .reset              ( reset ),
        .startCapture       ( tp_startAdcCapture_net_0 ),
        .miso               ( px2_adc_din ),
        // Outputs
        .cs                 (  ),
        .conversionComplete (  ),
        .dataout            ( adc081s101_2_dataout ) 
        );

//--------adc081s101
adc081s101 adc081s101_3(
        // Inputs
        .clk                ( stonyman_0_clkAdc ),
        .reset              ( reset ),
        .startCapture       ( tp_startAdcCapture_net_0 ),
        .miso               ( px3_adc_din ),
        // Outputs
        .cs                 (  ),
        .conversionComplete (  ),
        .dataout            ( adc081s101_3_dataout ) 
        );

//--------fifo_px
fifo_px fifo_px_0(
        // Inputs
        .WE        ( tp_wren_net_0 ),
        .RE        ( tp_cam0_rden_net_0 ),
        .CLK       ( clk ),
        .RESET     ( reset ),
        .DATA      ( stonyman_0_px0_out ),
        // Outputs
        .FULL      ( tp_cam0_full_net_0 ),
        .EMPTY     ( tp_cam0_empty_net_0 ),
        .AFULL     ( afull_cam0_net_0 ),
        .OVERFLOW  ( fifo_px_0_OVERFLOW ),
        .UNDERFLOW (  ),
        .Q         ( fifo_px_0_Q ) 
        );

//--------fifo_px
fifo_px fifo_px_1(
        // Inputs
        .WE        ( tp_wren_net_0 ),
        .RE        ( stonyman_apb3_0_CAM1_FIFO_RDEN ),
        .CLK       ( clk ),
        .RESET     ( reset ),
        .DATA      ( stonyman_0_px1_out ),
        // Outputs
        .FULL      ( fifo_px_1_FULL ),
        .EMPTY     ( fifo_px_1_EMPTY ),
        .AFULL     ( afull_cam3_net_0 ),
        .OVERFLOW  ( fifo_px_1_OVERFLOW ),
        .UNDERFLOW (  ),
        .Q         ( fifo_px_1_Q ) 
        );

//--------fifo_px
fifo_px fifo_px_2(
        // Inputs
        .WE        ( tp_wren_net_0 ),
        .RE        ( stonyman_apb3_0_CAM2_FIFO_RDEN ),
        .CLK       ( clk ),
        .RESET     ( reset ),
        .DATA      ( stonyman_0_px2_out ),
        // Outputs
        .FULL      ( fifo_px_2_FULL ),
        .EMPTY     ( fifo_px_2_EMPTY ),
        .AFULL     ( afull_cam1_net_0 ),
        .OVERFLOW  ( fifo_px_2_OVERFLOW ),
        .UNDERFLOW (  ),
        .Q         ( fifo_px_2_Q ) 
        );

//--------fifo_px
fifo_px fifo_px_3(
        // Inputs
        .WE        ( tp_wren_net_0 ),
        .RE        ( stonyman_apb3_0_CAM3_FIFO_RDEN ),
        .CLK       ( clk ),
        .RESET     ( reset ),
        .DATA      ( stonyman_0_px3_out ),
        // Outputs
        .FULL      ( fifo_px_3_FULL ),
        .EMPTY     ( fifo_px_3_EMPTY ),
        .AFULL     ( afull_cam2_net_0 ),
        .OVERFLOW  ( fifo_px_3_OVERFLOW ),
        .UNDERFLOW (  ),
        .Q         ( fifo_px_3_Q ) 
        );

//--------MUX2
MUX2 MUX2_0(
        // Inputs
        .Data0_port ( stonyman_0_clkAdc ),
        .Data1_port ( VCC_net ),
        .Sel0       ( px_adc_Cs ),
        // Outputs
        .Result     ( px_adc_sclk_0 ) 
        );

//--------stonyman
stonyman stonyman_0(
        // Inputs
        .clk             ( clk ),
        .reset           ( reset ),
        .startCapture    ( tp_startcap_net_0 ),
        .adcConvComplete ( tp_adcConvComplete_net_0 ),
        .px0_in          ( adc081s101_0_dataout ),
        .px1_in          ( adc081s101_1_dataout ),
        .px2_in          ( adc081s101_2_dataout ),
        .px3_in          ( adc081s101_3_dataout ),
        // Outputs
        .resp            ( resp_net_0 ),
        .incp            ( incp_net_0 ),
        .resv            ( resv_net_0 ),
        .incv            ( incv_net_0 ),
        .inphi           ( inphi_net_0 ),
        .writeEnable     ( tp_wren_net_0 ),
        .clkAdc          ( stonyman_0_clkAdc ),
        .startAdcCapture ( tp_startAdcCapture_net_0 ),
        .busy            ( busy_net_0 ),
        .tp_writePending ( tp_writePending_0 ),
        .px0_out         ( stonyman_0_px0_out ),
        .px1_out         ( stonyman_0_px1_out ),
        .px2_out         ( stonyman_0_px2_out ),
        .px3_out         ( stonyman_0_px3_out ),
        .tp_stateout     ( tp_stateout_net_0 ),
        .tp_substateout  ( tp_substateout_net_0 ) 
        );

//--------stonyman_apb3
stonyman_apb3 stonyman_apb3_0(
        // Inputs
        .PCLK               ( clk ),
        .PRESERN            ( reset ),
        .PSEL               ( PSEL ),
        .PENABLE            ( PENABLE ),
        .PWRITE             ( PWRITE ),
        .BUSY               ( busy_net_0 ),
        .CAM0_FIFO_EMPTY    ( tp_cam0_empty_net_0 ),
        .CAM1_FIFO_EMPTY    ( fifo_px_1_EMPTY ),
        .CAM2_FIFO_EMPTY    ( fifo_px_2_EMPTY ),
        .CAM3_FIFO_EMPTY    ( fifo_px_3_EMPTY ),
        .CAM0_FIFO_FULL     ( tp_cam0_full_net_0 ),
        .CAM1_FIFO_FULL     ( fifo_px_1_FULL ),
        .CAM2_FIFO_FULL     ( fifo_px_2_FULL ),
        .CAM3_FIFO_FULL     ( fifo_px_3_FULL ),
        .CAM0_FIFO_AFULL    ( afull_cam0_net_0 ),
        .CAM1_FIFO_AFULL    ( afull_cam3_net_0 ),
        .CAM2_FIFO_AFULL    ( afull_cam1_net_0 ),
        .CAM3_FIFO_AFULL    ( afull_cam2_net_0 ),
        .CAM0_FIFO_OVERFLOW ( fifo_px_0_OVERFLOW ),
        .CAM1_FIFO_OVERFLOW ( fifo_px_1_OVERFLOW ),
        .CAM2_FIFO_OVERFLOW ( fifo_px_2_OVERFLOW ),
        .CAM3_FIFO_OVERFLOW ( fifo_px_3_OVERFLOW ),
        .PADDR              ( PADDR ),
        .PWDATA             ( PWDATA ),
        .CAM0_PIXELSIN      ( fifo_px_0_Q ),
        .CAM1_PIXELSIN      ( fifo_px_1_Q ),
        .CAM2_PIXELSIN      ( fifo_px_2_Q ),
        .CAM3_PIXELSIN      ( fifo_px_3_Q ),
        // Outputs
        .PREADY             ( BIF_1_PREADY ),
        .PSLVERR            ( BIF_1_PSLVERR ),
        .CAM0_FIFO_RDEN     ( tp_cam0_rden_net_0 ),
        .CAM1_FIFO_RDEN     ( stonyman_apb3_0_CAM1_FIFO_RDEN ),
        .CAM2_FIFO_RDEN     ( stonyman_apb3_0_CAM2_FIFO_RDEN ),
        .CAM3_FIFO_RDEN     ( stonyman_apb3_0_CAM3_FIFO_RDEN ),
        .START_CAPTURE      ( tp_startcap_net_0 ),
        .PRDATA             ( BIF_1_PRDATA ) 
        );


endmodule
