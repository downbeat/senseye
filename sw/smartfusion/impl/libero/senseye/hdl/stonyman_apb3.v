///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: University of Michigan
//
// File: stonyman_apb3.v
// File history:
//      0.01: 2013-03-05: created
//      0.02: 2013-06-13: added support for 4 cameras
//      0.03a:2013-08-15: IN PROGRESS: added support for 16 cameras (4 control sets of 4 cameras each)
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
// 0x0000_0000  w         GLOB_START       xxxxxxxx _ xxxxxxxx _
//                                         xxxxxxxx _ xxxx cg3_start cg2_start cg1_start cg0_start
// 0x0000_0000  r         GLOB_STATUS      00000000 _ 00000000 _
//                                         00000000 _ 0000 cg3_busy cg2_busy cg1_busy cg0_busy
// 0x0000_0004  n/a       RESERVED
// ...          n/a       RESERVED
// 0x0000_007C  n/a       RESERVED
// 0x0000_0080  r         CG0_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0084  r         CG0_CAM0_PXDATA  data[32]
// 0x0000_0088  r         CG0_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_008C  r         CG0_CAM1_PXDATA  data[32]
// 0x0000_0090  r         CG0_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_0094  r         CG0_CAM2_PXDATA  data[32]
// 0x0000_0098  r         CG0_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_009C  r         CG0_CAM3_PXDATA  data[32]
// 0x0000_00A0  r         CG1_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00A4  r         CG1_CAM0_PXDATA  data[32]
// 0x0000_00A8  r         CG1_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00AC  r         CG1_CAM1_PXDATA  data[32]
// 0x0000_00B0  r         CG1_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00B4  r         CG1_CAM2_PXDATA  data[32]
// 0x0000_00B8  r         CG1_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00BC  r         CG1_CAM3_PXDATA  data[32]
// 0x0000_00C0  r         CG2_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00C4  r         CG2_CAM0_PXDATA  data[32]
// 0x0000_00C8  r         CG2_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00CC  r         CG2_CAM1_PXDATA  data[32]
// 0x0000_00D0  r         CG2_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00D4  r         CG2_CAM2_PXDATA  data[32]
// 0x0000_00D8  r         CG2_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00DC  r         CG2_CAM3_PXDATA  data[32]
// 0x0000_00E0  r         CG3_CAM0_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00E4  r         CG3_CAM0_PXDATA  data[32]
// 0x0000_00E8  r         CG3_CAM1_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00EC  r         CG3_CAM1_PXDATA  data[32]
// 0x0000_00F0  r         CG3_CAM2_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00F4  r         CG3_CAM2_PXDATA  data[32]
// 0x0000_00F8  r         CG3_CAM3_STATUS  00000000 _ 00000000 _ 00000000 _ 0000 overflow afull full empty
// 0x0000_00FC  r         CG3_CAM3_PXDATA  data[32]
///////////////////////////////////////////////////////////////////////////////


