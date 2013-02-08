//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Feb 07 15:58:13 2013
// Version: 10.1 SP3 10.1.3.1
//////////////////////////////////////////////////////////////////////

`timescale 1 ns/100 ps

// mss_capture_MSS
module mss_capture_MSS(
    // Inputs
    MAC_CRSDV,
    MAC_RXD,
    MAC_RXER,
    MSS_RESET_N,
    SPI_0_DI,
    SPI_1_DI,
    UART_0_RXD,
    UART_1_RXD,
    // Outputs
    EMC_AB,
    EMC_BYTEN,
    EMC_CLK,
    EMC_CS0_N,
    EMC_CS1_N,
    EMC_OEN0_N,
    EMC_OEN1_N,
    EMC_RW_N,
    FAB_CLK,
    M2F_RESET_N,
    MAC_MDC,
    MAC_TXD,
    MAC_TXEN,
    SPI_0_DO,
    SPI_1_DO,
    UART_0_TXD,
    UART_1_TXD,
    // Inouts
    EMC_DB,
    I2C_0_SCL,
    I2C_0_SDA,
    I2C_1_SCL,
    I2C_1_SDA,
    MAC_MDIO,
    SPI_0_CLK,
    SPI_0_SS,
    SPI_1_CLK,
    SPI_1_SS
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         MAC_CRSDV;
input  [1:0]  MAC_RXD;
input         MAC_RXER;
input         MSS_RESET_N;
input         SPI_0_DI;
input         SPI_1_DI;
input         UART_0_RXD;
input         UART_1_RXD;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [25:0] EMC_AB;
output [1:0]  EMC_BYTEN;
output        EMC_CLK;
output        EMC_CS0_N;
output        EMC_CS1_N;
output        EMC_OEN0_N;
output        EMC_OEN1_N;
output        EMC_RW_N;
output        FAB_CLK;
output        M2F_RESET_N;
output        MAC_MDC;
output [1:0]  MAC_TXD;
output        MAC_TXEN;
output        SPI_0_DO;
output        SPI_1_DO;
output        UART_0_TXD;
output        UART_1_TXD;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [15:0] EMC_DB;
inout         I2C_0_SCL;
inout         I2C_0_SDA;
inout         I2C_1_SCL;
inout         I2C_1_SDA;
inout         MAC_MDIO;
inout         SPI_0_CLK;
inout         SPI_0_SS;
inout         SPI_1_CLK;
inout         SPI_1_SS;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire           DSSGEN_EMC_AB_0;
wire           DSSGEN_EMC_AB_1;
wire           DSSGEN_EMC_AB_2;
wire           DSSGEN_EMC_AB_3;
wire           DSSGEN_EMC_AB_4;
wire           DSSGEN_EMC_AB_5;
wire           DSSGEN_EMC_AB_6;
wire           DSSGEN_EMC_AB_7;
wire           DSSGEN_EMC_AB_8;
wire           DSSGEN_EMC_AB_9;
wire           DSSGEN_EMC_AB_10;
wire           DSSGEN_EMC_AB_11;
wire           DSSGEN_EMC_AB_12;
wire           DSSGEN_EMC_AB_13;
wire           DSSGEN_EMC_AB_14;
wire           DSSGEN_EMC_AB_15;
wire           DSSGEN_EMC_AB_16;
wire           DSSGEN_EMC_AB_17;
wire           DSSGEN_EMC_AB_18;
wire           DSSGEN_EMC_AB_19;
wire           DSSGEN_EMC_AB_20;
wire           DSSGEN_EMC_AB_21;
wire           DSSGEN_EMC_AB_22;
wire           DSSGEN_EMC_AB_23;
wire           DSSGEN_EMC_AB_24;
wire           DSSGEN_EMC_AB_25;
wire           DSSGEN_EMC_BYTEN_0;
wire           DSSGEN_EMC_BYTEN_1;
wire   [0:0]   MAC_RXD_slice_0;
wire   [1:1]   MAC_RXD_slice_1;
wire           DSSGEN_MAC_TXD_0;
wire           DSSGEN_MAC_TXD_1;
wire           EMC_CLK_net_0;
wire           EMC_CS0_N_net_0;
wire           EMC_CS1_N_net_0;
wire           EMC_OEN0_N_net_0;
wire           EMC_OEN1_N_net_0;
wire           EMC_RW_N_net_0;
wire           I2C_0_SCL;
wire           I2C_0_SDA;
wire           I2C_1_SCL;
wire           I2C_1_SDA;
wire           MAC_CRSDV;
wire           MAC_RXER;
wire           MSS_ADLIB_INST_FCLK;
wire           MSS_ADLIB_INST_MACCLK;
wire           MSS_ADLIB_INST_MACCLKCCC;
wire           MSS_ADLIB_INST_PLLLOCK;
wire           MSS_ADLIB_INST_SYNCCLKFDBK;
wire   [0:0]   MSS_EMI_0_AB_0_D;
wire   [1:1]   MSS_EMI_0_AB_1_D;
wire   [2:2]   MSS_EMI_0_AB_2_D;
wire   [3:3]   MSS_EMI_0_AB_3_D;
wire   [4:4]   MSS_EMI_0_AB_4_D;
wire   [5:5]   MSS_EMI_0_AB_5_D;
wire   [6:6]   MSS_EMI_0_AB_6_D;
wire   [7:7]   MSS_EMI_0_AB_7_D;
wire   [8:8]   MSS_EMI_0_AB_8_D;
wire   [9:9]   MSS_EMI_0_AB_9_D;
wire   [10:10] MSS_EMI_0_AB_10_D;
wire   [11:11] MSS_EMI_0_AB_11_D;
wire   [12:12] MSS_EMI_0_AB_12_D;
wire   [13:13] MSS_EMI_0_AB_13_D;
wire   [14:14] MSS_EMI_0_AB_14_D;
wire   [15:15] MSS_EMI_0_AB_15_D;
wire   [16:16] MSS_EMI_0_AB_16_D;
wire   [17:17] MSS_EMI_0_AB_17_D;
wire   [18:18] MSS_EMI_0_AB_18_D;
wire   [19:19] MSS_EMI_0_AB_19_D;
wire   [20:20] MSS_EMI_0_AB_20_D;
wire   [21:21] MSS_EMI_0_AB_21_D;
wire   [22:22] MSS_EMI_0_AB_22_D;
wire   [23:23] MSS_EMI_0_AB_23_D;
wire   [24:24] MSS_EMI_0_AB_24_D;
wire   [25:25] MSS_EMI_0_AB_25_D;
wire   [0:0]   MSS_EMI_0_BYTEN_0_D;
wire   [1:1]   MSS_EMI_0_BYTEN_1_D;
wire           MSS_EMI_0_CLK_D;
wire           MSS_EMI_0_CS0_N_D;
wire           MSS_EMI_0_CS1_N_D;
wire   [0:0]   MSS_EMI_0_DB_0_D;
wire           MSS_EMI_0_DB_0_Y;
wire   [1:1]   MSS_EMI_0_DB_1_D;
wire           MSS_EMI_0_DB_1_Y;
wire   [2:2]   MSS_EMI_0_DB_2_D;
wire           MSS_EMI_0_DB_2_Y;
wire   [3:3]   MSS_EMI_0_DB_3_D;
wire           MSS_EMI_0_DB_3_Y;
wire   [4:4]   MSS_EMI_0_DB_4_D;
wire           MSS_EMI_0_DB_4_Y;
wire   [5:5]   MSS_EMI_0_DB_5_D;
wire           MSS_EMI_0_DB_5_Y;
wire   [6:6]   MSS_EMI_0_DB_6_D;
wire           MSS_EMI_0_DB_6_Y;
wire   [7:7]   MSS_EMI_0_DB_7_D;
wire           MSS_EMI_0_DB_7_Y;
wire   [8:8]   MSS_EMI_0_DB_8_D;
wire           MSS_EMI_0_DB_8_Y;
wire   [9:9]   MSS_EMI_0_DB_9_D;
wire           MSS_EMI_0_DB_9_Y;
wire   [10:10] MSS_EMI_0_DB_10_D;
wire           MSS_EMI_0_DB_10_Y;
wire   [11:11] MSS_EMI_0_DB_11_D;
wire           MSS_EMI_0_DB_11_Y;
wire   [12:12] MSS_EMI_0_DB_12_D;
wire           MSS_EMI_0_DB_12_Y;
wire   [13:13] MSS_EMI_0_DB_13_D;
wire           MSS_EMI_0_DB_13_Y;
wire   [14:14] MSS_EMI_0_DB_14_D;
wire           MSS_EMI_0_DB_14_Y;
wire   [15:15] MSS_EMI_0_DB_15_D;
wire           MSS_EMI_0_DB_15_E;
wire           MSS_EMI_0_DB_15_Y;
wire           MSS_EMI_0_OEN0_N_D;
wire           MSS_EMI_0_OEN1_N_D;
wire           MSS_EMI_0_RW_N_D;
wire           MSS_I2C_0_SCL_E;
wire           MSS_I2C_0_SCL_Y;
wire           MSS_I2C_0_SDA_E;
wire           MSS_I2C_0_SDA_Y;
wire           MSS_I2C_1_SCL_E;
wire           MSS_I2C_1_SCL_Y;
wire           MSS_I2C_1_SDA_E;
wire           MSS_I2C_1_SDA_Y;
wire           MSS_MAC_0_CRSDV_Y;
wire           MSS_MAC_0_MDC_D;
wire           MSS_MAC_0_MDIO_D;
wire           MSS_MAC_0_MDIO_E;
wire           MSS_MAC_0_MDIO_Y;
wire           MSS_MAC_0_RXD_0_Y;
wire           MSS_MAC_0_RXD_1_Y;
wire           MSS_MAC_0_RXER_Y;
wire   [0:0]   MSS_MAC_0_TXD_0_D;
wire   [1:1]   MSS_MAC_0_TXD_1_D;
wire           MSS_MAC_0_TXEN_D;
wire           MSS_RESET_0_MSS_RESET_N_Y;
wire           MSS_RESET_N;
wire           MSS_SPI_0_CLK_D;
wire           MSS_SPI_0_CLK_Y;
wire           MSS_SPI_0_DI_Y;
wire           MSS_SPI_0_DO_D;
wire           MSS_SPI_0_DO_E;
wire   [0:0]   MSS_SPI_0_SS_D;
wire           MSS_SPI_0_SS_E;
wire           MSS_SPI_0_SS_Y;
wire           MSS_SPI_1_CLK_D;
wire           MSS_SPI_1_CLK_Y;
wire           MSS_SPI_1_DI_Y;
wire           MSS_SPI_1_DO_D;
wire           MSS_SPI_1_DO_E;
wire   [0:0]   MSS_SPI_1_SS_D;
wire           MSS_SPI_1_SS_E;
wire           MSS_SPI_1_SS_Y;
wire           MSS_UART_0_RXD_Y;
wire           MSS_UART_0_TXD_D;
wire           MSS_UART_1_RXD_Y;
wire           MSS_UART_1_TXD_D;
wire           net_71;
wire           MAC_MDIO;
wire           PAD_0;
wire           PAD_1;
wire           SPI_0_CLK;
wire           SPI_0_DI;
wire           SPI_0_DO_net_0;
wire           SPI_0_SS;
wire           SPI_1_CLK;
wire           SPI_1_DI;
wire           SPI_1_DO_net_0;
wire           SPI_1_SS;
wire           UART_0_RXD;
wire           UART_0_TXD_net_0;
wire           UART_1_RXD;
wire           UART_1_TXD_net_0;
wire           MSS_ADLIB_INST_SYNCCLKFDBK_net_0;
wire           net_71_net_0;
wire           UART_0_TXD_net_1;
wire           UART_1_TXD_net_1;
wire           SPI_0_DO_net_1;
wire           SPI_1_DO_net_1;
wire   [0:0]   DSSGEN_EMC_AB_0_net_0;
wire   [10:10] DSSGEN_EMC_AB_10_net_0;
wire   [11:11] DSSGEN_EMC_AB_11_net_0;
wire   [12:12] DSSGEN_EMC_AB_12_net_0;
wire   [13:13] DSSGEN_EMC_AB_13_net_0;
wire   [14:14] DSSGEN_EMC_AB_14_net_0;
wire   [15:15] DSSGEN_EMC_AB_15_net_0;
wire   [16:16] DSSGEN_EMC_AB_16_net_0;
wire   [17:17] DSSGEN_EMC_AB_17_net_0;
wire   [18:18] DSSGEN_EMC_AB_18_net_0;
wire   [19:19] DSSGEN_EMC_AB_19_net_0;
wire   [1:1]   DSSGEN_EMC_AB_1_net_0;
wire   [20:20] DSSGEN_EMC_AB_20_net_0;
wire   [21:21] DSSGEN_EMC_AB_21_net_0;
wire   [22:22] DSSGEN_EMC_AB_22_net_0;
wire   [23:23] DSSGEN_EMC_AB_23_net_0;
wire   [24:24] DSSGEN_EMC_AB_24_net_0;
wire   [25:25] DSSGEN_EMC_AB_25_net_0;
wire   [2:2]   DSSGEN_EMC_AB_2_net_0;
wire   [3:3]   DSSGEN_EMC_AB_3_net_0;
wire   [4:4]   DSSGEN_EMC_AB_4_net_0;
wire   [5:5]   DSSGEN_EMC_AB_5_net_0;
wire   [6:6]   DSSGEN_EMC_AB_6_net_0;
wire   [7:7]   DSSGEN_EMC_AB_7_net_0;
wire   [8:8]   DSSGEN_EMC_AB_8_net_0;
wire   [9:9]   DSSGEN_EMC_AB_9_net_0;
wire   [0:0]   DSSGEN_EMC_BYTEN_0_net_0;
wire   [1:1]   DSSGEN_EMC_BYTEN_1_net_0;
wire           EMC_CS0_N_net_1;
wire           EMC_CS1_N_net_1;
wire           EMC_OEN0_N_net_1;
wire           EMC_OEN1_N_net_1;
wire           EMC_CLK_net_1;
wire           EMC_RW_N_net_1;
wire   [0:0]   DSSGEN_MAC_TXD_0_net_0;
wire   [1:1]   DSSGEN_MAC_TXD_1_net_0;
wire           PAD_0_net_0;
wire           PAD_1_net_0;
wire   [1:0]   MACRXD_net_0;
wire   [15:0]  EMCRDB_net_0;
wire   [1:0]   MAC_RXD;
wire   [7:0]   SPI0SSO_net_0;
wire   [7:0]   SPI1SSO_net_0;
wire   [1:0]   MACTXD_net_0;
wire   [25:0]  EMCAB_net_0;
wire   [15:0]  EMCWDB_net_0;
wire   [1:0]   EMCBYTEN_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire           GND_net;
wire           VCC_net;
wire   [1:0]   DMAREADY_const_net_0;
wire   [31:0]  GPI_const_net_0;
wire   [1:0]   MACF2MRXD_const_net_0;
wire   [31:0]  MSSPRDATA_const_net_0;
wire   [31:0]  FABPADDR_const_net_0;
wire   [31:0]  FABPWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign DMAREADY_const_net_0  = 2'h0;
assign GPI_const_net_0       = 32'h00000000;
assign MACF2MRXD_const_net_0 = 2'h0;
assign MSSPRDATA_const_net_0 = 32'h00000000;
assign FABPADDR_const_net_0  = 32'h00000000;
assign FABPWDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign MSS_ADLIB_INST_SYNCCLKFDBK_net_0 = MSS_ADLIB_INST_SYNCCLKFDBK;
assign FAB_CLK                          = MSS_ADLIB_INST_SYNCCLKFDBK_net_0;
assign net_71_net_0                     = net_71;
assign M2F_RESET_N                      = net_71_net_0;
assign UART_0_TXD_net_1                 = UART_0_TXD_net_0;
assign UART_0_TXD                       = UART_0_TXD_net_1;
assign UART_1_TXD_net_1                 = UART_1_TXD_net_0;
assign UART_1_TXD                       = UART_1_TXD_net_1;
assign SPI_0_DO_net_1                   = SPI_0_DO_net_0;
assign SPI_0_DO                         = SPI_0_DO_net_1;
assign SPI_1_DO_net_1                   = SPI_1_DO_net_0;
assign SPI_1_DO                         = SPI_1_DO_net_1;
assign DSSGEN_EMC_AB_0_net_0[0]         = DSSGEN_EMC_AB_0;
assign EMC_AB[0:0]                      = DSSGEN_EMC_AB_0_net_0[0];
assign DSSGEN_EMC_AB_10_net_0[10]       = DSSGEN_EMC_AB_10;
assign EMC_AB[10:10]                    = DSSGEN_EMC_AB_10_net_0[10];
assign DSSGEN_EMC_AB_11_net_0[11]       = DSSGEN_EMC_AB_11;
assign EMC_AB[11:11]                    = DSSGEN_EMC_AB_11_net_0[11];
assign DSSGEN_EMC_AB_12_net_0[12]       = DSSGEN_EMC_AB_12;
assign EMC_AB[12:12]                    = DSSGEN_EMC_AB_12_net_0[12];
assign DSSGEN_EMC_AB_13_net_0[13]       = DSSGEN_EMC_AB_13;
assign EMC_AB[13:13]                    = DSSGEN_EMC_AB_13_net_0[13];
assign DSSGEN_EMC_AB_14_net_0[14]       = DSSGEN_EMC_AB_14;
assign EMC_AB[14:14]                    = DSSGEN_EMC_AB_14_net_0[14];
assign DSSGEN_EMC_AB_15_net_0[15]       = DSSGEN_EMC_AB_15;
assign EMC_AB[15:15]                    = DSSGEN_EMC_AB_15_net_0[15];
assign DSSGEN_EMC_AB_16_net_0[16]       = DSSGEN_EMC_AB_16;
assign EMC_AB[16:16]                    = DSSGEN_EMC_AB_16_net_0[16];
assign DSSGEN_EMC_AB_17_net_0[17]       = DSSGEN_EMC_AB_17;
assign EMC_AB[17:17]                    = DSSGEN_EMC_AB_17_net_0[17];
assign DSSGEN_EMC_AB_18_net_0[18]       = DSSGEN_EMC_AB_18;
assign EMC_AB[18:18]                    = DSSGEN_EMC_AB_18_net_0[18];
assign DSSGEN_EMC_AB_19_net_0[19]       = DSSGEN_EMC_AB_19;
assign EMC_AB[19:19]                    = DSSGEN_EMC_AB_19_net_0[19];
assign DSSGEN_EMC_AB_1_net_0[1]         = DSSGEN_EMC_AB_1;
assign EMC_AB[1:1]                      = DSSGEN_EMC_AB_1_net_0[1];
assign DSSGEN_EMC_AB_20_net_0[20]       = DSSGEN_EMC_AB_20;
assign EMC_AB[20:20]                    = DSSGEN_EMC_AB_20_net_0[20];
assign DSSGEN_EMC_AB_21_net_0[21]       = DSSGEN_EMC_AB_21;
assign EMC_AB[21:21]                    = DSSGEN_EMC_AB_21_net_0[21];
assign DSSGEN_EMC_AB_22_net_0[22]       = DSSGEN_EMC_AB_22;
assign EMC_AB[22:22]                    = DSSGEN_EMC_AB_22_net_0[22];
assign DSSGEN_EMC_AB_23_net_0[23]       = DSSGEN_EMC_AB_23;
assign EMC_AB[23:23]                    = DSSGEN_EMC_AB_23_net_0[23];
assign DSSGEN_EMC_AB_24_net_0[24]       = DSSGEN_EMC_AB_24;
assign EMC_AB[24:24]                    = DSSGEN_EMC_AB_24_net_0[24];
assign DSSGEN_EMC_AB_25_net_0[25]       = DSSGEN_EMC_AB_25;
assign EMC_AB[25:25]                    = DSSGEN_EMC_AB_25_net_0[25];
assign DSSGEN_EMC_AB_2_net_0[2]         = DSSGEN_EMC_AB_2;
assign EMC_AB[2:2]                      = DSSGEN_EMC_AB_2_net_0[2];
assign DSSGEN_EMC_AB_3_net_0[3]         = DSSGEN_EMC_AB_3;
assign EMC_AB[3:3]                      = DSSGEN_EMC_AB_3_net_0[3];
assign DSSGEN_EMC_AB_4_net_0[4]         = DSSGEN_EMC_AB_4;
assign EMC_AB[4:4]                      = DSSGEN_EMC_AB_4_net_0[4];
assign DSSGEN_EMC_AB_5_net_0[5]         = DSSGEN_EMC_AB_5;
assign EMC_AB[5:5]                      = DSSGEN_EMC_AB_5_net_0[5];
assign DSSGEN_EMC_AB_6_net_0[6]         = DSSGEN_EMC_AB_6;
assign EMC_AB[6:6]                      = DSSGEN_EMC_AB_6_net_0[6];
assign DSSGEN_EMC_AB_7_net_0[7]         = DSSGEN_EMC_AB_7;
assign EMC_AB[7:7]                      = DSSGEN_EMC_AB_7_net_0[7];
assign DSSGEN_EMC_AB_8_net_0[8]         = DSSGEN_EMC_AB_8;
assign EMC_AB[8:8]                      = DSSGEN_EMC_AB_8_net_0[8];
assign DSSGEN_EMC_AB_9_net_0[9]         = DSSGEN_EMC_AB_9;
assign EMC_AB[9:9]                      = DSSGEN_EMC_AB_9_net_0[9];
assign DSSGEN_EMC_BYTEN_0_net_0[0]      = DSSGEN_EMC_BYTEN_0;
assign EMC_BYTEN[0:0]                   = DSSGEN_EMC_BYTEN_0_net_0[0];
assign DSSGEN_EMC_BYTEN_1_net_0[1]      = DSSGEN_EMC_BYTEN_1;
assign EMC_BYTEN[1:1]                   = DSSGEN_EMC_BYTEN_1_net_0[1];
assign EMC_CS0_N_net_1                  = EMC_CS0_N_net_0;
assign EMC_CS0_N                        = EMC_CS0_N_net_1;
assign EMC_CS1_N_net_1                  = EMC_CS1_N_net_0;
assign EMC_CS1_N                        = EMC_CS1_N_net_1;
assign EMC_OEN0_N_net_1                 = EMC_OEN0_N_net_0;
assign EMC_OEN0_N                       = EMC_OEN0_N_net_1;
assign EMC_OEN1_N_net_1                 = EMC_OEN1_N_net_0;
assign EMC_OEN1_N                       = EMC_OEN1_N_net_1;
assign EMC_CLK_net_1                    = EMC_CLK_net_0;
assign EMC_CLK                          = EMC_CLK_net_1;
assign EMC_RW_N_net_1                   = EMC_RW_N_net_0;
assign EMC_RW_N                         = EMC_RW_N_net_1;
assign DSSGEN_MAC_TXD_0_net_0[0]        = DSSGEN_MAC_TXD_0;
assign MAC_TXD[0:0]                     = DSSGEN_MAC_TXD_0_net_0[0];
assign DSSGEN_MAC_TXD_1_net_0[1]        = DSSGEN_MAC_TXD_1;
assign MAC_TXD[1:1]                     = DSSGEN_MAC_TXD_1_net_0[1];
assign PAD_0_net_0                      = PAD_0;
assign MAC_TXEN                         = PAD_0_net_0;
assign PAD_1_net_0                      = PAD_1;
assign MAC_MDC                          = PAD_1_net_0;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign MAC_RXD_slice_0[0]     = MAC_RXD[0:0];
assign MAC_RXD_slice_1[1]     = MAC_RXD[1:1];
assign MSS_EMI_0_AB_0_D[0]    = EMCAB_net_0[0:0];
assign MSS_EMI_0_AB_1_D[1]    = EMCAB_net_0[1:1];
assign MSS_EMI_0_AB_2_D[2]    = EMCAB_net_0[2:2];
assign MSS_EMI_0_AB_3_D[3]    = EMCAB_net_0[3:3];
assign MSS_EMI_0_AB_4_D[4]    = EMCAB_net_0[4:4];
assign MSS_EMI_0_AB_5_D[5]    = EMCAB_net_0[5:5];
assign MSS_EMI_0_AB_6_D[6]    = EMCAB_net_0[6:6];
assign MSS_EMI_0_AB_7_D[7]    = EMCAB_net_0[7:7];
assign MSS_EMI_0_AB_8_D[8]    = EMCAB_net_0[8:8];
assign MSS_EMI_0_AB_9_D[9]    = EMCAB_net_0[9:9];
assign MSS_EMI_0_AB_10_D[10]  = EMCAB_net_0[10:10];
assign MSS_EMI_0_AB_11_D[11]  = EMCAB_net_0[11:11];
assign MSS_EMI_0_AB_12_D[12]  = EMCAB_net_0[12:12];
assign MSS_EMI_0_AB_13_D[13]  = EMCAB_net_0[13:13];
assign MSS_EMI_0_AB_14_D[14]  = EMCAB_net_0[14:14];
assign MSS_EMI_0_AB_15_D[15]  = EMCAB_net_0[15:15];
assign MSS_EMI_0_AB_16_D[16]  = EMCAB_net_0[16:16];
assign MSS_EMI_0_AB_17_D[17]  = EMCAB_net_0[17:17];
assign MSS_EMI_0_AB_18_D[18]  = EMCAB_net_0[18:18];
assign MSS_EMI_0_AB_19_D[19]  = EMCAB_net_0[19:19];
assign MSS_EMI_0_AB_20_D[20]  = EMCAB_net_0[20:20];
assign MSS_EMI_0_AB_21_D[21]  = EMCAB_net_0[21:21];
assign MSS_EMI_0_AB_22_D[22]  = EMCAB_net_0[22:22];
assign MSS_EMI_0_AB_23_D[23]  = EMCAB_net_0[23:23];
assign MSS_EMI_0_AB_24_D[24]  = EMCAB_net_0[24:24];
assign MSS_EMI_0_AB_25_D[25]  = EMCAB_net_0[25:25];
assign MSS_EMI_0_BYTEN_0_D[0] = EMCBYTEN_net_0[0:0];
assign MSS_EMI_0_BYTEN_1_D[1] = EMCBYTEN_net_0[1:1];
assign MSS_EMI_0_DB_0_D[0]    = EMCWDB_net_0[0:0];
assign MSS_EMI_0_DB_1_D[1]    = EMCWDB_net_0[1:1];
assign MSS_EMI_0_DB_2_D[2]    = EMCWDB_net_0[2:2];
assign MSS_EMI_0_DB_3_D[3]    = EMCWDB_net_0[3:3];
assign MSS_EMI_0_DB_4_D[4]    = EMCWDB_net_0[4:4];
assign MSS_EMI_0_DB_5_D[5]    = EMCWDB_net_0[5:5];
assign MSS_EMI_0_DB_6_D[6]    = EMCWDB_net_0[6:6];
assign MSS_EMI_0_DB_7_D[7]    = EMCWDB_net_0[7:7];
assign MSS_EMI_0_DB_8_D[8]    = EMCWDB_net_0[8:8];
assign MSS_EMI_0_DB_9_D[9]    = EMCWDB_net_0[9:9];
assign MSS_EMI_0_DB_10_D[10]  = EMCWDB_net_0[10:10];
assign MSS_EMI_0_DB_11_D[11]  = EMCWDB_net_0[11:11];
assign MSS_EMI_0_DB_12_D[12]  = EMCWDB_net_0[12:12];
assign MSS_EMI_0_DB_13_D[13]  = EMCWDB_net_0[13:13];
assign MSS_EMI_0_DB_14_D[14]  = EMCWDB_net_0[14:14];
assign MSS_EMI_0_DB_15_D[15]  = EMCWDB_net_0[15:15];
assign MSS_MAC_0_TXD_0_D[0]   = MACTXD_net_0[0:0];
assign MSS_MAC_0_TXD_1_D[1]   = MACTXD_net_0[1:1];
assign MSS_SPI_0_SS_D[0]      = SPI0SSO_net_0[0:0];
assign MSS_SPI_1_SS_D[0]      = SPI1SSO_net_0[0:0];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign MACRXD_net_0 = { MSS_MAC_0_RXD_1_Y , MSS_MAC_0_RXD_0_Y };
assign EMCRDB_net_0 = { MSS_EMI_0_DB_15_Y , MSS_EMI_0_DB_14_Y , MSS_EMI_0_DB_13_Y , MSS_EMI_0_DB_12_Y , MSS_EMI_0_DB_11_Y , MSS_EMI_0_DB_10_Y , MSS_EMI_0_DB_9_Y , MSS_EMI_0_DB_8_Y , MSS_EMI_0_DB_7_Y , MSS_EMI_0_DB_6_Y , MSS_EMI_0_DB_5_Y , MSS_EMI_0_DB_4_Y , MSS_EMI_0_DB_3_Y , MSS_EMI_0_DB_2_Y , MSS_EMI_0_DB_1_Y , MSS_EMI_0_DB_0_Y };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------MSS_APB
MSS_APB #( 
        .ACT_CONFIG ( 0 ),
        .ACT_DIE    ( "IP6X5M2" ),
        .ACT_FCLK   ( 40000000 ),
        .ACT_PKG    ( "fg484" ) )
MSS_ADLIB_INST(
        // Inputs
        .MSSPRDATA      ( MSSPRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .MSSPREADY      ( VCC_net ), // tied to 1'b1 from definition
        .MSSPSLVERR     ( GND_net ), // tied to 1'b0 from definition
        .FABPADDR       ( FABPADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .FABPWDATA      ( FABPWDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .FABPWRITE      ( GND_net ), // tied to 1'b0 from definition
        .FABPSEL        ( GND_net ), // tied to 1'b0 from definition
        .FABPENABLE     ( GND_net ), // tied to 1'b0 from definition
        .SYNCCLKFDBK    ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .CALIBIN        ( GND_net ), // tied to 1'b0 from definition
        .FABINT         ( GND_net ), // tied to 1'b0 from definition
        .F2MRESETn      ( VCC_net ), // tied to 1'b1 from definition
        .DMAREADY       ( DMAREADY_const_net_0 ), // tied to 2'h0 from definition
        .RXEV           ( GND_net ), // tied to 1'b0 from definition
        .VRON           ( GND_net ), // tied to 1'b0 from definition
        .GPI            ( GPI_const_net_0 ), // tied to 32'h00000000 from definition
        .UART0CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART0DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART0RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART0DCDn      ( GND_net ), // tied to 1'b0 from definition
        .UART1CTSn      ( GND_net ), // tied to 1'b0 from definition
        .UART1DSRn      ( GND_net ), // tied to 1'b0 from definition
        .UART1RIn       ( GND_net ), // tied to 1'b0 from definition
        .UART1DCDn      ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C0SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C0BCLK       ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBUSNI    ( GND_net ), // tied to 1'b0 from definition
        .I2C1SMBALERTNI ( GND_net ), // tied to 1'b0 from definition
        .I2C1BCLK       ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXD      ( MACF2MRXD_const_net_0 ), // tied to 2'h0 from definition
        .MACF2MCRSDV    ( GND_net ), // tied to 1'b0 from definition
        .MACF2MRXER     ( GND_net ), // tied to 1'b0 from definition
        .MACF2MMDI      ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2D       ( GND_net ), // tied to 1'b0 from definition
        .FABSDD0CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD1CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABSDD2CLK     ( GND_net ), // tied to 1'b0 from definition
        .FABACETRIG     ( GND_net ), // tied to 1'b0 from definition
        .LVTTL0EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL1EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL2EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL3EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL4EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL5EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL6EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL7EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL8EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL9EN       ( GND_net ), // tied to 1'b0 from definition
        .LVTTL10EN      ( GND_net ), // tied to 1'b0 from definition
        .LVTTL11EN      ( GND_net ), // tied to 1'b0 from definition
        .FCLK           ( MSS_ADLIB_INST_FCLK ),
        .MACCLKCCC      ( MSS_ADLIB_INST_MACCLKCCC ),
        .RCOSC          ( GND_net ), // tied to 1'b0 from definition
        .MACCLK         ( MSS_ADLIB_INST_MACCLK ),
        .PLLLOCK        ( MSS_ADLIB_INST_PLLLOCK ),
        .MSSRESETn      ( MSS_RESET_0_MSS_RESET_N_Y ),
        .SPI0DI         ( MSS_SPI_0_DI_Y ),
        .SPI0CLKI       ( MSS_SPI_0_CLK_Y ),
        .SPI0SSI        ( MSS_SPI_0_SS_Y ),
        .UART0RXD       ( MSS_UART_0_RXD_Y ),
        .I2C0SDAI       ( MSS_I2C_0_SDA_Y ),
        .I2C0SCLI       ( MSS_I2C_0_SCL_Y ),
        .SPI1DI         ( MSS_SPI_1_DI_Y ),
        .SPI1CLKI       ( MSS_SPI_1_CLK_Y ),
        .SPI1SSI        ( MSS_SPI_1_SS_Y ),
        .UART1RXD       ( MSS_UART_1_RXD_Y ),
        .I2C1SDAI       ( MSS_I2C_1_SDA_Y ),
        .I2C1SCLI       ( MSS_I2C_1_SCL_Y ),
        .MACRXD         ( MACRXD_net_0 ),
        .MACCRSDV       ( MSS_MAC_0_CRSDV_Y ),
        .MACRXER        ( MSS_MAC_0_RXER_Y ),
        .MACMDI         ( MSS_MAC_0_MDIO_Y ),
        .EMCCLKRTN      ( MSS_EMI_0_CLK_D ),
        .EMCRDB         ( EMCRDB_net_0 ),
        .ADC0           ( GND_net ), // tied to 1'b0 from definition
        .ADC1           ( GND_net ), // tied to 1'b0 from definition
        .ADC2           ( GND_net ), // tied to 1'b0 from definition
        .ADC3           ( GND_net ), // tied to 1'b0 from definition
        .ADC4           ( GND_net ), // tied to 1'b0 from definition
        .ADC5           ( GND_net ), // tied to 1'b0 from definition
        .ADC6           ( GND_net ), // tied to 1'b0 from definition
        .ADC7           ( GND_net ), // tied to 1'b0 from definition
        .ADC8           ( GND_net ), // tied to 1'b0 from definition
        .ADC9           ( GND_net ), // tied to 1'b0 from definition
        .ADC10          ( GND_net ), // tied to 1'b0 from definition
        .ADC11          ( GND_net ), // tied to 1'b0 from definition
        .ABPS0          ( GND_net ), // tied to 1'b0 from definition
        .ABPS1          ( GND_net ), // tied to 1'b0 from definition
        .ABPS2          ( GND_net ), // tied to 1'b0 from definition
        .ABPS3          ( GND_net ), // tied to 1'b0 from definition
        .ABPS4          ( GND_net ), // tied to 1'b0 from definition
        .ABPS5          ( GND_net ), // tied to 1'b0 from definition
        .ABPS6          ( GND_net ), // tied to 1'b0 from definition
        .ABPS7          ( GND_net ), // tied to 1'b0 from definition
        .ABPS8          ( GND_net ), // tied to 1'b0 from definition
        .ABPS9          ( GND_net ), // tied to 1'b0 from definition
        .ABPS10         ( GND_net ), // tied to 1'b0 from definition
        .ABPS11         ( GND_net ), // tied to 1'b0 from definition
        .TM0            ( GND_net ), // tied to 1'b0 from definition
        .TM1            ( GND_net ), // tied to 1'b0 from definition
        .TM2            ( GND_net ), // tied to 1'b0 from definition
        .TM3            ( GND_net ), // tied to 1'b0 from definition
        .TM4            ( GND_net ), // tied to 1'b0 from definition
        .TM5            ( GND_net ), // tied to 1'b0 from definition
        .CM0            ( GND_net ), // tied to 1'b0 from definition
        .CM1            ( GND_net ), // tied to 1'b0 from definition
        .CM2            ( GND_net ), // tied to 1'b0 from definition
        .CM3            ( GND_net ), // tied to 1'b0 from definition
        .CM4            ( GND_net ), // tied to 1'b0 from definition
        .CM5            ( GND_net ), // tied to 1'b0 from definition
        .GNDTM0         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM1         ( GND_net ), // tied to 1'b0 from definition
        .GNDTM2         ( GND_net ), // tied to 1'b0 from definition
        .VAREF0         ( GND_net ), // tied to 1'b0 from definition
        .VAREF1         ( GND_net ), // tied to 1'b0 from definition
        .VAREF2         ( GND_net ), // tied to 1'b0 from definition
        .GNDVAREF       ( GND_net ), // tied to 1'b0 from definition
        .PUn            ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSSPADDR       (  ),
        .MSSPWDATA      (  ),
        .MSSPWRITE      (  ),
        .MSSPSEL        (  ),
        .MSSPENABLE     (  ),
        .FABPRDATA      (  ),
        .FABPREADY      (  ),
        .FABPSLVERR     (  ),
        .CALIBOUT       (  ),
        .MSSINT         (  ),
        .WDINT          (  ),
        .M2FRESETn      ( net_71 ),
        .DEEPSLEEP      (  ),
        .SLEEP          (  ),
        .TXEV           (  ),
        .GPO            (  ),
        .UART0RTSn      (  ),
        .UART0DTRn      (  ),
        .UART1RTSn      (  ),
        .UART1DTRn      (  ),
        .I2C0SMBUSNO    (  ),
        .I2C0SMBALERTNO (  ),
        .I2C1SMBUSNO    (  ),
        .I2C1SMBALERTNO (  ),
        .MACM2FTXD      (  ),
        .MACM2FTXEN     (  ),
        .MACM2FMDO      (  ),
        .MACM2FMDEN     (  ),
        .MACM2FMDC      (  ),
        .ACEFLAGS       (  ),
        .CMP0           (  ),
        .CMP1           (  ),
        .CMP2           (  ),
        .CMP3           (  ),
        .CMP4           (  ),
        .CMP5           (  ),
        .CMP6           (  ),
        .CMP7           (  ),
        .CMP8           (  ),
        .CMP9           (  ),
        .CMP10          (  ),
        .CMP11          (  ),
        .LVTTL0         (  ),
        .LVTTL1         (  ),
        .LVTTL2         (  ),
        .LVTTL3         (  ),
        .LVTTL4         (  ),
        .LVTTL5         (  ),
        .LVTTL6         (  ),
        .LVTTL7         (  ),
        .LVTTL8         (  ),
        .LVTTL9         (  ),
        .LVTTL10        (  ),
        .LVTTL11        (  ),
        .PUFABn         (  ),
        .VCC15GOOD      (  ),
        .VCC33GOOD      (  ),
        .GPOE           (  ),
        .SPI0DO         ( MSS_SPI_0_DO_D ),
        .SPI0DOE        ( MSS_SPI_0_DO_E ),
        .SPI0CLKO       ( MSS_SPI_0_CLK_D ),
        .SPI0MODE       ( MSS_SPI_0_SS_E ),
        .SPI0SSO        ( SPI0SSO_net_0 ),
        .UART0TXD       ( MSS_UART_0_TXD_D ),
        .I2C0SDAO       ( MSS_I2C_0_SDA_E ),
        .I2C0SCLO       ( MSS_I2C_0_SCL_E ),
        .SPI1DO         ( MSS_SPI_1_DO_D ),
        .SPI1DOE        ( MSS_SPI_1_DO_E ),
        .SPI1CLKO       ( MSS_SPI_1_CLK_D ),
        .SPI1MODE       ( MSS_SPI_1_SS_E ),
        .SPI1SSO        ( SPI1SSO_net_0 ),
        .UART1TXD       ( MSS_UART_1_TXD_D ),
        .I2C1SDAO       ( MSS_I2C_1_SDA_E ),
        .I2C1SCLO       ( MSS_I2C_1_SCL_E ),
        .MACTXD         ( MACTXD_net_0 ),
        .MACTXEN        ( MSS_MAC_0_TXEN_D ),
        .MACMDO         ( MSS_MAC_0_MDIO_D ),
        .MACMDEN        ( MSS_MAC_0_MDIO_E ),
        .MACMDC         ( MSS_MAC_0_MDC_D ),
        .EMCCLK         ( MSS_EMI_0_CLK_D ),
        .EMCAB          ( EMCAB_net_0 ),
        .EMCWDB         ( EMCWDB_net_0 ),
        .EMCRWn         ( MSS_EMI_0_RW_N_D ),
        .EMCCS0n        ( MSS_EMI_0_CS0_N_D ),
        .EMCCS1n        ( MSS_EMI_0_CS1_N_D ),
        .EMCOEN0n       ( MSS_EMI_0_OEN0_N_D ),
        .EMCOEN1n       ( MSS_EMI_0_OEN1_N_D ),
        .EMCBYTEN       ( EMCBYTEN_net_0 ),
        .EMCDBOE        ( MSS_EMI_0_DB_15_E ),
        .SDD0           (  ),
        .SDD1           (  ),
        .SDD2           (  ),
        .VAREFOUT       (  ) 
        );

//--------mss_capture_MSS_tmp_MSS_CCC_0_MSS_CCC   -   Actel:SmartFusionMSS:MSS_CCC:2.0.106
mss_capture_MSS_tmp_MSS_CCC_0_MSS_CCC MSS_CCC_0(
        // Inputs
        .CLKA           ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKA_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKB           ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKB_PADN      ( GND_net ), // tied to 1'b0 from definition
        .CLKC           ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PAD       ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADP      ( GND_net ), // tied to 1'b0 from definition
        .CLKC_PADN      ( GND_net ), // tied to 1'b0 from definition
        .MAINXIN        ( GND_net ), // tied to 1'b0 from definition
        .LPXIN          ( GND_net ), // tied to 1'b0 from definition
        .MAC_CLK        ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .GLA            (  ),
        .GLB            (  ),
        .GLC            (  ),
        .FAB_CLK        ( MSS_ADLIB_INST_SYNCCLKFDBK ),
        .YB             (  ),
        .YC             (  ),
        .FAB_LOCK       (  ),
        .RCOSC_CLKOUT   (  ),
        .MAINXIN_CLKOUT (  ),
        .LPXIN_CLKOUT   (  ),
        .GLA0           ( MSS_ADLIB_INST_FCLK ),
        .MSS_LOCK       ( MSS_ADLIB_INST_PLLLOCK ),
        .MAC_CLK_CCC    ( MSS_ADLIB_INST_MACCLKCCC ),
        .MAC_CLK_IO     ( MSS_ADLIB_INST_MACCLK ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A8" ) )
MSS_EMI_0_AB_0(
        // Inputs
        .D   ( MSS_EMI_0_AB_0_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A9" ) )
MSS_EMI_0_AB_1(
        // Inputs
        .D   ( MSS_EMI_0_AB_1_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_1 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B10" ) )
MSS_EMI_0_AB_2(
        // Inputs
        .D   ( MSS_EMI_0_AB_2_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_2 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B11" ) )
MSS_EMI_0_AB_3(
        // Inputs
        .D   ( MSS_EMI_0_AB_3_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_3 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "E11" ) )
MSS_EMI_0_AB_4(
        // Inputs
        .D   ( MSS_EMI_0_AB_4_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_4 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "E12" ) )
MSS_EMI_0_AB_5(
        // Inputs
        .D   ( MSS_EMI_0_AB_5_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_5 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B12" ) )
MSS_EMI_0_AB_6(
        // Inputs
        .D   ( MSS_EMI_0_AB_6_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_6 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A12" ) )
MSS_EMI_0_AB_7(
        // Inputs
        .D   ( MSS_EMI_0_AB_7_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_7 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C13" ) )
MSS_EMI_0_AB_8(
        // Inputs
        .D   ( MSS_EMI_0_AB_8_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_8 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D13" ) )
MSS_EMI_0_AB_9(
        // Inputs
        .D   ( MSS_EMI_0_AB_9_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_9 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D11" ) )
MSS_EMI_0_AB_10(
        // Inputs
        .D   ( MSS_EMI_0_AB_10_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_10 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D12" ) )
MSS_EMI_0_AB_11(
        // Inputs
        .D   ( MSS_EMI_0_AB_11_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_11 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A14" ) )
MSS_EMI_0_AB_12(
        // Inputs
        .D   ( MSS_EMI_0_AB_12_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_12 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A15" ) )
MSS_EMI_0_AB_13(
        // Inputs
        .D   ( MSS_EMI_0_AB_13_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_13 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B13" ) )
MSS_EMI_0_AB_14(
        // Inputs
        .D   ( MSS_EMI_0_AB_14_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_14 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B14" ) )
MSS_EMI_0_AB_15(
        // Inputs
        .D   ( MSS_EMI_0_AB_15_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_15 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C14" ) )
MSS_EMI_0_AB_16(
        // Inputs
        .D   ( MSS_EMI_0_AB_16_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_16 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C15" ) )
MSS_EMI_0_AB_17(
        // Inputs
        .D   ( MSS_EMI_0_AB_17_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_17 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B16" ) )
MSS_EMI_0_AB_18(
        // Inputs
        .D   ( MSS_EMI_0_AB_18_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_18 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B17" ) )
MSS_EMI_0_AB_19(
        // Inputs
        .D   ( MSS_EMI_0_AB_19_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_19 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "F13" ) )
MSS_EMI_0_AB_20(
        // Inputs
        .D   ( MSS_EMI_0_AB_20_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_20 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "F14" ) )
MSS_EMI_0_AB_21(
        // Inputs
        .D   ( MSS_EMI_0_AB_21_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_21 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C17" ) )
MSS_EMI_0_AB_22(
        // Inputs
        .D   ( MSS_EMI_0_AB_22_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_22 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C18" ) )
MSS_EMI_0_AB_23(
        // Inputs
        .D   ( MSS_EMI_0_AB_23_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_23 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C16" ) )
MSS_EMI_0_AB_24(
        // Inputs
        .D   ( MSS_EMI_0_AB_24_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_24 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D16" ) )
MSS_EMI_0_AB_25(
        // Inputs
        .D   ( MSS_EMI_0_AB_25_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_AB_25 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B9" ) )
MSS_EMI_0_BYTEN_0(
        // Inputs
        .D   ( MSS_EMI_0_BYTEN_0_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_BYTEN_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C9" ) )
MSS_EMI_0_BYTEN_1(
        // Inputs
        .D   ( MSS_EMI_0_BYTEN_1_D ),
        // Outputs
        .PAD ( DSSGEN_EMC_BYTEN_1 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C6" ) )
MSS_EMI_0_CLK(
        // Inputs
        .D   ( MSS_EMI_0_CLK_D ),
        // Outputs
        .PAD ( EMC_CLK_net_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A5" ) )
MSS_EMI_0_CS0_N(
        // Inputs
        .D   ( MSS_EMI_0_CS0_N_D ),
        // Outputs
        .PAD ( EMC_CS0_N_net_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "A6" ) )
MSS_EMI_0_CS1_N(
        // Inputs
        .D   ( MSS_EMI_0_CS1_N_D ),
        // Outputs
        .PAD ( EMC_CS1_N_net_0 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "K2" ) )
MSS_EMI_0_DB_0(
        // Inputs
        .D   ( MSS_EMI_0_DB_0_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_0_Y ),
        // Inouts
        .PAD ( EMC_DB[0:0] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "K3" ) )
MSS_EMI_0_DB_1(
        // Inputs
        .D   ( MSS_EMI_0_DB_1_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_1_Y ),
        // Inouts
        .PAD ( EMC_DB[1:1] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "K5" ) )
MSS_EMI_0_DB_2(
        // Inputs
        .D   ( MSS_EMI_0_DB_2_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_2_Y ),
        // Inouts
        .PAD ( EMC_DB[2:2] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "J4" ) )
MSS_EMI_0_DB_3(
        // Inputs
        .D   ( MSS_EMI_0_DB_3_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_3_Y ),
        // Inouts
        .PAD ( EMC_DB[3:3] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "J3" ) )
MSS_EMI_0_DB_4(
        // Inputs
        .D   ( MSS_EMI_0_DB_4_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_4_Y ),
        // Inouts
        .PAD ( EMC_DB[4:4] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "J2" ) )
MSS_EMI_0_DB_5(
        // Inputs
        .D   ( MSS_EMI_0_DB_5_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_5_Y ),
        // Inouts
        .PAD ( EMC_DB[5:5] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "J1" ) )
MSS_EMI_0_DB_6(
        // Inputs
        .D   ( MSS_EMI_0_DB_6_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_6_Y ),
        // Inouts
        .PAD ( EMC_DB[6:6] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "H1" ) )
MSS_EMI_0_DB_7(
        // Inputs
        .D   ( MSS_EMI_0_DB_7_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_7_Y ),
        // Inouts
        .PAD ( EMC_DB[7:7] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "H3" ) )
MSS_EMI_0_DB_8(
        // Inputs
        .D   ( MSS_EMI_0_DB_8_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_8_Y ),
        // Inouts
        .PAD ( EMC_DB[8:8] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "G3" ) )
MSS_EMI_0_DB_9(
        // Inputs
        .D   ( MSS_EMI_0_DB_9_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_9_Y ),
        // Inouts
        .PAD ( EMC_DB[9:9] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "F4" ) )
MSS_EMI_0_DB_10(
        // Inputs
        .D   ( MSS_EMI_0_DB_10_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_10_Y ),
        // Inouts
        .PAD ( EMC_DB[10:10] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "G5" ) )
MSS_EMI_0_DB_11(
        // Inputs
        .D   ( MSS_EMI_0_DB_11_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_11_Y ),
        // Inouts
        .PAD ( EMC_DB[11:11] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D2" ) )
MSS_EMI_0_DB_12(
        // Inputs
        .D   ( MSS_EMI_0_DB_12_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_12_Y ),
        // Inouts
        .PAD ( EMC_DB[12:12] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D3" ) )
MSS_EMI_0_DB_13(
        // Inputs
        .D   ( MSS_EMI_0_DB_13_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_13_Y ),
        // Inouts
        .PAD ( EMC_DB[13:13] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C1" ) )
MSS_EMI_0_DB_14(
        // Inputs
        .D   ( MSS_EMI_0_DB_14_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_14_Y ),
        // Inouts
        .PAD ( EMC_DB[14:14] ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B1" ) )
MSS_EMI_0_DB_15(
        // Inputs
        .D   ( MSS_EMI_0_DB_15_D ),
        .E   ( MSS_EMI_0_DB_15_E ),
        // Outputs
        .Y   ( MSS_EMI_0_DB_15_Y ),
        // Inouts
        .PAD ( EMC_DB[15:15] ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "D10" ) )
MSS_EMI_0_OEN0_N(
        // Inputs
        .D   ( MSS_EMI_0_OEN0_N_D ),
        // Outputs
        .PAD ( EMC_OEN0_N_net_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "C10" ) )
MSS_EMI_0_OEN1_N(
        // Inputs
        .D   ( MSS_EMI_0_OEN1_N_D ),
        // Outputs
        .PAD ( EMC_OEN1_N_net_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 536870912 ),
        .ACT_PIN    ( "B6" ) )
MSS_EMI_0_RW_N(
        // Inputs
        .D   ( MSS_EMI_0_RW_N_D ),
        // Outputs
        .PAD ( EMC_RW_N_net_0 ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U21" ) )
MSS_I2C_0_SCL(
        // Inputs
        .E   ( MSS_I2C_0_SCL_E ),
        // Outputs
        .Y   ( MSS_I2C_0_SCL_Y ),
        // Inouts
        .PAD ( I2C_0_SCL ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V21" ) )
MSS_I2C_0_SDA(
        // Inputs
        .E   ( MSS_I2C_0_SDA_E ),
        // Outputs
        .Y   ( MSS_I2C_0_SDA_Y ),
        // Inouts
        .PAD ( I2C_0_SDA ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U20" ) )
MSS_I2C_1_SCL(
        // Inputs
        .E   ( MSS_I2C_1_SCL_E ),
        // Outputs
        .Y   ( MSS_I2C_1_SCL_Y ),
        // Inouts
        .PAD ( I2C_1_SCL ) 
        );

//--------BIBUF_OPEND_MSS
BIBUF_OPEND_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V22" ) )
MSS_I2C_1_SDA(
        // Inputs
        .E   ( MSS_I2C_1_SDA_E ),
        // Outputs
        .Y   ( MSS_I2C_1_SDA_Y ),
        // Inouts
        .PAD ( I2C_1_SDA ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W4" ) )
MSS_MAC_0_CRSDV(
        // Inputs
        .PAD ( MAC_CRSDV ),
        // Outputs
        .Y   ( MSS_MAC_0_CRSDV_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA3" ) )
MSS_MAC_0_MDC(
        // Inputs
        .D   ( MSS_MAC_0_MDC_D ),
        // Outputs
        .PAD ( PAD_1 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V4" ) )
MSS_MAC_0_MDIO(
        // Inputs
        .D   ( MSS_MAC_0_MDIO_D ),
        .E   ( MSS_MAC_0_MDIO_E ),
        // Outputs
        .Y   ( MSS_MAC_0_MDIO_Y ),
        // Inouts
        .PAD ( MAC_MDIO ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V5" ) )
MSS_MAC_0_RXD_0(
        // Inputs
        .PAD ( MAC_RXD_slice_0 ),
        // Outputs
        .Y   ( MSS_MAC_0_RXD_0_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U5" ) )
MSS_MAC_0_RXD_1(
        // Inputs
        .PAD ( MAC_RXD_slice_1 ),
        // Outputs
        .Y   ( MSS_MAC_0_RXD_1_Y ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA4" ) )
MSS_MAC_0_RXER(
        // Inputs
        .PAD ( MAC_RXER ),
        // Outputs
        .Y   ( MSS_MAC_0_RXER_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA5" ) )
MSS_MAC_0_TXD_0(
        // Inputs
        .D   ( MSS_MAC_0_TXD_0_D ),
        // Outputs
        .PAD ( DSSGEN_MAC_TXD_0 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W5" ) )
MSS_MAC_0_TXD_1(
        // Inputs
        .D   ( MSS_MAC_0_TXD_1_D ),
        // Outputs
        .PAD ( DSSGEN_MAC_TXD_1 ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y4" ) )
MSS_MAC_0_TXEN(
        // Inputs
        .D   ( MSS_MAC_0_TXEN_D ),
        // Outputs
        .PAD ( PAD_0 ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "R1" ) )
MSS_RESET_0_MSS_RESET_N(
        // Inputs
        .PAD ( MSS_RESET_N ),
        // Outputs
        .Y   ( MSS_RESET_0_MSS_RESET_N_Y ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W19" ) )
MSS_SPI_0_CLK(
        // Inputs
        .D   ( MSS_SPI_0_CLK_D ),
        .E   ( MSS_SPI_0_SS_E ),
        // Outputs
        .Y   ( MSS_SPI_0_CLK_Y ),
        // Inouts
        .PAD ( SPI_0_CLK ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V18" ) )
MSS_SPI_0_DI(
        // Inputs
        .PAD ( SPI_0_DI ),
        // Outputs
        .Y   ( MSS_SPI_0_DI_Y ) 
        );

//--------TRIBUFF_MSS
TRIBUFF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U17" ) )
MSS_SPI_0_DO(
        // Inputs
        .D   ( MSS_SPI_0_DO_D ),
        .E   ( MSS_SPI_0_DO_E ),
        // Outputs
        .PAD ( SPI_0_DO_net_0 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y20" ) )
MSS_SPI_0_SS(
        // Inputs
        .D   ( MSS_SPI_0_SS_D ),
        .E   ( MSS_SPI_0_SS_E ),
        // Outputs
        .Y   ( MSS_SPI_0_SS_Y ),
        // Inouts
        .PAD ( SPI_0_SS ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "AA22" ) )
MSS_SPI_1_CLK(
        // Inputs
        .D   ( MSS_SPI_1_CLK_D ),
        .E   ( MSS_SPI_1_SS_E ),
        // Outputs
        .Y   ( MSS_SPI_1_CLK_Y ),
        // Inouts
        .PAD ( SPI_1_CLK ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V19" ) )
MSS_SPI_1_DI(
        // Inputs
        .PAD ( SPI_1_DI ),
        // Outputs
        .Y   ( MSS_SPI_1_DI_Y ) 
        );

//--------TRIBUFF_MSS
TRIBUFF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "T17" ) )
MSS_SPI_1_DO(
        // Inputs
        .D   ( MSS_SPI_1_DO_D ),
        .E   ( MSS_SPI_1_DO_E ),
        // Outputs
        .PAD ( SPI_1_DO_net_0 ) 
        );

//--------BIBUF_MSS
BIBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W21" ) )
MSS_SPI_1_SS(
        // Inputs
        .D   ( MSS_SPI_1_SS_D ),
        .E   ( MSS_SPI_1_SS_E ),
        // Outputs
        .Y   ( MSS_SPI_1_SS_Y ),
        // Inouts
        .PAD ( SPI_1_SS ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "U18" ) )
MSS_UART_0_RXD(
        // Inputs
        .PAD ( UART_0_RXD ),
        // Outputs
        .Y   ( MSS_UART_0_RXD_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "Y22" ) )
MSS_UART_0_TXD(
        // Inputs
        .D   ( MSS_UART_0_TXD_D ),
        // Outputs
        .PAD ( UART_0_TXD_net_0 ) 
        );

//--------INBUF_MSS
INBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "W22" ) )
MSS_UART_1_RXD(
        // Inputs
        .PAD ( UART_1_RXD ),
        // Outputs
        .Y   ( MSS_UART_1_RXD_Y ) 
        );

//--------OUTBUF_MSS
OUTBUF_MSS #( 
        .ACT_CONFIG ( 0 ),
        .ACT_PIN    ( "V20" ) )
MSS_UART_1_TXD(
        // Inputs
        .D   ( MSS_UART_1_TXD_D ),
        // Outputs
        .PAD ( UART_1_TXD_net_0 ) 
        );


endmodule
