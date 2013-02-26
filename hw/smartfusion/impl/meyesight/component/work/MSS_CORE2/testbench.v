//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Fri Sep 14 11:07:32 2012
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
// Instantiate Unit Under Test:  MSS_CORE2
//////////////////////////////////////////////////////////////////////
MSS_CORE2 MSS_CORE2_0 (
    // Inputs
    .CLKC(SYSCLK),
    .MAINXIN({1{1'b0}}),
    .FABINT({1{1'b0}}),
    .MSSHREADY({1{1'b0}}),
    .MSSHRESP({1{1'b0}}),
    .MSSHRDATA({32{1'b0}}),
    .UART_0_RXD({1{1'b0}}),
    .MAC_RXD({2{1'b0}}),
    .MAC_CRSDV({1{1'b0}}),
    .MAC_RXER({1{1'b0}}),
    .MSS_RESET_N(NSYSRESET),

    // Outputs
    .GLC( ),
    .FAB_CLK( ),
    .M2F_RESET_N( ),
    .MSSHWRITE( ),
    .MSSHLOCK( ),
    .MSSHADDR( ),
    .MSSHTRANS( ),
    .MSSHSIZE( ),
    .MSSHWDATA( ),
    .UART_0_TXD( ),
    .MAC_TXD( ),
    .MAC_TXEN( ),
    .MAC_MDC( ),

    // Inouts
    .MAC_MDIO( )

);

endmodule

