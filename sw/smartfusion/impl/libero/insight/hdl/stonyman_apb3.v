///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_apb3.v
// File history:
//      0.01: 2013-03-05: created
//      0.02a:2013-06-13: added support for 4 cameras
//
// Description: 
//
// APB interface for the Stonyman controller
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
///////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// REGISTER LAYOUT
/////////////////////////////////////////////////
// offset       behavior  name           fields (msb...lsb)
// -----------  --------  -------------  ----------------------------
// 0x0000_0000  w         GLOB_STARTCAP  xxxxxxxx _ xxxxxxxx _ xxxxxxxx _ xxxxxxx startcap
// 0x0000_0000  r         GLOB_STATUS    00000000 _ 00000000 _ 00000000 _ 0000000 busy
// 0x0000_0004  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_007C  n/a       RESERVED
// 0x0000_0080  r         CAM0_STATUS    00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0084  r         CAM0_PXDATA    data[32]
// 0x0000_0088  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_009C  n/a       RESERVED
// 0x0000_00A0  r         CAM1_STATUS    00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00A4  r         CAM1_PXDATA    data[32]
// 0x0000_0088  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_009C  n/a       RESERVED
// 0x0000_00C0  r         CAM2_STATUS    00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00C4  r         CAM2_PXDATA    data[32]
// 0x0000_0088  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_009C  n/a       RESERVED
// 0x0000_00E0  r         CAM3_STATUS    00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00E4  r         CAM3_PXDATA    data[32]
// 0x0000_0088  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_009C  n/a       RESERVED
///////////////////////////////////////////////////////////////////////////////


`define WIDTH                       32
`define ADDR_WIDTH                  32  // no reason to change this ever

