///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: blinker.v
// File history:
//      0: 2013-02-05: created
//
// Description: 
//
// Blink an LED at 1Hz (assuming clock speed is 25MHz)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define CLKFREQ     (40000000)       // TODO (shouldn't be) hardcoded to 40MHz
`define TOGGLEVAL   (`CLKFREQ >> 1)  // toggle every 0.5s (period is 1s, freq is 1Hz)


module blinker( CLK, RESET, LED );
input CLK;
input RESET;
reg [31:0] COUNT;
output reg LED;

initial
begin
   COUNT <= 0;
end

always@ (posedge CLK)
begin
   COUNT <= COUNT+1;
   if(0 == RESET) begin
      COUNT <= 0;
   end
   if(`TOGGLEVAL == COUNT) begin
      COUNT <= 0;
      LED <= LED^1;
   end
end

endmodule
