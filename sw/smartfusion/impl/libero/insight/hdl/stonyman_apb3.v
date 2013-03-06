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
`define OFFSET_REG_FLAGS = 8'h0;
// TODO: add support for control register
//`define OFFSET_REG_CTL   = 8'h1;
`define OFFSET_REG_DATA  = 8'h4;


//////////////////////////////////////////////////////////////////////
// stonyman_apb3
module stonyman_apb3 ( PCLK, PRESERN, PSEL, PENABLE, PREADY, PSLVERR, PWRITE, PADDR, PWDATA, PRDATA,
                       /* APPLICATION SPECIFIC SIGNALS */
                       FULL, EMPTY, BUSY, RDEN, DATAIN );

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
output wire RDEN;  // active low
input [7:0] DATAIN;


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


stonyman_ioreg stonyman_ioreg_0( .clk(PCLK),.rst(PRESERN),.rden(bus_read_enable),.addr(PADDR),
                                 .ready(ioreg_ready),.dataout(PRDATA),.full(FULL),
                                 .empty(EMPTY),.appDatain(DATAIN) );


endmodule


//////////////////////////////////////////////////////////////////////
// stonyman_ioreg
module stonyman_ioreg(clk, rst, rden, addr, ready, dataout, full, empty, appDatain);
input clk;
input rst;
input rden;
input [31:0] addr;
output reg ready;
output reg [7:0] dataout;

input full;
input empty;
input [7:0] appDatain;


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
         if(8'h0 == (addr&8'hFF))
         begin
            // TODO: support BUSY
            dataout <= {6'd0,empty,full};
            ready <= 1;
         end
         // FIXME: add symbolic defines
         //else if(`OFFSET_REG_DATA == (`MASK_REG_RANGE&addr))
         else if((8'h4 == (addr&8'hFF)))
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
      else
      begin
         ready <= 0;
      end
   end
end


endmodule

