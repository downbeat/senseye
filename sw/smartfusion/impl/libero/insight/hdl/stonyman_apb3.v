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

`define WIDTH               8

`define MASK_REG_RANGE      (8'hFF)
`define OFFSET_REG_STATUS   (8'h0)
`define OFFSET_REG_DATA     (8'h4)

`define FIFO_RDEN_S_IDLE    (2'd0)
`define FIFO_RDEN_S_RAISE   (2'd1)
`define FIFO_RDEN_S_WAIT    (2'd2)
`define FIFO_RDEN_S_READY   (2'd3)

`define REG_FLAGS_RESERVED  (6'd0)


//////////////////////////////////////////////////////////////////////
// stonyman_apb3
module stonyman_apb3 ( PCLK, PRESERN, PSEL, PENABLE, PREADY, PSLVERR, PWRITE, PADDR, PWDATA, PRDATA,
                       /* APPLICATION SPECIFIC SIGNALS */
                       FULL, EMPTY, BUSY, RDEN, PIXELIN, START_CAPTURE );

/* APB SIGNALS */
input PCLK;               // clock
input PRESERN;            // reset

input                        PSEL;
input                        PENABLE;
output wire                  PREADY;
output wire                  PSLVERR;
input                        PWRITE;
input [31:0]                 PADDR;
input [(`WIDTH-1):0]         PWDATA;
output wire [(`WIDTH-1):0]   PRDATA;

/* APPLICATION SPECIFIC SIGNALS */
input FULL;
input EMPTY;
input BUSY;
output wire RDEN;          // active low
input [(`WIDTH-1):0] PIXELIN;
output wire START_CAPTURE; // active low


wire bus_write_enable;
wire bus_read_enable;

wire ioreg_ready;
wire ioreg_rden;


// no errors, always ready
assign PSLVERR=0;
assign PREADY=(ioreg_ready && PENABLE);

// bus conditions (to export)
assign bus_write_enable = (PENABLE &&  PWRITE && PSEL);
assign bus_read_enable = (!PWRITE && PSEL);


// don't actually read the Fifo if it's empty
assign RDEN = !(ioreg_rden && !EMPTY);


stonyman_ioreg stonyman_ioreg_0( .clk(PCLK),.rst(PRESERN),.wren(bus_write_enable),
                                 .rden(bus_read_enable),.addr(PADDR),.ready(ioreg_ready),
                                 .fifoRden(ioreg_rden),.datain(PWDATA),.dataout(PRDATA),.full(FULL),
                                 .empty(EMPTY),.appDatain(PIXELIN),.startCapture(START_CAPTURE) );


endmodule


//////////////////////////////////////////////////////////////////////
// stonyman_ioreg
module stonyman_ioreg(clk, rst, wren, rden, addr, ready, fifoRden, datain, dataout, full, empty, appDatain, startCapture);
input clk;
input rst;
input wren;
input rden;
input [31:0] addr;
output reg ready;
output reg fifoRden;  // active high
input [(`WIDTH-1):0] datain;
output reg [(`WIDTH-1):0] dataout;

input full;
input empty;
input [(`WIDTH-1):0] appDatain;

output reg startCapture;


reg [1:0] fifoRdenState;


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      dataout <= 8'd0;
      fifoRden <= 1'b0;
      fifoRdenState <= `FIFO_RDEN_S_IDLE;
   end
   else
   begin
      if(1'b1 == rden)
      begin
         if(`OFFSET_REG_STATUS == (`MASK_REG_RANGE&addr))
         begin
            // TODO: support BUSY
            dataout <= {`REG_FLAGS_RESERVED,empty,full};
            ready <= 1'b1;
         end
         else if(`OFFSET_REG_DATA == (`MASK_REG_RANGE&addr))
         begin
            case(fifoRdenState)
               `FIFO_RDEN_S_IDLE:
               begin
                  fifoRden <= 1'b1;
                  fifoRdenState <= `FIFO_RDEN_S_RAISE;
               end
               `FIFO_RDEN_S_RAISE:
               begin
                  fifoRden <= 1'b0;
                  fifoRdenState <= `FIFO_RDEN_S_WAIT;
               end
               `FIFO_RDEN_S_WAIT:
               begin
                  fifoRdenState <= `FIFO_RDEN_S_READY;
               end
               `FIFO_RDEN_S_READY:
               begin
                  // flipping the bits for now (doesn't need to stay here)
                  dataout <= ~appDatain;
                  ready <= 1'b1;
                  fifoRdenState <= `FIFO_RDEN_S_IDLE;
               end
               default:
               begin
                  // badness!
               end
            endcase
         end
         else
         begin
            dataout <= `WIDTH'd0;
            ready <= 1'b1;
         end
      end
      else if(1'b1 == wren)
      begin
         if(`OFFSET_REG_STATUS == (`MASK_REG_RANGE&addr))
         begin
            if(0 != (1&datain[0]))
            begin
               startCapture <= 1'b0;
               ready <= 1'b1;
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
         ready <= 1'b0;
      end
   end
end


endmodule

