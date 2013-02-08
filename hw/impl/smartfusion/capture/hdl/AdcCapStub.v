///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Russ Bielawski
//
// File: AdcCapStub.v
// File history:
//      0: 2013-02-07: created
//
// Description: 
//
// Test stub to make the Adc capture once per 0.5s
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define CLK_FREQ         (40000000)
`define CONV_RATE_TICKS  ((`CLK_FREQ >> 1) - 1)
`define HOLD_TIME_TICKS  (100)


module AdcCapStub( clk, reset, startCapture );
input clk;
input reset;
output reg startCapture;

reg [31:0] cntrConv;
reg [7:0]  cntrHold;



always@ (posedge clk)
begin
   if(0 == reset)
   begin
      startCapture <= 1;
      cntrConv <= 0;
   end

   cntrConv <= cntrConv-1;
   if(0 == cntrConv)
   begin
      cntrConv <= `CONV_RATE_TICKS-1;
      // trigger conversion
      cntrHold <= `HOLD_TIME_TICKS-1;
      startCapture <= 0;
   end

   if(0 == startCapture)
   begin
      if(0 < cntrHold)
      begin
         cntrHold <= cntrHold-1;
      end
      else
      begin
         startCapture <= 1;
      end
   end
end

endmodule