`define WIDTH                        (32)
`define WIDTH_ALL_ZEROES             (32'd0)
`define ADDR_WIDTH                   (32)  // no reason to change this ever

`define NUM_CONTROL_GROUPS           (4)   // number of "control groups" of cameras
`define NUM_CHANNELS_PER_CG          (4)   // num of cams simultaneously controlled within a control set

`define MASK_REG_RANGE               ('hFF)
// decode the CGX_CAMY_... address:
// 8 bits (msb...lsb): cam-reg-ind cq-sel[2] cam-sel[2] cam-reg-sel[1] x x
`define REG_RANGE_CAM_REG_IND_SHIFT  ('d7)
`define REG_RANGE_CAM_REG_IND_WIDTH  ('d1)
`define REG_RANGE_CG_SEL_SHIFT       ('d5)
`define REG_RANGE_CG_SEL_WIDTH       ('d2)
`define REG_RANGE_CAM_SEL_SHIFT      ('d3)
`define REG_RANGE_CAM_SEL_WIDTH      ('d2)
`define REG_RANGE_CAM_REG_SEL_SHIFT  ('d2)
`define REG_RANGE_CAM_REG_SEL_WIDTH  ('d1)
`define REG_OFFSET_GLOB_START        ('h00)
`define REG_OFFSET_GLOB_STATUS       ('h00)
`define REG_OFFSET_CAMX_STATUS       ('h00)
`define REG_OFFSET_CAMX_PXDATA       ('h04)

//`define REG_GLOB_STATUS_RESERVED     (28'd0)
`define REG_GLOB_STATUS_RESERVED     (31'd0)
`define REG_CAMX_STATUS_RESERVED     (28'd0)

`define FIFO_RDEN_S_VAR_BIT_WIDTH    ('d3)
`define FIFO_RDEN_S_IDLE             ('d0)
`define FIFO_RDEN_S_RAISE            ('d1)
`define FIFO_RDEN_S_WAIT             ('d2)
`define FIFO_RDEN_S_READY            ('d3)
`define FIFO_RDEN_S_WAIT_AFTER       ('d4)


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
input wire                       CG0_BUSY,
input wire                       CG0_CAM0_FIFO_EMPTY,
input wire                       CG0_CAM0_FIFO_FULL,
input wire                       CG0_CAM0_FIFO_AFULL,
input wire                       CG0_CAM0_FIFO_OVERFLOW,
output wire                      CG0_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM0_PIXELSIN,
input wire                       CG0_CAM1_FIFO_EMPTY,
input wire                       CG0_CAM1_FIFO_FULL,
input wire                       CG0_CAM1_FIFO_AFULL,
input wire                       CG0_CAM1_FIFO_OVERFLOW,
output wire                      CG0_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM1_PIXELSIN,
input wire                       CG0_CAM2_FIFO_EMPTY,
input wire                       CG0_CAM2_FIFO_FULL,
input wire                       CG0_CAM2_FIFO_AFULL,
input wire                       CG0_CAM2_FIFO_OVERFLOW,
output wire                      CG0_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM2_PIXELSIN,
input wire                       CG0_CAM3_FIFO_EMPTY,
input wire                       CG0_CAM3_FIFO_FULL,
input wire                       CG0_CAM3_FIFO_AFULL,
input wire                       CG0_CAM3_FIFO_OVERFLOW,
output wire                      CG0_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG0_CAM3_PIXELSIN,
output wire                      CG0_START_CAPTURE,         // active low
input wire                       CG1_BUSY,
input wire                       CG1_CAM0_FIFO_EMPTY,
input wire                       CG1_CAM0_FIFO_FULL,
input wire                       CG1_CAM0_FIFO_AFULL,
input wire                       CG1_CAM0_FIFO_OVERFLOW,
output wire                      CG1_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM0_PIXELSIN,
input wire                       CG1_CAM1_FIFO_EMPTY,
input wire                       CG1_CAM1_FIFO_FULL,
input wire                       CG1_CAM1_FIFO_AFULL,
input wire                       CG1_CAM1_FIFO_OVERFLOW,
output wire                      CG1_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM1_PIXELSIN,
input wire                       CG1_CAM2_FIFO_EMPTY,
input wire                       CG1_CAM2_FIFO_FULL,
input wire                       CG1_CAM2_FIFO_AFULL,
input wire                       CG1_CAM2_FIFO_OVERFLOW,
output wire                      CG1_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM2_PIXELSIN,
input wire                       CG1_CAM3_FIFO_EMPTY,
input wire                       CG1_CAM3_FIFO_FULL,
input wire                       CG1_CAM3_FIFO_AFULL,
input wire                       CG1_CAM3_FIFO_OVERFLOW,
output wire                      CG1_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG1_CAM3_PIXELSIN,
output wire                      CG1_START_CAPTURE,         // active low
input wire                       CG2_BUSY,
input wire                       CG2_CAM0_FIFO_EMPTY,
input wire                       CG2_CAM0_FIFO_FULL,
input wire                       CG2_CAM0_FIFO_AFULL,
input wire                       CG2_CAM0_FIFO_OVERFLOW,
output wire                      CG2_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM0_PIXELSIN,
input wire                       CG2_CAM1_FIFO_EMPTY,
input wire                       CG2_CAM1_FIFO_FULL,
input wire                       CG2_CAM1_FIFO_AFULL,
input wire                       CG2_CAM1_FIFO_OVERFLOW,
output wire                      CG2_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM1_PIXELSIN,
input wire                       CG2_CAM2_FIFO_EMPTY,
input wire                       CG2_CAM2_FIFO_FULL,
input wire                       CG2_CAM2_FIFO_AFULL,
input wire                       CG2_CAM2_FIFO_OVERFLOW,
output wire                      CG2_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM2_PIXELSIN,
input wire                       CG2_CAM3_FIFO_EMPTY,
input wire                       CG2_CAM3_FIFO_FULL,
input wire                       CG2_CAM3_FIFO_AFULL,
input wire                       CG2_CAM3_FIFO_OVERFLOW,
output wire                      CG2_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG2_CAM3_PIXELSIN,
output wire                      CG2_START_CAPTURE,         // active low
input wire                       CG3_BUSY,
input wire                       CG3_CAM0_FIFO_EMPTY,
input wire                       CG3_CAM0_FIFO_FULL,
input wire                       CG3_CAM0_FIFO_AFULL,
input wire                       CG3_CAM0_FIFO_OVERFLOW,
output wire                      CG3_CAM0_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM0_PIXELSIN,
input wire                       CG3_CAM1_FIFO_EMPTY,
input wire                       CG3_CAM1_FIFO_FULL,
input wire                       CG3_CAM1_FIFO_AFULL,
input wire                       CG3_CAM1_FIFO_OVERFLOW,
output wire                      CG3_CAM1_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM1_PIXELSIN,
input wire                       CG3_CAM2_FIFO_EMPTY,
input wire                       CG3_CAM2_FIFO_FULL,
input wire                       CG3_CAM2_FIFO_AFULL,
input wire                       CG3_CAM2_FIFO_OVERFLOW,
output wire                      CG3_CAM2_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM2_PIXELSIN,
input wire                       CG3_CAM3_FIFO_EMPTY,
input wire                       CG3_CAM3_FIFO_FULL,
input wire                       CG3_CAM3_FIFO_AFULL,
input wire                       CG3_CAM3_FIFO_OVERFLOW,
output wire                      CG3_CAM3_FIFO_RDEN,       // active low
input wire  [(`WIDTH-1):0]       CG3_CAM3_PIXELSIN,
output wire                      CG3_START_CAPTURE          // active low
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
assign CG0_CAM0_FIFO_RDEN = !(ioreg_cam0_fifo_rden && !CG0_CAM0_FIFO_EMPTY);
assign CG0_CAM1_FIFO_RDEN = !(ioreg_cam1_fifo_rden && !CG0_CAM1_FIFO_EMPTY);
assign CG0_CAM2_FIFO_RDEN = !(ioreg_cam2_fifo_rden && !CG0_CAM2_FIFO_EMPTY);
assign CG0_CAM3_FIFO_RDEN = !(ioreg_cam3_fifo_rden && !CG0_CAM3_FIFO_EMPTY);


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
   .busy(CG0_BUSY),
   .cam0empty(CG0_CAM0_FIFO_EMPTY),
   .cam1empty(CG0_CAM1_FIFO_EMPTY),
   .cam2empty(CG0_CAM2_FIFO_EMPTY),
   .cam3empty(CG0_CAM3_FIFO_EMPTY),
   .cam0full(CG0_CAM0_FIFO_FULL),
   .cam1full(CG0_CAM1_FIFO_AFULL),
   .cam2full(CG0_CAM2_FIFO_AFULL),
   .cam3full(CG0_CAM3_FIFO_AFULL),
   .cam0afull(CG0_CAM0_FIFO_AFULL),
   .cam1afull(CG0_CAM1_FIFO_AFULL),
   .cam2afull(CG0_CAM0_FIFO_AFULL),
   .cam3afull(CG0_CAM0_FIFO_AFULL),
   .cam0overflow(CG0_CAM0_FIFO_OVERFLOW),
   .cam1overflow(CG0_CAM1_FIFO_OVERFLOW),
   .cam2overflow(CG0_CAM2_FIFO_OVERFLOW),
   .cam3overflow(CG0_CAM3_FIFO_OVERFLOW),
   .cam0pxDatain(CG0_CAM0_PIXELSIN),
   .cam1pxDatain(CG0_CAM1_PIXELSIN),
   .cam2pxDatain(CG0_CAM2_PIXELSIN),
   .cam3pxDatain(CG0_CAM3_PIXELSIN),
   .startCapture(CG0_START_CAPTURE)
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

output reg startCapture
);

reg [2:0] fifoRdenState [0:3];
wire       camRegInd;
wire [1:0] camIdx;
wire [4:0] camReg;

// counter
reg [2:0] ii;

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

assign camRegInd=addr[7];
assign camIdx=addr[6:5];
assign camReg=addr[4:0];


always@ (posedge clk)
begin
   if(0 == rst)
   begin
      dataout <= `WIDTH_ALL_ZEROES;
      fifoRden[0] <= 1'b0;
      fifoRden[1] <= 1'b0;
      fifoRden[2] <= 1'b0;
      fifoRden[3] <= 1'b0;
      for(ii=0; ii<4; ii=ii+1)
      begin
         fifoRdenState[ii] <= `FIFO_RDEN_S_IDLE;
      end
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
         else if(0 != camRegInd) 
         begin
            // CAMX_STATUS
            if(`REG_OFFSET_CAMX_STATUS == camReg)
            begin
               dataout <= { `REG_CAMX_STATUS_RESERVED,overflow[camIdx],afull[camIdx],
                            full[camIdx],empty[camIdx] };
               ready <= 1'b1;
            end
            // CAMX_PXDATA
            else if(`REG_OFFSET_CAMX_PXDATA == camReg)
            begin
               case(fifoRdenState[camIdx])
                  `FIFO_RDEN_S_IDLE:
                  begin
                     fifoRden[camIdx] <= 1'b1;
                     fifoRdenState[camIdx] <= `FIFO_RDEN_S_RAISE;
                  end
                  `FIFO_RDEN_S_RAISE:
                  begin
                     fifoRden[camIdx] <= 1'b0;
                     fifoRdenState[camIdx] <= `FIFO_RDEN_S_WAIT;
                  end
                  `FIFO_RDEN_S_WAIT:
                  begin
                     fifoRdenState[camIdx] <= `FIFO_RDEN_S_READY;
                  end
                  `FIFO_RDEN_S_READY:
                  begin
                     dataout <= pxDatain[camIdx];
                     ready <= 1'b1;
                     fifoRdenState[camIdx] <= `FIFO_RDEN_S_WAIT_AFTER;
                  end
                  default:
                  begin
                     // badness!
                  end
               endcase
            end
            // BAD: CAM register unknown
            else
            begin
               dataout <= `WIDTH_ALL_ZEROES;
               ready <= 1'b1;
            end
         end
         else
         begin
            dataout <= `WIDTH_ALL_ZEROES;
            ready <= 1'b1;
         end
      end
      // WRITE REGISTER
      else if(1'b1 == wren)
      begin
         // GLOB_START
         if(`REG_OFFSET_GLOB_START == (`MASK_REG_RANGE&addr))
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
   // return any FIFO's RDEN state to idle if necessary
   for(ii=0; ii<4; ii=ii+1)
   begin
      if(`FIFO_RDEN_S_WAIT_AFTER==fifoRdenState[ii])
      begin
         fifoRdenState[ii]<=`FIFO_RDEN_S_IDLE;
      end
   end
end


endmodule

