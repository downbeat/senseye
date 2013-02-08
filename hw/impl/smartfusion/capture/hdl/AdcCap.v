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

`define CLK_FREQ            (40000000)      // TODO (shouldn't be) hardcoded to 40MHz
`define CLK_FREQ_SPI        (800000)        // 800kHz clocks the Adc @ 50ksps
`define SPI_CLK_TOGGLE_VAL  ((`CLK_FREQ / `CLK_FREQ_SPI)>>1)
`define ADC_RES             (12)            // bits
`define NULL_BITS           (3)             // bits


module AdcCap( clk, reset, startCapture, miso, clkSpi, cs, dataout );

input clk;
input reset;
input startCapture;
input miso;
output reg clkSpi;
output reg cs;
output reg [(`ADC_RES-1):0] dataout;

reg [7:0] cntrClkSpi;
reg [4:0] cntrConvWait;
reg captureRunning;
reg [3:0] bitsRead;


always@ (posedge clk)
begin
   if(0 == reset)
   begin
      cntrClkSpi <= 0;
   end

   cntrClkSpi <= cntrClkSpi+1;
   if(`SPI_CLK_TOGGLE_VAL == cntrClkSpi)
   begin
      // generate slow clock for SPI
      cntrClkSpi <= 0;
      clkSpi <= clkSpi ^ 1;
   end
end

always@ (posedge clkSpi)
begin
   if(0 == reset)
   begin
      // TODO: captureRunning is actually redundant with cs
      captureRunning <= 0;
      cs <= 1;
   end

   // capture logic
   if(0 == captureRunning)
   begin
      // startCapture will be active low just like cs
      if(0 == startCapture)
      begin
         // begin capture
         cs <= 0;
         captureRunning <= 1;
         cntrConvWait <= `NULL_BITS-1;
         bitsRead <= 0;
      end
      else
      begin
         // TODO: unsure if this is OK to set now, but we'll see
         cs <= 1;
      end
   end
   else // 1 == captureRunning
   begin
      if(0 < cntrConvWait)
      begin
         cntrConvWait <= cntrConvWait-1;
      end
      else // 0 == cntrConvWait
      begin
         // shift in data
         //dataout <= dataout << 1;
         //dataout[0] <= miso;
         dataout <= {dataout[10:0],~miso};
         bitsRead <= bitsRead + 1;
      end
      if(`ADC_RES == bitsRead)
      begin
         captureRunning <= 0;
      end
   end
end

endmodule

