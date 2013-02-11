///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Russ Bielawski
//
// File: AdcCap.v
// File history:
//      0.01: 2013-02-05: created
//      1.00: 2013-02-10: driver for TI ADC081S101 complete and working
//
// Description: 
//
// Driver for the TI ADC081S101, low-power 1Msps 8-bit ADC
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define CLK_FREQ             (20000000)  // FIXME (shouldn't be) hardcoded to 20MHz
`define ADC_RES              (8)         // bits
`define TICKS_WAIT_LEADING   (3)         // bits / clock ticks
`define TICKS_WAIT_TRAILING  (5)         // bits / clock ticks
`define TICKS_WAIT_QUIET     (4)         // bits / clock ticks


module AdcCap( clk, reset, startCapture, miso, cs, dataout );

input clk;
input reset;
input startCapture;
input miso;
output reg cs;
output reg [(`ADC_RES-1):0] dataout;

reg [7:0] cntrClkSpi;
reg [2:0] cntrWaitLeading;
reg [2:0] cntrWaitTrailing;
reg [2:0] cntrWaitQuiet;
reg [3:0] bitsRead;


always@ (posedge clk)
begin
   if(0 == reset)
   begin
      cs <= 1;
      cntrWaitQuiet <= 16; // just a guess
   end

   // state: idle
   if((1 == cs) && (0 == cntrWaitQuiet))
   begin
      // start conversion
      if(0 == startCapture)
      begin
         cs <= 0;
         cntrWaitLeading <= `TICKS_WAIT_LEADING;
         cntrWaitTrailing <= `TICKS_WAIT_TRAILING;
         cntrWaitQuiet <= `TICKS_WAIT_QUIET;
         bitsRead <= 0;
      end
   end

   // state: waiting (leading)
   if((0 == cs) && (0 < cntrWaitLeading))
   begin
      cntrWaitLeading <= cntrWaitLeading - 1;
   end

   // state: reading data
   if((0 == cs) && (0 == cntrWaitLeading) && (`ADC_RES > bitsRead))
   begin
      // shift in data
      dataout <= {dataout[(`ADC_RES-1):0],~miso};
      bitsRead <= bitsRead + 1;
   end

   // state: waiting (trailing)
   if((0 == cs) && (`ADC_RES == bitsRead) && (0 < cntrWaitTrailing))
   begin
      cntrWaitTrailing <= cntrWaitTrailing - 1;
   end

   // state: trailing wait finished
   if((0 == cs) && (`ADC_RES == bitsRead) && (0 == cntrWaitTrailing))
   begin
      cs <= 1;
   end

   // state: quiet time
   if((1 == cs) && (`ADC_RES == bitsRead) && (0 < cntrWaitQuiet))
   begin
      cntrWaitQuiet <= cntrWaitQuiet - 1;
   end
end

endmodule

