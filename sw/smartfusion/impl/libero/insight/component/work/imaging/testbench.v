//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Mon Aug 19 12:26:50 2013
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
// Instantiate Unit Under Test:  imaging
//////////////////////////////////////////////////////////////////////
imaging imaging_0 (
    // Inputs
    .reset(NSYSRESET),
    .clk(SYSCLK),
    .px0_adc_din({1{1'b0}}),
    .px1_adc_din({1{1'b0}}),
    .PENABLE({1{1'b0}}),
    .PWRITE({1{1'b0}}),
    .PSEL({1{1'b0}}),
    .PADDR({32{1'b0}}),
    .PWDATA({32{1'b0}}),

    // Outputs
    .px_adc_cs( ),
    .inphi( ),
    .incv( ),
    .resp( ),
    .resv( ),
    .incp( ),
    .px_adc_sclk( ),
    .tp_startcap( ),
    .busy( ),
    .tp_cam0_full( ),
    .tp_cam0_empty( ),
    .tp_cam0_rden( ),
    .tp_wren( ),
    .afull_cam0( ),
    .tp_writePending( ),
    .tp_startAdcCapture( ),
    .tp_adcConvComplete( ),
    .afull_cam1( ),
    .afull_cam2( ),
    .afull_cam3( ),
    .PREADY( ),
    .PSLVERR( ),
    .tp_stateout( ),
    .tp_substateout( ),
    .PRDATA( )

    // Inouts

);

endmodule

