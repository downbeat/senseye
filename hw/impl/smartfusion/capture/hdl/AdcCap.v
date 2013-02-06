///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Russ Bielawski
//
// File: AdcCap.v
// File history:
//      0: 2013-02-05: created
//
// Description: 
//
// Capture data from the MCP3201 analog-to-digital converter over SPI
// - generates slow clock for the ADC
// - 
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define CLKFREQ     (25000000)       // hardcoded to 25MHz
`define SPICLKFREQ  (800000)


module AdcCap( CLK, SPICLK, MISO, DATAOUT );

input CLK;
input MISO;
output reg [7:0] DATAOUT;
output reg SPICLK;



endmodule

