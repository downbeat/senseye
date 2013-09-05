//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Wed Sep 04 23:07:42 2013
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

module testbench;

parameter SYSCLK_PERIOD = 100; // 10MHz

reg SYSCLK;
reg NSYSRESET;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// 10MHz Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  TOPLEVEL
//////////////////////////////////////////////////////////////////////
TOPLEVEL TOPLEVEL_0 (
    // Inputs
    .CLK50(SYSCLK),
    .UART_0_RXD({1{1'b0}}),
    .MAC_CRSDV({1{1'b0}}),
    .MAC_RXER({1{1'b0}}),
    .MSS_RESET_N(NSYSRESET),
    .MAINXIN({1{1'b0}}),
    .px1_adc_din({1{1'b0}}),
    .px0_adc_din({1{1'b0}}),
    .MAC_RXD({2{1'b0}}),

    // Outputs
    .psram_ncs0( ),
    .psram_nwe( ),
    .psram_ncs1( ),
    .psram_noe1( ),
    .psram_noe0( ),
    .rs485_nre( ),
    .rs485_de( ),
    .UART_0_TXD( ),
    .MAC_MDC( ),
    .MAC_TXEN( ),
    .cam0_incp( ),
    .cam0_incv( ),
    .cam0_inphi( ),
    .cam0_resp( ),
    .cam0_resv( ),
    .cam0_px_adc_cs( ),
    .cam0_px_adc_sclk( ),
    .tp_cam0_startcap( ),
    .psram_nbyte_en( ),
    .psram_address( ),
    .MAC_TXD( ),
    .led( ),
    .cam1_resp( ),
    .cam1_px_adc_sclk( ),
    .cam1_px_adc_cs( ),
    .cam1_incp( ),
    .cam1_incv( ),
    .cam1_inphi( ),
    .cam1_resv( ),
    .tp_cam1_startcap( ),

    // Inouts
    .MAC_MDIO( ),
    .psram_data( )

);

endmodule

