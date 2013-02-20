///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Russ Bielawski
//
// File: Stonyman.v
// File history:
//      0.01: 2013-02-05: created
//
// Description: 
//
// Driver for the CentEye Stonyman imager
//
// Targeted device: <Family::SmartFusion> <Die::A2F500M3G> <Package::484 FBGA>
// Author: Russ Bielawski
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`define CLK_FREQ               (20000000)  // FIXME (shouldn't be) hardcoded to 20MHz
`define RESOLUTION_ROWS        (112)
`define RESOLUTION_COLS        (112)
`define TIME_PULSE_WAIT        (300)       // ns  // TODO: could be lower possibly (try 200ns)
`define TICKS_PULSE_WAIT       (6)         // FIXME: should be: ((`TIME_PULSE_WAIT*`CLK_FREQ)/1000000000)
`define TIME_PULSE_WAIT_AFTER  (300)       // ns  // TODO: could be lower possibly (try 200ns)
`define TICKS_PULSE_WAIT_AFTER (6)         // FIXME: should be: ((`TIME_PULSE_WAIT_AFTER*`CLK_FREQ)/1000000000)

`define TIME_WAIT_STARTUP      (500)       // ms
`define TICKS_WAIT_STARTUP     (10000000)  // FIXME: should be: ((`TIME_WAIT_START*`CLK_FREQ)/1000)

`define REG_COLSEL             (0)
`define REG_ROWSEL             (1)
`define REG_VSW                (2)
`define REG_HSW                (3)
`define REG_VREF               (4)
`define REG_CONFIG             (5)
`define REG_NBIAS              (6)
`define REG_AOBIAS             (7)
`define REG_CNT                (8)

`define VAL_VREF_3V3           (41)
`define VAL_NBIAS_3V3          (50)
`define VAL_AOBIAS_3V3         (37)

`define VAL_GAIN               (2)
`define VAL_USE_AMP            (1)
`define VAL_CVDDA              (16)
`define VAL_CONFIG             (`VAL_GAIN + (`VAL_USE_AMP<<3) + `VAL_CVDDA)

