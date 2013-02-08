///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Russ Bielawski
//
// File: AdcDisplayStub.v
// File history:
//      0: 2013-02-07: created
//
// Description: 
//
// Display stub to display the ADC values on the LEDs (think equalizer
// controls)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define ADC_RES          (12)
`define LED_CNT          (8)
`define STEP_SIZE        ((1<<`ADC_RES)/`LED_CNT)

module AdcDisplayStub( datain, ledsout );
input [(`ADC_RES-1):0] datain;
output reg [(`LED_CNT-1):0] ledsout;


always@ (*)
begin
   if(datain > 3584) begin
      ledsout = 255;
   end else if(datain > 3072) begin
      ledsout = 63;
   end else if(datain > 2560) begin
      ledsout = 31;
   end else if(datain > 2048) begin
      ledsout = 15;
   end else if(datain > 1536) begin
      ledsout = 7;
   end else if(datain > 1024) begin
      ledsout = 3;
   end else if(datain > 512) begin
      ledsout = 1;
   end else begin
      ledsout = 0;
   end
end

endmodule

