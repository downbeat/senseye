//////////////////////////////////////////////////////////////////////
// Created by Actel SmartDesign Tue Jul 09 14:30:39 2013
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
    .px3_adc_din({1{1'b0}}),
    .px0_adc_din({1{1'b0}}),
    .px1_adc_din({1{1'b0}}),
    .px2_adc_din({1{1'b0}}),
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
    .PREADY( ),
    .PSLVERR( ),
    .px_adc_sclk( ),
    .tp_startcap( ),
    .tp_busy( ),
    .tp_cam0_full( ),
    .tp_cam0_empty( ),
    .tp_cam0_rden( ),
    .tp_wren( ),
    .tp_cam0_afull( ),
    .tp_writePending( ),
    .tp_startAdcCapture( ),
    .tp_adcConvComplete( ),
    .PRDATA( ),
    .tp_stateout( ),
    .tp_substateout( ),
    .TP_REG_OFFSET_UPPER_NIBBLE( )

    // Inouts

);

endmodule