`define S_INIT_FRESH           (4'd0)
`define S_INIT_REG_CLEARALL    (4'd1)
// !!! order of setting these config registers during init matters!
`define S_INIT_REG_SET_VREF    (4'd2)
`define S_INIT_REG_SET_NBIAS   (4'd3)
`define S_INIT_REG_SET_AOBIAS  (4'd4)
`define S_INIT_REG_SET_CONFIG  (4'd5)
`define S_IDLE                 (4'd6)
`define S_ASSERT               (4'd7) // ideally for debugging // TODO does this make sense?
/* TODO: not yet used
`define S_CAP_SET_ROW          (4'd7)
`define S_CAP_SET_COL          (4'd8)
`define S_CAP_PULSE_AMP        (4'd9)
`define S_CAP_AQUIRE_PIXEL     (4'd10)
`define S_CAP_INC_COL          (4'd11)
`define S_CAP_INC_ROW          (4'd12)
*/

// russ: ordered this way because I'm more likely to add states than registers
`define SUB_S_RESP_RAISE       (4'd0)
`define SUB_S_INCP_RAISE       (4'd1)
`define SUB_S_RESV_RAISE       (4'd2)
`define SUB_S_INCV_RAISE       (4'd3)
`define SUB_S_RESP_WAIT        (4'd4)
`define SUB_S_INCP_WAIT        (4'd5)
`define SUB_S_RESV_WAIT        (4'd6)
`define SUB_S_INCV_WAIT        (4'd7)
`define SUB_S_RESP_WAIT_AFTER  (4'd8)
`define SUB_S_INCP_WAIT_AFTER  (4'd9)
`define SUB_S_RESV_WAIT_AFTER  (4'd10)
`define SUB_S_INCV_WAIT_AFTER  (4'd11)


module stonyman( clk, reset, startCapture, pixelin, resp, incp, resv, incv, inphi, pixelout, tp_stateout, tp_substateout );

input clk;
input reset;
input startCapture;
input [7:0] pixelin;
output reg resp;
output reg incp;
output reg resv;
output reg incv;
output reg inphi;
output reg [7:0] pixelout;

output wire [3:0] tp_stateout;
output wire [3:0] tp_substateout;


reg flagCapturing;
reg [31:0] counterWait;

reg [2:0] cachedPOINTER;
reg [7:0] cachedValue [0:`REG_CNT];
reg [3:0] state;
reg [3:0] substate;


assign tp_stateout = state;
assign tp_substateout = substate;


always@ (posedge clk) // or negedge reset)
begin
   if(0 == reset)
   begin
      state <= `S_INIT_FRESH;
      substate <= 0; // unused in fresh init state
      counterWait <= `TICKS_WAIT_STARTUP;
      cachedPOINTER <= 0;
      flagCapturing <= 1'b0;
      resp <= 1'b0;
      incp <= 1'b0;
      resv <= 1'b0;
      incv <= 1'b0;
      inphi <= 1'b0;
   end

//////////////////////////////////////////////////////////////////////
// case  -  state
   case(state)

      `S_INIT_FRESH:
      begin
         if(0 < counterWait)
         begin
            counterWait <= counterWait-1;
         end
         else
         begin
            state <= `S_INIT_REG_CLEARALL;
            substate <= `SUB_S_RESP_RAISE;
         end
      end

      `S_INIT_REG_CLEARALL:

//////////////////////////////////////////////////////////////////////
// case  -  substate
      begin
         case(substate)
     ////////////////////////////////////////////////////////////
     // RESP - reset pointer
            `SUB_S_RESP_RAISE:
            begin
               resp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT;
               substate <= `SUB_S_RESP_WAIT;
            end
            `SUB_S_RESP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  resp <= 1'b0;
                  cachedPOINTER <= 0;
                  substate <= `SUB_S_RESP_WAIT_AFTER;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER;
               end
            end
            `SUB_S_RESP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  substate <= `SUB_S_RESV_RAISE;
               end
            end
     ////////////////////////////////////////////////////////////
     // RESV - reset value: loops over all registers
            `SUB_S_RESV_RAISE:
            begin
               resv <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT;
               substate <= `SUB_S_RESV_WAIT;
            end
            `SUB_S_RESV_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  resv <= 1'b0;
                  cachedValue[cachedPOINTER] <= 8'd0;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER;
                  substate <= `SUB_S_RESV_WAIT_AFTER;
               end
            end
            `SUB_S_RESV_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we covered all of our registers?
                  if((`REG_CNT-1) == cachedPOINTER)
                  begin
                     // yes: go on to the next state
                     state <= `S_INIT_REG_SET_VREF;
                     substate <= `SUB_S_RESP_RAISE;
                  end
                  else
                  begin
                     // no: keep going
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
            end
     ////////////////////////////////////////////////////////////
     // INCP - increment pointer: loops over all registers with RESV
            `SUB_S_INCP_RAISE:
            begin
               incp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT;
               substate <= `SUB_S_INCP_WAIT;
            end
            `SUB_S_INCP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incp <= 1'b0;
                  cachedPOINTER <= cachedPOINTER+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER;
                  substate <= `SUB_S_INCP_WAIT_AFTER;
               end
            end
            `SUB_S_INCP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  substate <= `SUB_S_RESV_RAISE;
               end
            end
            default:
            begin
               //state <= `S_ASSERT; //TODO: remove this or place other error
                                     //      handling code here
            end
         endcase
      end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

      `S_INIT_REG_SET_VREF:

//////////////////////////////////////////////////////////////////////
// case  -  substate
      begin
         case(substate)
     ////////////////////////////////////////////////////////////
     // RESP - reset pointer
            `SUB_S_RESP_RAISE:
            begin
               resp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_RESP_WAIT;
            end
            `SUB_S_RESP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  resp <= 1'b0;
                  cachedPOINTER <= 0;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_RESP_WAIT_AFTER;
               end
            end
            `SUB_S_RESP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  substate <= `SUB_S_INCP_RAISE;
               end
            end
     ////////////////////////////////////////////////////////////
     // INCP - increment until you get to the VREF register
         `SUB_S_INCP_RAISE:
            begin
               incp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCP_WAIT;
            end
            `SUB_S_INCP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incp <= 1'b0;
                  cachedPOINTER <= cachedPOINTER+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCP_WAIT_AFTER;
               end
            end
            `SUB_S_INCP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the pointer enough times?
                  if(`REG_VREF == cachedPOINTER)
                  begin
                     // yes: go to setting the value with INCV
                     substate <= `SUB_S_INCV_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
            end
     ////////////////////////////////////////////////////////////
     // INCV - increment until we have the value we want
            `SUB_S_INCV_RAISE:
            begin
               incv <= 1'b1;
               counterWait <= `SUB_S_INCV_WAIT-1;
               substate <= `SUB_S_INCV_WAIT;
            end
            `SUB_S_INCV_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incv <= 1'b0;
                  cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCV_WAIT_AFTER;
               end
            end
            `SUB_S_INCV_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the value enough times?
                  if(`VAL_VREF_3V3 == cachedValue[cachedPOINTER])
                  begin
                     // yes: go on to the next state
                     state <= `S_INIT_REG_SET_NBIAS;
                     substate <= `SUB_S_INCP_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCV_RAISE;
                  end
               end
            end
            default:
            begin
               //state <= `S_ASSERT; //TODO: remove this or place other error
                                     //      handling code here
            end
         endcase
      end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

      `S_INIT_REG_SET_NBIAS:

//////////////////////////////////////////////////////////////////////
// case  -  substate
      begin
         case(substate)
     ////////////////////////////////////////////////////////////
     // INCP - increment until you get to the NBIAS register
            `SUB_S_INCP_RAISE:
            begin
               incp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCP_WAIT;
            end
            `SUB_S_INCP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incp <= 1'b0;
                  cachedPOINTER <= cachedPOINTER+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCP_WAIT_AFTER;
               end
            end
            `SUB_S_INCP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the pointer enough times?
                  if(`REG_NBIAS == cachedPOINTER)
                  begin
                     // yes: go to setting the value with INCV
                     substate <= `SUB_S_INCV_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
            end
     ////////////////////////////////////////////////////////////
     // INCV - increment until we have the value we want
            `SUB_S_INCV_RAISE:
            begin
               incv <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCV_WAIT;
            end
            `SUB_S_INCV_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incv <= 1'b0;
                  cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCV_WAIT_AFTER;
               end
            end
            `SUB_S_INCV_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the value enough times?
                  if(`VAL_NBIAS_3V3 == cachedValue[cachedPOINTER])
                  begin
                     // yes: go on to the next state
                     state <= `S_INIT_REG_SET_AOBIAS;
                     substate <= `SUB_S_INCP_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCV_RAISE;
                  end
               end
            end
            default:
            begin
               //state <= `S_ASSERT; //TODO: remove this or place other error
                                     //      handling code here
            end
         endcase
      end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

      `S_INIT_REG_SET_AOBIAS:

//////////////////////////////////////////////////////////////////////
// case  -  substate
      begin
         case(substate)
     ////////////////////////////////////////////////////////////
     // INCP - increment until you get to the AOBIAS register
            `SUB_S_INCP_RAISE:
            begin
               incp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCP_WAIT;
            end
            `SUB_S_INCP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incp <= 1'b0;
                  cachedPOINTER <= cachedPOINTER+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCP_WAIT_AFTER;
               end
            end
            `SUB_S_INCP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the pointer enough times?
                  if(`REG_AOBIAS == cachedPOINTER)
                  begin
                     // yes: go to setting the value with INCV
                     substate <= `SUB_S_INCV_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
            end
     ////////////////////////////////////////////////////////////
     // INCV - increment until we have the value we want
            `SUB_S_INCV_RAISE:
            begin
               incv <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCV_WAIT;
            end
            `SUB_S_INCV_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incv <= 1'b0;
                  cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCV_WAIT_AFTER;
               end
            end
            `SUB_S_INCV_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the value enough times?
                  if(`VAL_AOBIAS_3V3 == cachedValue[cachedPOINTER])
                  begin
                     // yes: go on to the next state
                     state <= `S_INIT_REG_SET_CONFIG;
                     substate <= `SUB_S_RESP_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCV_RAISE;
                  end
               end
            end
            default:
            begin
               //state <= `S_ASSERT; //TODO: remove this or place other error
                                     //      handling code here
            end
         endcase
      end
// endcase  -  substate
//////////////////////////////////////////////////////////////////////

      `S_INIT_REG_SET_CONFIG:

//////////////////////////////////////////////////////////////////////
// case  -  substate
      begin
         case(substate)
     ////////////////////////////////////////////////////////////
     // RESP - reset pointer
            `SUB_S_RESP_RAISE:
            begin
               resp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_RESP_WAIT;
            end
            `SUB_S_RESP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  resp <= 1'b0;
                  cachedPOINTER <= 0;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_RESP_WAIT_AFTER;
               end
            end
            `SUB_S_RESP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  substate <= `SUB_S_INCP_RAISE;
               end
            end
     ////////////////////////////////////////////////////////////
     // INCP - increment until you get to the CONFIG register
            `SUB_S_INCP_RAISE:
            begin
               incp <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCP_WAIT;
            end
            `SUB_S_INCP_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incp <= 1'b0;
                  cachedPOINTER <= cachedPOINTER+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCP_WAIT_AFTER;
               end
            end
            `SUB_S_INCP_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the pointer enough times?
                  if(`REG_CONFIG == cachedPOINTER)
                  begin
                     // yes: go to setting the value with INCV
                     substate <= `SUB_S_INCV_RAISE;
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCP_RAISE;
                  end
               end
            end
     ////////////////////////////////////////////////////////////
     // INCV - increment until we have the value we want
            `SUB_S_INCV_RAISE:
            begin
               incv <= 1'b1;
               counterWait <= `TICKS_PULSE_WAIT-1;
               substate <= `SUB_S_INCV_WAIT;
            end
            `SUB_S_INCV_WAIT:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  incv <= 1'b0;
                  cachedValue[cachedPOINTER] <= cachedValue[cachedPOINTER]+1;
                  counterWait <= `TICKS_PULSE_WAIT_AFTER-1;
                  substate <= `SUB_S_INCV_WAIT_AFTER;
               end
            end
            `SUB_S_INCV_WAIT_AFTER:
            begin
               if(0 < counterWait)
               begin
                  counterWait <= counterWait-1;
               end
               else
               begin
                  // have we incremented the value enough times?
                  if(`VAL_CONFIG == cachedValue[cachedPOINTER])
                  begin
                     // yes: go on to the next state
                     // inited!  finally!
                     state <= `S_IDLE;
                     substate <= 0; // unnecessary
                  end
                  else
                  begin
                     // no: keep incrementing
                     substate <= `SUB_S_INCV_RAISE;
                  end
               end
            end
            default:
            begin
               //state <= `S_ASSERT; //TODO: remove this or place other error
                                     //      handling code here
            end
         endcase
      end
      default:
      begin
         //state <= `S_ASSERT; //TODO: remove this or place other error
                               //      handling code here
      end
// endcase  -  state
//////////////////////////////////////////////////////////////////////
   endcase

   // TODO: add logic to control camera (capture image)
end

endmodule