`define NUM_CHANNELS                4   // number of cameras which can be simultaneously controlled

`define MASK_REG_RANGE              ('hFF)
// decode the CAMX_... address:
// 8 bits (msb...lsb): cam-reg-ind cam-sel[2] cam-reg-sel[5]
`define MASK_REG_RANGE_CAM_IND      ('h80)
`define MASK_REG_RANGE_CAM_SEL      ('h60)
`define MASK_REG_RANGE_CAM_REG_SEL  ('h1F)
`define SHIFT_REG_RANGE_CAM_SEL     (5)
`define REG_OFFSET_GLOB_STARTCAP    ('h00)
`define REG_OFFSET_GLOB_STATUS      ('h00)
`define REG_OFFSET_CAMX_STATUS      ('h00)
`define REG_OFFSET_CAMX_PXDATA      ('h04)
`define REG_SET_OFFSET_CAM0         ('h80)
`define REG_SET_OFFSET_CAM1         ('hA0)
`define REG_SET_OFFSET_CAM2         ('hC0)
`define REG_SET_OFFSET_CAM3         ('hE0)

`define FIFO_RDEN_S_IDLE            (2'd0)
`define FIFO_RDEN_S_RAISE           (2'd1)
`define FIFO_RDEN_S_WAIT            (2'd2)
`define FIFO_RDEN_S_READY           (2'd3)

`define REG_GLOB_STATUS_RESERVED    (31'd0)
`define REG_CAMX_STATUS_RESERVED    (27'd0)


//////////////////////////////////////////////////////////////////////
// stonyman_apb3
module stonyman_apb3
(
/* APB SIGNALS */
input wire                       PCLK,                 // clock
input wire                       PRESERN,              // reset

input wire                       PSEL,
input wire                       PENABLE,
output wire                      PREADY,
output wire                      PSLVERR,
input wire                       PWRITE,
input wire  [(`ADDR_WIDTH-1):0]  PADDR,
input wire  [(`WIDTH-1):0]       PWDATA,
output wire [(`WIDTH-1):0]       PRDATA,

/* APPLICATION SPECIFIC SIGNALS */
input wire                       BUSY,
input wire                       CAM0_FIFO_EMPTY,
input wire                       CAM1_FIFO_EMPTY,
input wire                       CAM2_FIFO_EMPTY,
input wire                       CAM3_FIFO_EMPTY,
input wire                       CAM0_FIFO_FULL,
input wire                       CAM1_FIFO_FULL,
input wire                       CAM2_FIFO_FULL,
input wire                       CAM3_FIFO_FULL,
input wire                       CAM0_FIFO_AFULL,
input wire                       CAM1_FIFO_AFULL,
input wire                       CAM2_FIFO_AFULL,
input wire                       CAM3_FIFO_AFULL,
input wire                       CAM0_FIFO_OVERFLOW,
input wire                       CAM1_FIFO_OVERFLOW,
input wire                       CAM2_FIFO_OVERFLOW,
input wire                       CAM3_FIFO_OVERFLOW,
output wire                      CAM0_FIFO_RDEN,       // active low
output wire                      CAM1_FIFO_RDEN,       // active low
output wire                      CAM2_FIFO_RDEN,       // active low
output wire                      CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CAM0_PIXELSIN,
input wire  [(`WIDTH-1):0]       CAM1_PIXELSIN,
input wire  [(`WIDTH-1):0]       CAM2_PIXELSIN,
input wire  [(`WIDTH-1):0]       CAM3_PIXELSIN,
output wire                      START_CAPTURE,        // active low
output wire [3:0]                TP_REG_OFFSET_UPPER_NIBBLE
);

wire bus_write_enable;
wire bus_read_enable;

wire ioreg_ready;

wire ioreg_cam0_fifo_rden;
wire ioreg_cam1_fifo_rden;
wire ioreg_cam2_fifo_rden;
wire ioreg_cam3_fifo_rden;


// no errors, always ready
assign PSLVERR=0;
assign PREADY=(ioreg_ready && PENABLE);

// bus conditions (to export)
assign bus_write_enable = (PENABLE &&  PWRITE && PSEL);
assign bus_read_enable = (!PWRITE && PSEL);


// don't actually read the Fifo if it's empty
assign CAM0_FIFO_RDEN = !(ioreg_cam0_fifo_rden && !CAM0_FIFO_EMPTY);
assign CAM1_FIFO_RDEN = !(ioreg_cam1_fifo_rden && !CAM1_FIFO_EMPTY);
assign CAM2_FIFO_RDEN = !(ioreg_cam2_fifo_rden && !CAM2_FIFO_EMPTY);
assign CAM3_FIFO_RDEN = !(ioreg_cam3_fifo_rden && !CAM3_FIFO_EMPTY);


stonyman_ioreg stonyman_ioreg_0( 
   .clk(PCLK),
   .rst(PRESERN),
   .wren(bus_write_enable),
   .rden(bus_read_enable),
   .addr(PADDR),
   .ready(ioreg_ready),
   .cam0fifoRden(ioreg_cam0_fifo_rden),
   .cam1fifoRden(ioreg_cam1_fifo_rden),
   .cam2fifoRden(ioreg_cam2_fifo_rden),
   .cam3fifoRden(ioreg_cam3_fifo_rden),
   .datain(PWDATA),
   .dataout(PRDATA),
   .busy(BUSY),
   .cam0empty(CAM0_FIFO_EMPTY),
   .cam1empty(CAM1_FIFO_EMPTY),
   .cam2empty(CAM2_FIFO_EMPTY),
   .cam3empty(CAM3_FIFO_EMPTY),
   .cam0full(CAM0_FIFO_FULL),
   .cam1full(CAM1_FIFO_AFULL),
   .cam2full(CAM2_FIFO_AFULL),
   .cam3full(CAM3_FIFO_AFULL),
   .cam0afull(CAM0_FIFO_AFULL),
   .cam1afull(CAM1_FIFO_AFULL),
   .cam2afull(CAM0_FIFO_AFULL),
   .cam3afull(CAM0_FIFO_AFULL),
   .cam0overflow(CAM0_FIFO_OVERFLOW),
   .cam1overflow(CAM1_FIFO_OVERFLOW),
   .cam2overflow(CAM2_FIFO_OVERFLOW),
   .cam3overflow(CAM3_FIFO_OVERFLOW),
   .cam0pxDatain(CAM0_PIXELSIN),
   .cam1pxDatain(CAM1_PIXELSIN),
   .cam2pxDatain(CAM2_PIXELSIN),
   .cam3pxDatain(CAM3_PIXELSIN),
   .startCapture(START_CAPTURE),
   .tp_regOffsetUpperNibble(TP_REG_OFFSET_UPPER_NIBBLE)
);

endmodule


//////////////////////////////////////////////////////////////////////
// stonyman_ioreg
module stonyman_ioreg
(
input wire clk,
input wire rst,
input wire wren,
input wire rden,
input wire [31:0] addr,
output reg ready,
output wire cam0fifoRden,  // active high
output wire cam1fifoRden,  // active high
output wire cam2fifoRden,  // active high
output wire cam3fifoRden,  // active high
input wire [(`WIDTH-1):0] datain,
output reg [(`WIDTH-1):0] dataout,

input wire busy,
input wire cam0empty,
input wire cam1empty,
input wire cam2empty,
input wire cam3empty,
input wire cam0full,
input wire cam1full,
input wire cam2full,
input wire cam3full,
input wire cam0afull,
input wire cam1afull,
input wire cam2afull,
input wire cam3afull,
input wire cam0overflow,
input wire cam1overflow,
input wire cam2overflow,
input wire cam3overflow,
input wire [(`WIDTH-1):0] cam0pxDatain,
input wire [(`WIDTH-1):0] cam1pxDatain,
input wire [(`WIDTH-1):0] cam2pxDatain,
input wire [(`WIDTH-1):0] cam3pxDatain,

output reg startCapture,

output wire [3:0] tp_regOffsetUpperNibble
);

reg [1:0] fifoRdenState;
wire [1:0] currentCam;

// this code allows generic handling of CAMX_... registers
// ideally we wouldn't need this, but verilog does not allow arrays to be
// inputs or outputs!
reg fifoRden [0:3];
wire empty [0:3];
wire full [0:3];
wire afull [0:3];
wire overflow [0:3];
wire [(`WIDTH-1):0] pxDatain [0:3];
assign cam0fifoRden=fifoRden[0];
assign cam1fifoRden=fifoRden[1];
assign cam2fifoRden=fifoRden[2];
assign cam3fifoRden=fifoRden[3];
assign empty[0]=cam0empty;
assign empty[1]=cam1empty;
assign empty[2]=cam2empty;
assign empty[3]=cam3empty;
assign full[0]=cam0full;
assign full[1]=cam1full;
assign full[2]=cam2full;
assign full[3]=cam3full;
assign afull[0]=cam0afull;
assign afull[1]=cam1afull;
assign afull[2]=cam2afull;
assign afull[3]=cam3afull;
assign overflow[0]=cam0overflow;
assign overflow[1]=cam1overflow;
assign overflow[2]=cam2overflow;
assign overflow[3]=cam3overflow;
assign pxDatain[0]=cam0pxDatain;
assign pxDatain[1]=cam1pxDatain;
assign pxDatain[2]=cam2pxDatain;
assign pxDatain[3]=cam3pxDatain;


assign tp_regOffsetUpperNibble=~addr[7:4];
assign currentCam=addr[6:5];


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      dataout <= `WIDTH'd0;
      fifoRden[0] <= 1'b0;
      fifoRden[1] <= 1'b0;
      fifoRden[2] <= 1'b0;
      fifoRden[3] <= 1'b0;
      //currentCam <= 2'b0; // does not really matter
      fifoRdenState <= `FIFO_RDEN_S_IDLE;
   end
   else
   begin
      // READ REGISTER
      if(1'b1 == rden)
      begin
         // GLOB_STATUS
         if(`REG_OFFSET_GLOB_STATUS == (`MASK_REG_RANGE&addr))
         begin
            dataout <= {`REG_GLOB_STATUS_RESERVED,busy};
            ready <= 1'b1;
         end
         // some camera register
         else if(0 != (`MASK_REG_RANGE_CAM_IND&addr)) 
         begin
            // extract the current camera number
            //currentCam <= `SHIFT_REG_RANGE_CAM_SEL>>(`MASK_REG_RANGE_CAM_SEL&addr);

            // CAMX_STATUS
            if(`REG_OFFSET_CAMX_STATUS==(`MASK_REG_RANGE_CAM_REG_SEL&addr))
            begin
               dataout <= { `REG_CAMX_STATUS_RESERVED,overflow[currentCam],afull[currentCam],
                            full[currentCam],empty[currentCam] };
               ready <= 1'b1;
            end
            // CAMX_PXDATA
            else if(`REG_OFFSET_CAMX_PXDATA==(`MASK_REG_RANGE_CAM_REG_SEL&addr))
            begin
               case(fifoRdenState)
                  `FIFO_RDEN_S_IDLE:
                  begin
                     fifoRden[currentCam] <= 1'b1;
                     fifoRdenState <= `FIFO_RDEN_S_RAISE;
                  end
                  `FIFO_RDEN_S_RAISE:
                  begin
                     fifoRden[currentCam] <= 1'b0;
                     fifoRdenState <= `FIFO_RDEN_S_WAIT;
                  end
                  `FIFO_RDEN_S_WAIT:
                  begin
                     fifoRdenState <= `FIFO_RDEN_S_READY;
                  end
                  `FIFO_RDEN_S_READY:
                  begin
                     dataout <= pxDatain[currentCam];
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
         else
         begin
            dataout <= `WIDTH'd0;
            ready <= 1'b1;
         end
      end
      // WRITE REGISTER
      else if(1'b1 == wren)
      begin
         // GLOB_STARTCAP
         if(`REG_OFFSET_GLOB_STARTCAP == (`MASK_REG_RANGE&addr))
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
         // wait for startCapture to be acknowledged (with busy signal)
         if((1'b0==startCapture) && (1'b1==busy))
         begin
            startCapture <= 1'b1;
         end
         ready <= 1'b0;
      end
   end
end


endmodule

