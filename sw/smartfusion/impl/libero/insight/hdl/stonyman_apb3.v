///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_apb3.v
// File history:
//      0: 2013-03-05: created
//
// Description: 
//
// APB interface for the Stonyman driver (8-bits wide)
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
///////////////////////////////////////////////////////////////////////////////////////////////////

`define WIDTH            = 8;

`define MASK_REG_RANGE   = 8'hFF;
// TODO: add support for control register
//`define OFFSET_REG_CTRL  = 8'h0;
`define OFFSET_REG_FLAGS = 8'h4;
`define OFFSET_REG_DATA  = 8'h8;


//////////////////////////////////////////////////////////////////////
// stonyman_apb3
module stonyman_apb3 ( PCLK, PRESERN, PSEL, PENABLE, PREADY, PSLVERR, PWRITE, PADDR, PWDATA, PRDATA,
                       /* APPLICATION SPECIFIC SIGNALS */
                       FULL, EMPTY, BUSY, RDEN, PIXELIN, START_CAPTURE );

/* APB SIGNALS */
input PCLK;      // clock
input PRESERN;   // reset

input               PSEL;
input               PENABLE;
output wire         PREADY;
output wire         PSLVERR;
input               PWRITE;
input [31:0]        PADDR;
input [7:0]         PWDATA;
output wire [7:0]   PRDATA;

/* APPLICATION SPECIFIC SIGNALS */
input FULL;
input EMPTY;
input BUSY;
output wire RDEN;          // active low
input [7:0] PIXELIN;
output wire START_CAPTURE; // active low


wire bus_write_enable;
wire bus_read_enable;

wire ioreg_ready;


// no errors, always ready
assign PSLVERR=0;
assign PREADY=(ioreg_ready && PENABLE);

// bus conditions (to export)
assign bus_write_enable = (PENABLE &&  PWRITE && PSEL);
assign bus_read_enable = (!PWRITE && PSEL);


assign RDEN = !(bus_read_enable && !EMPTY);


stonyman_ioreg stonyman_ioreg_0( .clk(PCLK),.rst(PRESERN),.wren(bus_write_enable),
                                 .rden(bus_read_enable),.addr(PADDR),
                                 .ready(ioreg_ready),.datain(PWDATA),.dataout(PRDATA),.full(FULL),
                                 .empty(EMPTY),.appDatain(PIXELIN),.startCapture(START_CAPTURE) );


endmodule


//////////////////////////////////////////////////////////////////////
// stonyman_ioreg
module stonyman_ioreg(clk, rst, wren, rden, addr, ready, datain, dataout, full, empty, appDatain, startCapture);
input clk;
input rst;
input wren;
input rden;
input [31:0] addr;
output reg ready;
input [7:0] datain;
output reg [7:0] dataout;

input full;
input empty;
input [7:0] appDatain;

output reg startCapture;


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      dataout <= 8'd0;
   end
   else
   begin
      if(1'b1 == rden)
      begin
         // FIXME: add symbolic defines
         //if(`OFFSET_REG_FLAGS == (`MASK_REG_RANGE&addr))
         if(8'h4 == (addr&8'hFF))
         begin
            // TODO: support BUSY
            dataout <= {6'd0,empty,full};
            ready <= 1;
         end
         // FIXME: add symbolic defines
         //else if(`OFFSET_REG_DATA == (`MASK_REG_RANGE&addr))
         else if((8'h8 == (addr&8'hFF)))
         begin
            dataout <= appDatain;
            ready <= 1;
         end
         else
         begin
            dataout <= 0;
            ready <= 1;
         end
      end
      else if(1'b1 == wren)
      begin
         // FIXME: add symbolic defines
         //if(`OFFSET_REG_CTRL == (`MASK_REG_RANGE&addr))
         if(8'h0 == (addr&8'hFF))
         begin
            if(0 != (1&datain[0]))
            begin
               startCapture <= 1'b0;
               ready <= 1;
            end
         end
         else
         begin
            // do nothing
         end
      end
      else
      begin
         startCapture <= 1'b1;
         ready <= 0;
      end
   end
end


endmodule

