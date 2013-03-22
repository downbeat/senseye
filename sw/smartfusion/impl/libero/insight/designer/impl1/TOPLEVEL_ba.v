`timescale 1 ns/100 ps
// Version: 10.1 SP3 10.1.3.1
// File used only for Simulation


module TOPLEVEL(
       CAPTURE,
       CLK50,
       MAC_CRSDV,
       MAC_RXD,
       MAC_RXER,
       MAINXIN,
       MISO,
       MSS_RESET_N,
       UART_0_RXD,
       CS,
       MAC_MDC,
       MAC_TXD,
       MAC_TXEN,
       Phy_RMII_CLK,
       SCLK,
       TP_adcConvComplete,
       TP_adcStartCapture,
       UART_0_TXD,
       incp,
       incv,
       inphi,
       led,
       psram_address,
       psram_nbyte_en,
       psram_ncs0,
       psram_ncs1,
       psram_noe0,
       psram_noe1,
       psram_nwe,
       resp,
       resv,
       rs485_de,
       rs485_nre,
       MAC_MDIO,
       psram_data
    );
input  CAPTURE;
input  CLK50;
input  MAC_CRSDV;
input  [1:0] MAC_RXD;
input  MAC_RXER;
input  MAINXIN;
input  MISO;
input  MSS_RESET_N;
input  UART_0_RXD;
output CS;
output MAC_MDC;
output [1:0] MAC_TXD;
output MAC_TXEN;
output Phy_RMII_CLK;
output SCLK;
output TP_adcConvComplete;
output TP_adcStartCapture;
output UART_0_TXD;
output incp;
output incv;
output inphi;
output [7:0] led;
output [24:0] psram_address;
output [1:0] psram_nbyte_en;
output psram_ncs0;
output psram_ncs1;
output psram_noe0;
output psram_noe1;
output psram_nwe;
output resp;
output resv;
output rs485_de;
output rs485_nre;
inout  MAC_MDIO;
inout  [15:0] psram_data;

    wire MSS_CORE2_0_M2F_RESET_N, \adc081s101_0_dataout[0] , 
        \adc081s101_0_dataout[1] , \adc081s101_0_dataout[2] , 
        \adc081s101_0_dataout[3] , \adc081s101_0_dataout[4] , 
        \adc081s101_0_dataout[5] , \adc081s101_0_dataout[6] , 
        \adc081s101_0_dataout[7] , FAB_CLK, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] , 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] , 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE, 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] , 
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRESP_0, 
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[11] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] , 
        CoreAHBLite_0_AHBmslave5_HREADY, 
        \CoreAHBLite_0_AHBmslave6_HRDATA[0] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[1] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[2] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[3] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[4] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[5] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[6] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[7] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[8] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[9] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[10] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[11] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[12] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[13] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[14] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[15] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[16] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[17] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[18] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[19] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[20] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[21] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[22] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[23] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[24] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[25] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[26] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[27] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[28] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[29] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[30] , 
        \CoreAHBLite_0_AHBmslave6_HRDATA[31] , 
        CoreAHBLite_0_AHBmslave6_HREADY, 
        \CoreAPB3_0_APBmslave1_PADDR[0] , 
        \CoreAPB3_0_APBmslave1_PADDR[1] , 
        \CoreAPB3_0_APBmslave1_PADDR[2] , 
        \CoreAPB3_0_APBmslave1_PADDR[3] , 
        \CoreAPB3_0_APBmslave1_PADDR[4] , 
        \CoreAPB3_0_APBmslave1_PADDR[5] , 
        \CoreAPB3_0_APBmslave1_PADDR[6] , 
        \CoreAPB3_0_APBmslave1_PADDR[7] , 
        \CoreAPB3_0_APBmslave1_PADDR[8] , 
        \CoreAPB3_0_APBmslave1_PADDR[9] , 
        \CoreAPB3_0_APBmslave1_PADDR[10] , 
        \CoreAPB3_0_APBmslave1_PADDR[11] , 
        CoreAPB3_0_APBmslave0_0_PWRITE, 
        CoreAPB3_0_APBmslave0_0_PENABLE, 
        \CoreAPB3_0_APBmslave0_0_PWDATA[0] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA[0] , 
        \CoreAPB3_0_APBmslave1_PRDATA[1] , 
        \CoreAPB3_0_APBmslave1_PRDATA[2] , 
        \CoreAPB3_0_APBmslave1_PRDATA[3] , 
        \CoreAPB3_0_APBmslave1_PRDATA[4] , 
        \CoreAPB3_0_APBmslave1_PRDATA[5] , 
        \CoreAPB3_0_APBmslave1_PRDATA[6] , 
        \CoreAPB3_0_APBmslave1_PRDATA[7] , 
        \CoreAPB3_0_APBmslave1_PRDATA[8] , 
        \CoreAPB3_0_APBmslave1_PRDATA[9] , 
        \CoreAPB3_0_APBmslave1_PRDATA[10] , 
        \CoreAPB3_0_APBmslave1_PRDATA[11] , 
        \CoreAPB3_0_APBmslave1_PRDATA[12] , 
        \CoreAPB3_0_APBmslave1_PRDATA[13] , 
        \CoreAPB3_0_APBmslave1_PRDATA[14] , 
        \CoreAPB3_0_APBmslave1_PRDATA[15] , 
        \CoreAPB3_0_APBmslave1_PRDATA[16] , 
        \CoreAPB3_0_APBmslave1_PRDATA[17] , 
        \CoreAPB3_0_APBmslave1_PRDATA[18] , 
        \CoreAPB3_0_APBmslave1_PRDATA[19] , 
        \CoreAPB3_0_APBmslave1_PRDATA[20] , 
        \CoreAPB3_0_APBmslave1_PRDATA[21] , 
        \CoreAPB3_0_APBmslave1_PRDATA[22] , 
        \CoreAPB3_0_APBmslave1_PRDATA[23] , 
        \CoreAPB3_0_APBmslave1_PRDATA[24] , 
        \CoreAPB3_0_APBmslave1_PRDATA[25] , 
        \CoreAPB3_0_APBmslave1_PRDATA[26] , 
        \CoreAPB3_0_APBmslave1_PRDATA[27] , 
        \CoreAPB3_0_APBmslave1_PRDATA[28] , 
        \CoreAPB3_0_APBmslave1_PRDATA[29] , 
        \CoreAPB3_0_APBmslave1_PRDATA[30] , 
        \CoreAPB3_0_APBmslave1_PRDATA[31] , \counter_0_COUNT[0] , 
        \counter_0_COUNT[1] , \counter_0_COUNT[2] , 
        \counter_0_COUNT[3] , \counter_0_COUNT[4] , 
        \counter_0_COUNT[5] , \counter_0_COUNT[6] , 
        \counter_0_COUNT[7] , \counter_0_COUNT[8] , 
        \counter_0_COUNT[9] , \counter_0_COUNT[10] , 
        \counter_0_COUNT[11] , \counter_0_COUNT[12] , 
        \counter_0_COUNT[13] , \counter_0_COUNT[14] , 
        \counter_0_COUNT[15] , \counter_0_COUNT[16] , 
        \counter_0_COUNT[17] , \counter_0_COUNT[18] , 
        \counter_0_COUNT[19] , \counter_0_COUNT[20] , 
        \counter_0_COUNT[21] , \counter_0_COUNT[22] , 
        \counter_0_COUNT[23] , \counter_0_COUNT[24] , 
        \counter_0_COUNT[25] , \counter_0_COUNT[26] , 
        \counter_0_COUNT[27] , \counter_0_COUNT[28] , 
        \counter_0_COUNT[29] , \counter_0_COUNT[30] , 
        \counter_0_COUNT[31] , counter_0_WRITEEN, 
        FIFO_TEST_COUNTER_0_FULL, FIFO_TEST_COUNTER_0_EMPTY, 
        \FIFO_TEST_COUNTER_0_Q[0] , \FIFO_TEST_COUNTER_0_Q[1] , 
        \FIFO_TEST_COUNTER_0_Q[2] , \FIFO_TEST_COUNTER_0_Q[3] , 
        \FIFO_TEST_COUNTER_0_Q[4] , \FIFO_TEST_COUNTER_0_Q[5] , 
        \FIFO_TEST_COUNTER_0_Q[6] , \FIFO_TEST_COUNTER_0_Q[7] , 
        \FIFO_TEST_COUNTER_0_Q[8] , \FIFO_TEST_COUNTER_0_Q[9] , 
        \FIFO_TEST_COUNTER_0_Q[10] , \FIFO_TEST_COUNTER_0_Q[11] , 
        \FIFO_TEST_COUNTER_0_Q[12] , \FIFO_TEST_COUNTER_0_Q[13] , 
        \FIFO_TEST_COUNTER_0_Q[14] , \FIFO_TEST_COUNTER_0_Q[15] , 
        \FIFO_TEST_COUNTER_0_Q[16] , \FIFO_TEST_COUNTER_0_Q[17] , 
        \FIFO_TEST_COUNTER_0_Q[18] , \FIFO_TEST_COUNTER_0_Q[19] , 
        \FIFO_TEST_COUNTER_0_Q[20] , \FIFO_TEST_COUNTER_0_Q[21] , 
        \FIFO_TEST_COUNTER_0_Q[22] , \FIFO_TEST_COUNTER_0_Q[23] , 
        \FIFO_TEST_COUNTER_0_Q[24] , \FIFO_TEST_COUNTER_0_Q[25] , 
        \FIFO_TEST_COUNTER_0_Q[26] , \FIFO_TEST_COUNTER_0_Q[27] , 
        \FIFO_TEST_COUNTER_0_Q[28] , \FIFO_TEST_COUNTER_0_Q[29] , 
        \FIFO_TEST_COUNTER_0_Q[30] , \FIFO_TEST_COUNTER_0_Q[31] , 
        \FIFO_PIXEL_0_Q[0] , \FIFO_PIXEL_0_Q[1] , \FIFO_PIXEL_0_Q[2] , 
        \FIFO_PIXEL_0_Q[3] , \FIFO_PIXEL_0_Q[4] , \FIFO_PIXEL_0_Q[5] , 
        \FIFO_PIXEL_0_Q[6] , \FIFO_PIXEL_0_Q[7] , 
        stonyman_0_writeEnable, FIFO_PIXEL_0_FULL, FIFO_PIXEL_0_EMPTY, 
        stonyman_apb3_0_START_CAPTURE, \FIFO_TEST_COUNTER_0.REP , 
        \FIFO_PIXEL_0.REP , \fifo_32bit_apb3_0.ioreg_ready , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] , 
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] , 
        \stonyman_apb3_0.ioreg_ready , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv , 
        \psram_cr_0.cr_int_i0.data_reg[0] , 
        \psram_cr_0.cr_int_i0.active_data , 
        \psram_cr_0.cr_int_i0.data_reg[1] , 
        \psram_cr_0.cr_int_i0.data_reg[2] , 
        \psram_cr_0.cr_int_i0.data_reg[3] , 
        \psram_cr_0.cr_int_i0.data_reg[4] , 
        \psram_cr_0.cr_int_i0.data_reg[5] , 
        \psram_cr_0.cr_int_i0.data_reg[6] , 
        \psram_cr_0.cr_int_i0.data_reg[7] , 
        \psram_cr_0.cr_int_i0.data_reg[8] , 
        \psram_cr_0.cr_int_i0.data_reg[9] , 
        \psram_cr_0.cr_int_i0.data_reg[10] , 
        \psram_cr_0.cr_int_i0.data_reg[11] , 
        \psram_cr_0.cr_int_i0.data_reg[12] , 
        \psram_cr_0.cr_int_i0.data_reg[13] , 
        \psram_cr_0.cr_int_i0.data_reg[14] , 
        \psram_cr_0.cr_int_i0.data_reg[15] , \psram_data_in[0] , 
        \psram_data_in[1] , \psram_data_in[2] , \psram_data_in[3] , 
        \psram_data_in[4] , \psram_data_in[5] , \psram_data_in[6] , 
        \psram_data_in[7] , \psram_data_in[8] , \psram_data_in[9] , 
        \psram_data_in[10] , \psram_data_in[11] , \psram_data_in[12] , 
        \psram_data_in[13] , \psram_data_in[14] , \psram_data_in[15] , 
        CLK50_c, MISO_c, CS_c, Phy_RMII_CLK_c, SCLK_c, 
        TP_adcConvComplete_c, TP_adcStartCapture_c, incp_c, incv_c, 
        inphi_c, \led_c[0] , \led_c[1] , \led_c[2] , \led_c[3] , 
        \led_c[4] , \led_c[5] , \led_c[6] , \led_c[7] , 
        \psram_address_c[0] , \psram_address_c[1] , 
        \psram_address_c[2] , \psram_address_c[3] , 
        \psram_address_c[4] , \psram_address_c[5] , 
        \psram_address_c[6] , \psram_address_c[7] , 
        \psram_address_c[8] , \psram_address_c[9] , 
        \psram_address_c[10] , \psram_address_c[11] , 
        \psram_address_c[12] , \psram_address_c[13] , 
        \psram_address_c[14] , \psram_address_c[15] , 
        \psram_address_c[16] , \psram_address_c[17] , 
        \psram_address_c[18] , \psram_address_c[19] , 
        \psram_address_c[20] , \psram_address_c[21] , 
        \psram_address_c[22] , \psram_address_c[23] , 
        \psram_address_c[24] , psram_ncs0_c_c_c, psram_noe0_c, 
        psram_nwe_c, resp_c, resv_c, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] , N_1292, N_1301, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] , N_10, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[9] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[11] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 , N_56, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] , N_16, N_20, 
        \CoreAHBLite_0_AHBmslave5_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[3] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[0] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[1] , N_14, 
        \CoreAHBLite_0_AHBmslave5_HADDR[9] , 
        CoreAHBLite_0_AHBmslave5_HWRITE, 
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] , N_26, N_50, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll , 
        CoreAHBLite_0_AHBmslave5_HREADY_i_m, 
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] , 
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[10] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[2] , 
        \CoreAHBLite_0_AHBmslave6_HADDR[0] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[2] , N_1298, N_70, N_68, N_66, 
        N_64, N_62, N_60, N_58, N_48, N_1297, N_1296, N_1295, N_1294, 
        N_1293, N_1291, N_1290, N_1289, N_1288, N_24, N_22, N_18, N_12, 
        N_8, N_6, N_4, 
        \stonyman_apb3_0.stonyman_ioreg_0.dataout_6_iv_0_a3_1_0[0] , 
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 , 
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 , 
        COREAHBTOAPB3_0_APBmaster_PSELx_i_0, 
        \stonyman_apb3_0/bus_write_enable , \stonyman_apb3_0/N_109 , 
        \stonyman_apb3_0/bus_read_enable , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0[1]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_40 , 
        \stonyman_apb3_0/stonyman_ioreg_0/ready_5_0_a3_0_0_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_2[0]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_1[0]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_31 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 , 
        \stonyman_apb3_0/stonyman_ioreg_0/ready_5 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_30 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_82 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[0] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_83 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[1] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_84 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[2] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_85 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[3] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_86 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[4] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_87 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[5] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_88 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[6] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_89 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[7] , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_33 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_35 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_100 , 
        \stonyman_apb3_0/stonyman_ioreg_0/N_101 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]_net_1 , 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]_net_1 , 
        \clkgenerator_0/SCLK_i , \clkgenerator_0/SCLK_i_i , 
        \counter_0/N_73 , \counter_0/N_71 , 
        \counter_0/COUNT_RNI07IE2[5]_net_1 , 
        \counter_0/COUNT_n15_0_o3_m6_0_a2_7 , 
        \counter_0/COUNT_RNIKBU1[4]_net_1 , \counter_0/N_516 , 
        \counter_0/COUNT_RNIKOFG8[27]_net_1 , \counter_0/N_69 , 
        \counter_0/COUNT_RNIVUKI7[25]_net_1 , \counter_0/N_67 , 
        \counter_0/N_66 , \counter_0/COUNT_RNINOS56[22]_net_1 , 
        \counter_0/N_64 , \counter_0/COUNT_RNICV185[20]_net_1 , 
        \counter_0/N_62 , \counter_0/COUNT_RNIU97A4[18]_net_1 , 
        \counter_0/N_60 , \counter_0/COUNT_RNIDOCC3[16]_net_1 , 
        \counter_0/N_58 , \counter_0/COUNT_RNI9151[2]_net_1 , 
        \counter_0/COUNT_RNI5IO[1]_net_1 , \counter_0/COUNT_n31 , 
        \counter_0/COUNT_n30 , \counter_0/COUNT_n29 , 
        \counter_0/counterInternal[9]_net_1 , 
        \counter_0/counterInternal_c8 , \counter_0/COUNT8_4 , 
        \counter_0/N_29_15 , \counter_0/N_29_16 , \counter_0/COUNT8_2 , 
        \counter_0/m9_e_0 , \counter_0/counterInternal[19]_net_1 , 
        \counter_0/counterInternal[17]_net_1 , 
        \counter_0/counterInternal[16]_net_1 , 
        \counter_0/counterInternal[18]_net_1 , 
        \counter_0/COUNT_n15_0_o3_m6_0_a2_2 , 
        \counter_0/COUNT_n15_0_o3_m6_0_a2_1 , 
        \counter_0/COUNT_n15_0_o3_m6_0_a2_6 , 
        \counter_0/COUNT_n15_0_o3_m6_0_a2_4 , \counter_0/m9_e_2 , 
        \counter_0/state[1]_net_1 , \counter_0/COUNT8_22_1 , 
        \counter_0/N_32 , \counter_0/counterInternal[6]_net_1 , 
        \counter_0/counterInternal[7]_net_1 , \counter_0/COUNT8_23_4 , 
        \counter_0/COUNT8_23_1 , \counter_0/counterInternal[12]_net_1 , 
        \counter_0/counterInternal[15]_net_1 , \counter_0/COUNT8_23_3 , 
        \counter_0/counterInternal[8]_net_1 , 
        \counter_0/counterInternal[14]_net_1 , \counter_0/COUNT8_23_2 , 
        \counter_0/counterInternal[11]_net_1 , 
        \counter_0/counterInternal[13]_net_1 , 
        \counter_0/counterInternal[10]_net_1 , \counter_0/COUNT8_21_0 , 
        \counter_0/counterInternal[27]_net_1 , 
        \counter_0/counterInternal[26]_net_1 , \counter_0/COUNT8_20_0 , 
        \counter_0/counterInternal[23]_net_1 , 
        \counter_0/counterInternal[22]_net_1 , \counter_0/N_6 , 
        \counter_0/N_8 , \counter_0/N_10 , \counter_0/N_12 , 
        \counter_0/COUNT_RNO_0[4]_net_1 , \counter_0/N_14 , 
        \counter_0/N_16 , \counter_0/COUNT_RNI36O2[6]_net_1 , 
        \counter_0/COUNT_RNO_0[6]_net_1 , 
        \counter_0/COUNT_RNO[7]_net_1 , \counter_0/COUNT_RNO[8]_net_1 , 
        \counter_0/COUNT_RNIC953[7]_net_1 , \counter_0/COUNT8_22 , 
        \counter_0/counterInternal_c3 , 
        \counter_0/counterInternal[21]_net_1 , 
        \counter_0/counterInternal[20]_net_1 , \counter_0/N_18 , 
        \counter_0/COUNT8_25 , \counter_0/COUNT8 , 
        \counter_0/counterInternal[25]_net_1 , 
        \counter_0/counterInternal[24]_net_1 , \counter_0/N_68 , 
        \counter_0/N_29_22 , \counter_0/N_29_19 , 
        \counter_0/counterInternal_RNO[15]_net_1 , \counter_0/N_468 , 
        \counter_0/COUNTe , \counter_0/counterInternal_RNO[14]_net_1 , 
        \counter_0/N_467 , \counter_0/counterInternal_RNO[12]_net_1 , 
        \counter_0/N_27 , \counter_0/counterInternal_RNO[9]_net_1 , 
        \counter_0/N_21 , \counter_0/N_471 , \counter_0/N_23 , 
        \counter_0/N_34 , \counter_0/counterInternal_RNO[17]_net_1 , 
        \counter_0/N_470 , \counter_0/N_444_i , 
        \counter_0/counterInternal_RNO[7]_net_1 , \counter_0/N_443_tz , 
        \counter_0/N_57 , \counter_0/counterInternal_RNO[6]_net_1 , 
        \counter_0/N_441_i , \counter_0/N_441_tz , 
        \counter_0/counterInternal[4]_net_1 , 
        \counter_0/counterInternal[5]_net_1 , 
        \counter_0/counterInternal_RNO[4]_net_1 , \counter_0/N_439_i , 
        \counter_0/counterInternal_c2 , 
        \counter_0/counterInternal[3]_net_1 , \counter_0/N_438_i , 
        \counter_0/N_438_tz , \counter_0/counterInternal[1]_net_1 , 
        \counter_0/counterInternal[0]_net_1 , 
        \counter_0/counterInternal[2]_net_1 , 
        \counter_0/counterInternal_RNO[10]_net_1 , \counter_0/N_36_i , 
        \counter_0/counterInternal_RNO[11]_net_1 , \counter_0/N_26 , 
        \counter_0/counterInternal_RNO[13]_net_1 , \counter_0/N_28 , 
        \counter_0/N_54 , \counter_0/N_494 , \counter_0/N_491 , 
        \counter_0/counterInternal_RNO[26]_net_1 , \counter_0/N_488 , 
        \counter_0/counterInternal_RNO[25]_net_1 , \counter_0/N_485 , 
        \counter_0/counterInternal_RNO[24]_net_1 , \counter_0/N_482 , 
        \counter_0/counterInternal_RNO[23]_net_1 , \counter_0/N_480 , 
        \counter_0/N_39_0 , \counter_0/N_29_0 , \counter_0/N_10_0 , 
        \counter_0/N_70 , \counter_0/N_435 , 
        \counter_0/state[0]_net_1 , \counter_0/N_20 , 
        \counter_0/WRITEEN_RNO_net_1 , \counter_0/N_258 , 
        \counter_0/un1_COUNT8 , \counter_0/state_nss[1] , 
        \counter_0/state_nss[0] , \counter_0/N_517 , 
        \counter_0/counterInternal_n0 , \counter_0/N_32_0 , 
        \counter_0/counterInternal_RNO[20]_net_1 , \counter_0/N_477 , 
        \counter_0/counterInternal_RNO[21]_net_1 , 
        \counter_0/counterInternal_RNO[1]_net_1 , \counter_0/N_56 , 
        \counter_0/COUNT_RNINLNG1[12]_net_1 , 
        \counter_0/COUNT_RNI4DQ11[11]_net_1 , 
        \counter_0/COUNT_RNII4TI[10]_net_1 , 
        \counter_0/COUNT_RNI1SV3[9]_net_1 , 
        \counter_0/COUNT_RNIMGI3[8]_net_1 , \counter_0/COUNT_n28 , 
        \counter_0/COUNT_n27 , \counter_0/COUNT_n26 , 
        \counter_0/COUNT_n25 , \counter_0/COUNT_n24 , 
        \counter_0/COUNT_n23 , \counter_0/COUNT_n22 , 
        \counter_0/COUNT_n21 , \counter_0/COUNT_n20 , 
        \counter_0/COUNT_n19 , \counter_0/COUNT_n18 , 
        \counter_0/COUNT_n17 , \counter_0/COUNT_n16 , 
        \counter_0/COUNT_n15 , \counter_0/COUNT_n14 , 
        \counter_0/COUNT_n13 , \counter_0/COUNT_n12 , 
        \counter_0/COUNT_n11 , \counter_0/COUNT_n10 , 
        \counter_0/COUNT_n9 , \CoreAPB3_0/CAPB3llOI/N_1303 , 
        \CoreAPB3_0/CAPB3llOI/N_1304 , \CoreAPB3_0/CAPB3llOI/N_79 , 
        \CoreAPB3_0/CAPB3llOI/N_80 , \CoreAPB3_0/CAPB3llOI/N_81 , 
        \CoreAPB3_0/CAPB3llOI/N_82 , \CoreAPB3_0/CAPB3llOI/N_83 , 
        \CoreAPB3_0/CAPB3llOI/N_84 , \CoreAPB3_0/CAPB3llOI/N_1302 , 
        \fifo_32bit_apb3_0/bus_read_enable , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3_0_0[1] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_3[0]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_2[0]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_765 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[0] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_766 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[1] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_767 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[2] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_768 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[3] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_769 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[4] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_770 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[5] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_771 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[6] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_772 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[7] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_773 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[8] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_774 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[9] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_775 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[10] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_776 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[11] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_777 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[12] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_779 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[14] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_780 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[15] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_782 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[17] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_783 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[18] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_784 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[19] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_785 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[20] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_786 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[21] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_787 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[22] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_788 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[23] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_790 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[25] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_791 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[26] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_792 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[27] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_793 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[28] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_794 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[29] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_795 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[30] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_71 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_73 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[0]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[1]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[2]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[3]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[4]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[5]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[19]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[20]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[21]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[22]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[23]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[25]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[26]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[27]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[28]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[29]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[30]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[6]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[7]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[8]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[9]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[10]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[11]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[12]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[14]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[15]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[17]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[18]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[31]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_796 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[31] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[13]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_778 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[13] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[16]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_781 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[24]_net_1 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_789 , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[24] , 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[16] , 
        \FIFO_PIXEL_0/MEM_RADDR[11] , \FIFO_PIXEL_0/RBINNXTSHIFT[11] , 
        \FIFO_PIXEL_0/AND2_25_Y , \FIFO_PIXEL_0/AND2_59_Y , 
        \FIFO_PIXEL_0/MX2_1_Y , \FIFO_PIXEL_0/MX2_50_Y , 
        \FIFO_PIXEL_0/MX2_27_Y , \FIFO_PIXEL_0/BUFF_2_Y , 
        \FIFO_PIXEL_0/XNOR2_8_Y , \FIFO_PIXEL_0/MEM_RADDR[7] , 
        \FIFO_PIXEL_0/WBINNXTSHIFT[7] , \FIFO_PIXEL_0/MEM_RADDR[12] , 
        \FIFO_PIXEL_0/MEM_RADDR[1] , \FIFO_PIXEL_0/MEM_RADDR[9] , 
        \FIFO_PIXEL_0/RBINNXTSHIFT[9] , \FIFO_PIXEL_0/XOR2_53_Y , 
        \FIFO_PIXEL_0/AO1_2_Y , \FIFO_PIXEL_0/RBINNXTSHIFT[2] , 
        \FIFO_PIXEL_0/AO1_14_Y , \FIFO_PIXEL_0/XNOR2_14_Y , 
        \FIFO_PIXEL_0/RBINNXTSHIFT[3] , \FIFO_PIXEL_0/MEM_WADDR[3] , 
        \FIFO_PIXEL_0/MEM_RADDR[6] , \FIFO_PIXEL_0/NAND3A_5_Y , 
        \FIFO_PIXEL_0/MEM_WADDR[10] , \FIFO_PIXEL_0/MEM_WADDR[11] , 
        \FIFO_PIXEL_0/MEM_WADDR[9] , \FIFO_PIXEL_0/XOR2_0_Y , 
        \FIFO_PIXEL_0/MEM_WADDR[6] , \FIFO_PIXEL_0/MX2_16_Y , 
        \FIFO_PIXEL_0/MX2_60_Y , \FIFO_PIXEL_0/MX2_77_Y , 
        \FIFO_PIXEL_0/BUFF_7_Y , \FIFO_PIXEL_0/OR2_12_Y , 
        \FIFO_PIXEL_0/NAND3_1_Y , \FIFO_PIXEL_0/MEMRENEG , 
        \FIFO_PIXEL_0/WBINNXTSHIFT[1] , \FIFO_PIXEL_0/AND2_27_Y , 
        \FIFO_PIXEL_0/MX2_94_Y , \FIFO_PIXEL_0/RAM4K9_1_DOUTB1 , 
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB1 , \FIFO_PIXEL_0/BUFF_6_Y , 
        \FIFO_PIXEL_0/AND3_4_Y , \FIFO_PIXEL_0/XNOR2_15_Y , 
        \FIFO_PIXEL_0/XNOR2_2_Y , \FIFO_PIXEL_0/WBINNXTSHIFT[11] , 
        \FIFO_PIXEL_0/NAND3A_4_Y , \FIFO_PIXEL_0/MEM_RADDR[10] , 
        \FIFO_PIXEL_0/RBINNXTSHIFT[10] , \FIFO_PIXEL_0/XNOR2_17_Y , 
        \FIFO_PIXEL_0/MEM_RADDR[0] , \FIFO_PIXEL_0/RBINNXTSHIFT[0] , 
        \FIFO_PIXEL_0/MX2_18_Y , \FIFO_PIXEL_0/MX2_44_Y , 
        \FIFO_PIXEL_0/MX2_67_Y , \FIFO_PIXEL_0/MEM_WADDR[5] , 
        \FIFO_PIXEL_0/WBINNXTSHIFT[5] , \FIFO_PIXEL_0/MX2_47_Y , 
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB6 , \FIFO_PIXEL_0/RAM4K9_3_DOUTB6 , 
        \FIFO_PIXEL_0/BUFF_3_Y , \FIFO_PIXEL_0/AND3_7_Y , 
        \FIFO_PIXEL_0/XNOR2_12_Y , \FIFO_PIXEL_0/XNOR2_7_Y , 
        \FIFO_PIXEL_0/XNOR2_13_Y , \FIFO_PIXEL_0/MX2_101_Y , 
        \FIFO_PIXEL_0/MX2_23_Y , \FIFO_PIXEL_0/MX2_43_Y , 
        \FIFO_PIXEL_0/XOR2_9_Y , \FIFO_PIXEL_0/MEM_RADDR[8] , 
        \FIFO_PIXEL_0/NAND3B_0_Y , \FIFO_PIXEL_0/RBINNXTSHIFT[1] , 
        \FIFO_PIXEL_0/AND2_61_Y , \FIFO_PIXEL_0/MEM_WADDR[1] , 
        \FIFO_PIXEL_0/MX2_39_Y , \FIFO_PIXEL_0/MX2_37_Y , 
        \FIFO_PIXEL_0/MX2_53_Y , \FIFO_PIXEL_0/AND2_56_Y , 
        \FIFO_PIXEL_0/AND2_48_Y , \FIFO_PIXEL_0/NAND3B_5_Y , 
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB0 , \FIFO_PIXEL_0/RAM4K9_1_DOUTB2 , 
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB3 , \FIFO_PIXEL_0/RAM4K9_1_DOUTB4 , 
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB5 , \FIFO_PIXEL_0/RAM4K9_1_DOUTB6 , 
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB7 , \FIFO_PIXEL_0/MEM_WADDR[0] , 
        \FIFO_PIXEL_0/MEM_WADDR[2] , \FIFO_PIXEL_0/MEM_WADDR[4] , 
        \FIFO_PIXEL_0/MEM_WADDR[7] , \FIFO_PIXEL_0/MEM_WADDR[8] , 
        \FIFO_PIXEL_0/MEM_RADDR[2] , \FIFO_PIXEL_0/MEM_RADDR[3] , 
        \FIFO_PIXEL_0/MEM_RADDR[4] , \FIFO_PIXEL_0/MEM_RADDR[5] , 
        \FIFO_PIXEL_0/OR2_14_Y , \FIFO_PIXEL_0/OR2_0_Y , 
        \FIFO_PIXEL_0/XOR2_19_Y , \FIFO_PIXEL_0/AO1_5_Y , 
        \FIFO_PIXEL_0/QXI[4] , \FIFO_PIXEL_0/MX2_78_Y , 
        \FIFO_PIXEL_0/MX2_14_Y , \FIFO_PIXEL_0/DFN1E1C0_2_Q , 
        \FIFO_PIXEL_0/MX2_12_Y , \FIFO_PIXEL_0/MX2_10_Y , 
        \FIFO_PIXEL_0/MX2_35_Y , \FIFO_PIXEL_0/MX2_64_Y , 
        \FIFO_PIXEL_0/MX2_31_Y , \FIFO_PIXEL_0/MX2_48_Y , 
        \FIFO_PIXEL_0/AND2_8_Y , \FIFO_PIXEL_0/RAM4K9_4_DOUTB2 , 
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB2 , \FIFO_PIXEL_0/RAM4K9_2_DOUTB0 , 
        \FIFO_PIXEL_0/XNOR2_16_Y , \FIFO_PIXEL_0/RBINNXTSHIFT[8] , 
        \FIFO_PIXEL_0/MX2_79_Y , \FIFO_PIXEL_0/RAM4K9_0_DOUTB1 , 
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB1 , \FIFO_PIXEL_0/AO1_25_Y , 
        \FIFO_PIXEL_0/XNOR2_5_Y , \FIFO_PIXEL_0/QXI[2] , 
        \FIFO_PIXEL_0/DVLDI , \FIFO_PIXEL_0/XOR2_50_Y , 
        \FIFO_PIXEL_0/NAND3B_2_Y , \FIFO_PIXEL_0/NAND3_0_Y , 
        \FIFO_PIXEL_0/FULLINT , \FIFO_PIXEL_0/AND3_1_Y , 
        \FIFO_PIXEL_0/OR2A_14_Y , \FIFO_PIXEL_0/NAND3B_1_Y , 
        \FIFO_PIXEL_0/XOR2_62_Y , \FIFO_PIXEL_0/RBINNXTSHIFT[12] , 
        \FIFO_PIXEL_0/NAND3C_0_Y , \FIFO_PIXEL_0/XOR2_14_Y , 
        \FIFO_PIXEL_0/MEM_WADDR[12] , \FIFO_PIXEL_0/NAND3B_4_Y , 
        \FIFO_PIXEL_0/AND2_31_Y , \FIFO_PIXEL_0/WBINNXTSHIFT[10] , 
        \FIFO_PIXEL_0/AO1_12_Y , \FIFO_PIXEL_0/AO1_16_Y , 
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB7 , \FIFO_PIXEL_0/RAM4K9_5_DOUTB7 , 
        \FIFO_PIXEL_0/WBINNXTSHIFT[6] , \FIFO_PIXEL_0/AND2_43_Y , 
        \FIFO_PIXEL_0/XOR2_16_Y , \FIFO_PIXEL_0/XOR2_60_Y , 
        \FIFO_PIXEL_0/DFN1E1C0_0_Q , \FIFO_PIXEL_0/AND2_17_Y , 
        \FIFO_PIXEL_0/XNOR2_4_Y , \FIFO_PIXEL_0/AO1_18_Y , 
        \FIFO_PIXEL_0/RBINNXTSHIFT[7] , \FIFO_PIXEL_0/RAM4K9_5_DOUTB0 , 
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB1 , \FIFO_PIXEL_0/RAM4K9_5_DOUTB2 , 
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB3 , \FIFO_PIXEL_0/RAM4K9_5_DOUTB4 , 
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB5 , \FIFO_PIXEL_0/RAM4K9_5_DOUTB6 , 
        \FIFO_PIXEL_0/OR2_1_Y , \FIFO_PIXEL_0/OR2_2_Y , 
        \FIFO_PIXEL_0/QXI[3] , \FIFO_PIXEL_0/EMPTYINT , 
        \FIFO_PIXEL_0/MX2_15_Y , \FIFO_PIXEL_0/RAM4K9_4_DOUTB5 , 
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB5 , \FIFO_PIXEL_0/BUFF_5_Y , 
        \FIFO_PIXEL_0/XNOR2_24_Y , \FIFO_PIXEL_0/RBINNXTSHIFT[4] , 
        \FIFO_PIXEL_0/MX2_42_Y , \FIFO_PIXEL_0/MX2_62_Y , 
        \FIFO_PIXEL_0/MX2_25_Y , \FIFO_PIXEL_0/AO1_9_Y , 
        \FIFO_PIXEL_0/OR2_3_Y , \FIFO_PIXEL_0/MEMWENEG , 
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB1 , \FIFO_PIXEL_0/RAM4K9_6_DOUTB1 , 
        \FIFO_PIXEL_0/RBINNXTSHIFT[5] , \FIFO_PIXEL_0/AND3_9_Y , 
        \FIFO_PIXEL_0/XNOR2_18_Y , \FIFO_PIXEL_0/XNOR2_20_Y , 
        \FIFO_PIXEL_0/AO1_1_Y , \FIFO_PIXEL_0/AND2A_0_Y , 
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB5 , \FIFO_PIXEL_0/DFN1E1C0_1_Q , 
        \FIFO_PIXEL_0/OR2A_1_Y , \FIFO_PIXEL_0/WBINNXTSHIFT[12] , 
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB0 , \FIFO_PIXEL_0/RAM4K9_6_DOUTB0 , 
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB3 , \FIFO_PIXEL_0/RAM4K9_6_DOUTB4 , 
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB6 , \FIFO_PIXEL_0/RAM4K9_6_DOUTB7 , 
        \FIFO_PIXEL_0/OR2_7_Y , \FIFO_PIXEL_0/OR2_10_Y , 
        \FIFO_PIXEL_0/MEMORYWE , \FIFO_PIXEL_0/NAND3A_2_Y , 
        \FIFO_PIXEL_0/XNOR2_10_Y , \FIFO_PIXEL_0/OR2_13_Y , 
        \FIFO_PIXEL_0/MX2_92_Y , \FIFO_PIXEL_0/MX2_30_Y , 
        \FIFO_PIXEL_0/NAND3A_1_Y , \FIFO_PIXEL_0/MX2_7_Y , 
        \FIFO_PIXEL_0/MX2_52_Y , \FIFO_PIXEL_0/MX2_36_Y , 
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB4 , \FIFO_PIXEL_0/MX2_63_Y , 
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB4 , \FIFO_PIXEL_0/RAM4K9_3_DOUTB4 , 
        \FIFO_PIXEL_0/QXI[5] , \FIFO_PIXEL_0/AND3_2_Y , 
        \FIFO_PIXEL_0/AND3_5_Y , \FIFO_PIXEL_0/AND3_3_Y , 
        \FIFO_PIXEL_0/AO1_6_Y , \FIFO_PIXEL_0/OR2_5_Y , 
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB2 , \FIFO_PIXEL_0/QXI[7] , 
        \FIFO_PIXEL_0/MX2_89_Y , \FIFO_PIXEL_0/RAM4K9_0_DOUTB2 , 
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB2 , \FIFO_PIXEL_0/MX2_57_Y , 
        \FIFO_PIXEL_0/MX2_87_Y , \FIFO_PIXEL_0/NAND3B_3_Y , 
        \FIFO_PIXEL_0/NAND3A_3_Y , \FIFO_PIXEL_0/MX2_2_Y , 
        \FIFO_PIXEL_0/MX2_95_Y , \FIFO_PIXEL_0/XNOR2_3_Y , 
        \FIFO_PIXEL_0/WBINNXTSHIFT[9] , \FIFO_PIXEL_0/WBINNXTSHIFT[3] , 
        \FIFO_PIXEL_0/MEMORYRE , \FIFO_PIXEL_0/WBINNXTSHIFT[2] , 
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB0 , \FIFO_PIXEL_0/RAM4K9_3_DOUTB0 , 
        \FIFO_PIXEL_0/MX2_72_Y , \FIFO_PIXEL_0/RAM4K9_4_DOUTB3 , 
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB7 , \FIFO_PIXEL_0/RAM4K9_3_DOUTB7 , 
        \FIFO_PIXEL_0/XNOR2_1_Y , \FIFO_PIXEL_0/WBINNXTSHIFT[0] , 
        \FIFO_PIXEL_0/XOR2_10_Y , \FIFO_PIXEL_0/RAM4K9_0_DOUTB3 , 
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB3 , \FIFO_PIXEL_0/MX2_26_Y , 
        \FIFO_PIXEL_0/MX2_61_Y , \FIFO_PIXEL_0/RBINNXTSHIFT[6] , 
        \FIFO_PIXEL_0/MX2_41_Y , \FIFO_PIXEL_0/RAM4K9_7_DOUTB6 , 
        \FIFO_PIXEL_0/QXI[0] , \FIFO_PIXEL_0/QXI[1] , 
        \FIFO_PIXEL_0/MX2_90_Y , \FIFO_PIXEL_0/AND2_19_Y , 
        \FIFO_PIXEL_0/XNOR2_21_Y , \FIFO_PIXEL_0/RAM4K9_7_DOUTB4 , 
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB2 , \FIFO_PIXEL_0/OR2A_7_Y , 
        \FIFO_PIXEL_0/OR2_6_Y , \FIFO_PIXEL_0/AND3_8_Y , 
        \FIFO_PIXEL_0/AND3_6_Y , \FIFO_PIXEL_0/XNOR2_6_Y , 
        \FIFO_PIXEL_0/WBINNXTSHIFT[4] , \FIFO_PIXEL_0/NAND3C_1_Y , 
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB7 , \FIFO_PIXEL_0/RAM4K9_4_DOUTB0 , 
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB4 , \FIFO_PIXEL_0/RAM4K9_4_DOUTB6 , 
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB7 , \FIFO_PIXEL_0/OR2_4_Y , 
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB5 , \FIFO_PIXEL_0/RAM4K9_3_DOUTB5 , 
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB1 , \FIFO_PIXEL_0/NAND3A_0_Y , 
        \FIFO_PIXEL_0/QXI[6] , \FIFO_PIXEL_0/WBINNXTSHIFT[8] , 
        \FIFO_PIXEL_0/XNOR2_0_Y , \FIFO_PIXEL_0/AND2_65_Y , 
        \FIFO_PIXEL_0/XNOR2_19_Y , \FIFO_PIXEL_0/RAM4K9_2_DOUTB3 , 
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB6 , \FIFO_PIXEL_0/OR2_9_Y , 
        \FIFO_PIXEL_0/AND3_0_Y , \FIFO_PIXEL_0/XNOR2_9_Y , 
        \FIFO_PIXEL_0/MX2_82_Y , \FIFO_PIXEL_0/MX2_58_Y , 
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB3 , \FIFO_PIXEL_0/OR2_8_Y , 
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB5 , \FIFO_PIXEL_0/OR2_11_Y , 
        \FIFO_PIXEL_0/OR2_15_Y , \FIFO_TEST_COUNTER_0/MEM_WADDR[1] , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] , 
        \FIFO_TEST_COUNTER_0/XNOR2_8_Y , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[6] , 
        \FIFO_TEST_COUNTER_0/QXI[29] , \FIFO_TEST_COUNTER_0/DVLDI , 
        \FIFO_TEST_COUNTER_0/XNOR2_14_Y , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[4] , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[2] , 
        \FIFO_TEST_COUNTER_0/AO1_8_Y , \FIFO_TEST_COUNTER_0/XOR2_9_Y , 
        \FIFO_TEST_COUNTER_0/XOR2_41_Y , 
        \FIFO_TEST_COUNTER_0/AO1_10_Y , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[1] , 
        \FIFO_TEST_COUNTER_0/AND2_18_Y , 
        \FIFO_TEST_COUNTER_0/AND3_4_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_5_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_3_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_6_Y , \FIFO_TEST_COUNTER_0/QXI[8] , 
        \FIFO_TEST_COUNTER_0/QXI[22] , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[0] , 
        \FIFO_TEST_COUNTER_0/AO1_17_Y , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[5] , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] , 
        \FIFO_TEST_COUNTER_0/QXI[14] , \FIFO_TEST_COUNTER_0/QXI[15] , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[1] , 
        \FIFO_TEST_COUNTER_0/AND2_36_Y , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] , 
        \FIFO_TEST_COUNTER_0/QXI[20] , \FIFO_TEST_COUNTER_0/QXI[2] , 
        \FIFO_TEST_COUNTER_0/FULLINT , \FIFO_TEST_COUNTER_0/AND3_0_Y , 
        \FIFO_TEST_COUNTER_0/QXI[21] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[7] , 
        \FIFO_TEST_COUNTER_0/AO1_18_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_7_Y , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[3] , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] , 
        \FIFO_TEST_COUNTER_0/XNOR2_12_Y , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[2] , 
        \FIFO_TEST_COUNTER_0/QXI[13] , \FIFO_TEST_COUNTER_0/AO1_13_Y , 
        \FIFO_TEST_COUNTER_0/XOR2_6_Y , \FIFO_TEST_COUNTER_0/QXI[17] , 
        \FIFO_TEST_COUNTER_0/XOR2_7_Y , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[7] , 
        \FIFO_TEST_COUNTER_0/QXI[3] , \FIFO_TEST_COUNTER_0/EMPTYINT , 
        \FIFO_TEST_COUNTER_0/AO1_1_Y , \FIFO_TEST_COUNTER_0/QXI[19] , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[5] , 
        \FIFO_TEST_COUNTER_0/AND2A_0_Y , 
        \FIFO_TEST_COUNTER_0/MEMORYRE , \FIFO_TEST_COUNTER_0/QXI[26] , 
        \FIFO_TEST_COUNTER_0/MEMORYWE , \FIFO_TEST_COUNTER_0/QXI[12] , 
        \FIFO_TEST_COUNTER_0/XNOR2_10_Y , 
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[6] , 
        \FIFO_TEST_COUNTER_0/QXI[5] , \FIFO_TEST_COUNTER_0/QXI[9] , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] , 
        \FIFO_TEST_COUNTER_0/AND3_2_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_1_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_9_Y , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] , 
        \FIFO_TEST_COUNTER_0/QXI[10] , \FIFO_TEST_COUNTER_0/QXI[11] , 
        \FIFO_TEST_COUNTER_0/QXI[30] , \FIFO_TEST_COUNTER_0/QXI[28] , 
        \FIFO_TEST_COUNTER_0/MEM_RADDR[7] , 
        \FIFO_TEST_COUNTER_0/QXI[31] , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[3] , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[0] , 
        \FIFO_TEST_COUNTER_0/QXI[16] , \FIFO_TEST_COUNTER_0/QXI[0] , 
        \FIFO_TEST_COUNTER_0/XNOR2_4_Y , 
        \FIFO_TEST_COUNTER_0/AND3_5_Y , \FIFO_TEST_COUNTER_0/AND3_3_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_11_Y , 
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[4] , 
        \FIFO_TEST_COUNTER_0/QXI[1] , \FIFO_TEST_COUNTER_0/QXI[4] , 
        \FIFO_TEST_COUNTER_0/QXI[6] , \FIFO_TEST_COUNTER_0/QXI[7] , 
        \FIFO_TEST_COUNTER_0/MEMRENEG , \FIFO_TEST_COUNTER_0/MEMWENEG , 
        \FIFO_TEST_COUNTER_0/MEM_WADDR[7] , 
        \FIFO_TEST_COUNTER_0/QXI[18] , \FIFO_TEST_COUNTER_0/XNOR2_0_Y , 
        \FIFO_TEST_COUNTER_0/AND3_1_Y , 
        \FIFO_TEST_COUNTER_0/XNOR2_2_Y , \FIFO_TEST_COUNTER_0/QXI[24] , 
        \FIFO_TEST_COUNTER_0/QXI[25] , \FIFO_TEST_COUNTER_0/QXI[23] , 
        \FIFO_TEST_COUNTER_0/QXI[27] , \psram_cr_0/data_from_cr[0] , 
        \psram_cr_0/data_from_cr[1] , \psram_cr_0/data_from_cr[2] , 
        \psram_cr_0/data_from_cr[3] , \psram_cr_0/data_from_cr[4] , 
        \psram_cr_0/data_from_cr[5] , \psram_cr_0/data_from_cr[6] , 
        \psram_cr_0/data_from_cr[7] , \psram_cr_0/data_from_cr[8] , 
        \psram_cr_0/data_from_cr[9] , \psram_cr_0/data_from_cr[10] , 
        \psram_cr_0/data_from_cr[11] , \psram_cr_0/data_from_cr[12] , 
        \psram_cr_0/data_from_cr[13] , \psram_cr_0/data_from_cr[14] , 
        \psram_cr_0/data_from_cr[15] , \psram_cr_0/max_addr[3] , 
        \psram_cr_0/max_addr[24] , \psram_cr_0/max_addr[22] , 
        \psram_cr_0/max_addr[16] , \psram_cr_0/max_addr[12] , 
        \psram_cr_0/max_addr[23] , \psram_cr_0/max_addr[21] , 
        \psram_cr_0/max_addr[20] , \psram_cr_0/max_addr[19] , 
        \psram_cr_0/max_addr[18] , \psram_cr_0/max_addr[17] , 
        \psram_cr_0/max_addr[15] , \psram_cr_0/max_addr[14] , 
        \psram_cr_0/max_addr[13] , \psram_cr_0/max_addr[11] , 
        \psram_cr_0/max_addr[10] , \psram_cr_0/max_addr[9] , 
        \psram_cr_0/max_addr[8] , \psram_cr_0/max_addr[7] , 
        \psram_cr_0/max_addr[6] , \psram_cr_0/max_addr[5] , 
        \psram_cr_0/max_addr[4] , \psram_cr_0/max_addr[2] , 
        \psram_cr_0/max_addr[1] , \psram_cr_0/max_addr[0] , 
        \psram_cr_0/reg_addr[0] , \psram_cr_0/reg_addr[1] , 
        \psram_cr_0/reg_addr[2] , \psram_cr_0/reg_addr[3] , 
        \psram_cr_0/reg_addr[4] , \psram_cr_0/reg_addr[5] , 
        \psram_cr_0/reg_addr[6] , \psram_cr_0/reg_addr[7] , 
        \psram_cr_0/reg_addr[8] , \psram_cr_0/reg_addr[9] , 
        \psram_cr_0/reg_addr[10] , \psram_cr_0/reg_addr[11] , 
        \psram_cr_0/reg_addr[12] , \psram_cr_0/reg_addr[13] , 
        \psram_cr_0/reg_addr[14] , \psram_cr_0/reg_addr[15] , 
        \psram_cr_0/data_to_cr[0] , \psram_cr_0/data_to_cr[1] , 
        \psram_cr_0/data_to_cr[2] , \psram_cr_0/data_to_cr[3] , 
        \psram_cr_0/data_to_cr[4] , \psram_cr_0/data_to_cr[5] , 
        \psram_cr_0/data_to_cr[6] , \psram_cr_0/data_to_cr[7] , 
        \psram_cr_0/data_to_cr[8] , \psram_cr_0/data_to_cr[9] , 
        \psram_cr_0/data_to_cr[10] , \psram_cr_0/data_to_cr[11] , 
        \psram_cr_0/data_to_cr[12] , \psram_cr_0/data_to_cr[13] , 
        \psram_cr_0/data_to_cr[14] , \psram_cr_0/data_to_cr[15] , 
        \psram_cr_0/dt_rw , \psram_cr_0/dt_req , \psram_cr_0/dt_ack , 
        \psram_cr_0/start_0_0 , \psram_cr_0/cr_int_i0/N_108 , 
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_115 , 
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter_n3_i_0_net_1 , 
        \psram_cr_0/cr_int_i0/N_68 , \psram_cr_0/cr_int_i0/N_107 , 
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 , 
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_87 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_0 , 
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_65 , 
        \psram_cr_0/cr_int_i0/ac_countere , 
        \psram_cr_0/cr_int_i0/N_63 , \psram_cr_0/cr_int_i0/N_106 , 
        \psram_cr_0/cr_int_i0/N_93 , \psram_cr_0/cr_int_i0/N_77 , 
        \psram_cr_0/cr_int_i0/N_20 , \psram_cr_0/cr_int_i0/N_98 , 
        \psram_cr_0/cr_int_i0/N_97 , \psram_cr_0/cr_int_i0/N_96 , 
        \psram_cr_0/cr_int_i0/N_76 , \psram_cr_0/cr_int_i0/N_72 , 
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_56 , \psram_cr_0/cr_int_i0/N_69 , 
        \psram_cr_0/cr_int_i0/un1_clr_i_1 , 
        \psram_cr_0/cr_int_i0/N_54 , 
        \psram_cr_0/cr_int_i0/start_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/start_0_net_1 , 
        \psram_cr_0/cr_int_i0/start_1_net_1 , 
        \psram_cr_0/cr_int_i0/N_231 , 
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa , 
        \psram_cr_0/cr_int_i0/N_232 , \psram_cr_0/cr_int_i0/N_233 , 
        \psram_cr_0/cr_int_i0/N_235 , \psram_cr_0/cr_int_i0/N_236 , 
        \psram_cr_0/cr_int_i0/N_237 , \psram_cr_0/cr_int_i0/N_238 , 
        \psram_cr_0/cr_int_i0/N_239 , \psram_cr_0/cr_int_i0/N_240 , 
        \psram_cr_0/cr_int_i0/N_243 , \psram_cr_0/cr_int_i0/N_245 , 
        \psram_cr_0/cr_int_i0/N_248 , 
        \psram_cr_0/cr_int_i0/address_5[0] , 
        \psram_cr_0/cr_int_i0/un1_op_counter_1 , 
        \psram_cr_0/cr_int_i0/N_249 , 
        \psram_cr_0/cr_int_i0/address_5[1] , 
        \psram_cr_0/cr_int_i0/N_250 , 
        \psram_cr_0/cr_int_i0/address_5[2] , 
        \psram_cr_0/cr_int_i0/N_252 , 
        \psram_cr_0/cr_int_i0/address_5[4] , 
        \psram_cr_0/cr_int_i0/N_253 , 
        \psram_cr_0/cr_int_i0/address_5[5] , 
        \psram_cr_0/cr_int_i0/N_254 , 
        \psram_cr_0/cr_int_i0/address_5[6] , 
        \psram_cr_0/cr_int_i0/N_255 , 
        \psram_cr_0/cr_int_i0/address_5[7] , 
        \psram_cr_0/cr_int_i0/N_256 , 
        \psram_cr_0/cr_int_i0/address_5[8] , 
        \psram_cr_0/cr_int_i0/N_257 , 
        \psram_cr_0/cr_int_i0/address_5[9] , 
        \psram_cr_0/cr_int_i0/N_260 , 
        \psram_cr_0/cr_int_i0/address_5[12] , 
        \psram_cr_0/cr_int_i0/N_261 , 
        \psram_cr_0/cr_int_i0/address_5[13] , 
        \psram_cr_0/cr_int_i0/N_263 , 
        \psram_cr_0/cr_int_i0/address_5[15] , 
        \psram_cr_0/cr_int_i0/N_264 , 
        \psram_cr_0/cr_int_i0/address_5[16] , 
        \psram_cr_0/cr_int_i0/N_266 , 
        \psram_cr_0/cr_int_i0/address_5[18] , 
        \psram_cr_0/cr_int_i0/N_267 , 
        \psram_cr_0/cr_int_i0/address_5[19] , 
        \psram_cr_0/cr_int_i0/N_268 , 
        \psram_cr_0/cr_int_i0/address_5[20] , 
        \psram_cr_0/cr_int_i0/N_269 , 
        \psram_cr_0/cr_int_i0/address_5[21] , 
        \psram_cr_0/cr_int_i0/N_270 , 
        \psram_cr_0/cr_int_i0/address_5[22] , 
        \psram_cr_0/cr_int_i0/N_271 , 
        \psram_cr_0/cr_int_i0/address_5[23] , 
        \psram_cr_0/cr_int_i0/N_272 , 
        \psram_cr_0/cr_int_i0/address_5[24] , 
        \psram_cr_0/cr_int_i0/N_221 , 
        \psram_cr_0/cr_int_i0/data_reg_6[10] , 
        \psram_cr_0/cr_int_i0/N_348 , \psram_cr_0/cr_int_i0/N_222 , 
        \psram_cr_0/cr_int_i0/data_reg_6[11] , 
        \psram_cr_0/cr_int_i0/N_223 , 
        \psram_cr_0/cr_int_i0/data_reg_6[12] , 
        \psram_cr_0/cr_int_i0/N_226 , 
        \psram_cr_0/cr_int_i0/data_reg_6[15] , 
        \psram_cr_0/cr_int_i0/N_40 , \psram_cr_0/cr_int_i0/N_42 , 
        \psram_cr_0/cr_int_i0/N_44 , \psram_cr_0/cr_int_i0/N_50 , 
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 , 
        \psram_cr_0/cr_int_i0/enable_net_1 , 
        \psram_cr_0/cr_int_i0/N_171 , 
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa , 
        \psram_cr_0/cr_int_i0/N_168 , \psram_cr_0/cr_int_i0/N_166 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_234 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 , 
        \psram_cr_0/cr_int_i0/N_246 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 , 
        \psram_cr_0/cr_int_i0/N_244 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 , 
        \psram_cr_0/cr_int_i0/N_241 , \psram_cr_0/cr_int_i0/N_227 , 
        \psram_cr_0/cr_int_i0/nwe_5 , \psram_cr_0/cr_int_i0/N_347 , 
        \psram_cr_0/cr_int_i0/N_229 , \psram_cr_0/cr_int_i0/noe0_5 , 
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_110 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 , 
        \psram_cr_0/cr_int_i0/N_100 , \psram_cr_0/cr_int_i0/N_101 , 
        \psram_cr_0/cr_int_i0/N_111 , \psram_cr_0/cr_int_i0/N_67 , 
        \psram_cr_0/cr_int_i0/un1_op_counter18 , 
        \psram_cr_0/cr_int_i0/N_102 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_22 , \psram_cr_0/cr_int_i0/N_58 , 
        \psram_cr_0/cr_int_i0/N_82 , 
        \psram_cr_0/cr_int_i0/address_5[10] , 
        \psram_cr_0/cr_int_i0/address_5[14] , 
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 , 
        \psram_cr_0/cr_int_i0/N_262 , 
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 , 
        \psram_cr_0/cr_int_i0/N_258 , 
        \psram_cr_0/cr_int_i0/start_net_1 , 
        \psram_cr_0/cr_int_i0/N_224 , 
        \psram_cr_0/cr_int_i0/data_reg_6[13] , 
        \psram_cr_0/cr_int_i0/N_46 , \psram_cr_0/cr_int_i0/N_169 , 
        \psram_cr_0/cr_int_i0/N_211 , 
        \psram_cr_0/cr_int_i0/data_reg_6[0] , 
        \psram_cr_0/cr_int_i0/N_156 , \psram_cr_0/cr_int_i0/N_167 , 
        \psram_cr_0/cr_int_i0/data_reg_6[9] , 
        \psram_cr_0/cr_int_i0/N_165 , 
        \psram_cr_0/cr_int_i0/data_reg_6[14] , 
        \psram_cr_0/cr_int_i0/N_170 , 
        \psram_cr_0/cr_int_i0/data_reg_6[8] , 
        \psram_cr_0/cr_int_i0/N_164 , 
        \psram_cr_0/cr_int_i0/data_reg_6[7] , 
        \psram_cr_0/cr_int_i0/N_163 , 
        \psram_cr_0/cr_int_i0/data_reg_6[2] , 
        \psram_cr_0/cr_int_i0/N_158 , 
        \psram_cr_0/cr_int_i0/data_reg_6[1] , 
        \psram_cr_0/cr_int_i0/N_157 , 
        \psram_cr_0/cr_int_i0/address_5[11] , 
        \psram_cr_0/cr_int_i0/data_reg_6[6] , 
        \psram_cr_0/cr_int_i0/N_162 , 
        \psram_cr_0/cr_int_i0/data_reg_6[5] , 
        \psram_cr_0/cr_int_i0/N_161 , 
        \psram_cr_0/cr_int_i0/data_reg_6[4] , 
        \psram_cr_0/cr_int_i0/N_160 , 
        \psram_cr_0/cr_int_i0/data_reg_6[3] , 
        \psram_cr_0/cr_int_i0/N_159 , 
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 , 
        \psram_cr_0/cr_int_i0/N_259 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 , 
        \psram_cr_0/cr_int_i0/N_215 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_214 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_213 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 , 
        \psram_cr_0/cr_int_i0/N_212 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 , 
        \psram_cr_0/cr_int_i0/N_242 , \psram_cr_0/cr_int_i0/N_48 , 
        \psram_cr_0/cr_int_i0/N_225 , \psram_cr_0/cr_int_i0/N_38 , 
        \psram_cr_0/cr_int_i0/N_220 , \psram_cr_0/cr_int_i0/N_36 , 
        \psram_cr_0/cr_int_i0/N_219 , \psram_cr_0/cr_int_i0/N_34 , 
        \psram_cr_0/cr_int_i0/N_218 , \psram_cr_0/cr_int_i0/N_32 , 
        \psram_cr_0/cr_int_i0/N_217 , \psram_cr_0/cr_int_i0/N_30 , 
        \psram_cr_0/cr_int_i0/N_216 , \psram_cr_0/cr_int_i0/N_230 , 
        \psram_cr_0/cr_int_i0/N_99 , 
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter_n0 , 
        \psram_cr_0/cr_int_i0/N_61 , 
        \psram_cr_0/cr_int_i0/address_5[3] , 
        \psram_cr_0/cr_int_i0/address_5[17] , 
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 , 
        \psram_cr_0/cr_int_i0/N_265 , 
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_251 , 
        \psram_cr_0/ahb0/un1_haddr_reg_9 , \psram_cr_0/ahb0/N_95 , 
        \psram_cr_0/ahb0/un1_haddr_reg_8 , 
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 , \psram_cr_0/ahb0/N_85 , 
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 , 
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1_net_1 , 
        \psram_cr_0/ahb0/N_97 , \psram_cr_0/ahb0/haddr_reg[4]_net_1 , 
        \psram_cr_0/ahb0/un1_haddr_reg_5 , \psram_cr_0/ahb0/N_84 , 
        \psram_cr_0/ahb0/hwrite_reg4_3 , 
        \psram_cr_0/ahb0/hwrite_reg4_2 , 
        \psram_cr_0/ahb0/hwrite_reg4_0 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] , 
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa , 
        \psram_cr_0/ahb0/operation_m[0] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] , 
        \psram_cr_0/ahb0/data_out_m[0] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] , 
        \psram_cr_0/ahb0/operation_m[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] , 
        \psram_cr_0/ahb0/data_out[13]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa , \psram_cr_0/ahb0/N_111 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] , 
        \psram_cr_0/ahb0/operation_m[2] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] , 
        \psram_cr_0/ahb0/data_out[2]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] , 
        \psram_cr_0/ahb0/operation_m[14] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] , 
        \psram_cr_0/ahb0/data_out[14]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] , 
        \psram_cr_0/ahb0/operation_m[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] , 
        \psram_cr_0/ahb0/un1_haddr_reg_6 , 
        \psram_cr_0/ahb0/data_out_m[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[12] , 
        \psram_cr_0/ahb0/operation_m[12] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[12] , 
        \psram_cr_0/ahb0/data_out[12]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] , 
        \psram_cr_0/ahb0/operation_m[9] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] , 
        \psram_cr_0/ahb0/data_out[9]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] , 
        \psram_cr_0/ahb0/operation_m[5] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] , 
        \psram_cr_0/ahb0/data_out[5]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] , 
        \psram_cr_0/ahb0/operation_m[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] , 
        \psram_cr_0/ahb0/data_out[1]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] , 
        \psram_cr_0/ahb0/operation_m[8] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] , 
        \psram_cr_0/ahb0/data_out[8]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] , 
        \psram_cr_0/ahb0/operation_m[4] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] , 
        \psram_cr_0/ahb0/data_out[4]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[6] , 
        \psram_cr_0/ahb0/operation_m[6] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[6] , 
        \psram_cr_0/ahb0/data_out[6]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] , 
        \psram_cr_0/ahb0/operation_m[15] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] , 
        \psram_cr_0/ahb0/data_out_m[15] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] , 
        \psram_cr_0/ahb0/operation_m[10] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] , 
        \psram_cr_0/ahb0/data_out[10]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] , 
        \psram_cr_0/ahb0/N_69 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[3] , 
        \psram_cr_0/ahb0/N_73 , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_0[0] , 
        \psram_cr_0/ahb0/N_87 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 , 
        \psram_cr_0/ahb0/fsm_net_1 , 
        \psram_cr_0/ahb0/hwrite_reg_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 , 
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 , 
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 , 
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[3] , \psram_cr_0/ahb0/N_72 , 
        \psram_cr_0/ahb0/N_74 , \psram_cr_0/ahb0/hrdata_reg_17[11] , 
        \psram_cr_0/ahb0/N_68 , \psram_cr_0/ahb0/N_70 , 
        \psram_cr_0/ahb0/hwrite_reg4 , 
        \psram_cr_0/ahb0/hrdata_reg_17[13] , 
        \psram_cr_0/ahb0/psram_addr_m[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17[0] , 
        \psram_cr_0/ahb0/psram_addr_m[0] , \psram_cr_0/ahb0/N_57 , 
        \psram_cr_0/ahb0/N_18 , \psram_cr_0/ahb0/N_56 , 
        \psram_cr_0/ahb0/hrdata_reg_17[31] , \psram_cr_0/ahb0/N_62 , 
        \psram_cr_0/ahb0/N_63 , \psram_cr_0/ahb0/N_64 , 
        \psram_cr_0/ahb0/hrdata_reg_17[2] , 
        \psram_cr_0/ahb0/psram_addr_m[2] , 
        \psram_cr_0/ahb0/hrdata_reg_17[4] , 
        \psram_cr_0/ahb0/psram_addr_m[4] , 
        \psram_cr_0/ahb0/hrdata_reg_17[5] , 
        \psram_cr_0/ahb0/psram_addr_m[5] , 
        \psram_cr_0/ahb0/hrdata_reg_17[6] , 
        \psram_cr_0/ahb0/psram_addr_m[6] , 
        \psram_cr_0/ahb0/hrdata_reg_17[9] , 
        \psram_cr_0/ahb0/psram_addr_m[9] , 
        \psram_cr_0/ahb0/hrdata_reg_17[1] , 
        \psram_cr_0/ahb0/psram_addr_m[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17[7] , 
        \psram_cr_0/ahb0/psram_addr_m[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17[8] , 
        \psram_cr_0/ahb0/psram_addr_m[8] , 
        \psram_cr_0/ahb0/hrdata_reg_17[10] , 
        \psram_cr_0/ahb0/psram_addr_m[10] , 
        \psram_cr_0/ahb0/hrdata_reg_17[12] , 
        \psram_cr_0/ahb0/psram_addr_m[12] , 
        \psram_cr_0/ahb0/hrdata_reg_17[14] , 
        \psram_cr_0/ahb0/psram_addr_m[14] , 
        \psram_cr_0/ahb0/hrdata_reg_17[15] , 
        \psram_cr_0/ahb0/psram_addr_m[15] , \psram_cr_0/ahb0/N_167 , 
        \psram_cr_0/ahb0/N_171 , \psram_cr_0/ahb0/fsm_0_sqmuxa , 
        \psram_cr_0/ahb0/N_179 , \psram_cr_0/ahb0/operation5 , 
        \psram_cr_0/ahb0/N_180 , \psram_cr_0/ahb0/N_181 , 
        \psram_cr_0/ahb0/N_183 , \psram_cr_0/ahb0/N_184 , 
        \psram_cr_0/ahb0/N_185 , \psram_cr_0/ahb0/N_186 , 
        \psram_cr_0/ahb0/N_187 , \psram_cr_0/ahb0/N_188 , 
        \psram_cr_0/ahb0/N_189 , \psram_cr_0/ahb0/N_190 , 
        \psram_cr_0/ahb0/N_191 , \psram_cr_0/ahb0/N_192 , 
        \psram_cr_0/ahb0/N_193 , \psram_cr_0/ahb0/N_194 , 
        \psram_cr_0/ahb0/N_196 , \psram_cr_0/ahb0/operation[17]_net_1 , 
        \psram_cr_0/ahb0/N_197 , \psram_cr_0/ahb0/operation[18]_net_1 , 
        \psram_cr_0/ahb0/N_198 , \psram_cr_0/ahb0/operation[19]_net_1 , 
        \psram_cr_0/ahb0/N_199 , \psram_cr_0/ahb0/operation[20]_net_1 , 
        \psram_cr_0/ahb0/N_200 , \psram_cr_0/ahb0/operation[21]_net_1 , 
        \psram_cr_0/ahb0/N_202 , \psram_cr_0/ahb0/operation[23]_net_1 , 
        \psram_cr_0/ahb0/N_204 , \psram_cr_0/ahb0/operation[25]_net_1 , 
        \psram_cr_0/ahb0/N_205 , \psram_cr_0/ahb0/operation[26]_net_1 , 
        \psram_cr_0/ahb0/N_206 , \psram_cr_0/ahb0/operation[27]_net_1 , 
        \psram_cr_0/ahb0/N_207 , \psram_cr_0/ahb0/operation[28]_net_1 , 
        \psram_cr_0/ahb0/N_208 , \psram_cr_0/ahb0/operation[29]_net_1 , 
        \psram_cr_0/ahb0/N_209 , \psram_cr_0/ahb0/operation[30]_net_1 , 
        \psram_cr_0/ahb0/N_211 , \psram_cr_0/ahb0/psram_addr5 , 
        \psram_cr_0/ahb0/N_212 , \psram_cr_0/ahb0/N_213 , 
        \psram_cr_0/ahb0/N_215 , \psram_cr_0/ahb0/N_216 , 
        \psram_cr_0/ahb0/N_217 , \psram_cr_0/ahb0/N_218 , 
        \psram_cr_0/ahb0/N_219 , \psram_cr_0/ahb0/N_220 , 
        \psram_cr_0/ahb0/N_221 , \psram_cr_0/ahb0/N_222 , 
        \psram_cr_0/ahb0/N_224 , \psram_cr_0/ahb0/N_225 , 
        \psram_cr_0/ahb0/N_226 , \psram_cr_0/ahb0/N_228 , 
        \psram_cr_0/ahb0/N_229 , \psram_cr_0/ahb0/N_230 , 
        \psram_cr_0/ahb0/N_231 , \psram_cr_0/ahb0/N_232 , 
        \psram_cr_0/ahb0/N_234 , \psram_cr_0/ahb0/N_236 , 
        \psram_cr_0/ahb0/max_addr[25] , \psram_cr_0/ahb0/N_237 , 
        \psram_cr_0/ahb0/max_addr[26] , \psram_cr_0/ahb0/N_238 , 
        \psram_cr_0/ahb0/max_addr[27] , \psram_cr_0/ahb0/N_239 , 
        \psram_cr_0/ahb0/max_addr[28] , \psram_cr_0/ahb0/N_240 , 
        \psram_cr_0/ahb0/max_addr[29] , \psram_cr_0/ahb0/N_241 , 
        \psram_cr_0/ahb0/max_addr[30] , \psram_cr_0/ahb0/N_243 , 
        \psram_cr_0/ahb0/data_in7 , \psram_cr_0/ahb0/N_244 , 
        \psram_cr_0/ahb0/N_245 , \psram_cr_0/ahb0/N_247 , 
        \psram_cr_0/ahb0/N_248 , \psram_cr_0/ahb0/N_249 , 
        \psram_cr_0/ahb0/N_250 , \psram_cr_0/ahb0/N_251 , 
        \psram_cr_0/ahb0/N_252 , \psram_cr_0/ahb0/N_253 , 
        \psram_cr_0/ahb0/N_255 , \psram_cr_0/ahb0/N_256 , 
        \psram_cr_0/ahb0/N_257 , \psram_cr_0/ahb0/N_258 , 
        \psram_cr_0/ahb0/N_259 , \psram_cr_0/ahb0/data_out[0]_net_1 , 
        \psram_cr_0/ahb0/N_4 , \psram_cr_0/ahb0/N_260 , 
        \psram_cr_0/ahb0/N_261 , \psram_cr_0/ahb0/N_263 , 
        \psram_cr_0/ahb0/N_264 , \psram_cr_0/ahb0/N_265 , 
        \psram_cr_0/ahb0/N_267 , \psram_cr_0/ahb0/N_268 , 
        \psram_cr_0/ahb0/N_269 , \psram_cr_0/ahb0/N_271 , 
        \psram_cr_0/ahb0/N_273 , \psram_cr_0/ahb0/N_274 , 
        \psram_cr_0/ahb0/data_out[15]_net_1 , 
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa , 
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa , 
        \psram_cr_0/ahb0/N_88 , 
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa , 
        \psram_cr_0/ahb0/operation[31]_net_1 , 
        \psram_cr_0/ahb0/busy_net_1 , \psram_cr_0/ahb0/max_addr[31] , 
        \psram_cr_0/ahb0/data_out[7]_net_1 , 
        \psram_cr_0/ahb0/operation_m[17] , 
        \psram_cr_0/ahb0/hrdata_reg_17[17] , 
        \psram_cr_0/ahb0/operation_m[18] , 
        \psram_cr_0/ahb0/hrdata_reg_17[18] , 
        \psram_cr_0/ahb0/operation_m[19] , 
        \psram_cr_0/ahb0/hrdata_reg_17[19] , 
        \psram_cr_0/ahb0/operation_m[20] , 
        \psram_cr_0/ahb0/hrdata_reg_17[20] , 
        \psram_cr_0/ahb0/operation_m[25] , 
        \psram_cr_0/ahb0/hrdata_reg_17[25] , 
        \psram_cr_0/ahb0/operation_m[26] , 
        \psram_cr_0/ahb0/hrdata_reg_17[26] , 
        \psram_cr_0/ahb0/operation_m[27] , 
        \psram_cr_0/ahb0/hrdata_reg_17[27] , 
        \psram_cr_0/ahb0/operation_m[28] , 
        \psram_cr_0/ahb0/hrdata_reg_17[28] , 
        \psram_cr_0/ahb0/operation_m[29] , 
        \psram_cr_0/ahb0/hrdata_reg_17[29] , 
        \psram_cr_0/ahb0/operation_m[30] , 
        \psram_cr_0/ahb0/hrdata_reg_17[30] , 
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/N_65 , 
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 , 
        \psram_cr_0/ahb0/N_210 , 
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 , 
        \psram_cr_0/ahb0/N_242 , 
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 , 
        \psram_cr_0/ahb0/N_168 , \psram_cr_0/ahb0/N_24 , 
        \psram_cr_0/ahb0/dt_req_RNO_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/N_178 , 
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/N_272 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/N_169 , \psram_cr_0/ahb0/fsm_0_sqmuxa_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/N_176 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/N_174 , \psram_cr_0/ahb0/N_170 , 
        \psram_cr_0/ahb0/N_175 , \psram_cr_0/ahb0/N_177 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/N_173 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/N_172 , \psram_cr_0/ahb0/N_227 , 
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 , 
        \psram_cr_0/ahb0/N_201 , 
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 , 
        \psram_cr_0/ahb0/N_195 , 
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 , 
        \psram_cr_0/ahb0/N_233 , \psram_cr_0/ahb0/hrdata_reg_17[23] , 
        \psram_cr_0/ahb0/operation_m[23] , 
        \psram_cr_0/ahb0/hrdata_reg_17[22] , 
        \psram_cr_0/ahb0/operation_m[22] , 
        \psram_cr_0/ahb0/operation[22]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[16] , \psram_cr_0/ahb0/N_58 , 
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/N_254 , 
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/N_270 , 
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/N_266 , 
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/N_262 , \psram_cr_0/ahb0/data_out[11]_net_1 , 
        \psram_cr_0/ahb0/data_out[3]_net_1 , \psram_cr_0/ahb0/N_203 , 
        \psram_cr_0/ahb0/operation[24]_net_1 , \psram_cr_0/ahb0/N_235 , 
        \psram_cr_0/ahb0/data_in_sel_net_1 , 
        \psram_cr_0/ahb0/psram_addr_sel_net_1 , 
        \psram_cr_0/ahb0/operation_sel_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/N_182 , 
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/N_223 , 
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/N_214 , 
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/N_246 , \psram_cr_0/ahb0/hrdata_reg_17[21] , 
        \psram_cr_0/ahb0/operation_m[21] , 
        \psram_cr_0/ahb0/hrdata_reg_17[24] , \psram_cr_0/ahb0/N_60 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO00II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTOO0II_i_m , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI00II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_77 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_71 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_87 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_88 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_86 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_81 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_73 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_78 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_89 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRGT61[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIlI_iv_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlOII_iv_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_8 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_2 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_5 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_7 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_4 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_26 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_17 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_16 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_22 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_25 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_11 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_21 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_24 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOIIl , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_7 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_19 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_2 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_14 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_9 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_6 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_4 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_2 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_701 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_702 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_704 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_706 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_707 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_708 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_709 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_710 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_711 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_712 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_682 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_683 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_684 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_685 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_686 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_687 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_688 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_689 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_690 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_691 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_693 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_695 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_696 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_698 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_699 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_700 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_681 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_694 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_703 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_697 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_692 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_705 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_0_0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_102 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_95 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lI , 
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol , \COREAHBTOAPB3_0/CAHBtoAPB3Il , 
        \COREAHBTOAPB3_0/CAHBtoAPB3II , \COREAHBTOAPB3_0/CAHBtoAPB3OI , 
        \COREAHBTOAPB3_0/N_152 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_175_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3Il_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns_0[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4_1_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_176 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_169 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_171 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_170 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_166 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_179 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_155 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIL2CS2[2]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[4] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_167 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl_0_0_a3_0[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[0] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[1] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[2] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[3] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[4] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[5] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[6] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[7] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[8] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[10] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[11] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[9] , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]_net_1 , 
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 , 
        \adc081s101_0/MISO_c_i , 
        \adc081s101_0/cntrWaitTrailinglde_0_a2_0 , \adc081s101_0/N_44 , 
        \adc081s101_0/N_83 , \adc081s101_0/cs16_0_a2_0 , 
        \adc081s101_0/cs16_0_a2_0_0 , \adc081s101_0/bitsRead[3]_net_1 , 
        \adc081s101_0/bitsRead[2]_net_1 , 
        \adc081s101_0/bitsRead_0_sqmuxa_1 , \adc081s101_0/N_109 , 
        \adc081s101_0/un7lto1 , \adc081s101_0/N_10 , 
        \adc081s101_0/N_108 , \adc081s101_0/N_62 , 
        \adc081s101_0/bitsRead_0_sqmuxa , \adc081s101_0/N_37 , 
        \adc081s101_0/N_45 , \adc081s101_0/N_35 , 
        \adc081s101_0/bitsRead[0]_net_1 , 
        \adc081s101_0/bitsRead[1]_net_1 , \adc081s101_0/N_78 , 
        \adc081s101_0/bitsReade , \adc081s101_0/cs_1_sqmuxa , 
        \adc081s101_0/N_39 , \adc081s101_0/N_104 , 
        \adc081s101_0/un1_conversionComplete18 , 
        \adc081s101_0/cntrWaitLeading[0]_net_1 , 
        \adc081s101_0/cntrWaitLeading[1]_net_1 , \adc081s101_0/N_84 , 
        \adc081s101_0/N_63 , \adc081s101_0/N_66 , 
        \adc081s101_0/un1_reset_i_1 , 
        \adc081s101_0/cntrWaitQuiet[0]_net_1 , \adc081s101_0/N_67 , 
        \adc081s101_0/N_7 , \adc081s101_0/N_68 , \adc081s101_0/N_42 , 
        \adc081s101_0/cs_1_sqmuxa_1 , 
        \adc081s101_0/cntrWaitLeading_6[0] , 
        \adc081s101_0/cntrWaitLeading_6[1] , \adc081s101_0/I_10 , 
        \adc081s101_0/cntrWaitTrailinge , 
        \adc081s101_0/cntrWaitQuiete , \adc081s101_0/N_137 , 
        \adc081s101_0/cntrWaitQuiet[1]_net_1 , \adc081s101_0/N_41 , 
        \adc081s101_0/cntrWaitQuiet[2]_net_1 , \adc081s101_0/N_27_1 , 
        \adc081s101_0/N_139 , \adc081s101_0/cntrWaitTrailing[0]_net_1 , 
        \adc081s101_0/N_74 , \adc081s101_0/cntrWaitTrailing[1]_net_1 , 
        \adc081s101_0/cntrWaitTrailing[2]_net_1 , \adc081s101_0/N_140 , 
        \adc081s101_0/N_31 , \adc081s101_0/DWACT_ADD_CI_0_TMP[0] , 
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn , 
        \MSS_CORE2_0/MSS_UART_0_TXD_D , \MSS_CORE2_0/MSS_UART_0_RXD_Y , 
        \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y , 
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D , \MSS_CORE2_0/MACTXD_net_0[1] , 
        \MSS_CORE2_0/MACTXD_net_0[0] , \MSS_CORE2_0/MSS_MAC_0_RXER_Y , 
        \MSS_CORE2_0/MSS_MAC_0_RXD_1_Y , 
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y , 
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y , \MSS_CORE2_0/MSS_MAC_0_MDIO_D , 
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E , \MSS_CORE2_0/MSS_MAC_0_MDC_D , 
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y , 
        \MSS_CORE2_0/MSS_ADLIB_INST_EMCCLK , \MSS_CORE2_0/GLA0 , 
        \MSS_CORE2_0/MSS_ADLIB_INST_MACCLKCCC , 
        \MSS_CORE2_0/MSS_ADLIB_INST_PLLLOCK , GLMUXINT_GND, 
        \MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_3[0] , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_2[0] , 
        \stonyman_0/DWACT_ADD_CI_0_pog_array_2[0] , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_10[0] , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_1[0] , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_11[0] , 
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_2[0] , 
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_1[0] , 
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_3[0] , 
        \stonyman_0/counterPixelsCaptured[12]_net_1 , 
        \stonyman_0/N_715 , 
        \stonyman_0/counterPixelsCaptured[6]_net_1 , 
        \stonyman_0/counterPixelsCaptured[10]_net_1 , 
        \stonyman_0/DWACT_ADD_CI_0_TMP[0] , \stonyman_0/N_714 , 
        \stonyman_0/counterPixelsCaptured[14]_net_1 , 
        \stonyman_0/counterPixelsCaptured[8]_net_1 , 
        \stonyman_0/counterPixelsCaptured[4]_net_1 , 
        \stonyman_0/DWACT_ADD_CI_0_TMP_0[0] , 
        \stonyman_0/cachedPOINTER[1]_net_1 , 
        \stonyman_0/cachedValue[1] , \stonyman_0/cachedValue[0] , 
        \stonyman_0/cachedValue[3] , \stonyman_0/DWACT_FINC_E[0] , 
        \stonyman_0/N_29 , \stonyman_0/counterWait[1]_net_1 , 
        \stonyman_0/counterWait[0]_net_1 , 
        \stonyman_0/counterWait[3]_net_1 , 
        \stonyman_0/DWACT_FDEC_E[0] , 
        \stonyman_0/counterWait[8]_net_1 , 
        \stonyman_0/DWACT_FDEC_E[4] , \stonyman_0/DWACT_FDEC_E[7] , 
        \stonyman_0/DWACT_FDEC_E[6] , \stonyman_0/N_9_i , 
        \stonyman_0/N_9 , \stonyman_0/writeEnable_2_sqmuxa_net_1 , 
        \stonyman_0/writeEnable_2_sqmuxa_0_net_1 , 
        \stonyman_0/substate_ns_0_0_a2_1[2] , \stonyman_0/N_1939 , 
        \stonyman_0/N_1662 , \stonyman_0/N_164 , \stonyman_0/N_136 , 
        \stonyman_0/counterWait_82_i_0[2]_net_1 , 
        \stonyman_0/substate_ns_0_0_1[2]_net_1 , 
        \stonyman_0/substate_ns_0_0_0[2]_net_1 , \stonyman_0/N_94 , 
        \stonyman_0/N_93 , \stonyman_0/writeEnableState[1]_net_1 , 
        \stonyman_0/writeEnableState[0]_net_1 , 
        \stonyman_0/counterWait_82_i_a2_2_0[2] , 
        \stonyman_0/counterWait8 , \stonyman_0/I11_un1_Y , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m11_d , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_6 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m11_s , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_3 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_11 , 
        \stonyman_0/counterPixelsCaptured[7]_net_1 , 
        \stonyman_0/mult1_un89_sum[6] , 
        \stonyman_0/substate_ns_i_0_2[0] , \stonyman_0/N_1536 , 
        \stonyman_0/substate_ns_i_0_0[0] , \stonyman_0/N_1539 , 
        \stonyman_0/substate_ns_i_0_a4_0[0] , \stonyman_0/N_1516 , 
        \stonyman_0/N_1538 , \stonyman_0/state_ns_i_0[12] , 
        \stonyman_0/N_1663 , \stonyman_0/substate_ns_i_0_a4_0_0[0] , 
        \stonyman_0/substate[17]_net_1 , \stonyman_0/N_77 , 
        \stonyman_0/substate_ns_i_1_m4_0_a2_2 , 
        \stonyman_0/substate_ns_i_1_m4_0_a2_1 , 
        \stonyman_0/substate_ns_i_7[1] , 
        \stonyman_0/substate_ns_i_8_0_6[1] , 
        \stonyman_0/state[10]_net_1 , \stonyman_0/state103 , 
        \stonyman_0/un1_counterPixelsCaptured_15_4_3 , 
        \stonyman_0/N146 , \stonyman_0/ADD_9x9_fast_I15_Y_0 , 
        \stonyman_0/un1_counterPixelsCaptured_15_4_2 , 
        \stonyman_0/un1_counterPixelsCaptured_15_4_1 , 
        \stonyman_0/N_713 , \stonyman_0/N_716 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_0 , 
        \stonyman_0/mult1_un110_sum[6] , 
        \stonyman_0/mult1_un110_sum_1[5] , 
        \stonyman_0/ADD_9x9_fast_I9_Y_5 , 
        \stonyman_0/ADD_9x9_fast_I9_Y_2 , 
        \stonyman_0/ADD_9x9_fast_I9_Y_1 , 
        \stonyman_0/ADD_9x9_fast_I9_Y_3 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_2 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_3 , 
        \stonyman_0/mult1_un96_sum[6] , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a2_2 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a4_1 , \stonyman_0/N146_0 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a5 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a6 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a3 , 
        \stonyman_0/counterPixelsCaptured[5]_net_1 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_0 , 
        \stonyman_0/mult1_un103_sum[5] , \stonyman_0/N146_1 , 
        \stonyman_0/mult1_un103_sum[6] , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_0_0 , \stonyman_0/N150 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_1 , 
        \stonyman_0/N_134 , \stonyman_0/N_102 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_0 , 
        \stonyman_0/N_146 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_0_0 , 
        \stonyman_0/ADD_9x9_fast_I9_Y_0 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_14 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_0 , 
        \stonyman_0/mult1_un96_sum[5] , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_2 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_0 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a5_0 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a3_1 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_0 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_1 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_1_1 , 
        \stonyman_0/N_213 , \stonyman_0/counterWait_82_i_1[1] , 
        \stonyman_0/N_1921 , \stonyman_0/counterWait_82_i_0[1] , 
        \stonyman_0/counterWait_82_i_1096_0 , \stonyman_0/N_71 , 
        \stonyman_0/N_116 , \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_1 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_23 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_22 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_1_0 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_a0 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_1_0 , 
        \stonyman_0/N_202 , \stonyman_0/substate[3]_net_1 , 
        \stonyman_0/state[2]_net_1 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_a5_0 , 
        \stonyman_0/mult1_un89_sum[5] , 
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_1_1 , 
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a2_2 , 
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a1_2 , 
        \stonyman_0/mult1_un89_sum[7] , 
        \stonyman_0/un1_counterWait_0_sqmuxa_1_4 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_1_2 , 
        \stonyman_0/counterWait_4_sqmuxa_1 , 
        \stonyman_0/counterWait_1_sqmuxa_3 , 
        \stonyman_0/counterWait_0_sqmuxa_3 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_1_0_0 , 
        \stonyman_0/counterWait_0_sqmuxa_2 , \stonyman_0/N_1388 , 
        \stonyman_0/N_1484 , \stonyman_0/counterWait_0_sqmuxa , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_a5_0_0 , 
        \stonyman_0/counterWait_82_i_3[4] , 
        \stonyman_0/counterWait_82_i_a2_2_0[4] , \stonyman_0/I_12 , 
        \stonyman_0/N_110 , \stonyman_0/counterWait_82_i_1[4] , 
        \stonyman_0/counterWait_82_i_0[4] , 
        \stonyman_0/counterWait_82_i_a2_1_0[4] , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m10_0 , 
        \stonyman_0/counterWait_82_0_a2_0_0[0] , 
        \stonyman_0/writeEnableState_nsss[0] , 
        \stonyman_0/counterWait_82_0_a2_0[0] , 
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a0_1 , 
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a2_1 , 
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a1_1 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_a0_1 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_4_tz_0 , 
        \stonyman_0/substate[4]_net_1 , 
        \stonyman_0/un1_incp_1_sqmuxa_0 , \stonyman_0/N_1913 , 
        \stonyman_0/state_ns_i_1[7] , \stonyman_0/state[7]_net_1 , 
        \stonyman_0/N_1672 , \stonyman_0/state_ns_i_0[7] , 
        \stonyman_0/N_1659 , \stonyman_0/substate_ns_i_1[7] , 
        \stonyman_0/N_1576 , \stonyman_0/N_1617 , \stonyman_0/N_1482 , 
        \stonyman_0/ADD_9x9_fast_I16_Y_1 , 
        \stonyman_0/counterPixelsCaptured[9]_net_1 , 
        \stonyman_0/N146_2 , \stonyman_0/substate_ns_0_4[3] , 
        \stonyman_0/state31 , \stonyman_0/substate_tr32_2_2 , 
        \stonyman_0/N_1224 , \stonyman_0/substate_ns_0_3[3] , 
        \stonyman_0/state42 , \stonyman_0/substate_tr32_0_2 , 
        \stonyman_0/substate_ns_0_2[3] , 
        \stonyman_0/substate_ns_0_1088_0 , \stonyman_0/N_1604 , 
        \stonyman_0/substate_ns_0_1[3] , 
        \stonyman_0/substate_RNO_16[3]_net_1 , \stonyman_0/N_1559 , 
        \stonyman_0/N_1557 , \stonyman_0/substate_ns_0_0[4] , 
        \stonyman_0/substate_ns_0_a4_0_0[4] , \stonyman_0/N_1567 , 
        \stonyman_0/substate_ns_i_0_a4_2_0[0] , \stonyman_0/N_1489 , 
        \stonyman_0/substate_ns_i_a4_0[7] , 
        \stonyman_0/substate[7]_net_1 , \stonyman_0/state[1]_net_1 , 
        \stonyman_0/substate_ns_i_0_a4_4_11[0] , 
        \stonyman_0/substate_ns_i_0_a4_4_8[0] , \stonyman_0/N_1386_1 , 
        \stonyman_0/substate_ns_i_0_a4_4_9[0] , 
        \stonyman_0/substate_ns_i_0_a4_4_4[0] , 
        \stonyman_0/substate_ns_i_0_a4_4_3[0] , 
        \stonyman_0/substate_ns_i_0_a4_4_2[0] , 
        \stonyman_0/substate_ns_i_0_a4_4_5[0] , 
        \stonyman_0/substate[14]_net_1 , 
        \stonyman_0/substate[9]_net_1 , \stonyman_0/substate[5]_net_1 , 
        \stonyman_0/substate[6]_net_1 , 
        \stonyman_0/substate[16]_net_1 , 
        \stonyman_0/substate[15]_net_1 , 
        \stonyman_0/substate[1]_net_1 , \stonyman_0/substate[8]_net_1 , 
        \stonyman_0/state_ns_i_0[5] , \stonyman_0/N_1658 , 
        \stonyman_0/state[4]_net_1 , 
        \stonyman_0/substate_ns_i_0_a2_4_0_a2_0[0] , 
        \stonyman_0/substate[2]_net_1 , 
        \stonyman_0/substate_ns_0_a4_2_1[4] , 
        \stonyman_0/state[8]_net_1 , \stonyman_0/state_ns_i_0[4] , 
        \stonyman_0/N_1144 , \stonyman_0/substate_tr32_3_9 , 
        \stonyman_0/substate_tr32_3_7 , \stonyman_0/N_1021 , 
        \stonyman_0/substate_tr32_3_5 , \stonyman_0/substate_tr32_3_4 , 
        \stonyman_0/N_126 , \stonyman_0/substate_tr32_3_2 , 
        \stonyman_0/N_1473 , \stonyman_0/N_74 , 
        \stonyman_0/substate[13]_net_1 , 
        \stonyman_0/substate_tr32_3_1 , 
        \stonyman_0/state_ns_0_a4_0_0[6] , \stonyman_0/state[5]_net_1 , 
        \stonyman_0/state_ns_i_a4_1_0[5] , 
        \stonyman_0/substate_ns_i_8_0_4[1] , \stonyman_0/N_1543 , 
        \stonyman_0/N_1544 , \stonyman_0/substate_ns_i_8_0_2[1] , 
        \stonyman_0/N_1547 , \stonyman_0/N_1541 , \stonyman_0/N_1551 , 
        \stonyman_0/substate_ns_i_8_0_0[1] , \stonyman_0/N_1540 , 
        \stonyman_0/substate_ns_i_a4_5_0[1] , \stonyman_0/N_1512 , 
        \stonyman_0/N_1549 , \stonyman_0/substate_ns_i_0_a4_2_1_1[0] , 
        \stonyman_0/N_53 , \stonyman_0/substate_i[0]_net_1 , 
        \stonyman_0/state_ns_i_0[3] , 
        \stonyman_0/ADD_9x9_fast_I17_Y_2_1 , 
        \stonyman_0/mult1_un75_sum[5] , \stonyman_0/N150_0 , 
        \stonyman_0/counterWait_82_i_a2_3_0[1] , 
        \stonyman_0/counterWait_82_i_a2_1_1[1] , 
        \stonyman_0/un1_state_18 , \stonyman_0/state53_0_a2_0 , 
        \stonyman_0/cachedValue[4] , \stonyman_0/substate_tr13_5_11 , 
        \stonyman_0/substate_tr13_5_10 , 
        \stonyman_0/substate_tr13_5_8 , \stonyman_0/substate_tr13_5_5 , 
        \stonyman_0/state_inv_2_0 , \stonyman_0/substate_tr13_5_6 , 
        \stonyman_0/substate_tr13_5_3 , \stonyman_0/substate_tr13_5_1 , 
        \stonyman_0/state[11]_net_1 , \stonyman_0/state[9]_net_1 , 
        \stonyman_0/state[3]_net_1 , \stonyman_0/state_ns_i_1[2] , 
        \stonyman_0/N_1679 , \stonyman_0/N_1680 , 
        \stonyman_0/substate_ns_0_0[17] , 
        \stonyman_0/substate_ns_0_a4_0_0[17] , \stonyman_0/N_1597 , 
        \stonyman_0/substate_ns_i_0[10] , \stonyman_0/N_1496 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_0_0 , 
        \stonyman_0/mult1_un75_sum[6] , \stonyman_0/substate_tr32_2_0 , 
        \stonyman_0/substate_ns_i_1[8] , \stonyman_0/N_1578 , 
        \stonyman_0/N_1577 , \stonyman_0/substate_tr32_1_1 , 
        \stonyman_0/substate_tr32_0_1 , 
        \stonyman_0/state_ns_i_a4_1_0[2] , 
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_2[1] , 
        \stonyman_0/N_1953 , 
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_0[1] , 
        \stonyman_0/N_1692_1 , \stonyman_0/cachedValue[5] , 
        \stonyman_0/counterWait_82_i_a2_1_1_0[1] , 
        \stonyman_0/substate_ns_i_7_tz_0[1] , 
        \stonyman_0/substate_ns_i_a4_4_2_1[1] , \stonyman_0/N_1515 , 
        \stonyman_0/substate_ns_i_a4_9_3[1] , 
        \stonyman_0/substate_ns_i_0[15] , \stonyman_0/N_1505 , 
        \stonyman_0/substate_tr13_4_3_a2_4 , 
        \stonyman_0/substate_tr13_4_3_a2_2 , \stonyman_0/N_115 , 
        \stonyman_0/N_1956 , \stonyman_0/substate_tr13_4_3_a2_0 , 
        \stonyman_0/cachedValue[2] , \stonyman_0/state31_0_a2_1 , 
        \stonyman_0/state31_0_a2_0 , \stonyman_0/d_m7_i_a3_0_0 , 
        \stonyman_0/d_m7_i_o3_0 , \stonyman_0/state20_0_a2_0 , 
        \stonyman_0/state42_0_a2_0 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_2_0 , 
        \stonyman_0/N_208 , \stonyman_0/un1_substate_9_sqmuxa_4_0_0 , 
        \stonyman_0/N_113 , \stonyman_0/N_154 , 
        \stonyman_0/un1_substate_0_sqmuxa_5_0_1 , \stonyman_0/N_107 , 
        \stonyman_0/un1_substate_0_sqmuxa_5_0_a2_2_0 , 
        \stonyman_0/un1_substate_0_sqmuxa_5_0_0 , 
        \stonyman_0/substate_ns_0_a4_0_2[3] , 
        \stonyman_0/substate_ns_0_1088_tz_1 , 
        \stonyman_0/substate[11]_net_1 , 
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_0_2 , 
        \stonyman_0/N126 , 
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_0_0 , 
        \stonyman_0/substate_ns_0_a4_0[6] , 
        \stonyman_0/substate_ns_0_a4_0_0[13] , \stonyman_0/N_1476_i_0 , 
        \stonyman_0/un1_cachedPOINTER_0_sqmuxa_0_a2_0 , 
        \stonyman_0/cachedPOINTER_23_0_i_a2_0 , 
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_1 , 
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_o3_0 , 
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_0_1[1] , 
        \stonyman_0/state[12]_net_1 , 
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_1_1[1] , 
        \stonyman_0/state_ns_i_0_2[10] , 
        \stonyman_0/state_ns_i_0_0[10] , \stonyman_0/N_99 , 
        \stonyman_0/substate_ns_0_a4_5_1[3] , 
        \stonyman_0/substate_ns_0_a4_4_2[3] , 
        \stonyman_0/substate_ns_0_a4_6_1[3] , 
        \stonyman_0/substate_ns_0_a4_0[3] , 
        \stonyman_0/ADD_9x9_fast_I16_Y_1_0 , 
        \stonyman_0/counterPixelsCaptured[11]_net_1 , 
        \stonyman_0/mult1_un61_sum[8] , 
        \stonyman_0/state_ns_0_a4_0[9] , 
        \stonyman_0/substate_ns_0_a4_0[5] , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_4_0 , 
        \stonyman_0/N_103 , \stonyman_0/substate_ns_0_a4_0_2_0[3] , 
        \stonyman_0/N_1485 , \stonyman_0/N_1037_i_i_a2_1 , 
        \stonyman_0/counterWait[2]_net_1 , \stonyman_0/N_1605 , 
        \stonyman_0/un1_substate_9_sqmuxa_4_0_a2_2_0 , 
        \stonyman_0/un45lto2 , \stonyman_0/substate_ns_0_a4_0_1[5] , 
        \stonyman_0/N_1495 , \stonyman_0/N_1481 , \stonyman_0/N_1488 , 
        \stonyman_0/un1_state_18_3_0 , \stonyman_0/N_1391 , 
        \stonyman_0/un1_state_18_4_0_tz , \stonyman_0/un1_state_18_3 , 
        \stonyman_0/un1_state_18_2_0 , \stonyman_0/N_1387 , 
        \stonyman_0/un1_state_18_1 , \stonyman_0/un1_state_18_2_tz , 
        \stonyman_0/un1_state_18_0 , \stonyman_0/state[6]_net_1 , 
        \stonyman_0/counterWait8lt29_26 , 
        \stonyman_0/counterWait8lt29_17 , 
        \stonyman_0/counterWait8lt29_16 , 
        \stonyman_0/counterWait8lt29_22 , 
        \stonyman_0/counterWait8lt29_25 , 
        \stonyman_0/counterWait8lt29_11 , 
        \stonyman_0/counterWait8lt29_10 , 
        \stonyman_0/counterWait8lt29_21 , 
        \stonyman_0/counterWait8lt29_24 , 
        \stonyman_0/counterWait8lt29_7 , 
        \stonyman_0/counterWait8lt29_6 , 
        \stonyman_0/counterWait8lt29_19 , 
        \stonyman_0/counterWait8lt29_1 , 
        \stonyman_0/counterWait8lt29_0 , 
        \stonyman_0/counterWait8lt29_14 , 
        \stonyman_0/counterWait[4]_net_1 , 
        \stonyman_0/counterWait[6]_net_1 , 
        \stonyman_0/counterWait8lt29_13 , 
        \stonyman_0/counterWait[24]_net_1 , 
        \stonyman_0/counterWait[5]_net_1 , 
        \stonyman_0/counterWait8lt29_9 , 
        \stonyman_0/counterWait[25]_net_1 , 
        \stonyman_0/counterWait[27]_net_1 , 
        \stonyman_0/counterWait8lt29_5 , 
        \stonyman_0/counterWait[17]_net_1 , 
        \stonyman_0/counterWait[20]_net_1 , 
        \stonyman_0/counterWait8lt29_3 , 
        \stonyman_0/counterWait[9]_net_1 , 
        \stonyman_0/counterWait[15]_net_1 , 
        \stonyman_0/counterWait[12]_net_1 , 
        \stonyman_0/counterWait[21]_net_1 , 
        \stonyman_0/counterWait[18]_net_1 , 
        \stonyman_0/counterWait[10]_net_1 , 
        \stonyman_0/counterWait[7]_net_1 , 
        \stonyman_0/counterWait[16]_net_1 , 
        \stonyman_0/counterWait[13]_net_1 , 
        \stonyman_0/counterWait[22]_net_1 , 
        \stonyman_0/counterWait[19]_net_1 , 
        \stonyman_0/counterWait[14]_net_1 , 
        \stonyman_0/counterWait[11]_net_1 , 
        \stonyman_0/counterWait[28]_net_1 , 
        \stonyman_0/counterWait[23]_net_1 , 
        \stonyman_0/counterWait[29]_net_1 , 
        \stonyman_0/counterWait[26]_net_1 , 
        \stonyman_0/un1_substate_9_sqmuxa_1_i_a2_0_1 , 
        \stonyman_0/un46lto2 , \stonyman_0/N_104 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_6 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a3 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a2_0 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_3 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_5 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_0 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_0 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_4 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a6_1 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a6_0 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a0 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_1 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a4_0 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a5 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a8 , 
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] , 
        \stonyman_0/substate[12]_net_1 , 
        \stonyman_0/counterWait_0_sqmuxa_2_1 , \stonyman_0/N_1389 , 
        \stonyman_0/tp_substateout_1_1[1] , 
        \stonyman_0/counterWait_0_sqmuxa_3_5 , 
        \stonyman_0/counterWait_0_sqmuxa_3_2_0 , 
        \stonyman_0/counterWait_0_sqmuxa_3_3 , 
        \stonyman_0/substate[10]_net_1 , 
        \stonyman_0/substate_ns_i_a4_10_2[1] , 
        \stonyman_0/substate_ns_i_a4_10_0[1] , 
        \stonyman_0/cachedPOINTER[2]_net_1 , \stonyman_0/state103_13 , 
        \stonyman_0/state103_7 , \stonyman_0/state103_6 , 
        \stonyman_0/state103_10 , \stonyman_0/state103_12 , 
        \stonyman_0/state103_3 , \stonyman_0/state103_9 , 
        \stonyman_0/counterPixelsCaptured[13]_net_1 , 
        \stonyman_0/counterPixelsCaptured[15]_net_1 , 
        \stonyman_0/state103_1 , \stonyman_0/state103_0 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_3 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_1 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0_0 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_0 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_2 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_a3_1 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a1_0 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_a1 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_1 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_0 , \stonyman_0/d_N_16_0 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_N_2 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_3_0 , \stonyman_0/d_m8_0_1 , 
        \stonyman_0/d_m8_0_a5_0 , \stonyman_0/d_m8_0_a5_0_0 , 
        \stonyman_0/d_N_12 , \stonyman_0/ADD_9x9_fast_I1_P0N_0_2 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a3_1 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a2 , \stonyman_0/I_5_0 , 
        \stonyman_0/un45lto0 , \stonyman_0/WADDR_REG1[0] , 
        \stonyman_0/N_5_0 , \stonyman_0/un1_reset_i_a2_0_2_1 , 
        \stonyman_0/substate_ns_i_a4_9_3_1[1] , 
        \stonyman_0/counterWait_0_sqmuxa_2_2_7 , 
        \stonyman_0/counterWait_0_sqmuxa_2_2_1 , 
        \stonyman_0/counterWait_0_sqmuxa_2_2_4 , 
        \stonyman_0/counterWait_0_sqmuxa_2_2_6 , 
        \stonyman_0/substate_ns_0_0_a2_3_0[2] , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_0_0 , \stonyman_0/N_1546_1 , 
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_2 , 
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_1 , 
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_0 , 
        \stonyman_0/d_m8_0_a5_1_0 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_6_0 , 
        \stonyman_0/substate_ns_0_a4_4_2_0[3] , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0 , 
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a1 , \stonyman_0/state104 , 
        \stonyman_0/un1_counterPixelsCaptured_15_4 , 
        \stonyman_0/N_717 , \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_9 , 
        \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_8 , 
        \stonyman_0/mult1_un68_sum[7] , 
        \stonyman_0/ADD_9x9_fast_I17_Y_0_0 , 
        \stonyman_0/ADD_9x9_fast_I17_Y_a2 , 
        \stonyman_0/counterPixelsCaptured_RNIO4PKI[10]_net_1 , 
        \stonyman_0/d_N_9 , \stonyman_0/I7_un1_Y , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_a1_0 , \stonyman_0/N126_0 , 
        \stonyman_0/ADD_9x9_fast_I1_P0N_a1 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_N_6 , \stonyman_0/N_105 , 
        \stonyman_0/N_1517 , \stonyman_0/N_1614 , \stonyman_0/state9 , 
        \stonyman_0/substate_ns_0_a4_1_1[6] , \stonyman_0/I11_un1_Y_0 , 
        \stonyman_0/ADD_9x9_fast_I15_Y_0_2 , \stonyman_0/N150_1 , 
        \stonyman_0/N150_2 , \stonyman_0/I5_un1_Y , \stonyman_0/N131 , 
        \stonyman_0/N132 , \stonyman_0/N_719 , 
        \stonyman_0/I11_un1_Y_1 , \stonyman_0/N125 , 
        \stonyman_0/N_1916 , \stonyman_0/N_169 , 
        \stonyman_0/substate_RNO[16]_net_1 , \stonyman_0/N_183 , 
        \stonyman_0/N_210 , \stonyman_0/un1_counterWait_0_sqmuxa , 
        \stonyman_0/N_165 , \stonyman_0/N_1915 , \stonyman_0/N_1919 , 
        \stonyman_0/N_1570 , \stonyman_0/N_1602 , \stonyman_0/N_35 , 
        \stonyman_0/N_158 , \stonyman_0/N_162 , 
        \stonyman_0/substate_ns[5] , \stonyman_0/N_1571 , 
        \stonyman_0/N_1569 , \stonyman_0/N_1600 , \stonyman_0/N_1499 , 
        \stonyman_0/substate_RNO[11]_net_1 , \stonyman_0/N_1585 , 
        \stonyman_0/N_1584 , \stonyman_0/N_197 , \stonyman_0/N_108 , 
        \stonyman_0/N_144 , \stonyman_0/un1_substate_0_sqmuxa_2 , 
        \stonyman_0/N_142 , \stonyman_0/un1_substate_0_sqmuxa_5 , 
        \stonyman_0/N_149 , \stonyman_0/counterWait_0_sqmuxa_3_2 , 
        \stonyman_0/N_1383 , \stonyman_0/N_122 , 
        \stonyman_0/un1_substate_4_sqmuxa , 
        \stonyman_0/substate_9_sqmuxa_4 , 
        \stonyman_0/substate_4_sqmuxa , 
        \stonyman_0/substate_9_sqmuxa_5 , 
        \stonyman_0/state_RNO[12]_net_1 , \stonyman_0/N_1671 , 
        \stonyman_0/state_RNO[11]_net_1 , \stonyman_0/N_1670 , 
        \stonyman_0/N_25 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_1 , 
        \stonyman_0/state_ns[6] , \stonyman_0/N_1692 , 
        \stonyman_0/N_1690 , \stonyman_0/N_1691 , \stonyman_0/N_121 , 
        \stonyman_0/substate_RNO[9]_net_1 , \stonyman_0/N_1504 , 
        \stonyman_0/N_1580 , \stonyman_0/state_RNO[5]_net_1 , 
        \stonyman_0/N_1687 , \stonyman_0/N_1689 , \stonyman_0/N_1661 , 
        \stonyman_0/state_RNO[10]_net_1 , \stonyman_0/substate_ns[17] , 
        \stonyman_0/substate_1_sqmuxa_10 , \stonyman_0/N_1709 , 
        \stonyman_0/substate_3_sqmuxa_3 , 
        \stonyman_0/substate_RNO[7]_net_1 , \stonyman_0/N_1530 , 
        \stonyman_0/substate_ns[4] , \stonyman_0/N_1565 , 
        \stonyman_0/N_1568 , \stonyman_0/substate_RNO[14]_net_1 , 
        \stonyman_0/N_1591 , \stonyman_0/substate_RNO[15]_net_1 , 
        \stonyman_0/substate_ns[12] , \stonyman_0/N_1588 , 
        \stonyman_0/N_1587 , \stonyman_0/N_1586 , \stonyman_0/N_1048 , 
        \stonyman_0/un1_substate_8_sqmuxa_3 , \stonyman_0/N_1378 , 
        \stonyman_0/N_1052 , \stonyman_0/N_98 , \stonyman_0/N_190 , 
        \stonyman_0/N_192 , \stonyman_0/N_191 , 
        \stonyman_0/substate_RNO[8]_net_1 , \stonyman_0/N_1509 , 
        \stonyman_0/N_141 , \stonyman_0/N_141_1 , \stonyman_0/N_1589 , 
        \stonyman_0/substate_RNIAIF5C[5]_net_1 , \stonyman_0/N_201 , 
        \stonyman_0/N_140 , \stonyman_0/N_194 , 
        \stonyman_0/N_1392_i_0 , \stonyman_0/N150_3 , 
        \stonyman_0/ADD_9x9_fast_I16_Y_0 , \stonyman_0/N129 , 
        \stonyman_0/N132_0 , \stonyman_0/N_1678 , 
        \stonyman_0/state_i[0]_net_1 , \stonyman_0/state_RNO[1]_net_1 , 
        \stonyman_0/state_ns[0] , \stonyman_0/N_1677 , 
        \stonyman_0/N_91 , \stonyman_0/N_153 , \stonyman_0/N_1620 , 
        \stonyman_0/state_RNO[4]_net_1 , \stonyman_0/N_1669 , 
        \stonyman_0/N_1535 , \stonyman_0/N_1572 , \stonyman_0/N_1490 , 
        \stonyman_0/N_1478 , \stonyman_0/N_1699 , 
        \stonyman_0/state_ns[9] , \stonyman_0/N_1700 , 
        \stonyman_0/N_1599 , \stonyman_0/N_1945 , \stonyman_0/N_1583 , 
        \stonyman_0/N_1507 , \stonyman_0/N_1696 , \stonyman_0/N_1660 , 
        \stonyman_0/state_ns[8] , \stonyman_0/N_1697 , 
        \stonyman_0/N_1698 , \stonyman_0/N_145 , \stonyman_0/N_109 , 
        \stonyman_0/N_92 , \stonyman_0/N_1547_1 , \stonyman_0/N_1486 , 
        \stonyman_0/substate_ns[2] , 
        \stonyman_0/un1_substate_9_sqmuxa_4 , \stonyman_0/N_152 , 
        \stonyman_0/N_100 , \stonyman_0/N_1950 , \stonyman_0/N_1949 , 
        \stonyman_0/state20 , \stonyman_0/N_1506 , 
        \stonyman_0/substate_RNO[10]_net_1 , \stonyman_0/N_1581 , 
        \stonyman_0/state_RNO[7]_net_1 , \stonyman_0/resv_0_sqmuxa , 
        \stonyman_0/counterWait_4_sqmuxa , 
        \stonyman_0/counterWait_1_sqmuxa_5 , \stonyman_0/N_1537 , 
        \stonyman_0/N_1539_6 , \stonyman_0/N_1145 , 
        \stonyman_0/substate_ns_i[0] , \stonyman_0/substate_ns[3] , 
        \stonyman_0/N_1226 , \stonyman_0/state_RNO[2]_net_1 , 
        \stonyman_0/state_RNO[3]_net_1 , \stonyman_0/N_1684 , 
        \stonyman_0/N_1682 , \stonyman_0/N_7_0 , \stonyman_0/I_4_2 , 
        \stonyman_0/I_4_1 , \stonyman_0/ADD_9x9_fast_I17_Y_2 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_8 , \stonyman_0/d_N_17_0 , 
        \stonyman_0/counterPixelsCaptured_RNIH9SI4[11]_net_1 , 
        \stonyman_0/N125_0 , \stonyman_0/ADD_9x9_fast_I5_un1_Y_a0 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_2 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_21 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_19 , 
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_16 , \stonyman_0/N148 , 
        \stonyman_0/substate_RNO_2[1]_net_1 , 
        \stonyman_0/un1_state_18_3_tz , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_3_0 , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_2_0 , 
        \stonyman_0/substate_RNO[1]_net_1 , 
        \stonyman_0/substate_RNO_0[1]_net_1 , 
        \stonyman_0/substate_RNO_1[1]_net_1 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_0_1 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_m9 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_N_7 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_N_9 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_N_8 , 
        \stonyman_0/ADD_9x9_fast_I11_Y_N_4 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_4 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_5 , 
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_2 , \stonyman_0/N_1920 , 
        \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_6 , 
        \stonyman_0/counterPixelsCaptured_RNII7AHL1[10]_net_1 , 
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0 , 
        \stonyman_0/substate_ns_0_0_tz[6] , 
        \stonyman_0/un1_reset_i_0_tz , 
        \stonyman_0/substate_ns_0_a4_3_0[3] , 
        \stonyman_0/substate_ns_0_a4_2_0[3] , \stonyman_0/N_1609 , 
        \stonyman_0/N_73 , \stonyman_0/substate_ns[6] , 
        \stonyman_0/N_762 , \stonyman_0/N_19_0 , \stonyman_0/N_765 , 
        \stonyman_0/N_21 , \stonyman_0/WADDR_REG1[1] , 
        \stonyman_0/WADDR_REG1[2] , \stonyman_0/N_52 , 
        \stonyman_0/N_58 , \stonyman_0/state_RNIUBB23[6]_net_1 , 
        \stonyman_0/state_RNIRCPC5[6]_net_1 , \stonyman_0/I_5_0_0 , 
        \stonyman_0/state_RNIPD7N7[6]_net_1 , \stonyman_0/I_7 , 
        \stonyman_0/state_RNIOEL1A[6]_net_1 , \stonyman_0/I_9_0 , 
        \stonyman_0/state_RNIOF3CC[6]_net_1 , \stonyman_0/I_12_0 , 
        \stonyman_0/state_RNIPGHME[6]_net_1 , \stonyman_0/I_14_1 , 
        \stonyman_0/state_RNIRHV0H[6]_net_1 , \stonyman_0/I_17_0 , 
        \stonyman_0/state_RNIUIDBJ[6]_net_1 , \stonyman_0/I_20_0 , 
        \stonyman_0/N_1475 , \stonyman_0/N_1914 , \stonyman_0/N_1529 , 
        \stonyman_0/N_1497 , \stonyman_0/N_1610 , \stonyman_0/N_12 , 
        \stonyman_0/I_9 , \stonyman_0/counterWait_82_sn_N_4 , 
        \stonyman_0/N_14 , \stonyman_0/I_14_0 , \stonyman_0/N_16 , 
        \stonyman_0/I_17 , \stonyman_0/N_20 , \stonyman_0/I_32 , 
        \stonyman_0/N_22_0 , \stonyman_0/I_37 , \stonyman_0/N_24 , 
        \stonyman_0/I_40 , \stonyman_0/N_26 , \stonyman_0/I_46 , 
        \stonyman_0/N_28 , \stonyman_0/I_49 , \stonyman_0/N_30 , 
        \stonyman_0/I_53_0 , \stonyman_0/N_46 , \stonyman_0/I_92 , 
        \stonyman_0/counterWait_82[7] , \stonyman_0/I_20 , 
        \stonyman_0/N_106 , \stonyman_0/counterWait_82[9] , 
        \stonyman_0/I_26 , \stonyman_0/counterWait_82[10] , 
        \stonyman_0/I_28 , \stonyman_0/counterWait_82[12] , 
        \stonyman_0/I_35 , \stonyman_0/counterWait_82[15] , 
        \stonyman_0/I_43 , \stonyman_0/counterWait_82[19] , 
        \stonyman_0/I_56_0 , \stonyman_0/counterWait_82[20] , 
        \stonyman_0/I_59_0 , \stonyman_0/counterWait_82[23] , 
        \stonyman_0/I_70 , \stonyman_0/counterPixelsCaptured_8[0] , 
        \stonyman_0/DWACT_ADD_CI_0_partial_sum[0] , 
        \stonyman_0/counterPixelsCaptured_8[1] , \stonyman_0/I_64 , 
        \stonyman_0/counterPixelsCaptured_8[2] , \stonyman_0/I_51 , 
        \stonyman_0/counterPixelsCaptured_8[3] , \stonyman_0/I_54 , 
        \stonyman_0/counterPixelsCaptured_8[4] , \stonyman_0/I_55 , 
        \stonyman_0/counterPixelsCaptured_8[5] , \stonyman_0/I_57 , 
        \stonyman_0/counterPixelsCaptured_8[6] , \stonyman_0/I_59 , 
        \stonyman_0/counterPixelsCaptured_8[7] , \stonyman_0/I_61 , 
        \stonyman_0/counterPixelsCaptured_8[8] , \stonyman_0/I_63 , 
        \stonyman_0/counterPixelsCaptured_8[9] , \stonyman_0/I_52 , 
        \stonyman_0/counterPixelsCaptured_8[10] , \stonyman_0/I_53 , 
        \stonyman_0/counterPixelsCaptured_8[11] , \stonyman_0/I_56 , 
        \stonyman_0/counterPixelsCaptured_8[12] , \stonyman_0/I_58 , 
        \stonyman_0/counterPixelsCaptured_8[13] , \stonyman_0/I_60 , 
        \stonyman_0/counterPixelsCaptured_8[14] , \stonyman_0/I_65 , 
        \stonyman_0/counterPixelsCaptured_8[15] , \stonyman_0/I_66 , 
        \stonyman_0/N_200 , \stonyman_0/substate_ns[13] , 
        \stonyman_0/N_38 , \stonyman_0/I_77 , \stonyman_0/N_50 , 
        \stonyman_0/N_766 , \stonyman_0/N_181 , \stonyman_0/N_767 , 
        \stonyman_0/un1_writeEnable_1_sqmuxa_1 , 
        \stonyman_0/resv_1_sqmuxa , 
        \stonyman_0/un1_substate_4_sqmuxa_3 , \stonyman_0/N_54 , 
        \stonyman_0/N_764 , \stonyman_0/N_1664 , 
        \stonyman_0/cachedValue[6] , \stonyman_0/cachedValue[7] , 
        \stonyman_0/DOUT_TMP[7] , \stonyman_0/DIN_REG1[7] , 
        \stonyman_0/DOUT_TMP[6] , \stonyman_0/DIN_REG1[6] , 
        \stonyman_0/DOUT_TMP[5] , \stonyman_0/DIN_REG1[5] , 
        \stonyman_0/DOUT_TMP[4] , \stonyman_0/DIN_REG1[4] , 
        \stonyman_0/DOUT_TMP[3] , \stonyman_0/DIN_REG1[3] , 
        \stonyman_0/DOUT_TMP[2] , \stonyman_0/DIN_REG1[2] , 
        \stonyman_0/DOUT_TMP[1] , \stonyman_0/DIN_REG1[1] , 
        \stonyman_0/DOUT_TMP[0] , \stonyman_0/DIN_REG1[0] , 
        \stonyman_0/N_763 , \stonyman_0/N_56 , \stonyman_0/N_1917 , 
        \stonyman_0/N_31 , \stonyman_0/I_14 , \stonyman_0/N_29_0 , 
        \stonyman_0/I_13 , \stonyman_0/N_27_0 , 
        \stonyman_0/DWACT_ADD_CI_0_partial_sum_0[0] , 
        \stonyman_0/N_36 , \stonyman_0/I_74 , \stonyman_0/N_135 , 
        \stonyman_0/N_138 , \stonyman_0/N_44 , \stonyman_0/I_89 , 
        \stonyman_0/N_42 , \stonyman_0/I_86 , \stonyman_0/N_40 , 
        \stonyman_0/I_82 , \stonyman_0/N_34 , \stonyman_0/I_65_0 , 
        \stonyman_0/N_32 , \stonyman_0/I_62 , \stonyman_0/N_18 , 
        \stonyman_0/I_23 , \stonyman_0/counterWait_82[0] , 
        \stonyman_0/N_66 , \stonyman_0/N_180 , \stonyman_0/N_768 , 
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_4[0] , \stonyman_0/N_2 , 
        \stonyman_0/DWACT_FDEC_E[24] , \stonyman_0/DWACT_FDEC_E[23] , 
        \stonyman_0/DWACT_FDEC_E[25] , \stonyman_0/N_3 , 
        \stonyman_0/DWACT_FDEC_E[29] , \stonyman_0/DWACT_FDEC_E[30] , 
        \stonyman_0/N_4 , \stonyman_0/DWACT_FDEC_E[15] , 
        \stonyman_0/DWACT_FDEC_E[17] , \stonyman_0/DWACT_FDEC_E[22] , 
        \stonyman_0/N_5_1 , \stonyman_0/DWACT_FDEC_E[21] , 
        \stonyman_0/DWACT_FDEC_E[9] , \stonyman_0/DWACT_FDEC_E[12] , 
        \stonyman_0/DWACT_FDEC_E[20] , \stonyman_0/N_6 , 
        \stonyman_0/DWACT_FDEC_E[13] , \stonyman_0/DWACT_FDEC_E[19] , 
        \stonyman_0/N_7_1 , \stonyman_0/DWACT_FDEC_E[18] , 
        \stonyman_0/N_8 , \stonyman_0/DWACT_FDEC_E[33] , 
        \stonyman_0/DWACT_FDEC_E[34] , \stonyman_0/DWACT_FDEC_E[2] , 
        \stonyman_0/DWACT_FDEC_E[5] , \stonyman_0/N_9_0 , 
        \stonyman_0/DWACT_FDEC_E[28] , \stonyman_0/DWACT_FDEC_E[16] , 
        \stonyman_0/N_10 , \stonyman_0/N_11_0 , 
        \stonyman_0/DWACT_FDEC_E[14] , \stonyman_0/N_12_0 , 
        \stonyman_0/N_13 , \stonyman_0/DWACT_FDEC_E[10] , 
        \stonyman_0/N_14_0 , \stonyman_0/DWACT_FDEC_E[11] , 
        \stonyman_0/N_15 , \stonyman_0/N_16_0 , \stonyman_0/N_17 , 
        \stonyman_0/DWACT_FDEC_E[8] , \stonyman_0/N_18_0 , 
        \stonyman_0/N_20_0 , \stonyman_0/N_21_0 , 
        \stonyman_0/DWACT_FDEC_E[3] , \stonyman_0/N_23 , 
        \stonyman_0/N_24_0 , \stonyman_0/N_25_0 , 
        \stonyman_0/DWACT_FDEC_E[1] , \stonyman_0/N_26_0 , 
        \stonyman_0/N_28_0 , \stonyman_0/N_2_0 , 
        \stonyman_0/DWACT_FINC_E[2] , \stonyman_0/N_3_0 , 
        \stonyman_0/DWACT_FINC_E[1] , \stonyman_0/N_4_0 , 
        \stonyman_0/N_6_0 , \CS_pad/U0/NET1 , \CS_pad/U0/NET2 , 
        \psram_address_pad[21]/U0/NET1 , 
        \psram_address_pad[21]/U0/NET2 , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DTRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RInINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DCDnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1CTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0BCLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SLEEPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/M2FRESETnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHLOCKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHMASTLOCKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHTRANS1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWRITEINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABINTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHTRANS1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSELINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/F2MRESETnINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYOUTINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRESPINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWRITEINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP6INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP7INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP8INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABACETRIGINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET , 
        \led_pad[0]/U0/NET1 , \led_pad[0]/U0/NET2 , 
        \psram_data_pad[5]/U0/NET1 , \psram_data_pad[5]/U0/NET2 , 
        \psram_data_pad[5]/U0/NET3 , \psram_data_pad[8]/U0/NET1 , 
        \psram_data_pad[8]/U0/NET2 , \psram_data_pad[8]/U0/NET3 , 
        \psram_address_pad[1]/U0/NET1 , \psram_address_pad[1]/U0/NET2 , 
        \psram_data_pad[11]/U0/NET1 , \psram_data_pad[11]/U0/NET2 , 
        \psram_data_pad[11]/U0/NET3 , \psram_address_pad[4]/U0/NET1 , 
        \psram_address_pad[4]/U0/NET2 , \psram_address_pad[5]/U0/NET1 , 
        \psram_address_pad[5]/U0/NET2 , \led_pad[5]/U0/NET1 , 
        \led_pad[5]/U0/NET2 , \psram_address_pad[19]/U0/NET1 , 
        \psram_address_pad[19]/U0/NET2 , 
        \psram_address_pad[13]/U0/NET1 , 
        \psram_address_pad[13]/U0/NET2 , \psram_data_pad[13]/U0/NET1 , 
        \psram_data_pad[13]/U0/NET2 , \psram_data_pad[13]/U0/NET3 , 
        \SCLK_pad/U0/NET1 , \SCLK_pad/U0/NET2 , 
        \psram_nwe_pad/U0/NET1 , \psram_nwe_pad/U0/NET2 , 
        \psram_address_pad[15]/U0/NET1 , 
        \psram_address_pad[15]/U0/NET2 , \Phy_RMII_CLK_pad/U0/NET1 , 
        \Phy_RMII_CLK_pad/U0/NET2 , \psram_data_pad[1]/U0/NET1 , 
        \psram_data_pad[1]/U0/NET2 , \psram_data_pad[1]/U0/NET3 , 
        \psram_address_pad[24]/U0/NET1 , 
        \psram_address_pad[24]/U0/NET2 , \psram_ncs0_pad/U0/NET1 , 
        \psram_ncs0_pad/U0/NET2 , \psram_nbyte_en_pad[1]/U0/NET1 , 
        \psram_nbyte_en_pad[1]/U0/NET2 , \led_pad[7]/U0/NET1 , 
        \led_pad[7]/U0/NET2 , \psram_data_pad[2]/U0/NET1 , 
        \psram_data_pad[2]/U0/NET2 , \psram_data_pad[2]/U0/NET3 , 
        \psram_address_pad[3]/U0/NET1 , \psram_address_pad[3]/U0/NET2 , 
        \led_pad[3]/U0/NET1 , \led_pad[3]/U0/NET2 , 
        \psram_address_pad[20]/U0/NET1 , 
        \psram_address_pad[20]/U0/NET2 , 
        \psram_address_pad[11]/U0/NET1 , 
        \psram_address_pad[11]/U0/NET2 , 
        \psram_nbyte_en_pad[0]/U0/NET1 , 
        \psram_nbyte_en_pad[0]/U0/NET2 , 
        \psram_address_pad[8]/U0/NET1 , \psram_address_pad[8]/U0/NET2 , 
        \TP_adcStartCapture_pad/U0/NET1 , 
        \TP_adcStartCapture_pad/U0/NET2 , \resp_pad/U0/NET1 , 
        \resp_pad/U0/NET2 , \psram_data_pad[14]/U0/NET1 , 
        \psram_data_pad[14]/U0/NET2 , \psram_data_pad[14]/U0/NET3 , 
        \psram_address_pad[16]/U0/NET1 , 
        \psram_address_pad[16]/U0/NET2 , 
        \psram_address_pad[14]/U0/NET1 , 
        \psram_address_pad[14]/U0/NET2 , 
        \psram_address_pad[18]/U0/NET1 , 
        \psram_address_pad[18]/U0/NET2 , \resv_pad/U0/NET1 , 
        \resv_pad/U0/NET2 , \MISO_pad/U0/NET1 , \led_pad[1]/U0/NET1 , 
        \led_pad[1]/U0/NET2 , \psram_noe0_pad/U0/NET1 , 
        \psram_noe0_pad/U0/NET2 , \psram_address_pad[2]/U0/NET1 , 
        \psram_address_pad[2]/U0/NET2 , \psram_address_pad[6]/U0/NET1 , 
        \psram_address_pad[6]/U0/NET2 , 
        \psram_address_pad[10]/U0/NET1 , 
        \psram_address_pad[10]/U0/NET2 , \rs485_nre_pad/U0/NET1 , 
        \rs485_nre_pad/U0/NET2 , \led_pad[2]/U0/NET1 , 
        \led_pad[2]/U0/NET2 , \inphi_pad/U0/NET1 , \inphi_pad/U0/NET2 , 
        \psram_data_pad[3]/U0/NET1 , \psram_data_pad[3]/U0/NET2 , 
        \psram_data_pad[3]/U0/NET3 , \psram_data_pad[0]/U0/NET1 , 
        \psram_data_pad[0]/U0/NET2 , \psram_data_pad[0]/U0/NET3 , 
        \psram_address_pad[17]/U0/NET1 , 
        \psram_address_pad[17]/U0/NET2 , \psram_noe1_pad/U0/NET1 , 
        \psram_noe1_pad/U0/NET2 , \psram_address_pad[22]/U0/NET1 , 
        \psram_address_pad[22]/U0/NET2 , \psram_ncs1_pad/U0/NET1 , 
        \psram_ncs1_pad/U0/NET2 , \psram_data_pad[12]/U0/NET1 , 
        \psram_data_pad[12]/U0/NET2 , \psram_data_pad[12]/U0/NET3 , 
        \psram_data_pad[6]/U0/NET1 , \psram_data_pad[6]/U0/NET2 , 
        \psram_data_pad[6]/U0/NET3 , \led_pad[4]/U0/NET1 , 
        \led_pad[4]/U0/NET2 , \CLK50_pad/U0/NET1 , 
        \psram_data_pad[9]/U0/NET1 , \psram_data_pad[9]/U0/NET2 , 
        \psram_data_pad[9]/U0/NET3 , \psram_address_pad[7]/U0/NET1 , 
        \psram_address_pad[7]/U0/NET2 , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YB_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/MODE_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT , 
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT , PLLEN_VCC, 
        \psram_data_pad[10]/U0/NET1 , \psram_data_pad[10]/U0/NET2 , 
        \psram_data_pad[10]/U0/NET3 , \incp_pad/U0/NET1 , 
        \incp_pad/U0/NET2 , \psram_data_pad[4]/U0/NET1 , 
        \psram_data_pad[4]/U0/NET2 , \psram_data_pad[4]/U0/NET3 , 
        \psram_address_pad[9]/U0/NET1 , \psram_address_pad[9]/U0/NET2 , 
        \rs485_de_pad/U0/NET1 , \rs485_de_pad/U0/NET2 , 
        \psram_data_pad[15]/U0/NET1 , \psram_data_pad[15]/U0/NET2 , 
        \psram_data_pad[15]/U0/NET3 , \led_pad[6]/U0/NET1 , 
        \led_pad[6]/U0/NET2 , \psram_address_pad[23]/U0/NET1 , 
        \psram_address_pad[23]/U0/NET2 , \psram_data_pad[7]/U0/NET1 , 
        \psram_data_pad[7]/U0/NET2 , \psram_data_pad[7]/U0/NET3 , 
        \TP_adcConvComplete_pad/U0/NET1 , 
        \TP_adcConvComplete_pad/U0/NET2 , \incv_pad/U0/NET1 , 
        \incv_pad/U0/NET2 , \psram_address_pad[12]/U0/NET1 , 
        \psram_address_pad[12]/U0/NET2 , 
        \psram_address_pad[0]/U0/NET1 , \psram_address_pad[0]/U0/NET2 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GLMUXINT_GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign PLLEN_VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    NOR3B \stonyman_0/counterWait_RNO[26]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_82 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_40 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNICC9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[7] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[7] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_688 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_66  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIV1S14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_694 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I11_Y_a0  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_a0_1 ), .B(
        \stonyman_0/mult1_un89_sum[7] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_a0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_253 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNI79GT2[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .C(
        \psram_cr_0/ahb0/N_85 ), .Y(\psram_cr_0/ahb0/N_87 ));
    AX1C \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[5]  (.A(
        \FIFO_PIXEL_0/XOR2_62_Y ), .B(\FIFO_PIXEL_0/AO1_25_Y ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[5] ));
    DFN1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_6  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_7_Y ), .BLKB(\FIFO_PIXEL_0/OR2_10_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_6_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_6_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB0 ));
    NOR3C \stonyman_0/substate_RNIIOG32[12]  (.A(
        \stonyman_0/substate_ns_i_0_a4_4_2[0] ), .B(
        \stonyman_0/counterWait_0_sqmuxa_2_2_1 ), .C(
        \stonyman_0/counterWait_0_sqmuxa_2_2_4 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_2_2_7 ));
    OR3 \psram_cr_0/cr_int_i0/noe0_5_0_o2  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ), .Y(
        \psram_cr_0/cr_int_i0/N_87 ));
    OR2B \counter_0/COUNT_RNI5IO[1]  (.A(\counter_0_COUNT[1] ), .B(
        \counter_0_COUNT[0] ), .Y(\counter_0/COUNT_RNI5IO[1]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[6] )
        );
    NOR3C \FIFO_TEST_COUNTER_0/AO1_18  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] ), .B(
        \FIFO_TEST_COUNTER_0/XOR2_7_Y ), .C(
        \FIFO_TEST_COUNTER_0/AO1_17_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AO1_18_Y ));
    XNOR2 \stonyman_0/un3_counterWait_I_59  (.A(\stonyman_0/N_11_0 ), 
        .B(\stonyman_0/counterWait[20]_net_1 ), .Y(\stonyman_0/I_59_0 )
        );
    OR2A \stonyman_0/substate_RNIQA1BS[2]  (.A(\stonyman_0/N_1659 ), 
        .B(\stonyman_0/resv_0_sqmuxa ), .Y(\stonyman_0/N_1660 ));
    MX2B \counter_0/state_RNO_0[1]  (.A(\counter_0/N_29_0 ), .B(
        \counter_0/N_70 ), .S(\counter_0/state[0]_net_1 ), .Y(
        \counter_0/N_435 ));
    NOR3C \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .C(
        \psram_cr_0/ahb0/N_97 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1_net_1 ));
    OR2 \stonyman_0/counterWait_RNIJS449[10]  (.A(
        stonyman_apb3_0_START_CAPTURE), .B(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/N_1661 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_3  (.A(\FIFO_PIXEL_0/MEM_RADDR[9] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[9] ), .Y(\FIFO_PIXEL_0/XNOR2_3_Y ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_255 ));
    OR2 \counter_0/counterInternal_RNO_0[15]  (.A(\counter_0/N_467 ), 
        .B(\counter_0/counterInternal[14]_net_1 ), .Y(
        \counter_0/N_468 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_74  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    AO1A \stonyman_0/startAdcCapture_RNO_0  (.A(\stonyman_0/N_138 ), 
        .B(TP_adcStartCapture_c), .C(\stonyman_0/N_208 ), .Y(
        \stonyman_0/N_768 ));
    IOPAD_BI \MSS_CORE2_0/MSS_MAC_0_MDIO  (.D(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_D ), .E(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E ), .Y(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y ), .PAD(MAC_MDIO));
    NOR3C \FIFO_PIXEL_0/AND2_43  (.A(\FIFO_PIXEL_0/MEM_WADDR[11] ), .B(
        \FIFO_PIXEL_0/XOR2_60_Y ), .C(\FIFO_PIXEL_0/AND2_8_Y ), .Y(
        \FIFO_PIXEL_0/AND2_43_Y ));
    NOR3C \stonyman_0/substate_i_RNO_15[0]  (.A(\stonyman_0/N_1617 ), 
        .B(\stonyman_0/substate_ns_i_0_a4_4_2[0] ), .C(
        \stonyman_0/substate_ns_i_0_a4_4_5[0] ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_8[0] ));
    DFN1 \psram_cr_0/ahb0/operation[3]  (.D(
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[3] ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_P0N_a1  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[12]  (.A(
        \psram_cr_0/cr_int_i0/N_168 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[12] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(\psram_cr_0/data_to_cr[9] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_165 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[6]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[6] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[6] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_771 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRGT61[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_2 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRGT61[6]_net_1 )
        );
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_220 ));
    MX2 \stonyman_0/resv_RNO_0  (.A(\stonyman_0/un1_substate_4_sqmuxa )
        , .B(resv_c), .S(\stonyman_0/un1_substate_4_sqmuxa_3 ), .Y(
        \stonyman_0/N_764 ));
    AND3 \FIFO_PIXEL_0/AND3_2  (.A(\FIFO_PIXEL_0/AND3_4_Y ), .B(
        \FIFO_PIXEL_0/AND3_5_Y ), .C(\FIFO_PIXEL_0/AND3_3_Y ), .Y(
        \FIFO_PIXEL_0/AND3_2_Y ));
    IOTRI_OB_EB \psram_address_pad[23]/U0/U1  (.D(
        \psram_address_c[23] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[23]/U0/NET1 ), .EOUT(
        \psram_address_pad[23]/U0/NET2 ));
    XNOR2 \stonyman_0/un3_counterWait_I_40  (.A(\stonyman_0/N_17 ), .B(
        \stonyman_0/counterWait[14]_net_1 ), .Y(\stonyman_0/I_40 ));
    OR2B \psram_cr_0/cr_int_i0/ac_counter_RNIBQOS[0]  (.A(
        \psram_cr_0/dt_rw ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_67 ));
    NOR3B \stonyman_0/substate_i_RNO_0[0]  (.A(\stonyman_0/N_1539_6 ), 
        .B(\stonyman_0/substate_ns_i_0_a4_2_0[0] ), .C(
        \stonyman_0/N_1599 ), .Y(\stonyman_0/N_1537 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[16]  (.A(
        \psram_cr_0/cr_int_i0/N_264 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[0]  (.D(
        \psram_cr_0/cr_int_i0/N_102 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_244 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 ));
    AOI1B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_0_3  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a2_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_3 ));
    NOR3 \stonyman_0/substate_i_RNO_19[0]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/substate[15]_net_1 ), .C(
        \stonyman_0/substate[1]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_3[0] ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_243 ));
    NOR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNI3MC0S[1]  (.A(
        \stonyman_0/substate_tr13_4_3_a2_4 ), .B(\stonyman_0/N_122 ), 
        .Y(\stonyman_0/N_1144 ));
    AX1C \stonyman_0/un2_cachedValue_1_I_12  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/DWACT_FINC_E[0] ), 
        .C(\stonyman_0/cachedValue[4] ), .Y(\stonyman_0/I_12_0 ));
    OA1 \psram_cr_0/ahb0/hrdata_reg_RNO_3[1]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_8 ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_cnst_m_1[1] ));
    AX1B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I15_Y  
        (.A(\stonyman_0/I11_un1_Y_0 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_0_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I15_Y_0_2 ), .Y(
        \stonyman_0/mult1_un89_sum[5] ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_86 ));
    OR3 \stonyman_0/un3_counterWait_I_39  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(\stonyman_0/DWACT_FDEC_E[7] )
        , .C(\stonyman_0/DWACT_FDEC_E[8] ), .Y(\stonyman_0/N_17 ));
    AO1A \stonyman_0/substate_RNO[17]  (.A(\stonyman_0/N_1482 ), .B(
        \stonyman_0/N_208 ), .C(\stonyman_0/substate_ns_0_0[17] ), .Y(
        \stonyman_0/substate_ns[17] ));
    AO1C \stonyman_0/substate_i_RNIE62P2[0]  (.A(
        \stonyman_0/substate_i[0]_net_1 ), .B(\stonyman_0/un45lto2 ), 
        .C(\stonyman_0/N_1913 ), .Y(\stonyman_0/un1_incp_1_sqmuxa_0 ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[1]  (.A(\FIFO_PIXEL_0/MX2_12_Y ), .B(
        \FIFO_PIXEL_0/MX2_90_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[1] ));
    DFN1E1 \counter_0/COUNT[18]  (.D(\counter_0/COUNT_n18 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[18] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIL3UL[17]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[16]  (.A(
        \psram_cr_0/ahb0/N_227 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PWDATA[0]  (.D(
        \CoreAHBLite_0_AHBmslave6_HWDATA[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3OI ), 
        .Q(\CoreAPB3_0_APBmslave0_0_PWDATA[0] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[15]  (.D(
        \psram_cr_0/cr_int_i0/N_50 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[15] ));
    MX2 \FIFO_PIXEL_0/MX2_12  (.A(\FIFO_PIXEL_0/MX2_10_Y ), .B(
        \FIFO_PIXEL_0/MX2_35_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_12_Y ));
    MX2B \stonyman_0/substate_RNO[1]  (.A(
        \stonyman_0/substate_RNO_0[1]_net_1 ), .B(
        \stonyman_0/substate_RNO_1[1]_net_1 ), .S(
        \stonyman_0/substate_RNO_2[1]_net_1 ), .Y(
        \stonyman_0/substate_RNO[1]_net_1 ));
    BUFF \FIFO_PIXEL_0/XOR2_16  (.A(\FIFO_PIXEL_0/MEM_WADDR[2] ), .Y(
        \FIFO_PIXEL_0/XOR2_16_Y ));
    NOR2A \adc081s101_0/cs_RNI6E38  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        CS_c), .Y(\adc081s101_0/N_109 ));
    DFN1 \stonyman_0/counterPixelsCaptured[8]  (.D(
        \stonyman_0/counterPixelsCaptured_8[8] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[31]  (.D(
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[31]_net_1 ));
    OR3 \stonyman_0/substate_RNO[3]  (.A(
        \stonyman_0/substate_ns_0_4[3] ), .B(
        \stonyman_0/substate_ns_0_3[3] ), .C(\stonyman_0/N_1226 ), .Y(
        \stonyman_0/substate_ns[3] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIINTL[14]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ));
    OA1 \stonyman_0/state_RNI6UFH51[2]  (.A(\stonyman_0/N_1950 ), .B(
        \stonyman_0/N_1949 ), .C(
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_2[1] ), .Y(
        \stonyman_0/N_100 ));
    OR2A \counter_0/counterInternal_RNI98P85[16]  (.A(
        \counter_0/COUNT8_25 ), .B(
        \counter_0/counterInternal[16]_net_1 ), .Y(\counter_0/N_470 ));
    OR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO00II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 )
        );
    AO1B \stonyman_0/substate_RNI5367B[8]  (.A(\stonyman_0/N_73 ), .B(
        \stonyman_0/un1_reset_i_0_tz ), .C(\stonyman_0/N_1692_1 ), .Y(
        \stonyman_0/N_9 ));
    OR2A \FIFO_PIXEL_0/OR2A_1  (.A(\FIFO_PIXEL_0/MEMRENEG ), .B(
        \FIFO_PIXEL_0/NAND3B_3_Y ), .Y(\FIFO_PIXEL_0/OR2A_1_Y ));
    XA1C \counter_0/counterInternal_RNO[19]  (.A(\counter_0/N_34 ), .B(
        \counter_0/counterInternal[19]_net_1 ), .C(\counter_0/COUNTe ), 
        .Y(\counter_0/N_23 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_221 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[9]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[9] ));
    OR2 \stonyman_0/state_RNIRETN[7]  (.A(\stonyman_0/N_107 ), .B(
        \stonyman_0/state[7]_net_1 ), .Y(\stonyman_0/N_108 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_271 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 ));
    NOR2B \stonyman_0/counterWait_RNIU7569[10]  (.A(
        \stonyman_0/counterWait8 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/N_201 ));
    AO1 \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0[1]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0[1]_net_1 )
        , .B(FIFO_PIXEL_0_EMPTY), .C(
        \stonyman_apb3_0/stonyman_ioreg_0/N_35 ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[1] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNI99P83[3]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_88 ));
    CLKSRC \clkgenerator_0/clkCameraSS_RNIR4A/U_CLKSRC  (.A(
        \clkgenerator_0/SCLK_i ), .Y(SCLK_c));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[31]  (.A(
        \psram_cr_0/ahb0/busy_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_63 ));
    IOBI_IB_OB_EB \psram_data_pad[4]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[4] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[4]/U0/NET3 ), .DOUT(
        \psram_data_pad[4]/U0/NET1 ), .EOUT(
        \psram_data_pad[4]/U0/NET2 ), .Y(\psram_data_in[4] ));
    DFN1 \psram_cr_0/cr_int_i0/address[3]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[3] ));
    OR2 \stonyman_0/counterWait_RNISHJH[22]  (.A(
        \stonyman_0/counterWait[22]_net_1 ), .B(
        \stonyman_0/counterWait[19]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_5 ));
    OR2 \stonyman_0/state_RNI0Q97[10]  (.A(\stonyman_0/state[9]_net_1 )
        , .B(\stonyman_0/state[10]_net_1 ), .Y(\stonyman_0/N_1473 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_223 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ));
    DFN1E1 \adc081s101_0/dataout[4]  (.D(\adc081s101_0_dataout[3] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[4] ));
    XOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I15_Y  
        (.A(\stonyman_0/counterPixelsCaptured[6]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/N146_0 ), .Y(\stonyman_0/mult1_un103_sum[5] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 )
        );
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_18_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[18] ), .B(N_1301), .Y(N_24));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNINSLP81[0]  (
        .A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3Il_0_0 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Il ));
    XNOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m2  
        (.A(\stonyman_0/mult1_un89_sum[5] ), .B(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_2 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_3 ));
    IOTRI_OB_EB \psram_ncs0_pad/U0/U1  (.D(psram_ncs0_c_c_c), .E(
        PLLEN_VCC), .DOUT(\psram_ncs0_pad/U0/NET1 ), .EOUT(
        \psram_ncs0_pad/U0/NET2 ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_65  (.A(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_2[0] ), .Y(
        \stonyman_0/I_65 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_7  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET ));
    OR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I3_P0N  
        (.A(\stonyman_0/mult1_un75_sum[6] ), .B(\stonyman_0/N146_2 ), 
        .Y(\stonyman_0/N132_0 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[10]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[10] ), .B(\FIFO_PIXEL_0/AO1_12_Y ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[10] ));
    AO1A \stonyman_0/state_RNIBHT01[3]  (.A(\stonyman_0/N_1387 ), .B(
        \stonyman_0/un1_state_18_2_tz ), .C(
        \stonyman_0/un1_state_18_0 ), .Y(\stonyman_0/un1_state_18_1 ));
    OR2A \counter_0/COUNT_RNI9151[2]  (.A(\counter_0_COUNT[2] ), .B(
        \counter_0/COUNT_RNI5IO[1]_net_1 ), .Y(
        \counter_0/COUNT_RNI9151[2]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[7]  (.D(
        \psram_cr_0/cr_int_i0/N_34 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[7] ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_254 ));
    OR2 \stonyman_0/substate_ns_0_0_0[2]  (.A(\stonyman_0/N_94 ), .B(
        \stonyman_0/N_93 ), .Y(\stonyman_0/substate_ns_0_0_0[2]_net_1 )
        );
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[4]  (.A(
        \psram_cr_0/data_from_cr[4] ), .B(
        \psram_cr_0/ahb0/data_out[4]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_263 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[15]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[15] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[9]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[9] ));
    OR2A \counter_0/COUNT_RNII4TI[10]  (.A(\counter_0_COUNT[10] ), .B(
        \counter_0/COUNT_RNI1SV3[9]_net_1 ), .Y(
        \counter_0/COUNT_RNII4TI[10]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[25]  (.D(
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[25]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIC3HQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[25] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[25] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_706 ));
    XNOR2 \stonyman_0/un3_counterWait_I_14  (.A(\stonyman_0/N_26_0 ), 
        .B(\stonyman_0/counterWait[5]_net_1 ), .Y(\stonyman_0/I_14_0 ));
    DFN1 \counter_0/state[1]  (.D(\counter_0/state_nss[1] ), .CLK(
        SCLK_c), .Q(\counter_0/state[1]_net_1 ));
    AND2 \adc081s101_0/un1_cntrWaitLeading_I_1  (.A(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \adc081s101_0/N_63 ), .Y(\adc081s101_0/DWACT_ADD_CI_0_TMP[0] ));
    DFN1 \counter_0/counterInternal[5]  (.D(\counter_0/N_441_i ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[5]_net_1 ));
    OR3 \stonyman_0/substate_RNI3C8201[10]  (.A(
        \stonyman_0/substate_ns_i_8_0_4[1] ), .B(\stonyman_0/N_1543 ), 
        .C(\stonyman_0/N_1544 ), .Y(
        \stonyman_0/substate_ns_i_8_0_6[1] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_28_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[28] ), .B(N_1301), .Y(N_1296));
    DFN1E1 \stonyman_0/counterWait[5]  (.D(\stonyman_0/N_14 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[5]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUTD01_0[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ));
    NOR2 \counter_0/state_RNO_2[1]  (.A(\counter_0/state[1]_net_1 ), 
        .B(\counter_0/COUNT8 ), .Y(\counter_0/N_70 ));
    MX2 \FIFO_PIXEL_0/MX2_31  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB7 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB7 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_31_Y ));
    NOR2B \FIFO_PIXEL_0/AO1_1  (.A(\FIFO_PIXEL_0/MEM_WADDR[1] ), .B(
        \FIFO_PIXEL_0/AND2_27_Y ), .Y(\FIFO_PIXEL_0/AO1_1_Y ));
    NOR2B \stonyman_0/substate_RNO_4[5]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[5]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0[5] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(\psram_cr_0/data_to_cr[14] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_170 ));
    AOI1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIPCR05[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_89 ));
    AOI1 \stonyman_0/state_RNO_2[2]  (.A(\stonyman_0/state9 ), .B(
        \stonyman_0/state[1]_net_1 ), .C(\stonyman_0/state[2]_net_1 ), 
        .Y(\stonyman_0/N_1679 ));
    IOTRI_OB_EB \rs485_nre_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\rs485_nre_pad/U0/NET1 ), .EOUT(\rs485_nre_pad/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[21]  (.A(
        \psram_cr_0/ahb0/N_232 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[26]  (.A(
        \psram_cr_0/ahb0/N_205 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[10]  (.D(
        \psram_cr_0/cr_int_i0/N_40 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[10] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[9]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[9] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[9] ));
    XNOR2 \stonyman_0/un3_counterWait_I_82  (.A(\stonyman_0/N_5_1 ), 
        .B(\stonyman_0/counterWait[26]_net_1 ), .Y(\stonyman_0/I_82 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[8]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[8] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[3]  (.A(
        \psram_cr_0/data_to_cr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_73 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[3] ));
    NOR3 \stonyman_0/substate_RNIQHBQ[15]  (.A(
        \stonyman_0/substate[9]_net_1 ), .B(
        \stonyman_0/substate[15]_net_1 ), .C(
        \stonyman_0/substate[13]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_2_2_4 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[13]  (.A(
        \psram_cr_0/data_from_cr[13] ), .B(\psram_data_in[13] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_244 ));
    DFN1E1 \adc081s101_0/dataout[6]  (.D(\adc081s101_0_dataout[5] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[6] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[4] ));
    OR2 \FIFO_PIXEL_0/OR2_14  (.A(\FIFO_PIXEL_0/NAND3A_3_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_14_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a0  
        (.A(\stonyman_0/ADD_9x9_fast_I5_un1_Y_a0_1 ), .B(
        \stonyman_0/mult1_un89_sum[6] ), .C(
        \stonyman_0/mult1_un89_sum[7] ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_252 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_61  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB3 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB3 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_61_Y ));
    DFN1E1 \adc081s101_0/bitsRead[3]  (.D(\adc081s101_0/N_39 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[3]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[13]  (.D(N_14), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[13] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/max_addr[31] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_242 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_25_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[25] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[25] ));
    BUFF \FIFO_PIXEL_0/BUFF_6  (.A(\FIFO_PIXEL_0/DFN1E1C0_0_Q ), .Y(
        \FIFO_PIXEL_0/BUFF_6_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2C9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[2] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[2] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_683 ));
    NOR3C \FIFO_PIXEL_0/AO1_6  (.A(\FIFO_PIXEL_0/MEM_RADDR[3] ), .B(
        \FIFO_PIXEL_0/XOR2_9_Y ), .C(\FIFO_PIXEL_0/AO1_14_Y ), .Y(
        \FIFO_PIXEL_0/AO1_6_Y ));
    NOR2B \stonyman_0/substate_RNO_1[12]  (.A(
        \stonyman_0/substate_ns_i_0_a4_0[0] ), .B(
        \stonyman_0/N_1476_i_0 ), .Y(\stonyman_0/N_1587 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[10]  (.D(N_8), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[10] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_9_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ));
    OR2 \stonyman_0/un3_counterWait_I_78  (.A(
        \stonyman_0/counterWait[24]_net_1 ), .B(
        \stonyman_0/counterWait[25]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[20] ));
    AX1A \counter_0/counterInternal_RNO_0[7]  (.A(
        \counter_0/counterInternal[6]_net_1 ), .B(\counter_0/N_57 ), 
        .C(\counter_0/counterInternal[7]_net_1 ), .Y(
        \counter_0/N_443_tz ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[4] )
        );
    NOR3 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_3[0]  
        (.A(\CoreAPB3_0_APBmslave1_PADDR[7] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .C(
        \CoreAPB3_0_APBmslave1_PADDR[0] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_3[0]_net_1 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_57  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[29]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[28]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[30]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[28]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[29]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[30]INT_NET ));
    OR2A \stonyman_0/state_RNISO989_0[6]  (.A(
        \stonyman_0/state[6]_net_1 ), .B(\stonyman_0/N_1661 ), .Y(
        \stonyman_0/N_1672 ));
    OR2A \adc081s101_0/conversionComplete_RNO  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\adc081s101_0/N_104 ), .Y(
        \adc081s101_0/N_68 ));
    DFN1 \psram_cr_0/ahb0/data_in[14]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[14] ));
    NOR2A \stonyman_0/substate_RNO_27[3]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/un46lto2 ), .Y(
        \stonyman_0/substate_ns_0_a4_2_0[3] ));
    AND2A \FIFO_TEST_COUNTER_0/AND2A_0  (.A(FIFO_TEST_COUNTER_0_EMPTY), 
        .B(\FIFO_TEST_COUNTER_0.REP ), .Y(
        \FIFO_TEST_COUNTER_0/AND2A_0_Y ));
    XO1 \adc081s101_0/cntrWaitLeading_RNO[0]  (.A(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \adc081s101_0/N_63 ), .C(\adc081s101_0/cs_1_sqmuxa ), .Y(
        \adc081s101_0/cntrWaitLeading_6[0] ));
    NOR2 \stonyman_0/substate_RNO_32[3]  (.A(
        \stonyman_0/state[2]_net_1 ), .B(\stonyman_0/state[1]_net_1 ), 
        .Y(\stonyman_0/substate_tr32_3_1 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[4]  (.A(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[4] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_173 ));
    OR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO  (.A(
        \COREAHBTOAPB3_0/N_152 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO_net_1 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[10]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[10] ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[1]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[1] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_1304 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 ));
    DFN1E1 \adc081s101_0/dataout[2]  (.D(\adc081s101_0_dataout[1] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[2] ));
    XOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I15_Y_1  
        (.A(\stonyman_0/counterPixelsCaptured[6]_net_1 ), .B(
        \stonyman_0/N146_1 ), .Y(\stonyman_0/mult1_un110_sum_1[5] ));
    AOI1A \stonyman_0/substate_RNIU5J0A[4]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/substate[9]_net_1 ), 
        .C(\stonyman_0/substate[4]_net_1 ), .Y(\stonyman_0/N_146 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[7]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .C(\psram_cr_0/ahb0/data_out_m[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[2] ));
    NOR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNIT1SK4[5]  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[5] ), 
        .Y(\stonyman_0/N_1956 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[7]  (.A(
        \psram_cr_0/data_from_cr[7] ), .B(
        \psram_cr_0/ahb0/data_out[7]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_266 ));
    NOR3B \stonyman_0/substate_RNO_3[5]  (.A(\stonyman_0/N_1495 ), .B(
        \stonyman_0/N_1481 ), .C(\stonyman_0/substate_i[0]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_1[5] ));
    DFN1 \counter_0/WRITEEN  (.D(\counter_0/WRITEEN_RNO_net_1 ), .CLK(
        SCLK_c), .Q(counter_0_WRITEEN));
    NOR2A \stonyman_0/counterPixelsCaptured_RNICHIL[15]  (.A(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/state103_7 ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNIBSIM[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 ));
    NOR3 \stonyman_0/substate_RNO[16]  (.A(\stonyman_0/N_183 ), .B(
        \stonyman_0/N_208 ), .C(\stonyman_0/N_1482 ), .Y(
        \stonyman_0/substate_RNO[16]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[5]  (.A(\FIFO_PIXEL_0/MX2_39_Y ), .B(
        \FIFO_PIXEL_0/MX2_16_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[5] ));
    NOR2A \stonyman_0/counterWait_RNIU7569_0[10]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait8 ), .Y(
        \stonyman_0/N_1692_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[2]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_767 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[2]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_19[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[17] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_214 ));
    IOTRI_OB_EB \psram_address_pad[3]/U0/U1  (.D(\psram_address_c[3] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[3]/U0/NET1 ), .EOUT(
        \psram_address_pad[3]/U0/NET2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_67  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    OR3A \stonyman_0/state_RNO_0[10]  (.A(\stonyman_0/N_1473 ), .B(
        \stonyman_0/state_ns_i_0_0[10] ), .C(\stonyman_0/N_99 ), .Y(
        \stonyman_0/state_ns_i_0_2[10] ));
    NOR3A \counter_0/counterInternal_RNIMGCA1[7]  (.A(\counter_0/N_32 )
        , .B(\counter_0/counterInternal[6]_net_1 ), .C(
        \counter_0/counterInternal[7]_net_1 ), .Y(
        \counter_0/COUNT8_22_1 ));
    NOR2A \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_RNI63PM  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOIIl ));
    XA1A \counter_0/COUNT_RNO[8]  (.A(\counter_0_COUNT[8] ), .B(
        \counter_0/COUNT_RNIC953[7]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_RNO[8]_net_1 ));
    OR2A \psram_cr_0/cr_int_i0/noe0_5_0_o2_RNIK03A  (.A(
        \psram_cr_0/cr_int_i0/N_87 ), .B(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ), .Y(
        \psram_cr_0/cr_int_i0/N_347 ));
    DFN1 \stonyman_0/counterPixelsCaptured[15]  (.D(
        \stonyman_0/counterPixelsCaptured_8[15] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNO_0[2]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(\stonyman_0/N_146 ), .C(
        \stonyman_0/N_110 ), .Y(\stonyman_0/N_165 ));
    XNOR2 \stonyman_0/un3_counterWait_I_49  (.A(\stonyman_0/N_14_0 ), 
        .B(\stonyman_0/counterWait[17]_net_1 ), .Y(\stonyman_0/I_49 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_221 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_40 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[21] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[21] ));
    NOR3A \counter_0/counterInternal_RNIE8T31[15]  (.A(
        \counter_0/COUNT8_23_1 ), .B(
        \counter_0/counterInternal[12]_net_1 ), .C(
        \counter_0/counterInternal[15]_net_1 ), .Y(
        \counter_0/COUNT8_23_4 ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a1_2  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_0 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/mult1_un96_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_2 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a0  
        (.A(\stonyman_0/ADD_9x9_fast_I1_P0N_a3_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a4_0  
        (.A(\stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a4_0 ));
    AX1B \stonyman_0/un3_counterWait_I_26  (.A(
        \stonyman_0/counterWait[8]_net_1 ), .B(
        \stonyman_0/DWACT_FDEC_E[4] ), .C(
        \stonyman_0/counterWait[9]_net_1 ), .Y(\stonyman_0/I_26 ));
    NOR2B \stonyman_0/substate_i_RNO_7[0]  (.A(
        \stonyman_0/substate_ns_i_0_a4_4_11[0] ), .B(
        \stonyman_0/N_1539_6 ), .Y(\stonyman_0/N_1539 ));
    NOR3C \psram_cr_0/cr_int_i0/active_data_RNO_0  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0.cr_int_i0.active_data ), .C(
        \psram_cr_0/cr_int_i0/N_77 ), .Y(\psram_cr_0/cr_int_i0/N_93 ));
    DFN1E1 \counter_0/COUNT[24]  (.D(\counter_0/COUNT_n24 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[24] ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_1  
        (.A(\stonyman_0/ADD_9x9_fast_I5_un1_Y_a0 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_a0 ), .C(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_1_1 ), .Y(
        \stonyman_0/I5_un1_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[6]  (.A(
        \psram_cr_0/data_from_cr[6] ), .B(\psram_data_in[6] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_237 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXD_1  (.D(
        \MSS_CORE2_0/MACTXD_net_0[1] ), .E(PLLEN_VCC), .PAD(MAC_TXD[1])
        );
    NOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I16_Y_1035_m4  
        (.A(\stonyman_0/N146_2 ), .B(\stonyman_0/mult1_un75_sum[5] ), 
        .C(\stonyman_0/N150_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_9 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[3]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[3] ));
    XA1A \FIFO_PIXEL_0/AND2_EMPTYINT  (.A(
        \FIFO_PIXEL_0/RBINNXTSHIFT[12] ), .B(
        \FIFO_PIXEL_0/MEM_WADDR[12] ), .C(\FIFO_PIXEL_0/AND3_0_Y ), .Y(
        \FIFO_PIXEL_0/EMPTYINT ));
    OA1A \psram_cr_0/ahb0/hrdata_reg_RNO_6[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_0[0] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIPRAA[12]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_1 ));
    OA1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI78FQU[1]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lI ));
    NOR2A 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_RNIFCDN[0]  
        (.A(\stonyman_apb3_0/stonyman_ioreg_0/N_40 ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[8]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] ));
    AND2 \stonyman_0/un1_cachedPOINTER_3_I_1  (.A(
        \stonyman_0/un45lto0 ), .B(
        \stonyman_0/substate_RNIAIF5C[5]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_TMP_0[0] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI43GQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[21] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[21] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_702 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[26]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[26] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[26] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_791 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[20]  (.A(
        \psram_cr_0/ahb0/operation[20]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_199 ));
    MX2 \FIFO_PIXEL_0/MX2_57  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB4 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB4 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_57_Y ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_181 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2BUP[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI01EA2[4]  (.A(
        \stonyman_0/DOUT_TMP[4] ), .B(\stonyman_0/DIN_REG1[4] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[4] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBIT14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_700 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] ));
    NOR3B \stonyman_0/substate_i_RNIQ3UP51[0]  (.A(\stonyman_0/N_53 ), 
        .B(\stonyman_0/substate_i[0]_net_1 ), .C(\stonyman_0/N_1144 ), 
        .Y(\stonyman_0/substate_ns_i_0_a4_2_1_1[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[3]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[3] ));
    NOR3B \psram_cr_0/cr_int_i0/start_RNO  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\psram_cr_0/cr_int_i0/start_0_net_1 ), .C(
        \psram_cr_0/cr_int_i0/start_1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/start_RNO_net_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[11]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[11] ), .Y(
        \psram_cr_0/ahb0/N_68 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIR870A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[1] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_14_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[14] ), .B(N_1301), .Y(N_16));
    NOR2B \psram_cr_0/ahb0/operation_RNO[22]  (.A(
        \psram_cr_0/ahb0/N_201 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 ));
    IOPAD_TRI \psram_ncs1_pad/U0/U0  (.D(\psram_ncs1_pad/U0/NET1 ), .E(
        \psram_ncs1_pad/U0/NET2 ), .PAD(psram_ncs1));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[5]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[5] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[5] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_216 )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_237 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 ));
    AX1C \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[9]  (.A(
        \FIFO_PIXEL_0/XOR2_14_Y ), .B(\FIFO_PIXEL_0/AO1_18_Y ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[9] ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[9] ));
    XNOR2 \stonyman_0/un3_counterWait_I_56  (.A(\stonyman_0/N_12_0 ), 
        .B(\stonyman_0/counterWait[19]_net_1 ), .Y(\stonyman_0/I_56_0 )
        );
    CLKSRC \MSS_CORE2_0/MSS_ADLIB_INST_RNI7863/U_CLKSRC  (.A(
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn ), .Y(
        MSS_CORE2_0_M2F_RESET_N));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 ));
    NOR3C \stonyman_apb3_0/bus_write_enable_0_a3  (.A(
        CoreAPB3_0_APBmslave0_0_PWRITE), .B(\stonyman_apb3_0/N_109 ), 
        .C(CoreAPB3_0_APBmslave0_0_PENABLE), .Y(
        \stonyman_apb3_0/bus_write_enable ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[20]  (.A(
        \psram_cr_0/cr_int_i0/N_268 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 ));
    NOR3B \stonyman_0/counterWait_RNO[13]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_37 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_22_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_33  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET ));
    DFN1 \psram_cr_0/ahb0/operation[14]  (.D(
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[14] ));
    XA1A \counter_0/COUNT_RNO[21]  (.A(\counter_0_COUNT[21] ), .B(
        \counter_0/COUNT_RNICV185[20]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n21 ));
    DFN1 \counter_0/counterInternal[7]  (.D(
        \counter_0/counterInternal_RNO[7]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[7]_net_1 ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[2]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_79 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_62));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[8]  (.A(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[8] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_177 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[15]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] ));
    XA1A \counter_0/COUNT_RNO[17]  (.A(\counter_0_COUNT[17] ), .B(
        \counter_0/COUNT_RNIDOCC3[16]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n17 ));
    XA1C \counter_0/counterInternal_RNO[14]  (.A(
        \counter_0/counterInternal[14]_net_1 ), .B(\counter_0/N_467 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[14]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[1]  (.A(
        \psram_cr_0/cr_int_i0/N_157 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[1] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[7]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[7] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_255 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNI7CIM[1]  (.A(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 ));
    MX2 \FIFO_PIXEL_0/MX2_72  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB3 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB3 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_72_Y ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_24_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[24] ), .B(N_1301), .Y(N_1292));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_260 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_23  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB0 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB0 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_23_Y ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_22[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[8] ));
    NOR2A \stonyman_0/substate_RNO_0[11]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(\stonyman_0/N_1507 ), .Y(
        \stonyman_0/N_1585 ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[6]  (.D(\FIFO_PIXEL_0/QXI[6] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[6] ));
    NOR2A \stonyman_apb3_0/un1_RDEN_0_a3  (.A(
        \stonyman_apb3_0/bus_read_enable ), .B(FIFO_PIXEL_0_EMPTY), .Y(
        \FIFO_PIXEL_0.REP ));
    DFN1 \psram_cr_0/cr_int_i0/address[23]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[23] ));
    XNOR2 \stonyman_0/un3_counterWait_I_17  (.A(\stonyman_0/N_25_0 ), 
        .B(\stonyman_0/counterWait[6]_net_1 ), .Y(\stonyman_0/I_17 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I3_G0N  
        (.A(\stonyman_0/mult1_un96_sum[6] ), .B(\stonyman_0/N146_0 ), 
        .Y(\stonyman_0/N131 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/operation[26]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_205 ));
    OR2 \FIFO_PIXEL_0/OR2_0  (.A(\FIFO_PIXEL_0/NAND3A_0_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_0_Y ));
    NOR2 \stonyman_0/incp_RNO_9  (.A(\stonyman_0/substate[6]_net_1 ), 
        .B(\stonyman_0/N_1484 ), .Y(
        \stonyman_0/un1_substate_9_sqmuxa_4_0_a2_2_0 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[10]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[10] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[10] ));
    AO1 \stonyman_0/substate_RNO[6]  (.A(\stonyman_0/N_1609 ), .B(
        \stonyman_0/substate_ns_0_0_tz[6] ), .C(\stonyman_0/N_1572 ), 
        .Y(\stonyman_0/substate_ns[6] ));
    NOR3C \stonyman_0/un1_counterPixelsCaptured_16_I_75  (.A(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_3[0] ), .B(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_4[0] ), .C(
        \stonyman_0/DWACT_ADD_CI_0_g_array_3[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_g_array_10[0] ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_a1  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a2_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_a1 ));
    BUFF \FIFO_PIXEL_0/XOR2_62  (.A(\FIFO_PIXEL_0/MEM_WADDR[4] ), .Y(
        \FIFO_PIXEL_0/XOR2_62_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_50  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[8]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[7]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[9]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[7]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[8]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[9]INT_NET ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52_0[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[5] ));
    DFN1 \stonyman_0/state[8]  (.D(\stonyman_0/state_ns[8] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state[8]_net_1 ));
    BUFF \FIFO_PIXEL_0/XOR2_60  (.A(\FIFO_PIXEL_0/MEM_WADDR[10] ), .Y(
        \FIFO_PIXEL_0/XOR2_60_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[2]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[2] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[11]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[11] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[11] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_222 )
        );
    OR3 \stonyman_0/un3_counterWait_I_36  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(\stonyman_0/DWACT_FDEC_E[7] )
        , .C(\stonyman_0/counterWait[12]_net_1 ), .Y(
        \stonyman_0/N_18_0 ));
    MX2 \stonyman_0/counterWait_RNO[0]  (.A(
        \stonyman_0/counterWait_82_0_a2_0[0] ), .B(
        \stonyman_0/counterWait_82_0_a2_0_0[0] ), .S(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(
        \stonyman_0/counterWait_82[0] ));
    OR2 \psram_cr_0/cr_int_i0/ac_counter_lb1_RNIJVME  (.A(
        \psram_cr_0/cr_int_i0/N_72 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ));
    NOR3 \stonyman_0/substate_i_RNO_17[0]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(
        \stonyman_0/substate[9]_net_1 ), .C(
        \stonyman_0/substate[5]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_5[0] ));
    DFN1E1 \counter_0/COUNT[17]  (.D(\counter_0/COUNT_n17 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[17] ));
    BUFF \FIFO_PIXEL_0/BUFF_7  (.A(\FIFO_PIXEL_0/DFN1E1C0_1_Q ), .Y(
        \FIFO_PIXEL_0/BUFF_7_Y ));
    NOR2 \stonyman_0/counterPixelsCaptured_RNIJFHK[3]  (.A(
        \stonyman_0/N_716 ), .B(\stonyman_0/N_715 ), .Y(
        \stonyman_0/un1_counterPixelsCaptured_15_4_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[3]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[3] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_214 )
        );
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_59  (.A(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11[0] ), .Y(
        \stonyman_0/I_59 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[3]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_768 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[3]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 ));
    OA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I11_Y_0  
        (.A(\stonyman_0/mult1_un75_sum[5] ), .B(\stonyman_0/N146_2 ), 
        .C(\stonyman_0/mult1_un75_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_0_0 ));
    NOR2A \stonyman_0/substate_RNO_26[3]  (.A(
        \stonyman_0/state[12]_net_1 ), .B(\stonyman_0/N_1486 ), .Y(
        \stonyman_0/substate_ns_0_a4_3_0[3] ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[5]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_57 ), .Y(\stonyman_0/counterPixelsCaptured_8[5] )
        );
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[19] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_251 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_246 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 ));
    BUFF \FIFO_TEST_COUNTER_0/XOR2_6  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] ), .Y(
        \FIFO_TEST_COUNTER_0/XOR2_6_Y ));
    AO1A \stonyman_0/counterWait_RNO_1[1]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/N_1921 ), .C(
        \stonyman_0/counterWait_82_i_0[1] ), .Y(
        \stonyman_0/counterWait_82_i_1[1] ));
    OR2 \stonyman_0/counterWait_RNIP9JH[13]  (.A(
        \stonyman_0/counterWait[16]_net_1 ), .B(
        \stonyman_0/counterWait[13]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_6 ));
    AO1 \stonyman_0/state_RNIM7QT3[3]  (.A(
        \stonyman_0/substate_ns_i_a4_5_0[1] ), .B(\stonyman_0/N_1512 ), 
        .C(\stonyman_0/N_1549 ), .Y(
        \stonyman_0/substate_ns_i_8_0_0[1] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[12]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[12] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[14]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[14] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[14] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[1]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[1] ));
    DFN1 \psram_cr_0/ahb0/operation[6]  (.D(
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[6] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_60  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .PIN3(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHTRANS1INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABINTINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSELINT_NET ), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHTRANS1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWRITEINT_NET ));
    OR2 \FIFO_PIXEL_0/OR2_7  (.A(\FIFO_PIXEL_0/NAND3B_2_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_7_Y ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[11]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[11] ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[14]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_65 ), .Y(
        \stonyman_0/counterPixelsCaptured_8[14] ));
    DFN1E1 \counter_0/COUNT[8]  (.D(\counter_0/COUNT_RNO[8]_net_1 ), 
        .CLK(SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[8] ));
    NOR3 \stonyman_0/counterWait_RNO[4]  (.A(\stonyman_0/N_169 ), .B(
        \stonyman_0/counterWait_82_i_1[4] ), .C(
        \stonyman_0/counterWait_82_i_3[4] ), .Y(\stonyman_0/N_1916 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIVCV9[6]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_6 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[7]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_61 ), .Y(\stonyman_0/counterPixelsCaptured_8[7] )
        );
    DFN1 \counter_0/counterInternal[6]  (.D(
        \counter_0/counterInternal_RNO[6]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[6]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_13[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[23] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[17]  (.A(
        \psram_cr_0/cr_int_i0/N_265 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 ));
    AND2B \FIFO_PIXEL_0/AND2_MEMORYWE  (.A(stonyman_0_writeEnable), .B(
        FIFO_PIXEL_0_FULL), .Y(\FIFO_PIXEL_0/MEMORYWE ));
    NOR2 \counter_0/counterInternal_RNI906L[5]  (.A(
        \counter_0/counterInternal[5]_net_1 ), .B(
        \counter_0/counterInternal[4]_net_1 ), .Y(\counter_0/N_32 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_249 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[12]/U0/U1  (.D(
        \psram_address_c[12] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[12]/U0/NET1 ), .EOUT(
        \psram_address_pad[12]/U0/NET2 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[2]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[2] ));
    OA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y  
        (.A(\stonyman_0/N125 ), .B(\stonyman_0/ADD_9x9_fast_I9_Y_5 ), 
        .C(\stonyman_0/ADD_9x9_fast_I11_un1_Y_0 ), .Y(
        \stonyman_0/I11_un1_Y_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[31]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[31] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[31] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[31] ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_56  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_1[0] ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/I_56 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_6  (.A(\FIFO_PIXEL_0/MEM_RADDR[10] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[10] ), .Y(\FIFO_PIXEL_0/XNOR2_6_Y ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[7]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[7] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[7] ));
    AO1A \psram_cr_0/cr_int_i0/noe0_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/N_76 ), .B(\psram_cr_0/cr_int_i0/N_67 ), 
        .C(\psram_cr_0/cr_int_i0/N_87 ), .Y(
        \psram_cr_0/cr_int_i0/noe0_5 ));
    NOR2B \psram_cr_0/ahb0/hready_reg_RNI72GV  (.A(
        CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_0 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[2]  (.A(
        \psram_cr_0/data_from_cr[2] ), .B(
        \psram_cr_0/ahb0/data_out[2]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_261 ));
    NOR2B \stonyman_0/state_RNIGET9[4]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/state[4]_net_1 ), .Y(
        \stonyman_0/substate_tr13_4_3_a2_0 ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I16_Y  
        (.A(\stonyman_0/N146_0 ), .B(\stonyman_0/mult1_un96_sum[5] ), 
        .C(\stonyman_0/N150_2 ), .Y(\stonyman_0/mult1_un103_sum[6] ));
    OR2A \stonyman_0/substate_RNITP8R[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(\stonyman_0/N_1476_i_0 ), 
        .Y(\stonyman_0/N_73 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[16] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_227 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[12]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[12] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[12] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[12] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[12] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[0]  (.A(
        \psram_address_c[0] ), .B(\psram_cr_0/cr_int_i0/address_5[0] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_248 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_23_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[23] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[23] ));
    MX2 \FIFO_PIXEL_0/MX2_16  (.A(\FIFO_PIXEL_0/MX2_60_Y ), .B(
        \FIFO_PIXEL_0/MX2_77_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_16_Y ));
    MX2 \FIFO_PIXEL_0/MX2_39  (.A(\FIFO_PIXEL_0/MX2_37_Y ), .B(
        \FIFO_PIXEL_0/MX2_53_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_39_Y ));
    OA1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[1]  (.A(
        \COREAHBTOAPB3_0/N_152 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_175_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[0]  (.D(N_58), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[0] ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[3]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[3] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_85 ));
    MX2 \FIFO_PIXEL_0/MX2_89  (.A(\FIFO_PIXEL_0/MX2_2_Y ), .B(
        \FIFO_PIXEL_0/MX2_95_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_89_Y ));
    AO1 \stonyman_0/counterPixelsCaptured_RNII7AHL1[10]  (.A(
        \stonyman_0/counterPixelsCaptured_RNIO4PKI[10]_net_1 ), .B(
        \stonyman_0/mult1_un75_sum[6] ), .C(\stonyman_0/d_N_9 ), .Y(
        \stonyman_0/counterPixelsCaptured_RNII7AHL1[10]_net_1 ));
    OR3A \stonyman_0/substate_RNO_0[8]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/N_1578 ), .C(\stonyman_0/N_1577 ), .Y(
        \stonyman_0/substate_ns_i_1[8] ));
    IOPAD_TRI \psram_address_pad[12]/U0/U0  (.D(
        \psram_address_pad[12]/U0/NET1 ), .E(
        \psram_address_pad[12]/U0/NET2 ), .PAD(psram_address[12]));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I17_Y_2_1  
        (.A(\stonyman_0/N146_2 ), .B(\stonyman_0/mult1_un75_sum[5] ), 
        .C(\stonyman_0/N150_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_2_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(\psram_cr_0/reg_addr[12] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_168 ));
    AX1C \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[9]  (.A(
        \FIFO_PIXEL_0/XOR2_19_Y ), .B(\FIFO_PIXEL_0/AO1_5_Y ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[9] ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[9] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[22]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[22] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_2[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[12] ));
    OR3 \stonyman_0/substate_RNO_15[3]  (.A(
        \stonyman_0/substate_ns_0_a4_5_1[3] ), .B(
        \stonyman_0/substate_ns_0_a4_4_2[3] ), .C(
        \stonyman_0/substate_ns_0_a4_6_1[3] ), .Y(
        \stonyman_0/substate_ns_0_1088_tz_1 ));
    DFN1E1 \counter_0/COUNT[9]  (.D(\counter_0/COUNT_n9 ), .CLK(SCLK_c)
        , .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[9] ));
    NOR2A \stonyman_0/state_i_RNIO1B39[0]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/state_i[0]_net_1 ), 
        .Y(\stonyman_0/N_1709 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[14]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[14] ));
    AND3 \FIFO_PIXEL_0/AND3_4  (.A(\FIFO_PIXEL_0/XNOR2_15_Y ), .B(
        \FIFO_PIXEL_0/XNOR2_8_Y ), .C(\FIFO_PIXEL_0/XNOR2_2_Y ), .Y(
        \FIFO_PIXEL_0/AND3_4_Y ));
    OR2A \stonyman_0/substate_i_RNID8R8[0]  (.A(\stonyman_0/N_1920 ), 
        .B(\stonyman_0/substate_i[0]_net_1 ), .Y(\stonyman_0/N_102 ));
    OA1A \stonyman_0/state_RNO_0[9]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(\stonyman_0/counterWait8 )
        , .C(\stonyman_0/state_ns_0_a4_0[9] ), .Y(\stonyman_0/N_1699 ));
    DFN1 \psram_cr_0/ahb0/operation[28]  (.D(
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[28]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[15]/U0/U1  (.D(
        \psram_address_c[15] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[15]/U0/NET1 ), .EOUT(
        \psram_address_pad[15]/U0/NET2 ));
    OR3 \stonyman_0/counterWait_RNIQ7731[25]  (.A(
        \stonyman_0/counterWait[25]_net_1 ), .B(
        \stonyman_0/counterWait[27]_net_1 ), .C(
        \stonyman_0/counterWait8lt29_5 ), .Y(
        \stonyman_0/counterWait8lt29_17 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[15]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[15] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[15] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_780 ));
    DFN1E1 \stonyman_0/counterWait[29]  (.D(\stonyman_0/N_46 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[29]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[21]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[21] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI5I8K[8]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[30]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[30] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[17]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_782 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[17]_net_1 ));
    IOPAD_IN \MISO_pad/U0/U0  (.PAD(MISO), .Y(\MISO_pad/U0/NET1 ));
    NOR2A \adc081s101_0/cs_RNILR0G  (.A(\adc081s101_0/cs_1_sqmuxa_1 ), 
        .B(\adc081s101_0/N_42 ), .Y(\adc081s101_0/bitsRead_0_sqmuxa ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_185 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_a5_0_0  
        (.A(\stonyman_0/counterPixelsCaptured[7]_net_1 ), .B(
        \stonyman_0/mult1_un89_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_a5_0_0 ));
    MX2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_un1_Y_0  
        (.A(\stonyman_0/mult1_un110_sum[6] ), .B(
        \stonyman_0/mult1_un110_sum_1[5] ), .S(\stonyman_0/N146 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_0 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_210 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_6  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[2] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_6_Y ));
    XA1A \counter_0/COUNT_RNO[16]  (.A(\counter_0_COUNT[16] ), .B(
        \counter_0/N_58 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n16 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIU870A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[4] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[24]  (.A(
        \psram_cr_0/ahb0/N_235 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 ));
    OR2B \stonyman_0/substate_RNI1GT8[17]  (.A(
        \stonyman_0/substate[17]_net_1 ), .B(
        \stonyman_0/state[10]_net_1 ), .Y(\stonyman_0/N_1662 ));
    OR2A \adc081s101_0/cntrWaitTrailing_RNO[0]  (.A(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(
        \adc081s101_0/bitsRead_0_sqmuxa ), .Y(\adc081s101_0/N_139 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[0]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] ));
    XA1 \stonyman_0/counterWait_RNO_0[1]  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(\stonyman_0/N_110 ), .Y(
        \stonyman_0/N_158 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_179 ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I12_Y_m12_0_a3_1_1  
        (.A(\stonyman_0/ADD_9x9_fast_I12_Y_m12_0_o3_0 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/mult1_un75_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[0]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[0]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[0] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[5]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[5] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] ));
    IOPAD_TRI \psram_address_pad[15]/U0/U0  (.D(
        \psram_address_pad[15]/U0/NET1 ), .E(
        \psram_address_pad[15]/U0/NET2 ), .PAD(psram_address[15]));
    DFN1 \counter_0/counterInternal[1]  (.D(
        \counter_0/counterInternal_RNO[1]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_179 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[6]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[3]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[3] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[3] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_768 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_7_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[7] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[7] ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_1  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[0] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_1_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[5]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[5]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[5] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI1970A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[7] ));
    MX2 \FIFO_PIXEL_0/MX2_25  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB3 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB3 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_25_Y ));
    NOR3C \stonyman_0/substate_ns_0_0_a2_RNO[2]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/N_1476_i_0 ), .Y(
        \stonyman_0/substate_ns_0_0_a2_1[2] ));
    NOR3A \stonyman_0/state_RNO[1]  (.A(\stonyman_0/state_ns[0] ), .B(
        \stonyman_0/N_1677 ), .C(\stonyman_0/N_1678 ), .Y(
        \stonyman_0/state_RNO[1]_net_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[6]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[9]  (.A(\stonyman_0/I_26 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[9] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[6]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[6] ));
    IOPAD_BI \psram_data_pad[0]/U0/U0  (.D(\psram_data_pad[0]/U0/NET1 )
        , .E(\psram_data_pad[0]/U0/NET2 ), .Y(
        \psram_data_pad[0]/U0/NET3 ), .PAD(psram_data[0]));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNITH8K[0]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[30]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[30] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[4]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[4]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[4] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[4] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_215 )
        );
    DFN1E1 \counter_0/COUNT[5]  (.D(\counter_0/N_14 ), .CLK(SCLK_c), 
        .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[5] ));
    RAM512X18 \FIFO_TEST_COUNTER_0/RAM512X18_QXI[15]  (.RADDR8(
        AFLSDF_GND), .RADDR7(GLMUXINT_GND), .RADDR6(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] ), .RADDR5(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] ), .RADDR4(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] ), .RADDR3(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] ), .RADDR2(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] ), .RADDR1(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] ), .RADDR0(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] ), .WADDR8(AFLSDF_GND), 
        .WADDR7(GLMUXINT_GND), .WADDR6(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] ), .WADDR5(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] ), .WADDR4(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] ), .WADDR3(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] ), .WADDR2(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] ), .WADDR1(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[1] ), .WADDR0(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] ), .WD17(GLMUXINT_GND), 
        .WD16(\counter_0_COUNT[15] ), .WD15(\counter_0_COUNT[14] ), 
        .WD14(\counter_0_COUNT[13] ), .WD13(\counter_0_COUNT[12] ), 
        .WD12(\counter_0_COUNT[11] ), .WD11(\counter_0_COUNT[10] ), 
        .WD10(\counter_0_COUNT[9] ), .WD9(\counter_0_COUNT[8] ), .WD8(
        GLMUXINT_GND), .WD7(\counter_0_COUNT[7] ), .WD6(
        \counter_0_COUNT[6] ), .WD5(\counter_0_COUNT[5] ), .WD4(
        \counter_0_COUNT[4] ), .WD3(\counter_0_COUNT[3] ), .WD2(
        \counter_0_COUNT[2] ), .WD1(\counter_0_COUNT[1] ), .WD0(
        \counter_0_COUNT[0] ), .RW0(GLMUXINT_GND), .RW1(PLLEN_VCC), 
        .WW0(GLMUXINT_GND), .WW1(PLLEN_VCC), .PIPE(GLMUXINT_GND), .REN(
        \FIFO_TEST_COUNTER_0/MEMRENEG ), .WEN(
        \FIFO_TEST_COUNTER_0/MEMWENEG ), .RCLK(SCLK_c), .WCLK(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .RD17(), .RD16(
        \FIFO_TEST_COUNTER_0/QXI[15] ), .RD15(
        \FIFO_TEST_COUNTER_0/QXI[14] ), .RD14(
        \FIFO_TEST_COUNTER_0/QXI[13] ), .RD13(
        \FIFO_TEST_COUNTER_0/QXI[12] ), .RD12(
        \FIFO_TEST_COUNTER_0/QXI[11] ), .RD11(
        \FIFO_TEST_COUNTER_0/QXI[10] ), .RD10(
        \FIFO_TEST_COUNTER_0/QXI[9] ), .RD9(
        \FIFO_TEST_COUNTER_0/QXI[8] ), .RD8(), .RD7(
        \FIFO_TEST_COUNTER_0/QXI[7] ), .RD6(
        \FIFO_TEST_COUNTER_0/QXI[6] ), .RD5(
        \FIFO_TEST_COUNTER_0/QXI[5] ), .RD4(
        \FIFO_TEST_COUNTER_0/QXI[4] ), .RD3(
        \FIFO_TEST_COUNTER_0/QXI[3] ), .RD2(
        \FIFO_TEST_COUNTER_0/QXI[2] ), .RD1(
        \FIFO_TEST_COUNTER_0/QXI[1] ), .RD0(
        \FIFO_TEST_COUNTER_0/QXI[0] ));
    MX2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I12_Y_m12_0  
        (.A(\stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_0_2 ), .S(
        \stonyman_0/N146_2 ), .Y(\stonyman_0/ADD_9x9_fast_I12_Y_m12_0 )
        );
    AX1C \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[3]  (.A(
        \FIFO_TEST_COUNTER_0/XOR2_6_Y ), .B(
        \FIFO_TEST_COUNTER_0/AO1_8_Y ), .C(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[3] ));
    IOTRI_OB_EB \psram_address_pad[19]/U0/U1  (.D(
        \psram_address_c[19] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[19]/U0/NET1 ), .EOUT(
        \psram_address_pad[19]/U0/NET2 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[9]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[9] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[9] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI4I8K[7]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[10] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_272 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 ));
    AND2 \FIFO_PIXEL_0/AND2_61  (.A(\FIFO_PIXEL_0/MEM_RADDR[0] ), .B(
        \FIFO_PIXEL_0/MEMORYRE ), .Y(\FIFO_PIXEL_0/AND2_61_Y ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[13] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[7] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]_net_1 ));
    XOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I16_Y  
        (.A(\stonyman_0/mult1_un68_sum[7] ), .B(
        \stonyman_0/ADD_9x9_fast_I16_Y_1_0 ), .C(\stonyman_0/N150_3 ), 
        .Y(\stonyman_0/mult1_un75_sum[6] ));
    DFN1 \adc081s101_0/cntrWaitLeading[1]  (.D(
        \adc081s101_0/cntrWaitLeading_6[1] ), .CLK(SCLK_c), .Q(
        \adc081s101_0/cntrWaitLeading[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_178 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[19]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[19] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[19] ));
    MX2 \FIFO_PIXEL_0/MX2_37  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB5 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB5 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_37_Y ));
    AOI1 \stonyman_0/substate_RNO_0[9]  (.A(
        \stonyman_0/substate[4]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(
        \stonyman_0/substate[9]_net_1 ), .Y(\stonyman_0/N_1580 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[2]  (.A(
        \psram_cr_0/cr_int_i0/N_158 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[2] ));
    XNOR2 \stonyman_0/un3_counterWait_I_9  (.A(\stonyman_0/N_28_0 ), 
        .B(\stonyman_0/counterWait[3]_net_1 ), .Y(\stonyman_0/I_9 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[1]  (.A(
        \psram_cr_0/reg_addr[1] ), .B(\psram_cr_0/data_to_cr[1] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_157 ));
    OA1 \adc081s101_0/cntrWaitTrailing_RNO_0[2]  (.A(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ), .C(
        \adc081s101_0/cntrWaitTrailing[2]_net_1 ), .Y(
        \adc081s101_0/N_74 ));
    MX2 \FIFO_PIXEL_0/MX2_87  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB4 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB4 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_87_Y ));
    NOR2B \stonyman_0/incp_RNO_6  (.A(\stonyman_0/N_201 ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(\stonyman_0/N_152 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[24]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[24] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[24] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_17[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[19] ));
    AX1B \counter_0/counterInternal_RNO_0[5]  (.A(
        \counter_0/counterInternal_c3 ), .B(
        \counter_0/counterInternal[4]_net_1 ), .C(
        \counter_0/counterInternal[5]_net_1 ), .Y(\counter_0/N_441_tz )
        );
    XNOR2 \stonyman_0/un3_counterWait_I_46  (.A(\stonyman_0/N_15 ), .B(
        \stonyman_0/counterWait[16]_net_1 ), .Y(\stonyman_0/I_46 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[19]  (.A(
        \psram_cr_0/ahb0/N_198 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[21]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[21] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[21] ));
    MX2 \FIFO_PIXEL_0/MX2_64  (.A(\FIFO_PIXEL_0/MX2_31_Y ), .B(
        \FIFO_PIXEL_0/MX2_48_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_64_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[29]  (.A(
        \psram_cr_0/ahb0/N_240 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[4]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_10_Y ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[4] ));
    NOR3A \adc081s101_0/bitsRead_RNITSG71[3]  (.A(\adc081s101_0/N_109 )
        , .B(\adc081s101_0/un7lto1 ), .C(
        \adc081s101_0/bitsRead[3]_net_1 ), .Y(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[0]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_765 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[0]_net_1 ));
    IOPAD_TRI \psram_address_pad[19]/U0/U0  (.D(
        \psram_address_pad[19]/U0/NET1 ), .E(
        \psram_address_pad[19]/U0/NET2 ), .PAD(psram_address[19]));
    MX2 \FIFO_PIXEL_0/MX2_10  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB1 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB1 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_10_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[3]  (.A(
        \psram_cr_0/cr_int_i0/N_159 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[3] ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO_0  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_179 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_176 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 ));
    IOPAD_TRI \psram_address_pad[3]/U0/U0  (.D(
        \psram_address_pad[3]/U0/NET1 ), .E(
        \psram_address_pad[3]/U0/NET2 ), .PAD(psram_address[3]));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_225 ));
    MX2 \FIFO_PIXEL_0/MX2_67  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB0 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB0 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_67_Y ));
    NOR3C \stonyman_0/incv_RNO_2  (.A(
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_1 ), .B(
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_0 ), .C(
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_2 ), .Y(
        \stonyman_0/N_1048 ));
    DFN1 \stonyman_0/cachedValue_tile_I_3  (.D(\stonyman_0/N_9_i ), 
        .CLK(SCLK_c), .Q(\stonyman_0/N_5_0 ));
    IOPAD_TRI \psram_address_pad[23]/U0/U0  (.D(
        \psram_address_pad[23]/U0/NET1 ), .E(
        \psram_address_pad[23]/U0/NET2 ), .PAD(psram_address[23]));
    AND2 \FIFO_PIXEL_0/AND2_27  (.A(\FIFO_PIXEL_0/MEM_WADDR[0] ), .B(
        \FIFO_PIXEL_0/MEMORYWE ), .Y(\FIFO_PIXEL_0/AND2_27_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8RGQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[14] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[14] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_695 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[19]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[19] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] ));
    AO1 \stonyman_0/substate_i_RNISQ6MP1[0]  (.A(\stonyman_0/N_134 ), 
        .B(\stonyman_0/N_102 ), .C(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_0 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_1 ));
    NOR3B \stonyman_0/state_RNIOEL1A[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_9_0 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIOEL1A[6]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_38  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[5]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[4]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[6]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[6]INT_NET ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[1]  (.D(
        \psram_cr_0/cr_int_i0/N_54 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/ready_RNO_0  (.A(
        \stonyman_apb3_0.ioreg_ready ), .B(
        \stonyman_apb3_0/bus_write_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_30 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[3]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[3] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI31EA2[7]  (.A(
        \stonyman_0/DOUT_TMP[7] ), .B(\stonyman_0/DIN_REG1[7] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[7] ));
    OR2 \stonyman_0/un3_counterWait_I_63  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/counterWait[21]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[16] ));
    IOPAD_BI \psram_data_pad[14]/U0/U0  (.D(
        \psram_data_pad[14]/U0/NET1 ), .E(\psram_data_pad[14]/U0/NET2 )
        , .Y(\psram_data_pad[14]/U0/NET3 ), .PAD(psram_data[14]));
    NOR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[4]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_167 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_25[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[5] ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[1]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_64 ), .Y(\stonyman_0/counterPixelsCaptured_8[1] )
        );
    OR2A \psram_cr_0/cr_int_i0/noe0_5_0_o2_0_0  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ));
    NOR2A \stonyman_0/counterPixelsCaptured_RNIOAJM[15]  (.A(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/d_m8_0_a5_0_0 ));
    AOI1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_0_1  
        (.A(\stonyman_0/ADD_9x9_fast_I1_G0N_a3_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_0 ), .C(
        \stonyman_0/d_N_16_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[14]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[14] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[14] ));
    AX1C \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[5]  (.A(
        \FIFO_TEST_COUNTER_0/XOR2_41_Y ), .B(
        \FIFO_TEST_COUNTER_0/AO1_10_Y ), .C(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[5] ));
    NOR2A \counter_0/counterInternal_RNIJHLU6[22]  (.A(
        \counter_0/N_480 ), .B(\counter_0/counterInternal[22]_net_1 ), 
        .Y(\counter_0/N_482 ));
    AX1C \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[12]  (.A(
        \FIFO_PIXEL_0/AND2_56_Y ), .B(\FIFO_PIXEL_0/AO1_18_Y ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[12] ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[12] ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[0]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] ), .B(
        \FIFO_TEST_COUNTER_0/MEMORYWE ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[0] ));
    OA1C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_155 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_179 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[12]  (.D(
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[12] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_228 ));
    DFN1 \counter_0/counterInternal[10]  (.D(
        \counter_0/counterInternal_RNO[10]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[10]_net_1 ));
    NOR2 \adc081s101_0/cs_RNO_1  (.A(CS_c), .B(\adc081s101_0/N_44 ), 
        .Y(\adc081s101_0/cs16_0_a2_0 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[20] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_231 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_222 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 ));
    DFN1E1 \adc081s101_0/dataout[5]  (.D(\adc081s101_0_dataout[4] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[5] ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a3  
        (.A(\stonyman_0/ADD_9x9_fast_I1_P0N_a3_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a3 ));
    DFN1E1 \counter_0/COUNT[23]  (.D(\counter_0/COUNT_n23 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[23] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_19  (.A(
        \stonyman_0/DWACT_FINC_E[0] ), .B(\stonyman_0/DWACT_FINC_E[2] )
        , .C(\stonyman_0/cachedValue[6] ), .Y(\stonyman_0/N_2_0 ));
    AO1 \stonyman_0/counterWait_RNO[23]  (.A(\stonyman_0/I_70 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[23] ));
    MX2 \stonyman_0/counterPixelsCaptured_RNIF13F2[11]  (.A(
        \stonyman_0/d_m8_0_a5_0 ), .B(\stonyman_0/d_m8_0_a5_0_0 ), .S(
        \stonyman_0/d_N_12 ), .Y(\stonyman_0/d_m8_0_1 ));
    AO1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[1]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_164 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[1] ));
    NOR3C \stonyman_0/state_RNO_1[6]  (.A(\stonyman_0/state[6]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_1661 ), .Y(
        \stonyman_0/N_1690 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIVQKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_685 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] ));
    AO1 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIT0H1A1[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIV0EA2[3]  (.A(
        \stonyman_0/DOUT_TMP[3] ), .B(\stonyman_0/DIN_REG1[3] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[3] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_233 ));
    DFN1E1 \counter_0/COUNT[16]  (.D(\counter_0/COUNT_n16 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[16] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_31_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[31] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[31] ));
    IOPAD_BI \psram_data_pad[1]/U0/U0  (.D(\psram_data_pad[1]/U0/NET1 )
        , .E(\psram_data_pad[1]/U0/NET2 ), .Y(
        \psram_data_pad[1]/U0/NET3 ), .PAD(psram_data[1]));
    OR2 \FIFO_PIXEL_0/OR2_1  (.A(\FIFO_PIXEL_0/NAND3A_2_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_1_Y ));
    NOR3B \stonyman_0/substate_i_RNO_16[0]  (.A(
        \stonyman_0/substate_ns_i_0_a4_4_4[0] ), .B(
        \stonyman_0/substate_ns_i_0_a4_4_3[0] ), .C(
        \stonyman_0/N_1489 ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_9[0] ));
    DFN1E1 \stonyman_0/counterWait[8]  (.D(\stonyman_0/N_18 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[8]_net_1 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[5]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[5] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[5] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_770 ));
    NOR2B \counter_0/counterInternal_RNI2UPV4[11]  (.A(
        \counter_0/N_29_19 ), .B(\counter_0/COUNT8_22 ), .Y(
        \counter_0/COUNT8_25 ));
    NOR2A \psram_cr_0/ahb0/dt_req_RNO_0  (.A(\psram_cr_0/start_0_0 ), 
        .B(\psram_cr_0/dt_ack ), .Y(\psram_cr_0/ahb0/N_65 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_239 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI4C9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[3] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[3] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_684 ));
    NOR2 \stonyman_0/incv_RNO_5  (.A(\stonyman_0/state[3]_net_1 ), .B(
        \stonyman_0/state[4]_net_1 ), .Y(
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_1 ));
    NOR3B \adc081s101_0/bitsRead_RNO[3]  (.A(
        \adc081s101_0/bitsRead[2]_net_1 ), .B(\adc081s101_0/N_109 ), 
        .C(\adc081s101_0/N_45 ), .Y(\adc081s101_0/N_39 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a1_0  
        (.A(\stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a1_0 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[26]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[26]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[26] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[6]  (.A(\psram_cr_0/ahb0/N_249 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIE7TL[10]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[10] ));
    OR3 \stonyman_0/state_RNO[8]  (.A(\stonyman_0/N_1697 ), .B(
        \stonyman_0/N_1698 ), .C(\stonyman_0/N_1696 ), .Y(
        \stonyman_0/state_ns[8] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[3]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[3] ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[6]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_83 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_70));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[5]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[5] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] ));
    DFN1 \stonyman_0/cachedValue_tile_WADDR_REG1[0]  (.D(
        \stonyman_0/un45lto0 ), .CLK(SCLK_c), .Q(
        \stonyman_0/WADDR_REG1[0] ));
    NOR2 \psram_cr_0/cr_int_i0/enable_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/start_net_1 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_97 ));
    AX1C \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[11]  (.A(
        \FIFO_PIXEL_0/XOR2_60_Y ), .B(\FIFO_PIXEL_0/AO1_12_Y ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[11] ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[11] ));
    IOPAD_BI \psram_data_pad[10]/U0/U0  (.D(
        \psram_data_pad[10]/U0/NET1 ), .E(\psram_data_pad[10]/U0/NET2 )
        , .Y(\psram_data_pad[10]/U0/NET3 ), .PAD(psram_data[10]));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[0]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[0] ));
    NOR2B \stonyman_0/substate_RNI22AK[11]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_10_0[1] ));
    OR2A \adc081s101_0/cs_RNIS37J_0  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/un1_reset_i_1 ));
    OA1 \stonyman_0/substate_RNO_0[10]  (.A(\stonyman_0/N_1488 ), .B(
        \stonyman_0/N_1497 ), .C(\stonyman_0/substate[5]_net_1 ), .Y(
        \stonyman_0/N_1581 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m3  
        (.A(\stonyman_0/ADD_9x9_fast_I11_un1_Y_N_2 ), .B(
        \stonyman_0/mult1_un89_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_4 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un61_sum_ADD_9x9_fast_I17_Y_2_tz  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[24]  (.A(
        \psram_address_c[24] ), .B(
        \psram_cr_0/cr_int_i0/address_5[24] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_272 ));
    NOR2A \stonyman_0/state_RNO_0[1]  (.A(
        \stonyman_0/state_i[0]_net_1 ), .B(\stonyman_0/state[1]_net_1 )
        , .Y(\stonyman_0/N_1677 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[7]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] ));
    NOR2 \stonyman_0/state_RNIB7A6[11]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[12]_net_1 )
        , .Y(\stonyman_0/N_126 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[26]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[26] ));
    IOTRI_OB_EB \led_pad[2]/U0/U1  (.D(\led_c[2] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[2]/U0/NET1 ), .EOUT(\led_pad[2]/U0/NET2 ));
    AND3 \FIFO_TEST_COUNTER_0/AND3_5  (.A(
        \FIFO_TEST_COUNTER_0/XNOR2_7_Y ), .B(
        \FIFO_TEST_COUNTER_0/AND3_4_Y ), .C(
        \FIFO_TEST_COUNTER_0/AND3_3_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AND3_5_Y ));
    MX2B \stonyman_0/counterWait_RNO_2[4]  (.A(
        \stonyman_0/counterWait_82_i_a2_2_0[4] ), .B(\stonyman_0/I_12 )
        , .S(\stonyman_0/N_110 ), .Y(
        \stonyman_0/counterWait_82_i_3[4] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_93  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[3]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] ));
    OR3 \stonyman_0/un3_counterWait_I_71  (.A(
        \stonyman_0/counterWait[21]_net_1 ), .B(
        \stonyman_0/counterWait[22]_net_1 ), .C(
        \stonyman_0/counterWait[23]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[17] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[12]  (.A(
        \psram_cr_0/data_from_cr[12] ), .B(\psram_data_in[12] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_243 ));
    NOR2 \stonyman_0/counterWait_RNO_1[0]  (.A(
        \stonyman_0/writeEnableState_nsss[0] ), .B(\stonyman_0/N_116 ), 
        .Y(\stonyman_0/counterWait_82_0_a2_0_0[0] ));
    NOR2B \FIFO_PIXEL_0/AO1_5  (.A(\FIFO_PIXEL_0/AND2_25_Y ), .B(
        \FIFO_PIXEL_0/AO1_25_Y ), .Y(\FIFO_PIXEL_0/AO1_5_Y ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a0_3  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_2 ), .B(
        \stonyman_0/N146_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_3 ));
    AND2 \stonyman_0/un1_counterPixelsCaptured_16_I_1  (.A(
        \stonyman_0/N_713 ), .B(\stonyman_0/writeEnableState_nsss[0] ), 
        .Y(\stonyman_0/DWACT_ADD_CI_0_TMP[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[16]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[16] ));
    NOR2B \FIFO_PIXEL_0/AND2_19  (.A(\FIFO_PIXEL_0/MEM_RADDR[5] ), .B(
        \FIFO_PIXEL_0/XOR2_10_Y ), .Y(\FIFO_PIXEL_0/AND2_19_Y ));
    OA1 \stonyman_0/state_RNIJRGVL[7]  (.A(\stonyman_0/resv_1_sqmuxa ), 
        .B(\stonyman_0/un1_incp_1_sqmuxa_0 ), .C(
        \stonyman_0/state[7]_net_1 ), .Y(
        \stonyman_0/counterWait_1_sqmuxa_5 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[14]  (.D(N_16), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[14] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[29]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[29] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[29] ));
    XA1A \counter_0/COUNT_RNO[18]  (.A(\counter_0_COUNT[18] ), .B(
        \counter_0/N_60 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n18 ));
    XA1A \counter_0/COUNT_RNO[12]  (.A(\counter_0_COUNT[12] ), .B(
        \counter_0/COUNT_RNI4DQ11[11]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n12 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_77 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_216 ));
    AO1A \stonyman_0/substate_RNO_1[3]  (.A(\stonyman_0/state42 ), .B(
        \stonyman_0/substate_tr32_0_2 ), .C(
        \stonyman_0/substate_ns_0_2[3] ), .Y(
        \stonyman_0/substate_ns_0_3[3] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[21]  (.A(
        \psram_cr_0/ahb0/operation[21]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_200 ));
    DFN1 \counter_0/counterInternal[20]  (.D(
        \counter_0/counterInternal_RNO[20]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[20]_net_1 ));
    NOR2A \stonyman_0/substate_RNO_0[14]  (.A(\stonyman_0/N_1504 ), .B(
        \stonyman_0/substate[14]_net_1 ), .Y(\stonyman_0/N_1591 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[27]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_792 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[27]_net_1 ));
    DFN1 \stonyman_0/substate_i[0]  (.D(\stonyman_0/substate_ns_i[0] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate_i[0]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_41  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB6 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB6 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_41_Y ));
    DFN1E1 \counter_0/COUNT[25]  (.D(\counter_0/COUNT_n25 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[25] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI0C9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[1] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[1] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_682 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_193 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 )
        );
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[6]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[13]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[13] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[13] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_778 ));
    OR2A \stonyman_0/state_i_RNI43SB9[0]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/N_1939 ), .Y(\stonyman_0/N_1482 ));
    NOR3C \psram_cr_0/cr_int_i0/op_counter_RNI00K5[0]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_115 ));
    OR3A \stonyman_0/resp_RNO_1  (.A(\stonyman_0/N_102 ), .B(
        \stonyman_0/N_144 ), .C(\stonyman_0/N_142 ), .Y(
        \stonyman_0/un1_substate_0_sqmuxa_2 ));
    AO1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0[0]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3_0_0[1] )
        , .B(FIFO_TEST_COUNTER_0_FULL), .C(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_71 ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[0] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[8]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[8] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_219 )
        );
    AO1 \stonyman_0/counterWait_RNO_3[1]  (.A(
        \stonyman_0/counterWait_82_i_1096_0 ), .B(\stonyman_0/N_71 ), 
        .C(\stonyman_0/N_116 ), .Y(\stonyman_0/counterWait_82_i_0[1] ));
    DFN1 \psram_cr_0/cr_int_i0/address[22]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[22] ));
    DFN1 \counter_0/counterInternal[12]  (.D(
        \counter_0/counterInternal_RNO[12]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[12]_net_1 ));
    OR3 \stonyman_0/state_RNIHJSMH[1]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_3 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_1_0_0 ), .C(
        \stonyman_0/counterWait_0_sqmuxa_2 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_1_2 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[7]  (.A(
        \psram_cr_0/ahb0/data_out[7]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_out_m[7] ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[2]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[2] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_84 ));
    OR2 \psram_cr_0/cr_int_i0/op_counter_lb1_RNI6OFH  (.A(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_72 ), .Y(
        \psram_cr_0/cr_int_i0/ac_countere ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[25]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[25]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[25] ));
    NOR3 \stonyman_0/state_RNO[5]  (.A(\stonyman_0/N_1687 ), .B(
        \stonyman_0/state_ns_i_0[5] ), .C(\stonyman_0/N_1689 ), .Y(
        \stonyman_0/state_RNO[5]_net_1 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIU0EA2[2]  (.A(
        \stonyman_0/DOUT_TMP[2] ), .B(\stonyman_0/DIN_REG1[2] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[2] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9RKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_690 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] ));
    DFN1 \stonyman_0/substate[12]  (.D(\stonyman_0/substate_ns[12] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[12]_net_1 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[8]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_63 ), .Y(\stonyman_0/counterPixelsCaptured_8[8] )
        );
    OR3 \stonyman_0/un3_counterWait_I_10  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[0] ));
    AO1 \stonyman_0/state_RNI4OFT5[12]  (.A(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_4_0 ), .B(
        \stonyman_0/N_98 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_105 ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXER  (.PAD(MAC_RXER), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXER_Y ));
    NOR3 \counter_0/counterInternal_RNI8LMC6[20]  (.A(\counter_0/N_34 )
        , .B(\counter_0/counterInternal[19]_net_1 ), .C(
        \counter_0/counterInternal[20]_net_1 ), .Y(\counter_0/N_477 ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_19_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[17] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[17] ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a2_1  
        (.A(\stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a6_1 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[1]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_24  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[4] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[4] ), .Y(\FIFO_PIXEL_0/XNOR2_24_Y ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_1  (.A(\FIFO_PIXEL_0/MEM_RADDR[0] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[0] ), .Y(\FIFO_PIXEL_0/XNOR2_1_Y ));
    AO1C \stonyman_0/substate_RNIPB3DQ[17]  (.A(\stonyman_0/N_1921 ), 
        .B(\stonyman_0/N_210 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/N_1919 ));
    NOR2B \stonyman_0/substate_RNIAJ6G2[13]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/cachedValue[5] ), .Y(
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_0[1] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_264 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 ));
    INV \FIFO_TEST_COUNTER_0/MEMWEBUBBLE  (.A(
        \FIFO_TEST_COUNTER_0/MEMORYWE ), .Y(
        \FIFO_TEST_COUNTER_0/MEMWENEG ));
    AX1D 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_remainder[4]  
        (.A(\stonyman_0/I11_un1_Y_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_0_1 ), .C(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .Y(
        \stonyman_0/N_717 ));
    NOR2 \counter_0/counterInternal_RNIBSIJ[11]  (.A(
        \counter_0/counterInternal[11]_net_1 ), .B(
        \counter_0/counterInternal[9]_net_1 ), .Y(
        \counter_0/COUNT8_23_2 ));
    DFN1 \counter_0/counterInternal[19]  (.D(\counter_0/N_23 ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[19]_net_1 ));
    AO1A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I11_Y_4  
        (.A(\stonyman_0/mult1_un89_sum[7] ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_4_tz_0 ), .C(
        \stonyman_0/mult1_un89_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_2 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[5]  (.A(\psram_cr_0/ahb0/N_248 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 ));
    NOR3C \stonyman_0/substate_RNO_2[17]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[17]_net_1 ), .C(
        \stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1597 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        );
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[4]  (.A(
        \psram_cr_0/ahb0/data_out[4]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] ));
    AO1A \stonyman_0/resp_RNO_9  (.A(\stonyman_0/substate[5]_net_1 ), 
        .B(\stonyman_0/substate_i[0]_net_1 ), .C(\stonyman_0/N_213 ), 
        .Y(\stonyman_0/un1_substate_0_sqmuxa_5_0_0 ));
    NOR3A \counter_0/counterInternal_RNI6PT31[24]  (.A(
        \counter_0/COUNT8_21_0 ), .B(
        \counter_0/counterInternal[25]_net_1 ), .C(
        \counter_0/counterInternal[24]_net_1 ), .Y(\counter_0/N_29_16 )
        );
    AO1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_0_3  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a0_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a4_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a5 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_3 ));
    OR2A \stonyman_0/state_RNIEDUI1[11]  (.A(\stonyman_0/N_1920 ), .B(
        \stonyman_0/un46lto2 ), .Y(\stonyman_0/N_1481 ));
    DFN1E1 \stonyman_0/counterWait[7]  (.D(
        \stonyman_0/counterWait_82[7] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[7]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_243 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 ));
    OR3A \stonyman_0/resp_RNO_2  (.A(\stonyman_0/N_108 ), .B(
        \stonyman_0/un1_substate_0_sqmuxa_5_0_1 ), .C(
        \stonyman_0/N_149 ), .Y(\stonyman_0/un1_substate_0_sqmuxa_5 ));
    NOR3C \stonyman_0/substate_RNO_30[3]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/substate_tr32_3_1 ), .Y(
        \stonyman_0/substate_tr32_3_2 ));
    NOR3C \stonyman_0/substate_i_RNO_13[0]  (.A(
        \stonyman_0/substate_ns_i_0_a4_4_8[0] ), .B(
        \stonyman_0/N_1386_1 ), .C(
        \stonyman_0/substate_ns_i_0_a4_4_9[0] ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_11[0] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[23]  (.A(
        \psram_address_c[23] ), .B(
        \psram_cr_0/cr_int_i0/address_5[23] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_271 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[16]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[16]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[16] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIUQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[2] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_254 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 ));
    DFN1E1 \stonyman_0/counterWait[28]  (.D(\stonyman_0/N_44 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[28]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[12]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[12] ));
    NOR2A 
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3_0_0[0]  
        (.A(\fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3_0_0[1] )
        );
    MAJ3X 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_m3  
        (.A(\stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_4 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        );
    XA1C \counter_0/counterInternal_RNO[11]  (.A(
        \counter_0/counterInternal[11]_net_1 ), .B(\counter_0/N_26 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[11]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEBHQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[26] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[26] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_707 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[11]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/operation[29]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_208 ));
    OR3 \stonyman_0/substate_RNO_2[7]  (.A(\stonyman_0/N_1576 ), .B(
        \stonyman_0/N_1617 ), .C(\stonyman_0/N_1482 ), .Y(
        \stonyman_0/substate_ns_i_1[7] ));
    NOR2B \stonyman_0/substate_RNIRHR21[11]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(\stonyman_0/N_1546_1 ), 
        .Y(\stonyman_0/substate_ns_i_a4_5_0[1] ));
    AOI1 \stonyman_0/state_RNO[2]  (.A(
        \stonyman_0/state_ns_i_a4_1_0[2] ), .B(\stonyman_0/state20 ), 
        .C(\stonyman_0/state_ns_i_1[2] ), .Y(
        \stonyman_0/state_RNO[2]_net_1 ));
    NOR3B \psram_cr_0/cr_int_i0/ac_counter_RNI1L5I2[0]  (.A(
        \psram_cr_0/cr_int_i0/N_67 ), .B(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .C(
        \psram_cr_0/cr_int_i0/N_76 ), .Y(\psram_cr_0/cr_int_i0/N_111 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[15]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[15] ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[3]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_54 ), .Y(\stonyman_0/counterPixelsCaptured_8[3] )
        );
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_10  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[6] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_10_Y ));
    OR2B \adc081s101_0/conversionComplete_RNO_1  (.A(
        \adc081s101_0/cs_1_sqmuxa_1 ), .B(\adc081s101_0/N_42 ), .Y(
        \adc081s101_0/un1_conversionComplete18 ));
    XNOR2 \stonyman_0/un3_counterWait_I_28  (.A(\stonyman_0/N_21_0 ), 
        .B(\stonyman_0/counterWait[10]_net_1 ), .Y(\stonyman_0/I_28 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI7RKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_689 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] ));
    DFN1 \stonyman_0/substate[3]  (.D(\stonyman_0/substate_ns[3] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_259 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[0]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_102 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 ));
    OA1C \stonyman_0/substate_RNO_1[11]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(\stonyman_0/N_1497 ), .C(
        \stonyman_0/substate[11]_net_1 ), .Y(\stonyman_0/N_1584 ));
    XAI1A \adc081s101_0/cs_RNO  (.A(CS_c), .B(\adc081s101_0/N_7 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\adc081s101_0/N_67 ));
    DFN1E1 \counter_0/COUNT[0]  (.D(\counter_0/N_517 ), .CLK(SCLK_c), 
        .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[0] ));
    DFN1 \counter_0/counterInternal[22]  (.D(\counter_0/N_39_0 ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[22]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[13]  (.D(
        \psram_cr_0/cr_int_i0/N_46 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[13] ));
    IOBI_IB_OB_EB \psram_data_pad[2]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[2]/U0/NET3 ), .DOUT(
        \psram_data_pad[2]/U0/NET1 ), .EOUT(
        \psram_data_pad[2]/U0/NET2 ), .Y(\psram_data_in[2] ));
    DFN1P0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        , .CLK(FAB_CLK), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        );
    AOI1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3SQI4[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_212 ));
    OR2A \stonyman_0/counterPixelsCaptured_RNIVFHK_0[9]  (.A(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .Y(
        \stonyman_0/d_m7_i_o3_0 ));
    MX2 \FIFO_PIXEL_0/MX2_52  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB6 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB6 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_52_Y ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_10_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[10] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[10] ));
    NOR2B \stonyman_0/inphi_RNO  (.A(\stonyman_0/N_765 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_52 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[1]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[5] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] ));
    NOR3 \psram_cr_0/cr_int_i0/op_counter_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_115 ), .B(\psram_cr_0/cr_int_i0/N_106 )
        , .C(\psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_63 ));
    NOR3B \stonyman_0/counterWait_RNO[6]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_17 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_16 ));
    NOR3A \stonyman_0/substate_i_RNO_8[0]  (.A(
        \stonyman_0/un1_counterPixelsCaptured_15_4 ), .B(
        \stonyman_0/state103 ), .C(\stonyman_0/N_717 ), .Y(
        \stonyman_0/state104 ));
    XA1 \FIFO_PIXEL_0/AND2_FULLINT  (.A(\FIFO_PIXEL_0/MEM_RADDR[12] ), 
        .B(\FIFO_PIXEL_0/WBINNXTSHIFT[12] ), .C(
        \FIFO_PIXEL_0/AND3_1_Y ), .Y(\FIFO_PIXEL_0/FULLINT ));
    NOR2 \stonyman_0/substate_RNIBVHK[1]  (.A(
        \stonyman_0/substate[17]_net_1 ), .B(
        \stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_1610 ));
    NOR2A \stonyman_0/substate_i_RNIIRR1C2[0]  (.A(
        \stonyman_0/substate_ns_i_0_a4_2_1_1[0] ), .B(
        \stonyman_0/N_1145 ), .Y(\stonyman_0/N_1539_6 ));
    NOR2B \stonyman_0/incp_RNO  (.A(\stonyman_0/N_762 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_58 ));
    IOPAD_TRI \led_pad[1]/U0/U0  (.D(\led_pad[1]/U0/NET1 ), .E(
        \led_pad[1]/U0/NET2 ), .PAD(led[1]));
    OR2 \stonyman_0/state_RNIDO98[5]  (.A(\stonyman_0/state[5]_net_1 ), 
        .B(\stonyman_0/state[2]_net_1 ), .Y(\stonyman_0/N_103 ));
    DFN1 \psram_cr_0/ahb0/operation[24]  (.D(
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[24]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[7]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[7] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[7]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[7] ));
    DFN1 \stonyman_0/resv  (.D(\stonyman_0/N_54 ), .CLK(SCLK_c), .Q(
        resv_c));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[5]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[5] ));
    OR3 \stonyman_0/un3_counterWait_I_58  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[14] ), .Y(\stonyman_0/N_11_0 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[13]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[13] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[13] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI3RKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_687 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_8_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[8] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[8] ));
    DFN1E1 \adc081s101_0/dataout[0]  (.D(\adc081s101_0/MISO_c_i ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[0] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIIRHQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[28] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[28] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_709 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_16[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[20] ));
    OR2A \counter_0/COUNT_RNINLNG1[12]  (.A(\counter_0_COUNT[12] ), .B(
        \counter_0/COUNT_RNI4DQ11[11]_net_1 ), .Y(
        \counter_0/COUNT_RNINLNG1[12]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[15] ));
    DFN1E1 \stonyman_0/pixelout[6]  (.D(\adc081s101_0_dataout[6] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[6] ));
    NOR2B \stonyman_0/un1_counterPixelsCaptured_16_I_83  (.A(
        \stonyman_0/DWACT_ADD_CI_0_TMP[0] ), .B(\stonyman_0/N_714 ), 
        .Y(\stonyman_0/DWACT_ADD_CI_0_g_array_1[0] ));
    NOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a8  
        (.A(\stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a8 ));
    AND3 \stonyman_0/un2_cachedValue_1_I_8  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/cachedValue[2] ), .Y(\stonyman_0/N_6_0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[2] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[21]  (.A(
        \psram_address_c[21] ), .B(
        \psram_cr_0/cr_int_i0/address_5[21] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_269 ));
    IOTRI_OB_EB \TP_adcStartCapture_pad/U0/U1  (.D(
        TP_adcStartCapture_c), .E(PLLEN_VCC), .DOUT(
        \TP_adcStartCapture_pad/U0/NET1 ), .EOUT(
        \TP_adcStartCapture_pad/U0/NET2 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a6_0  
        (.A(\stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a6_0 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_192 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_RNIAQGQ  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHMSF1_0[12]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] ));
    IOPAD_TRI \led_pad[7]/U0/U0  (.D(\led_pad[7]/U0/NET1 ), .E(
        \led_pad[7]/U0/NET2 ), .PAD(led[7]));
    IOTRI_OB_EB \inphi_pad/U0/U1  (.D(inphi_c), .E(PLLEN_VCC), .DOUT(
        \inphi_pad/U0/NET1 ), .EOUT(\inphi_pad/U0/NET2 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[12]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        );
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_6_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[6] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[6] ));
    OR2 \stonyman_0/substate_RNI8AKT[8]  (.A(
        \stonyman_0/substate[8]_net_1 ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(\stonyman_0/N_1392_i_0 ));
    DFN1E1 \counter_0/COUNT[11]  (.D(\counter_0/COUNT_n11 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[11] ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[15]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[15]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[15] ));
    NOR3B \counter_0/COUNT_RNO[4]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \counter_0/COUNT_RNIKBU1[4]_net_1 ), .C(
        \counter_0/COUNT_RNO_0[4]_net_1 ), .Y(\counter_0/N_12 ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_o3[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_73 ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_CRSDV  (.PAD(MAC_CRSDV), .Y(
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y ));
    DFN1 \counter_0/counterInternal[9]  (.D(
        \counter_0/counterInternal_RNO[9]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[9]_net_1 ));
    IOPAD_TRI \psram_nbyte_en_pad[1]/U0/U0  (.D(
        \psram_nbyte_en_pad[1]/U0/NET1 ), .E(
        \psram_nbyte_en_pad[1]/U0/NET2 ), .PAD(psram_nbyte_en[1]));
    NOR2B \stonyman_0/substate_RNI5LVH[1]  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\stonyman_0/substate[1]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_0_a2_3_0[2] ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_8  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[6] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_8_Y ));
    OR2 \stonyman_0/un3_counterWait_I_38  (.A(
        \stonyman_0/counterWait[12]_net_1 ), .B(
        \stonyman_0/counterWait[13]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[8] ));
    OA1 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_0_0[5] )
        );
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[7]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[7] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNINCV9[2]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_4 ));
    AOI1B \stonyman_0/state_RNIJ8931[5]  (.A(\stonyman_0/N_1388 ), .B(
        \stonyman_0/substate_i[0]_net_1 ), .C(
        \stonyman_0/state[5]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa ));
    NOR2B \FIFO_PIXEL_0/AND2_8  (.A(\FIFO_PIXEL_0/MEM_WADDR[9] ), .B(
        \FIFO_PIXEL_0/XOR2_19_Y ), .Y(\FIFO_PIXEL_0/AND2_8_Y ));
    NOR2B \stonyman_0/substate_i_RNO_10[0]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(
        \stonyman_0/state[7]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_0_a2_4_0_a2_0[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[7]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[7] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_12_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[12] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[12] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[1]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[1] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[0]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[0] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[0] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[8]  (.A(\psram_cr_0/ahb0/N_251 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_9_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[9] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[9] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[9]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[9] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[30]  (.D(N_48), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[30] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_52  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[27]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[27]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[27] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_229 ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNIK3BDU  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_179 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ));
    AO1A \stonyman_0/substate_RNO_1[4]  (.A(\stonyman_0/counterWait8 ), 
        .B(\stonyman_0/substate_ns_0_a4_0_0[4] ), .C(
        \stonyman_0/N_1567 ), .Y(\stonyman_0/substate_ns_0_0[4] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_16_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[16] ), .B(N_1301), .Y(N_20));
    NOR2A \psram_cr_0/ahb0/hrdata_reg_RNO_3[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_0[0] ), .B(
        \psram_cr_0/ahb0/N_87 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] ));
    MSS_XTLOSC \MSS_CORE2_0/MSS_CCC_0/I_XTLOSC  (.XTL(MAINXIN), 
        .CLKOUT(\MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_244 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2RFQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[20] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[20] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_701 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_225 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[14] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_59  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[0]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHMASTLOCKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[1]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHLOCKINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[1]INT_NET ));
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE2  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN5(FAB_CLK), .PIN2INT(), .PIN3INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .PIN5INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLB_INT ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNITQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[1] ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_1  
        (.A(\stonyman_0/ADD_9x9_fast_I1_G0N_N_23 ), .B(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_22 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_1 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[11]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[11] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[11] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_776 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/max_addr[26] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[26] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_237 ));
    NOR3 \stonyman_0/counterPixelsCaptured_RNI75RV[9]  (.A(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/state103_9 ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[4]  (.A(\FIFO_PIXEL_0/MX2_78_Y ), .B(
        \FIFO_PIXEL_0/MX2_14_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[4] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[14]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(\psram_cr_0/data_to_cr[8] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_164 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[8]  (.A(
        \psram_address_c[8] ), .B(\psram_cr_0/cr_int_i0/address_5[8] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_256 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[7]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[7] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[7] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_218 )
        );
    IOPAD_TRI \incv_pad/U0/U0  (.D(\incv_pad/U0/NET1 ), .E(
        \incv_pad/U0/NET2 ), .PAD(incv));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/DWACT_ADD_CI_0_partial_sum[0] ), .Y(
        \stonyman_0/counterPixelsCaptured_8[0] ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[6]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_59 ), .Y(\stonyman_0/counterPixelsCaptured_8[6] )
        );
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[10]  (.A(
        \psram_address_c[10] ), .B(
        \psram_cr_0/cr_int_i0/address_5[10] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_258 ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_85 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]_net_1 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_26_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[26] ), .B(N_1301), .Y(N_1294));
    NOR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNI02SK4[5]  (.A(
        \stonyman_0/cachedValue[5] ), .B(\stonyman_0/cachedValue[3] ), 
        .Y(\stonyman_0/state31_0_a2_0 ));
    NOR2B \adc081s101_0/cs_RNIPVPO1  (.A(\adc081s101_0/N_83 ), .B(CS_c)
        , .Y(\adc081s101_0/N_84 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[22]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[22] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[22] ));
    OR3 \stonyman_0/un3_counterWait_I_19  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/counterWait[6]_net_1 ), .Y(
        \stonyman_0/N_24_0 ));
    DFN1 \stonyman_0/counterPixelsCaptured[9]  (.D(
        \stonyman_0/counterPixelsCaptured_8[9] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_62  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET ));
    AO1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIATC8E[2]  
        (.A(CoreAHBLite_0_AHBmslave6_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO00II ));
    OR3 \stonyman_0/un3_counterWait_I_83  (.A(
        \stonyman_0/counterWait[24]_net_1 ), .B(
        \stonyman_0/counterWait[25]_net_1 ), .C(
        \stonyman_0/counterWait[26]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[22] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[22]  (.A(
        \psram_address_c[22] ), .B(
        \psram_cr_0/cr_int_i0/address_5[22] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_270 ));
    DFN1E1 \stonyman_0/pixelout[4]  (.D(\adc081s101_0_dataout[4] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[4] ));
    DFN1 \psram_cr_0/cr_int_i0/address[6]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[6] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 ));
    OR2 \FIFO_PIXEL_0/OR2_12  (.A(\FIFO_PIXEL_0/NAND3_1_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_12_Y ));
    XA1B \counter_0/counterInternal_RNO[27]  (.A(
        \counter_0/counterInternal[27]_net_1 ), .B(\counter_0/N_494 ), 
        .C(\counter_0/COUNTe ), .Y(\counter_0/N_54 ));
    IOTRI_OB_EB \led_pad[0]/U0/U1  (.D(\led_c[0] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[0]/U0/NET1 ), .EOUT(\led_pad[0]/U0/NET2 ));
    AO1A \stonyman_0/state_RNO_0[7]  (.A(\stonyman_0/state[7]_net_1 ), 
        .B(\stonyman_0/N_1672 ), .C(\stonyman_0/state_ns_i_0[7] ), .Y(
        \stonyman_0/state_ns_i_1[7] ));
    IOPAD_TRI \psram_nwe_pad/U0/U0  (.D(\psram_nwe_pad/U0/NET1 ), .E(
        \psram_nwe_pad/U0/NET2 ), .PAD(psram_nwe));
    NOR2A \counter_0/counterInternal_RNO[2]  (.A(\counter_0/N_438_tz ), 
        .B(\counter_0/COUNTe ), .Y(\counter_0/N_438_i ));
    NOR3C \stonyman_0/counterPixelsCaptured_RNILFM02[12]  (.A(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/state103_3 ), .C(\stonyman_0/state103_9 ), .Y(
        \stonyman_0/state103_12 ));
    DFN1 \stonyman_0/substate[10]  (.D(
        \stonyman_0/substate_RNO[10]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[10]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[25]  (.A(
        \psram_cr_0/ahb0/max_addr[25] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[25] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[25] ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[0]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_1303 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_58));
    NOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_m5  
        (.A(\stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_6 ));
    XOR2 \stonyman_0/cachedValue_tile_WADDR_REG1_RNI1L8I[1]  (.A(
        \stonyman_0/WADDR_REG1[1] ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .Y(\stonyman_0/I_4_1 ));
    DFN1E1 \counter_0/COUNT[7]  (.D(\counter_0/COUNT_RNO[7]_net_1 ), 
        .CLK(SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[7] ));
    NOR3C \stonyman_0/substate_RNO_24[3]  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .C(
        \stonyman_0/substate_ns_0_a4_4_2_0[3] ), .Y(
        \stonyman_0/substate_ns_0_a4_4_2[3] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[24]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[24] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[24] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_789 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_36  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .PIN4INT(), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[0]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[18]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[19]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[0]INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[13]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[13] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[13] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_224 )
        );
    NOR3C \stonyman_0/counterPixelsCaptured_RNITQP93[6]  (.A(
        \stonyman_0/state103_7 ), .B(\stonyman_0/state103_6 ), .C(
        \stonyman_0/state103_10 ), .Y(\stonyman_0/state103_13 ));
    XNOR2 \stonyman_0/un3_counterWait_I_65  (.A(\stonyman_0/N_9_0 ), 
        .B(\stonyman_0/counterWait[22]_net_1 ), .Y(\stonyman_0/I_65_0 )
        );
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[7]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[7] ));
    DFN1E1 \stonyman_0/pixelout[0]  (.D(\adc081s101_0_dataout[0] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[0] ));
    XA1A \counter_0/COUNT_RNO[30]  (.A(\counter_0_COUNT[30] ), .B(
        \counter_0/N_516 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n30 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_236 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 ));
    OR3 \stonyman_0/substate_RNO[5]  (.A(\stonyman_0/N_1570 ), .B(
        \stonyman_0/N_1571 ), .C(\stonyman_0/N_1569 ), .Y(
        \stonyman_0/substate_ns[5] ));
    IOPAD_TRI \psram_ncs0_pad/U0/U0  (.D(\psram_ncs0_pad/U0/NET1 ), .E(
        \psram_ncs0_pad/U0/NET2 ), .PAD(psram_ncs0));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[9]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[19]  (.A(
        \psram_cr_0/ahb0/N_230 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 ));
    NOR2B \FIFO_PIXEL_0/AO1_2  (.A(\FIFO_PIXEL_0/AND2_19_Y ), .B(
        \FIFO_PIXEL_0/AO1_6_Y ), .Y(\FIFO_PIXEL_0/AO1_2_Y ));
    DFN1E1 \stonyman_0/counterWait[21]  (.D(\stonyman_0/N_32 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[21]_net_1 ));
    NOR3C \FIFO_TEST_COUNTER_0/AO1_17  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] ), .B(
        \FIFO_TEST_COUNTER_0/XOR2_6_Y ), .C(
        \FIFO_TEST_COUNTER_0/AO1_8_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AO1_17_Y ));
    NOR2 \stonyman_0/incv_RNO_7  (.A(\stonyman_0/state[12]_net_1 ), .B(
        \stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_2 ));
    OA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I12_Y_m12_0_a3_0_0_0  
        (.A(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_0_0 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[8] ));
    OR2 \stonyman_0/un3_counterWait_I_72  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .Y(
        \stonyman_0/DWACT_FDEC_E[18] ));
    DFN1 \psram_cr_0/cr_int_i0/address[2]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[2] ));
    BUFF \FIFO_PIXEL_0/XOR2_14  (.A(\FIFO_PIXEL_0/MEM_RADDR[8] ), .Y(
        \FIFO_PIXEL_0/XOR2_14_Y ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[11]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIIQSF1_0[13]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] ));
    AX1D 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I17_Y_2  
        (.A(\stonyman_0/I11_un1_Y_0 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_0_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I17_Y_2_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_2 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[23]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[23] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[23] ));
    AX1C \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[3]  (.A(
        \FIFO_PIXEL_0/XOR2_9_Y ), .B(\FIFO_PIXEL_0/AO1_14_Y ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[3] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[11]  (.A(
        \psram_cr_0/cr_int_i0/N_167 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[11] ));
    MX2 \FIFO_PIXEL_0/MX2_18  (.A(\FIFO_PIXEL_0/MX2_44_Y ), .B(
        \FIFO_PIXEL_0/MX2_67_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_18_Y ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[8]  (.D(N_4), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[8] ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_66  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_2[0] ), .B(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/I_66 ));
    AOI1 \stonyman_0/state_RNO_2[3]  (.A(\stonyman_0/state20 ), .B(
        \stonyman_0/state[2]_net_1 ), .C(\stonyman_0/state[3]_net_1 ), 
        .Y(\stonyman_0/N_1682 ));
    DFN1 \psram_cr_0/ahb0/psram_addr_sel  (.D(
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/psram_addr_sel_net_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI7QS14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_707 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_54  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \stonyman_0/N_715 ), .C(\stonyman_0/N_716 ), .Y(
        \stonyman_0/I_54 ));
    DFN1 \psram_cr_0/ahb0/operation[10]  (.D(
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[10] ));
    DFN1E1 \stonyman_0/counterWait[19]  (.D(
        \stonyman_0/counterWait_82[19] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[19]_net_1 ));
    NOR3C \FIFO_PIXEL_0/AND2_25  (.A(\FIFO_PIXEL_0/MEM_WADDR[7] ), .B(
        \FIFO_PIXEL_0/XOR2_0_Y ), .C(\FIFO_PIXEL_0/AND2_59_Y ), .Y(
        \FIFO_PIXEL_0/AND2_25_Y ));
    NAND3 \FIFO_PIXEL_0/NAND3_1  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), .B(
        \FIFO_PIXEL_0/MEM_RADDR[10] ), .C(\FIFO_PIXEL_0/MEM_RADDR[9] ), 
        .Y(\FIFO_PIXEL_0/NAND3_1_Y ));
    NOR2A \adc081s101_0/cs_RNITMS9  (.A(CS_c), .B(TP_adcStartCapture_c)
        , .Y(\adc081s101_0/cs_1_sqmuxa_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[10]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[10] ), .Y(
        \psram_cr_0/ahb0/operation_m[10] ));
    DFN1 \psram_cr_0/ahb0/data_in[0]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[0] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[13]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[13] ), .Y(
        \psram_cr_0/ahb0/operation_m[13] ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXD_0  (.PAD(MAC_RXD[0]), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIIQSF1[13]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[6] ));
    AND2A \FIFO_TEST_COUNTER_0/AND2_MEMORYRE  (.A(
        FIFO_TEST_COUNTER_0_EMPTY), .B(\FIFO_TEST_COUNTER_0.REP ), .Y(
        \FIFO_TEST_COUNTER_0/MEMORYRE ));
    DFN1E1 \stonyman_0/counterWait[9]  (.D(
        \stonyman_0/counterWait_82[9] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[9]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[8]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[8] ));
    OR2 \psram_cr_0/cr_int_i0/op_counter_RNI14O3[3]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_68 ));
    OR3 \stonyman_0/substate_i_RNI6HKLC[0]  (.A(
        \stonyman_0/substate_ns_i_8_0_2[1] ), .B(\stonyman_0/N_1547 ), 
        .C(\stonyman_0/N_1541 ), .Y(
        \stonyman_0/substate_ns_i_8_0_4[1] ));
    OR2 \adc081s101_0/cntrWaitTrailing_RNO[2]  (.A(\adc081s101_0/N_74 )
        , .B(\adc081s101_0/bitsRead_0_sqmuxa ), .Y(\adc081s101_0/N_31 )
        );
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_213 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_183 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 ));
    NOR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_169 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_171 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_170 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[2] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]_net_1 ));
    NAND3B \FIFO_PIXEL_0/NAND3B_2  (.A(\FIFO_PIXEL_0/MEM_WADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3B_2_Y ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[23]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[23]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[23] ));
    NOR2B \stonyman_0/substate_RNO_2[1]  (.A(
        \stonyman_0/substate_ns_i_1_m4_0_a2_2 ), .B(
        \stonyman_0/un1_counterPixelsCaptured_15_4 ), .Y(
        \stonyman_0/substate_RNO_2[1]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/active_data  (.D(
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.active_data ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_a2  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_a3_1 ));
    XA1 \adc081s101_0/bitsRead_RNO[1]  (.A(
        \adc081s101_0/bitsRead[0]_net_1 ), .B(
        \adc081s101_0/bitsRead[1]_net_1 ), .C(\adc081s101_0/N_109 ), 
        .Y(\adc081s101_0/N_35 ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_0  
        (.A(\stonyman_0/ADD_9x9_fast_I1_P0N_0_5 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_4 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_6 ), .Y(\stonyman_0/N126 ));
    DFN1 \stonyman_0/state_i[0]  (.D(\stonyman_0/state_ns[0] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state_i[0]_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[17]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[17]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[17] ));
    OR3 \stonyman_apb3_0/stonyman_ioreg_0/ready_RNO  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_31 ), .B(
        \stonyman_apb3_0/bus_read_enable ), .C(
        \stonyman_apb3_0/stonyman_ioreg_0/N_30 ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/ready_5 ));
    AO1D \stonyman_0/substate_RNILNC01[1]  (.A(\stonyman_0/N_1475 ), 
        .B(\stonyman_0/N_1473 ), .C(\stonyman_0/N_1610 ), .Y(
        \stonyman_0/N_1515 ));
    OR2 \stonyman_0/counterWait_RNI6S8K[10]  (.A(
        \stonyman_0/counterWait[10]_net_1 ), .B(
        \stonyman_0/counterWait[7]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_7 ));
    OR2A \stonyman_0/substate_RNI0IN89[13]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(\stonyman_0/counterWait8 )
        , .Y(\stonyman_0/N_1658 ));
    NOR3C \stonyman_0/state_RNI7J21L[4]  (.A(
        \stonyman_0/substate_tr13_4_3_a2_2 ), .B(\stonyman_0/N_115 ), 
        .C(\stonyman_0/N_1956 ), .Y(
        \stonyman_0/substate_tr13_4_3_a2_4 ));
    NOR2 \stonyman_0/counterPixelsCaptured_RNIIFHK[1]  (.A(
        \stonyman_0/N_714 ), .B(\stonyman_0/N_716 ), .Y(
        \stonyman_0/state103_0 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIJBJT1[9]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_2 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_5 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_8 ));
    DFN1 \psram_cr_0/cr_int_i0/address[7]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[7] ));
    MX2 \FIFO_PIXEL_0/MX2_44  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB0 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB0 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_44_Y ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_235 ));
    NOR3C \counter_0/COUNT_RNIARNF[14]  (.A(\counter_0_COUNT[8] ), .B(
        \counter_0_COUNT[14] ), .C(\counter_0_COUNT[9] ), .Y(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_4 ));
    MX2 \FIFO_PIXEL_0/MX2_82  (.A(\FIFO_PIXEL_0/MX2_58_Y ), .B(
        \FIFO_PIXEL_0/MX2_41_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_82_Y ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI5RKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_688 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6JGQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[13] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[13] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_694 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_51  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[11]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[10]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[12]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[10]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[11]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[12]INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[0]  (.A(
        \psram_cr_0/cr_int_i0/N_156 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[0] ));
    MX2 \FIFO_PIXEL_0/MX2_47  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB6 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB6 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_47_Y ));
    NOR3B \stonyman_0/substate_RNIMMQCO[5]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/I_14 ), .C(
        \stonyman_0/N_197 ), .Y(\stonyman_0/N_31 ));
    OR3 \stonyman_0/un3_counterWait_I_48  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(
        \stonyman_0/DWACT_FDEC_E[10] ), .C(
        \stonyman_0/DWACT_FDEC_E[11] ), .Y(\stonyman_0/N_14_0 ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a5  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a2_0 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a5 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_43  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[19]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[18]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[20]INT_NET ), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET ));
    DFN1E1 \adc081s101_0/bitsRead[2]  (.D(\adc081s101_0/N_37 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[2]_net_1 ));
    NOR3B \stonyman_0/substate_RNO_23[3]  (.A(
        \stonyman_0/state[4]_net_1 ), .B(\stonyman_0/state9 ), .C(
        \stonyman_0/state[3]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_5_1[3] ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_7  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[3] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_7_Y ));
    IOPAD_BI \psram_data_pad[12]/U0/U0  (.D(
        \psram_data_pad[12]/U0/NET1 ), .E(\psram_data_pad[12]/U0/NET2 )
        , .Y(\psram_data_pad[12]/U0/NET3 ), .PAD(psram_data[12]));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_2  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[17]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[16]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[18]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[16]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[17]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[18]INT_NET ));
    AO1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0[1]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3_0_0[1] )
        , .B(FIFO_TEST_COUNTER_0_EMPTY), .C(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_73 ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[1] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[5]  (.A(
        \psram_address_c[5] ), .B(\psram_cr_0/cr_int_i0/address_5[5] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_253 ));
    IOTRI_OB_EB \psram_address_pad[6]/U0/U1  (.D(\psram_address_c[6] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[6]/U0/NET1 ), .EOUT(
        \psram_address_pad[6]/U0/NET2 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI5IS14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_706 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[2]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_1_Y ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[2] ));
    MX2 \FIFO_PIXEL_0/MX2_94  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB1 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB1 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_94_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_83  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIQ870A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[0] ));
    MX2 \FIFO_PIXEL_0/MX2_62  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB3 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB3 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_62_Y ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i  
        (.A(\stonyman_0/I5_un1_Y ), .B(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_21 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_14 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/max_addr[27] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_238 ));
    BUFF \FIFO_PIXEL_0/XOR2_9  (.A(\FIFO_PIXEL_0/MEM_RADDR[2] ), .Y(
        \FIFO_PIXEL_0/XOR2_9_Y ));
    NOR3C \stonyman_0/state_RNO_1[9]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[8]_net_1 ), .C(\stonyman_0/N_1660 ), .Y(
        \stonyman_0/N_1700 ));
    IOTRI_OB_EB \psram_ncs1_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\psram_ncs1_pad/U0/NET1 ), .EOUT(
        \psram_ncs1_pad/U0/NET2 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2I8K[5]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[10]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[10] ), .B(\FIFO_PIXEL_0/AO1_16_Y ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[10] ));
    NOR2 \stonyman_0/substate_RNIFNIK[15]  (.A(
        \stonyman_0/substate[15]_net_1 ), .B(
        \stonyman_0/substate[7]_net_1 ), .Y(\stonyman_0/N_1389 ));
    NOR2B \psram_cr_0/cr_int_i0/start_1_RNO  (.A(
        \psram_cr_0/cr_int_i0/start_0_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 ));
    NOR2A \psram_cr_0/ahb0/fsm_RNIUK83S  (.A(
        \psram_cr_0/ahb0/hwrite_reg4 ), .B(\psram_cr_0/ahb0/fsm_net_1 )
        , .Y(\psram_cr_0/ahb0/fsm_0_sqmuxa ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_11  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[3] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_11_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[24]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[24] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] ));
    DFN1E1 \adc081s101_0/dataout[7]  (.D(\adc081s101_0_dataout[6] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[7] ));
    XOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I16_Y  
        (.A(\stonyman_0/mult1_un89_sum[7] ), .B(
        \stonyman_0/mult1_un89_sum[5] ), .C(\stonyman_0/N150_1 ), .Y(
        \stonyman_0/mult1_un96_sum[6] ));
    NOR3C \stonyman_0/substate_RNIDHEM2[10]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_3_2_0 ), .B(
        \stonyman_0/tp_substateout_1_1[1] ), .C(
        \stonyman_0/counterWait_0_sqmuxa_3_3 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_3_5 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[4]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[4] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_61  (.PIN4(GLMUXINT_GND), 
        .PIN5(PLLEN_VCC), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), .PIN3(
        ), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/F2MRESETnINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET ), 
        .PIN1INT(GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(
        GLMUXINT_GND));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_263 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 ));
    NOR2 \counter_0/counterInternal_RNIDOIJ[14]  (.A(
        \counter_0/counterInternal[8]_net_1 ), .B(
        \counter_0/counterInternal[14]_net_1 ), .Y(
        \counter_0/COUNT8_23_3 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_Y  
        (.A(\stonyman_0/I11_un1_Y ), .B(\stonyman_0/I5_un1_Y ), .C(
        \stonyman_0/N131 ), .Y(\stonyman_0/N146_1 ));
    NOR3B \stonyman_0/state_RNO_4[6]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[5]_net_1 ), .C(\stonyman_0/N_1658 ), .Y(
        \stonyman_0/state_ns_0_a4_0_0[6] ));
    DFN1 \psram_cr_0/ahb0/operation[22]  (.D(
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[22]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_out[3]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[3]_net_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_4[7]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[7] ), .Y(
        \psram_cr_0/ahb0/operation_m[7] ));
    NOR3C \stonyman_0/substate_RNIRO92J[2]  (.A(\stonyman_0/N_121 ), 
        .B(\stonyman_0/N_122 ), .C(\stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/resv_0_sqmuxa ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[25]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[25] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] ));
    XA1A \stonyman_0/cachedValue_tile_WADDR_REG1_RNIUS4R[0]  (.A(
        \stonyman_0/un45lto0 ), .B(\stonyman_0/WADDR_REG1[0] ), .C(
        \stonyman_0/N_5_0 ), .Y(\stonyman_0/I_5_0 ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[4]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .B(\FIFO_PIXEL_0/AO1_6_Y ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[4] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8HQH[8]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_4 ));
    XA1C \counter_0/counterInternal_RNO[15]  (.A(
        \counter_0/counterInternal[15]_net_1 ), .B(\counter_0/N_468 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[15]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]  (.D(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[9] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lI ), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 ));
    NOR3 \stonyman_0/substate_RNO_1[10]  (.A(\stonyman_0/N_1488 ), .B(
        \stonyman_0/substate[5]_net_1 ), .C(\stonyman_0/N_1507 ), .Y(
        \stonyman_0/N_1583 ));
    NOR2A \stonyman_0/substate_RNIA90I[6]  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/un1_cachedPOINTER_0_sqmuxa_0_a2_0 ));
    NOR3A \stonyman_0/state_RNI7MFC2[2]  (.A(
        \stonyman_0/substate_ns_i_a4_10_2[1] ), .B(\stonyman_0/N_1484 )
        , .C(\stonyman_0/N_1506 ), .Y(\stonyman_0/N_1551 ));
    OR2 \stonyman_0/counterWait_RNIVIVM[8]  (.A(
        \stonyman_0/counterWait[9]_net_1 ), .B(
        \stonyman_0/counterWait[8]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_11 ));
    NOR3A \stonyman_0/state_RNI1U0P4[3]  (.A(
        \stonyman_0/state[3]_net_1 ), .B(\stonyman_0/cachedValue[0] ), 
        .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_0_1[1] ));
    IOTRI_OB_EB \psram_address_pad[11]/U0/U1  (.D(
        \psram_address_c[11] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[11]/U0/NET1 ), .EOUT(
        \psram_address_pad[11]/U0/NET2 ));
    AX1C \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[3]  (.A(
        \FIFO_PIXEL_0/XOR2_16_Y ), .B(\FIFO_PIXEL_0/AO1_1_Y ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[3] ));
    INV \FIFO_PIXEL_0/MEMWEBUBBLE  (.A(\FIFO_PIXEL_0/MEMORYWE ), .Y(
        \FIFO_PIXEL_0/MEMWENEG ));
    DFN1E1 \adc081s101_0/bitsRead[0]  (.D(\adc081s101_0/N_78 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[0]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_217 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_32 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIP5VC[3]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[12]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[12] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[12] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_777 ));
    OR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I3_P0N  
        (.A(\stonyman_0/mult1_un103_sum[6] ), .B(\stonyman_0/N146_1 ), 
        .Y(\stonyman_0/N132 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIKVTL[16]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ));
    OR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_176 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_0 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_156 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4 ));
    IOTRI_OB_EB \psram_address_pad[16]/U0/U1  (.D(
        \psram_address_c[16] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[16]/U0/NET1 ), .EOUT(
        \psram_address_pad[16]/U0/NET2 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIBDP89[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_95 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ));
    BUFF \FIFO_PIXEL_0/XOR2_0  (.A(\FIFO_PIXEL_0/MEM_WADDR[6] ), .Y(
        \FIFO_PIXEL_0/XOR2_0_Y ));
    OR2 \counter_0/counterInternal_RNIGLSR3[11]  (.A(\counter_0/N_26 ), 
        .B(\counter_0/counterInternal[11]_net_1 ), .Y(\counter_0/N_27 )
        );
    NOR2B \stonyman_0/substate_RNI71N72[5]  (.A(\stonyman_0/N_200 ), 
        .B(\stonyman_0/N_73 ), .Y(\stonyman_0/N_202 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[16]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[16] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[16] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[8]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] ));
    XA1B \psram_cr_0/cr_int_i0/op_counter_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_61 ));
    NOR2A \stonyman_0/substate_RNIMM9H[10]  (.A(\stonyman_0/N_1387 ), 
        .B(\stonyman_0/substate[10]_net_1 ), .Y(\stonyman_0/N_1391 ));
    AXOI1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I12_Y_m12_0_o3_0  
        (.A(\stonyman_0/N126 ), .B(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_o3_0 ));
    IOPAD_TRI \psram_address_pad[11]/U0/U0  (.D(
        \psram_address_pad[11]/U0/NET1 ), .E(
        \psram_address_pad[11]/U0/NET2 ), .PAD(psram_address[11]));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I11_Y_1  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_1_0 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_2 ), .Y(\stonyman_0/N146_0 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_68 ), .B(\psram_cr_0/ahb0/N_70 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[11] ));
    XOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I16_Y_1  
        (.A(\stonyman_0/counterPixelsCaptured[9]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/N146_2 ), .Y(\stonyman_0/ADD_9x9_fast_I16_Y_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[0]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[0] ));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns_0[0] ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[2]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIL2CS2[2]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        CoreAPB3_0_APBmslave0_0_PWRITE));
    NOR3A \stonyman_0/state_RNITVSD9[2]  (.A(
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_1_1[1] ), .B(
        \stonyman_0/cachedValue[4] ), .C(\stonyman_0/cachedValue[1] ), 
        .Y(\stonyman_0/N_1950 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_12[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[24] ));
    NOR2A \stonyman_0/state_RNIFQJF[12]  (.A(\stonyman_0/N_1476_i_0 ), 
        .B(\stonyman_0/state[12]_net_1 ), .Y(\stonyman_0/N_191 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[2]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[2] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[2] ));
    OR2A \stonyman_0/state_i_RNIAUG4[0]  (.A(
        \stonyman_0/state_i[0]_net_1 ), .B(\stonyman_0/state[6]_net_1 )
        , .Y(\stonyman_0/N_1475 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_a5_0_1  
        (.A(\stonyman_0/mult1_un89_sum[5] ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_a5_0 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[12]  (.A(
        \psram_cr_0/ahb0/data_out[12]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[12] ));
    NOR2A \fifo_32bit_apb3_0/un1_RDEN_0_a3  (.A(
        \fifo_32bit_apb3_0/bus_read_enable ), .B(
        FIFO_TEST_COUNTER_0_EMPTY), .Y(\FIFO_TEST_COUNTER_0.REP ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[8]  (.A(
        \psram_cr_0/data_to_cr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[8] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] ));
    IOPAD_TRI \psram_address_pad[16]/U0/U0  (.D(
        \psram_address_pad[16]/U0/NET1 ), .E(
        \psram_address_pad[16]/U0/NET2 ), .PAD(psram_address[16]));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[13]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[13]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[13] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[2]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNI62PMG  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlOII_iv_0 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m )
        , .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIT9R14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_711 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] ));
    XA1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m7  
        (.A(\stonyman_0/N148 ), .B(\stonyman_0/ADD_9x9_fast_I17_Y_2 ), 
        .C(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_8 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[26]  (.D(N_1294), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[26] ));
    IOTRI_OB_EB \psram_nbyte_en_pad[1]/U0/U1  (.D(psram_ncs0_c_c_c), 
        .E(PLLEN_VCC), .DOUT(\psram_nbyte_en_pad[1]/U0/NET1 ), .EOUT(
        \psram_nbyte_en_pad[1]/U0/NET2 ));
    DFN1 \psram_cr_0/cr_int_i0/nwe  (.D(\psram_cr_0/cr_int_i0/N_101 ), 
        .CLK(FAB_CLK), .Q(psram_nwe_c));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_37  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[2]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[1]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[3]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[1]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[2]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[3]INT_NET ));
    MX2 \FIFO_PIXEL_0/MX2_1  (.A(\FIFO_PIXEL_0/MX2_50_Y ), .B(
        \FIFO_PIXEL_0/MX2_27_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_1_Y ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[10]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[10] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[10] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_775 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI52SK4[7]  (.A(
        \stonyman_0/cachedValue[6] ), .B(\stonyman_0/cachedValue[7] ), 
        .Y(\stonyman_0/N_115 ));
    OA1B \stonyman_0/state_RNI353ND2[11]  (.A(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_3_0 ), .B(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_2_0 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_1 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_1 ));
    NOR2A \stonyman_0/substate_RNIAQCME[17]  (.A(
        \stonyman_0/N_1037_i_i_a2_1 ), .B(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/N_210 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_253 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 ));
    NOR3B \stonyman_0/counterPixelsCaptured_RNI0GS11[11]  (.A(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/d_N_17_0 ));
    IOTRI_OB_EB \psram_address_pad[9]/U0/U1  (.D(\psram_address_c[9] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[9]/U0/NET1 ), .EOUT(
        \psram_address_pad[9]/U0/NET2 ));
    AO1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I9_Y  
        (.A(\stonyman_0/N126_0 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/I7_un1_Y ), .Y(\stonyman_0/N150_3 ));
    DFN1 \psram_cr_0/cr_int_i0/address[14]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[14] ));
    OR3 \stonyman_0/un3_counterWait_I_16  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[1] )
        , .C(\stonyman_0/counterWait[5]_net_1 ), .Y(
        \stonyman_0/N_25_0 ));
    DFN1E1 \stonyman_0/counterWait[20]  (.D(
        \stonyman_0/counterWait_82[20] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[20]_net_1 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2[0]  
        (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_2[0]_net_1 )
        , .B(
        \stonyman_apb3_0.stonyman_ioreg_0.dataout_6_iv_0_a3_1_0[0] ), 
        .C(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_3[0]_net_1 )
        , .Y(\fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ));
    OR3C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIEL322[2]  (.A(
        CoreAPB3_0_APBmslave0_0_PENABLE), .B(N_56), .C(
        CoreAPB3_0_APBmslave0_0_PWRITE), .Y(\COREAHBTOAPB3_0/N_152 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[6]  (.A(
        \psram_cr_0/data_to_cr[6] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_249 ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_1  (.D(
        \FIFO_PIXEL_0/MEM_RADDR[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_PIXEL_0/OR2A_1_Y ), .Q(
        \FIFO_PIXEL_0/DFN1E1C0_1_Q ));
    NAND3A \FIFO_PIXEL_0/NAND3A_2  (.A(\FIFO_PIXEL_0/MEM_WADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3A_2_Y ));
    NOR2A \stonyman_0/substate_RNILLLE[12]  (.A(\stonyman_0/N_1605 ), 
        .B(\stonyman_0/N_77 ), .Y(\stonyman_0/substate_ns_i_0_a4_0[0] )
        );
    DFN1 \psram_cr_0/ahb0/operation[4]  (.D(
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[4] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[13]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[14] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[8]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[8] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[8] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_773 ));
    NOR2B \counter_0/state_RNO_5[1]  (.A(\counter_0/m9_e_2 ), .B(
        \counter_0/COUNT8_22 ), .Y(\counter_0/N_68 ));
    AX1C \stonyman_0/un2_cachedValue_1_I_7  (.A(
        \stonyman_0/cachedValue[1] ), .B(\stonyman_0/cachedValue[0] ), 
        .C(\stonyman_0/cachedValue[2] ), .Y(\stonyman_0/I_7 ));
    NOR2B \stonyman_0/state_RNO_3[2]  (.A(\stonyman_0/N_1659 ), .B(
        \stonyman_0/state[1]_net_1 ), .Y(\stonyman_0/N_1680 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_262 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 ));
    DFN1 \stonyman_0/counterPixelsCaptured[0]  (.D(
        \stonyman_0/counterPixelsCaptured_8[0] ), .CLK(SCLK_c), .Q(
        \stonyman_0/N_713 ));
    OA1C \counter_0/COUNT_RNO_0[4]  (.A(\counter_0_COUNT[3] ), .B(
        \counter_0/COUNT_RNI9151[2]_net_1 ), .C(\counter_0_COUNT[4] ), 
        .Y(\counter_0/COUNT_RNO_0[4]_net_1 ));
    MSS_AHB_IP #( .ACT_CONFIG(128), .ACT_FCLK(80000000), .ACT_DIE("IP6X5M2")
        , .ACT_PKG("fg484") )  \MSS_CORE2_0/MSS_ADLIB_INST/U_CORE  (
        .FCLK(\MSS_CORE2_0/GLA0 ), .MACCLKCCC(
        \MSS_CORE2_0/MSS_ADLIB_INST_MACCLKCCC ), .RCOSC(GLMUXINT_GND), 
        .MACCLK(GLMUXINT_GND), .PLLLOCK(
        \MSS_CORE2_0/MSS_ADLIB_INST_PLLLOCK ), .MSSRESETn(
        \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y ), .GPOE({nc0, nc1, nc2, 
        nc3, nc4, nc5, nc6, nc7, nc8, nc9, nc10, nc11, nc12, nc13, 
        nc14, nc15, nc16, nc17, nc18, nc19, nc20, nc21, nc22, nc23, 
        nc24, nc25, nc26, nc27, nc28, nc29, nc30, nc31}), .SPI0DO(), 
        .SPI0DOE(), .SPI0DI(GLMUXINT_GND), .SPI0CLKI(GLMUXINT_GND), 
        .SPI0CLKO(), .SPI0MODE(), .SPI0SSI(GLMUXINT_GND), .SPI0SSO({
        nc32, nc33, nc34, nc35, 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET , nc36}), 
        .UART0TXD(\MSS_CORE2_0/MSS_UART_0_TXD_D ), .UART0RXD(
        \MSS_CORE2_0/MSS_UART_0_RXD_Y ), .I2C0SDAI(GLMUXINT_GND), 
        .I2C0SDAO(), .I2C0SCLI(GLMUXINT_GND), .I2C0SCLO(), .SPI1DO(), 
        .SPI1DOE(), .SPI1DI(GLMUXINT_GND), .SPI1CLKI(GLMUXINT_GND), 
        .SPI1CLKO(), .SPI1MODE(), .SPI1SSI(GLMUXINT_GND), .SPI1SSO({
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET , nc37}), 
        .UART1TXD(), .UART1RXD(GLMUXINT_GND), .I2C1SDAI(GLMUXINT_GND), 
        .I2C1SDAO(), .I2C1SCLI(GLMUXINT_GND), .I2C1SCLO(), .MACTXD({
        \MSS_CORE2_0/MACTXD_net_0[1] , \MSS_CORE2_0/MACTXD_net_0[0] }), 
        .MACRXD({\MSS_CORE2_0/MSS_MAC_0_RXD_1_Y , 
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y }), .MACTXEN(
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D ), .MACCRSDV(
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y ), .MACRXER(
        \MSS_CORE2_0/MSS_MAC_0_RXER_Y ), .MACMDI(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y ), .MACMDO(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_D ), .MACMDEN(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E ), .MACMDC(
        \MSS_CORE2_0/MSS_MAC_0_MDC_D ), .EMCCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST_EMCCLK ), .EMCCLKRTN(
        \MSS_CORE2_0/MSS_ADLIB_INST_EMCCLK ), .EMCRDB({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .EMCAB({nc38, nc39, 
        nc40, nc41, nc42, nc43, nc44, nc45, nc46, nc47, nc48, nc49, 
        nc50, nc51, nc52, nc53, nc54, nc55, nc56, nc57, nc58, nc59, 
        nc60, nc61, nc62, nc63}), .EMCWDB({nc64, nc65, nc66, nc67, 
        nc68, nc69, nc70, nc71, nc72, nc73, nc74, nc75, nc76, nc77, 
        nc78, nc79}), .EMCRWn(), .EMCCS0n(), .EMCCS1n(), .EMCOEN0n(), 
        .EMCOEN1n(), .EMCBYTEN({nc80, nc81}), .EMCDBOE(), .ADC0(
        GLMUXINT_GND), .ADC1(GLMUXINT_GND), .ADC2(GLMUXINT_GND), .ADC3(
        GLMUXINT_GND), .ADC4(GLMUXINT_GND), .ADC5(GLMUXINT_GND), .ADC6(
        GLMUXINT_GND), .ADC7(GLMUXINT_GND), .ADC8(GLMUXINT_GND), .ADC9(
        GLMUXINT_GND), .ADC10(GLMUXINT_GND), .ADC11(GLMUXINT_GND), 
        .SDD0(), .SDD1(), .SDD2(), .ABPS0(GLMUXINT_GND), .ABPS1(
        GLMUXINT_GND), .ABPS2(GLMUXINT_GND), .ABPS3(GLMUXINT_GND), 
        .ABPS4(GLMUXINT_GND), .ABPS5(GLMUXINT_GND), .ABPS6(
        GLMUXINT_GND), .ABPS7(GLMUXINT_GND), .ABPS8(GLMUXINT_GND), 
        .ABPS9(GLMUXINT_GND), .ABPS10(GLMUXINT_GND), .ABPS11(
        GLMUXINT_GND), .TM0(GLMUXINT_GND), .TM1(GLMUXINT_GND), .TM2(
        GLMUXINT_GND), .TM3(GLMUXINT_GND), .TM4(GLMUXINT_GND), .TM5(
        GLMUXINT_GND), .CM0(GLMUXINT_GND), .CM1(GLMUXINT_GND), .CM2(
        GLMUXINT_GND), .CM3(GLMUXINT_GND), .CM4(GLMUXINT_GND), .CM5(
        GLMUXINT_GND), .GNDTM0(GLMUXINT_GND), .GNDTM1(GLMUXINT_GND), 
        .GNDTM2(GLMUXINT_GND), .VAREF0(GLMUXINT_GND), .VAREF1(
        GLMUXINT_GND), .VAREF2(GLMUXINT_GND), .VAREFOUT(), .GNDVAREF(
        GLMUXINT_GND), .PUn(GLMUXINT_GND), .MSSHADDR({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[0]INT_NET }), .MSSHWDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[0]INT_NET }), .MSSHSIZE({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHSIZE[0]INT_NET }), .MSSHRDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[0]INT_NET }), .FABHADDR({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[0]INT_NET }), .FABHWDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET }), .FABHSIZE({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSIZE[0]INT_NET }), .FABHRDATA({
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET }), .DMAREADY({
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/DMAREADY[0]INT_NET }), .MSSINT({
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[0]INT_NET }), .GPI({
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[16]INT_NET , GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .GPO({
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[16]INT_NET , nc82, nc83, nc84, 
        nc85, nc86, nc87, nc88, nc89, nc90, nc91, nc92, nc93, nc94, 
        nc95, nc96, nc97}), .MACM2FTXD({nc98, nc99}), .MACF2MRXD({
        GLMUXINT_GND, GLMUXINT_GND}), .ACEFLAGS({
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET , 
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET }), .UART0CTSn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET ), .UART0DSRn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), .UART0RTSn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RTSnINT_NET ), .UART0DTRn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DTRnINT_NET ), .UART0RIn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RInINT_NET ), .UART0DCDn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DCDnINT_NET ), .UART1CTSn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1CTSnINT_NET ), .UART1DSRn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET ), .UART1RIn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET ), .UART1DCDn(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), 
        .I2C0SMBALERTNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET ), .I2C0BCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0BCLKINT_NET ), .I2C0SMBALERTNI(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET ), 
        .I2C0SMBUSNI(\MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET ), 
        .I2C1SMBALERTNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ), .I2C1BCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), .I2C1SMBALERTNI(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), 
        .I2C1SMBUSNI(\MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET ), 
        .UART1RTSn(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), 
        .UART1DTRn(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), 
        .TXEV(\MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET ), .RXEV(
        \MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET ), .VRON(
        \MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET ), .MACM2FTXEN(), 
        .MACF2MCRSDV(GLMUXINT_GND), .MACM2FMDEN(), .MACF2MRXER(
        GLMUXINT_GND), .MACM2FMDO(), .MACF2MMDI(GLMUXINT_GND), 
        .MACM2FMDC(), .I2C0SMBUSNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), .I2C1SMBUSNO(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET ), .CALIBOUT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET ), .CALIBIN(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET ), .LVTTL0(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET ), .LVTTL1(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET ), .LVTTL2(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET ), .LVTTL0EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), .LVTTL1EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET ), .LVTTL2EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), .LVTTL3(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET ), .LVTTL4(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET ), .LVTTL5(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET ), .LVTTL3EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), .LVTTL4EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET ), .LVTTL5EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), .LVTTL6(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET ), .LVTTL7(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET ), .LVTTL8(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET ), .LVTTL6EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), .LVTTL7EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET ), .LVTTL8EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET ), .LVTTL9(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET ), .LVTTL10(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET ), .LVTTL11(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET ), .LVTTL9EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET ), .LVTTL10EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET ), .LVTTL11EN(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET ), .CMP0(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET ), .CMP1(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET ), .CMP2(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET ), .CMP3(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET ), .CMP4(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET ), .CMP5(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET ), .FABSDD0D(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), .FABSDD1D(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET ), .FABSDD2D(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET ), .CMP6(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP6INT_NET ), .CMP7(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP7INT_NET ), .CMP8(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP8INT_NET ), .FABACETRIG(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABACETRIGINT_NET ), .CMP9(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET ), .FABSDD0CLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), .FABSDD1CLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), .FABSDD2CLK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET ), .VCC15GOOD(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), .VCC33GOOD(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET ), .PUFABn(
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET ), .DEEPSLEEP(
        \MSS_CORE2_0/MSS_ADLIB_INST/DEEPSLEEPINT_NET ), .SLEEP(
        \MSS_CORE2_0/MSS_ADLIB_INST/SLEEPINT_NET ), .M2FRESETn(
        \MSS_CORE2_0/MSS_ADLIB_INST/M2FRESETnINT_NET ), .WDINT(
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET ), .MSSHREADY(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET ), .MSSHRESP(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET ), .MSSHLOCK(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHLOCKINT_NET ), .FABHMASTLOCK(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHMASTLOCKINT_NET ), .MSSHTRANS1(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHTRANS1INT_NET ), .MSSHWRITE(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWRITEINT_NET ), .FABINT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABINTINT_NET ), .FABHTRANS1(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHTRANS1INT_NET ), .FABHSEL(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHSELINT_NET ), .F2MRESETn(
        \MSS_CORE2_0/MSS_ADLIB_INST/F2MRESETnINT_NET ), .SYNCCLKFDBK(
        \MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), 
        .FABHREADYOUT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYOUTINT_NET )
        , .FABHRESP(\MSS_CORE2_0/MSS_ADLIB_INST/FABHRESPINT_NET ), 
        .FABHWRITE(\MSS_CORE2_0/MSS_ADLIB_INST/FABHWRITEINT_NET ), 
        .FABHREADY(\MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYINT_NET ), 
        .CMP10(), .CMP11());
    NOR3C \stonyman_0/un1_counterPixelsCaptured_16_I_90  (.A(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .C(
        \stonyman_0/DWACT_ADD_CI_0_g_array_10[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_2[0] ));
    OR2 \stonyman_0/state_RNIS1A7[3]  (.A(\stonyman_0/state[3]_net_1 ), 
        .B(\stonyman_0/state[12]_net_1 ), .Y(
        \stonyman_0/un1_state_18_2_tz ));
    NOR3B \stonyman_0/substate_ns_0_0_0_RNO[2]  (.A(
        \stonyman_0/substate_ns_0_0_a2_3_0[2] ), .B(
        \stonyman_0/state[7]_net_1 ), .C(\stonyman_0/N_1486 ), .Y(
        \stonyman_0/N_94 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_170 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 ));
    NOR2B \stonyman_0/substate_RNIPQG33[3]  (.A(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_1_0 ), .B(
        \stonyman_0/N_202 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_1_1 ));
    MX2 \FIFO_PIXEL_0/MX2_78  (.A(\FIFO_PIXEL_0/MX2_57_Y ), .B(
        \FIFO_PIXEL_0/MX2_87_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_78_Y ));
    DFN1E1 \adc081s101_0/cntrWaitTrailing[2]  (.D(\adc081s101_0/N_31 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitTrailinge ), .Q(
        \adc081s101_0/cntrWaitTrailing[2]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[14]  (.A(
        \psram_cr_0/data_from_cr[14] ), .B(
        \psram_cr_0/ahb0/data_out[14]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_273 ));
    DFN1 \psram_cr_0/ahb0/data_in[3]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[3] ));
    OR3 \stonyman_0/substate_RNIHVHSE1[16]  (.A(\stonyman_0/N_210 ), 
        .B(\stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_2_0 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa ), .Y(\stonyman_0/N_134 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[5] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_87 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_88 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_86 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        );
    DFN1 \psram_cr_0/cr_int_i0/enable  (.D(\psram_cr_0/cr_int_i0/N_20 )
        , .CLK(FAB_CLK), .Q(\psram_cr_0/cr_int_i0/enable_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[4]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[8] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]_net_1 ));
    INV \adc081s101_0/dataout_RNO[0]  (.A(MISO_c), .Y(
        \adc081s101_0/MISO_c_i ));
    OR3 \stonyman_0/state_RNISFFQ3[12]  (.A(\stonyman_0/N_190 ), .B(
        \stonyman_0/N_192 ), .C(\stonyman_0/N_191 ), .Y(
        \stonyman_0/N_98 ));
    AX1D \counter_0/counterInternal_RNO_0[10]  (.A(
        \counter_0/counterInternal[9]_net_1 ), .B(
        \counter_0/counterInternal_c8 ), .C(
        \counter_0/counterInternal[10]_net_1 ), .Y(\counter_0/N_36_i ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIARGQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[24] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[24] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_705 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[11]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[11] ));
    OR2 \counter_0/counterInternal_RNIQSNQ5[18]  (.A(\counter_0/N_471 )
        , .B(\counter_0/counterInternal[18]_net_1 ), .Y(
        \counter_0/N_34 ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[4]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .B(\FIFO_PIXEL_0/AO1_25_Y ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[4] ));
    AND3 \FIFO_PIXEL_0/AND3_5  (.A(\FIFO_PIXEL_0/XNOR2_1_Y ), .B(
        \FIFO_PIXEL_0/XNOR2_17_Y ), .C(\FIFO_PIXEL_0/XNOR2_21_Y ), .Y(
        \FIFO_PIXEL_0/AND3_5_Y ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_11_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[11] ), .B(N_1301), .Y(N_10));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a4_1  
        (.A(\stonyman_0/counterPixelsCaptured[7]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .C(
        \stonyman_0/mult1_un96_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a4_1 ));
    OR2 \stonyman_0/un3_counterWait_I_21  (.A(
        \stonyman_0/counterWait[6]_net_1 ), .B(
        \stonyman_0/counterWait[7]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[3] ));
    DFN1E1 \stonyman_0/counterWait[22]  (.D(\stonyman_0/N_34 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[22]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[5]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_82 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_68));
    XOR3 \adc081s101_0/un1_cntrWaitLeading_I_10  (.A(
        \adc081s101_0/cntrWaitLeading[1]_net_1 ), .B(
        \adc081s101_0/N_63 ), .C(\adc081s101_0/DWACT_ADD_CI_0_TMP[0] ), 
        .Y(\adc081s101_0/I_10 ));
    OR2A \stonyman_0/inphi_RNO_1  (.A(\stonyman_0/state[9]_net_1 ), .B(
        \stonyman_0/N_146 ), .Y(\stonyman_0/N_21 ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_DVLDI  (.D(
        \FIFO_TEST_COUNTER_0/AND2A_0_Y ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_TEST_COUNTER_0/DVLDI ));
    NOR3A \psram_cr_0/cr_int_i0/enable_RNO  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_98 ), .C(
        \psram_cr_0/cr_int_i0/N_97 ), .Y(\psram_cr_0/cr_int_i0/N_20 ));
    NOR3A \stonyman_0/counterPixelsCaptured_RNIHIR01[6]  (.A(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .Y(
        \stonyman_0/state103_10 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[27]  (.A(
        \psram_cr_0/ahb0/N_238 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 ));
    XOR2 \stonyman_0/un1_cachedPOINTER_3_I_9  (.A(
        \stonyman_0/un45lto0 ), .B(
        \stonyman_0/substate_RNIAIF5C[5]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_partial_sum_0[0] ));
    NOR2 \adc081s101_0/cntrWaitQuiet_RNO[0]  (.A(
        \adc081s101_0/un1_reset_i_1 ), .B(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .Y(\adc081s101_0/N_66 )
        );
    XA1A \adc081s101_0/bitsRead_RNO[2]  (.A(
        \adc081s101_0/bitsRead[2]_net_1 ), .B(\adc081s101_0/N_45 ), .C(
        \adc081s101_0/N_109 ), .Y(\adc081s101_0/N_37 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_0  (.A(\FIFO_PIXEL_0/MEM_RADDR[4] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[4] ), .Y(\FIFO_PIXEL_0/XNOR2_0_Y ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_21_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[21] ), .B(N_1301), .Y(N_1289));
    MX2 \FIFO_PIXEL_0/MX2_50  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB2 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB2 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_50_Y ));
    DFN1 \stonyman_0/counterPixelsCaptured[6]  (.D(
        \stonyman_0/counterPixelsCaptured_8[6] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ));
    XA1 \stonyman_0/counterPixelsCaptured_RNIO4PKI_0[10]  (.A(
        \stonyman_0/N146_2 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/d_m7_i_a3_0_0 ), .Y(\stonyman_0/d_N_9 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[11]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_776 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[11]_net_1 ));
    DFN1 \stonyman_0/state[3]  (.D(\stonyman_0/state_RNO[3]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[3]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[0]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[0] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[2]  (.A(
        \psram_cr_0/data_from_cr[2] ), .B(\psram_data_in[2] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_233 ));
    XA1A \counter_0/COUNT_RNO[27]  (.A(\counter_0_COUNT[27] ), .B(
        \counter_0/N_69 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n27 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[12]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[12] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[7]  (.A(\FIFO_PIXEL_0/MX2_64_Y ), .B(
        \FIFO_PIXEL_0/MX2_89_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[7] ));
    OR3 \stonyman_0/un3_counterWait_I_91  (.A(
        \stonyman_0/DWACT_FDEC_E[24] ), .B(
        \stonyman_0/DWACT_FDEC_E[23] ), .C(
        \stonyman_0/DWACT_FDEC_E[25] ), .Y(\stonyman_0/N_2 ));
    AO1A \psram_cr_0/ahb0/hready_reg_RNO_0  (.A(
        \psram_cr_0/ahb0/hwrite_reg4 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(
        \psram_cr_0/ahb0/fsm_net_1 ), .Y(\psram_cr_0/ahb0/N_167 ));
    NOR3B \stonyman_0/substate_RNO_3[3]  (.A(
        \stonyman_0/substate_tr32_2_0 ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(\stonyman_0/counterWait8 )
        , .Y(\stonyman_0/substate_tr32_2_2 ));
    MX2 \counter_0/WRITEEN_RNO_0  (.A(\counter_0/state[1]_net_1 ), .B(
        counter_0_WRITEEN), .S(\counter_0/un1_COUNT8 ), .Y(
        \counter_0/N_258 ));
    IOPAD_TRI \inphi_pad/U0/U0  (.D(\inphi_pad/U0/NET1 ), .E(
        \inphi_pad/U0/NET2 ), .PAD(inphi));
    OR3 \stonyman_0/un3_counterWait_I_51  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[5] ), .Y(
        \stonyman_0/DWACT_FDEC_E[28] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_4[15]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[15] ), .Y(
        \psram_cr_0/ahb0/operation_m[15] ));
    DFN1 \counter_0/counterInternal[16]  (.D(\counter_0/N_18 ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[16]_net_1 ));
    DFN1E1 \stonyman_0/counterWait[27]  (.D(\stonyman_0/N_42 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[27]_net_1 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[5]  (.D(
        \stonyman_0/state_RNIPGHME[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[5] ));
    IOBI_IB_OB_EB \psram_data_pad[7]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[7] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[7]/U0/NET3 ), .DOUT(
        \psram_data_pad[7]/U0/NET1 ), .EOUT(
        \psram_data_pad[7]/U0/NET2 ), .Y(\psram_data_in[7] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[26]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[26] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[26] ));
    IOTRI_OB_EB \led_pad[4]/U0/U1  (.D(\led_c[4] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[4]/U0/NET1 ), .EOUT(\led_pad[4]/U0/NET2 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_1[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[13] ));
    XA1B \counter_0/counterInternal_RNO[22]  (.A(
        \counter_0/counterInternal[22]_net_1 ), .B(\counter_0/N_480 ), 
        .C(\counter_0/COUNTe ), .Y(\counter_0/N_39_0 ));
    NOR3A \stonyman_0/substate_RNO[9]  (.A(\stonyman_0/N_1504 ), .B(
        \stonyman_0/N_1580 ), .C(\stonyman_0/N_1482 ), .Y(
        \stonyman_0/substate_RNO[9]_net_1 ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[0]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] ));
    OR2A \psram_cr_0/ahb0/hready_reg_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/ahb0/N_167 ), .Y(
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_267 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a3_1  
        (.A(\stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/mult1_un96_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a3_1 ));
    DFN1 \counter_0/counterInternal[4]  (.D(
        \counter_0/counterInternal_RNO[4]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[4]_net_1 ));
    NOR3B \stonyman_0/state_RNIUIDBJ[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_20_0 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIUIDBJ[6]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_48  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave6_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]_net_1 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0[1]  (
        .A(\CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[1] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_35 ));
    OR3 \stonyman_0/un3_counterWait_I_85  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[30] ), .C(
        \stonyman_0/DWACT_FDEC_E[23] ), .Y(\stonyman_0/N_4 ));
    NOR2A \stonyman_0/substate_RNO_2[12]  (.A(\stonyman_0/N_1692_1 ), 
        .B(\stonyman_0/N_73 ), .Y(\stonyman_0/N_1586 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI1RKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_686 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] ));
    DFN1E1 \stonyman_0/counterWait[18]  (.D(\stonyman_0/N_30 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[18]_net_1 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_19_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[19] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[19] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_30  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[1]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[0]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[2]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[0]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[1]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[2]INT_NET ));
    DFN1 \psram_cr_0/ahb0/data_out[15]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[15]_net_1 ));
    DFN1 \stonyman_0/substate[15]  (.D(
        \stonyman_0/substate_RNO[15]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[15]_net_1 ));
    OR2A \counter_0/COUNT_RNIG5DV8[28]  (.A(\counter_0_COUNT[28] ), .B(
        \counter_0/COUNT_RNIKOFG8[27]_net_1 ), .Y(\counter_0/N_71 ));
    DFN1E1 \counter_0/COUNT[28]  (.D(\counter_0/COUNT_n28 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[28] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_88  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[15]  (.A(
        \psram_cr_0/ahb0/data_out[15]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_out_m[15] ));
    AO1B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNIFF1N[1]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0II ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[30]  (.A(
        \psram_cr_0/ahb0/N_241 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 ));
    OR3 \stonyman_0/un3_counterWait_I_31  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(
        \stonyman_0/counterWait[9]_net_1 ), .C(
        \stonyman_0/counterWait[10]_net_1 ), .Y(\stonyman_0/N_20_0 ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNIA52K3[2]  (.A(
        \psram_cr_0/ahb0/N_88 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ));
    IOPAD_BI \psram_data_pad[5]/U0/U0  (.D(\psram_data_pad[5]/U0/NET1 )
        , .E(\psram_data_pad[5]/U0/NET2 ), .Y(
        \psram_data_pad[5]/U0/NET3 ), .PAD(psram_data[5]));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_233 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[1]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .B(\FIFO_PIXEL_0/AND2_61_Y ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[1] ));
    OA1 \stonyman_0/substate_RNO_11[3]  (.A(
        \stonyman_0/substate_ns_0_a4_0_2[3] ), .B(
        \stonyman_0/substate_ns_0_1088_tz_1 ), .C(
        \stonyman_0/substate[11]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_1088_0 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[10]  (.A(
        \psram_cr_0/reg_addr[10] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_189 ));
    NOR2A \adc081s101_0/bitsRead_RNO[0]  (.A(\adc081s101_0/N_109 ), .B(
        \adc081s101_0/bitsRead[0]_net_1 ), .Y(\adc081s101_0/N_78 ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_7  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_8_Y ), .BLKB(\FIFO_PIXEL_0/OR2_11_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_7_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_7_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_7_DOUTB0 ));
    NOR2B \stonyman_0/resp_RNO  (.A(\stonyman_0/N_763 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_56 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[1]  (.A(
        \psram_cr_0/ahb0/data_out[1]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] ));
    NOR2B \stonyman_0/state_RNI5LE6J[7]  (.A(
        \stonyman_0/resv_1_sqmuxa ), .B(\stonyman_0/state[7]_net_1 ), 
        .Y(\stonyman_0/substate_9_sqmuxa_4 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_250 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRHR14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_692 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] ));
    NOR2B \FIFO_PIXEL_0/AND2_48  (.A(\FIFO_PIXEL_0/MEM_RADDR[9] ), .B(
        \FIFO_PIXEL_0/XOR2_14_Y ), .Y(\FIFO_PIXEL_0/AND2_48_Y ));
    NOR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNI33AV6_0[2]  (.A(
        \stonyman_0/N_115 ), .B(\stonyman_0/cachedValue[2] ), .Y(
        \stonyman_0/N_1953 ));
    DFN1 \psram_cr_0/cr_int_i0/noe0  (.D(\psram_cr_0/cr_int_i0/N_100 ), 
        .CLK(FAB_CLK), .Q(psram_noe0_c));
    DFN1 \stonyman_0/writeEnable  (.D(\stonyman_0/N_181 ), .CLK(SCLK_c)
        , .Q(stonyman_0_writeEnable));
    NOR2A \stonyman_0/substate_RNIEC8R1[7]  (.A(\stonyman_0/N_200 ), 
        .B(\stonyman_0/substate[7]_net_1 ), .Y(\stonyman_0/N_190 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 ));
    NOR3B \stonyman_0/substate_i_RNO_9[0]  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\stonyman_0/substate[17]_net_1 ), .C(\stonyman_0/N_77 ), 
        .Y(\stonyman_0/substate_ns_i_0_a4_0_0[0] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_71 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_87 ));
    OR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI4PT41[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_72 ));
    NOR2 \stonyman_0/state_RNIHO98[9]  (.A(\stonyman_0/state[9]_net_1 )
        , .B(\stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/substate_tr13_5_3 ));
    DFN1E1 \counter_0/COUNT[10]  (.D(\counter_0/COUNT_n10 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[10] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_70 ));
    MX2C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I12_Y_1  
        (.A(\stonyman_0/counterPixelsCaptured_RNII7AHL1[10]_net_1 ), 
        .B(\stonyman_0/mult1_un75_sum[5] ), .S(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0 ), .Y(\stonyman_0/N148 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[3]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[3] ));
    IOPAD_TRI \psram_address_pad[6]/U0/U0  (.D(
        \psram_address_pad[6]/U0/NET1 ), .E(
        \psram_address_pad[6]/U0/NET2 ), .PAD(psram_address[6]));
    MX2 \FIFO_PIXEL_0/MX2_36  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB4 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB4 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_36_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(\psram_cr_0/reg_addr[11] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_167 ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_78 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_81 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        );
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[0]  (.D(
        \stonyman_0/state_RNIUBB23[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[0] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/max_addr[28] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_239 ));
    DFN1 \counter_0/counterInternal[26]  (.D(
        \counter_0/counterInternal_RNO[26]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[26]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[10]  (.A(
        \psram_cr_0/data_from_cr[10] ), .B(
        \psram_cr_0/ahb0/data_out[10]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_269 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[16]  (.A(\psram_cr_0/dt_rw ), 
        .B(\CoreAHBLite_0_AHBmslave5_HWDATA[16] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_195 ));
    NOR2 \counter_0/counterInternal_RNILSUH[27]  (.A(
        \counter_0/counterInternal[27]_net_1 ), .B(
        \counter_0/counterInternal[26]_net_1 ), .Y(
        \counter_0/COUNT8_21_0 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNILBAA[10]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_2 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_6_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[6] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[6] ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[9]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[5] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] ));
    MX2 \psram_cr_0/ahb0/hwrite_reg_RNO_0  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWRITE), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_168 ));
    XA1A \adc081s101_0/cntrWaitQuiet_RNO[2]  (.A(
        \adc081s101_0/cntrWaitQuiet[2]_net_1 ), .B(\adc081s101_0/N_41 )
        , .C(MSS_CORE2_0_M2F_RESET_N), .Y(\adc081s101_0/N_27_1 ));
    OR3 \stonyman_0/state_RNO[9]  (.A(\stonyman_0/N_1567 ), .B(
        \stonyman_0/N_1699 ), .C(\stonyman_0/N_1700 ), .Y(
        \stonyman_0/state_ns[9] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIF4121[7]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_4 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_7 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[14]  (.A(
        \psram_cr_0/data_from_cr[14] ), .B(\psram_data_in[14] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_245 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_15[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[21] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[22]  (.D(N_1290), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[22] ));
    IOTRI_OB_EB \psram_address_pad[8]/U0/U1  (.D(\psram_address_c[8] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[8]/U0/NET1 ), .EOUT(
        \psram_address_pad[8]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[1] ));
    DFN1 \psram_cr_0/ahb0/data_in[7]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[7] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNI17VP  (.A(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ));
    AX1C \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[7]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_18_Y ), .C(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[7] ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[7] ));
    XA1 \stonyman_0/counterWait_82_i_a2[2]  (.A(
        \stonyman_0/counterWait[2]_net_1 ), .B(\stonyman_0/N_29 ), .C(
        \stonyman_0/N_136 ), .Y(\stonyman_0/N_164 ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a2_2  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a5_0 ), .B(
        \stonyman_0/mult1_un96_sum[5] ), .C(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a2_2 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_223 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_44 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_2_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[2] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[2] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[21]  (.D(N_1289), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[21] ));
    DFN1E1 \stonyman_0/counterWait[1]  (.D(\stonyman_0/N_35 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[1]_net_1 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[27]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[27] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[27] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_792 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIGFTL[12]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ));
    MX2 \FIFO_PIXEL_0/MX2_7  (.A(\FIFO_PIXEL_0/MX2_47_Y ), .B(
        \FIFO_PIXEL_0/MX2_52_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_7_Y ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_260 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 ));
    DFN1E1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/ready  (.D(
        \fifo_32bit_apb3_0/bus_read_enable ), .CLK(SCLK_c), .E(
        MSS_CORE2_0_M2F_RESET_N), .Q(\fifo_32bit_apb3_0.ioreg_ready ));
    AO1A \stonyman_0/state_RNI0RB88[11]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/N_105 ), .C(
        \stonyman_0/N_202 ), .Y(\stonyman_0/N_1917 ));
    NOR2A \psram_cr_0/ahb0/haddr_reg_RNIO80F2[4]  (.A(
        \psram_cr_0/ahb0/N_84 ), .B(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_85 ));
    OR3A \psram_cr_0/cr_int_i0/ac_counter_RNIKISD1[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_76 ));
    AO1A \stonyman_0/substate_ns_0_0_1[2]  (.A(\stonyman_0/N_1939 ), 
        .B(\stonyman_0/substate_ns_0_0_a2_1[2] ), .C(
        \stonyman_0/substate_ns_0_0_0[2]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_0_1[2]_net_1 ));
    AO1 \adc081s101_0/cs_RNO_0  (.A(\adc081s101_0/cs16_0_a2_0 ), .B(
        \adc081s101_0/N_83 ), .C(\adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/N_7 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[18]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[18]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[18] ));
    XA1A \counter_0/COUNT_RNO[26]  (.A(\counter_0_COUNT[26] ), .B(
        \counter_0/COUNT_RNIVUKI7[25]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n26 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[25]  (.D(N_1293), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[25] ));
    OR2B \stonyman_0/substate_RNICSDQ1[1]  (.A(\stonyman_0/N_1486 ), 
        .B(\stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_1913 ));
    DFN1 \psram_cr_0/ahb0/dt_req  (.D(
        \psram_cr_0/ahb0/dt_req_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/dt_req ));
    DFN1 \stonyman_0/counterPixelsCaptured[3]  (.D(
        \stonyman_0/counterPixelsCaptured_8[3] ), .CLK(SCLK_c), .Q(
        \stonyman_0/N_716 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[10] ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[21]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[21]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[21] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[2]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[2] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[2]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[2] ));
    NOR2A \counter_0/counterInternal_RNIBSJP7[25]  (.A(
        \counter_0/N_488 ), .B(\counter_0/counterInternal[25]_net_1 ), 
        .Y(\counter_0/N_491 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[12]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[14] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[14]  (.A(
        \psram_cr_0/ahb0/data_out[14]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[27]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[27] ));
    DFN1 \psram_cr_0/ahb0/data_out[10]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[10]_net_1 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[5]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[5] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[5] ));
    IOBI_IB_OB_EB \psram_data_pad[8]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[8]/U0/NET3 ), .DOUT(
        \psram_data_pad[8]/U0/NET1 ), .EOUT(
        \psram_data_pad[8]/U0/NET2 ), .Y(\psram_data_in[8] ));
    XA1A \counter_0/COUNT_RNO[31]  (.A(\counter_0_COUNT[31] ), .B(
        \counter_0/N_73 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n31 ));
    DFN1 \stonyman_0/substate[1]  (.D(
        \stonyman_0/substate_RNO[1]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[1]_net_1 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[0] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_169 ));
    OR2A \counter_0/COUNT_RNINOS56[22]  (.A(\counter_0_COUNT[22] ), .B(
        \counter_0/N_64 ), .Y(\counter_0/COUNT_RNINOS56[22]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_259 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_out[6]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[6]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[6]  (.A(\FIFO_PIXEL_0/MX2_82_Y ), .B(
        \FIFO_PIXEL_0/MX2_7_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[6] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_0_5  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a0_0 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_5 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_16  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[8] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[8] ), .Y(\FIFO_PIXEL_0/XNOR2_16_Y ));
    IOBI_IB_OB_EB \psram_data_pad[14]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[14] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[14]/U0/NET3 ), .DOUT(
        \psram_data_pad[14]/U0/NET1 ), .EOUT(
        \psram_data_pad[14]/U0/NET2 ), .Y(\psram_data_in[14] ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a2  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a2_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIT0EA2[1]  (.A(
        \stonyman_0/DOUT_TMP[1] ), .B(\stonyman_0/DIN_REG1[1] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[1] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_187 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[6] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[8]  (.A(
        \psram_cr_0/data_from_cr[8] ), .B(\psram_data_in[8] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_239 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_194 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNINQKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_681 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[1]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .B(\FIFO_PIXEL_0/AND2_27_Y ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[1] ));
    OR3 \stonyman_0/state_RNIENRV61[7]  (.A(
        \stonyman_0/substate_9_sqmuxa_4 ), .B(
        \stonyman_0/substate_4_sqmuxa ), .C(
        \stonyman_0/substate_9_sqmuxa_5 ), .Y(
        \stonyman_0/un1_substate_4_sqmuxa ));
    OA1C \stonyman_0/state_RNO[12]  (.A(\stonyman_0/N_1671 ), .B(
        \stonyman_0/state[12]_net_1 ), .C(
        \stonyman_0/state_ns_i_0[12] ), .Y(
        \stonyman_0/state_RNO[12]_net_1 ));
    OR2B \stonyman_0/state_RNISO989[6]  (.A(\stonyman_0/N_1661 ), .B(
        \stonyman_0/state[6]_net_1 ), .Y(\stonyman_0/N_1021 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI1I8K[4]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[1]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[1] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[1] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI23GQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[11] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[11] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_692 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI11EA2[5]  (.A(
        \stonyman_0/DOUT_TMP[5] ), .B(\stonyman_0/DIN_REG1[5] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[5] ));
    NOR2B \stonyman_0/state_RNO_2[9]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[9]_net_1 ), .Y(
        \stonyman_0/state_ns_0_a4_0[9] ));
    NOR2 \stonyman_0/state_RNIEO98[1]  (.A(\stonyman_0/state[1]_net_1 )
        , .B(\stonyman_0/state[7]_net_1 ), .Y(
        \stonyman_0/state_inv_2_0 ));
    NOR3A \stonyman_0/counterPixelsCaptured_RNI2V291[0]  (.A(
        \stonyman_0/un1_counterPixelsCaptured_15_4_1 ), .B(
        \stonyman_0/N_713 ), .C(\stonyman_0/N_714 ), .Y(
        \stonyman_0/un1_counterPixelsCaptured_15_4_2 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[30]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[30] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1  (
        .D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 )
        );
    NOR2 \stonyman_0/writeEnable_2_sqmuxa_0  (.A(
        \stonyman_0/writeEnableState[1]_net_1 ), .B(
        \stonyman_0/writeEnableState[0]_net_1 ), .Y(
        \stonyman_0/writeEnable_2_sqmuxa_0_net_1 ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_53  (.A(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_1[0] ), .Y(
        \stonyman_0/I_53 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGJHQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[27] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[27] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_708 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[10]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[10] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[6]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[6] ));
    NOR2B \FIFO_TEST_COUNTER_0/AO1_8  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] ), .B(
        \FIFO_TEST_COUNTER_0/AND2_36_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AO1_8_Y ));
    NOR2A \adc081s101_0/bitsRead_RNIVKUP[3]  (.A(
        \adc081s101_0/bitsRead[3]_net_1 ), .B(
        \adc081s101_0/bitsRead[2]_net_1 ), .Y(
        \adc081s101_0/cs16_0_a2_0_0 ));
    DFN1 \psram_cr_0/cr_int_i0/address[19]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[19] ));
    MX2 \FIFO_PIXEL_0/MX2_30  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB2 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB2 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_30_Y ));
    OR2B \counter_0/COUNT_RNIMFFT2[15]  (.A(
        \counter_0/COUNT_RNI07IE2[5]_net_1 ), .B(\counter_0_COUNT[15] )
        , .Y(\counter_0/N_58 ));
    IOPAD_TRI \psram_address_pad[9]/U0/U0  (.D(
        \psram_address_pad[9]/U0/NET1 ), .E(
        \psram_address_pad[9]/U0/NET2 ), .PAD(psram_address[9]));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIJ4EJ[10]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[19]  (.D(N_26), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[19] ));
    DFN1 \psram_cr_0/ahb0/operation[20]  (.D(
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[20]_net_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[21]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_786 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[21]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[17]  (.A(
        \psram_cr_0/ahb0/N_196 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 ));
    NOR2 \counter_0/counterInternal_RNO[10]  (.A(\counter_0/N_36_i ), 
        .B(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[10]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 ));
    DFN1E1 \stonyman_0/counterWait[11]  (.D(\stonyman_0/N_20 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[11]_net_1 ));
    NOR2A \stonyman_apb3_0/bus_read_enable_0_a2  (.A(
        \stonyman_apb3_0/N_109 ), .B(CoreAPB3_0_APBmslave0_0_PWRITE), 
        .Y(\stonyman_apb3_0/bus_read_enable ));
    DFN1E1 \stonyman_0/counterWait[4]  (.D(\stonyman_0/N_1916 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[4]_net_1 ));
    IOTRI_OB_EB \incp_pad/U0/U1  (.D(incp_c), .E(PLLEN_VCC), .DOUT(
        \incp_pad/U0/NET1 ), .EOUT(\incp_pad/U0/NET2 ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_0 ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_0  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_155 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_169 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[2]  (.D(
        \psram_cr_0/cr_int_i0/N_63 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[8] ));
    OR3 \stonyman_0/un3_counterWait_I_41  (.A(
        \stonyman_0/counterWait[12]_net_1 ), .B(
        \stonyman_0/counterWait[13]_net_1 ), .C(
        \stonyman_0/counterWait[14]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[9] ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[4]  (.D(\FIFO_PIXEL_0/QXI[4] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[3]  (.D(N_64), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[3] ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 ));
    AND3 \FIFO_PIXEL_0/AND3_3  (.A(\FIFO_PIXEL_0/XNOR2_19_Y ), .B(
        \FIFO_PIXEL_0/XNOR2_0_Y ), .C(\FIFO_PIXEL_0/XNOR2_5_Y ), .Y(
        \FIFO_PIXEL_0/AND3_3_Y ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_0  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_13_Y ), .BLKB(\FIFO_PIXEL_0/OR2_15_Y ), 
        .WENA(GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(
        SCLK_c), .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), 
        .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(
        ), .DOUTA0(), .DOUTB8(), .DOUTB7(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB7 ), .DOUTB6(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_0_DOUTB0 ));
    AND3 \stonyman_0/un2_cachedValue_1_I_10  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/cachedValue[2] ), .Y(
        \stonyman_0/DWACT_FINC_E[0] ));
    OR3 \stonyman_0/state_RNIKTLFM[11]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_1_2 ), .B(
        \stonyman_0/counterWait_4_sqmuxa_1 ), .C(
        \stonyman_0/counterWait_1_sqmuxa_3 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_1_4 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNINBUL[19]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ));
    IOBI_IB_OB_EB \psram_data_pad[10]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[10] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[10]/U0/NET3 ), .DOUT(
        \psram_data_pad[10]/U0/NET1 ), .EOUT(
        \psram_data_pad[10]/U0/NET2 ), .Y(\psram_data_in[10] ));
    MX2 \FIFO_PIXEL_0/MX2_60  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB5 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB5 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_60_Y ));
    OR2A \counter_0/COUNT_RNIVUKI7[25]  (.A(\counter_0_COUNT[25] ), .B(
        \counter_0/N_67 ), .Y(\counter_0/COUNT_RNIVUKI7[25]_net_1 ));
    OR2A \psram_cr_0/cr_int_i0/nwe_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/cr_int_i0/N_227 ), .Y(
        \psram_cr_0/cr_int_i0/N_101 ));
    XO1A \counter_0/counterInternal_RNO[9]  (.A(
        \counter_0/counterInternal[9]_net_1 ), .B(
        \counter_0/counterInternal_c8 ), .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[9]_net_1 ));
    DFN1 \counter_0/counterInternal[15]  (.D(
        \counter_0/counterInternal_RNO[15]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[15]_net_1 ));
    NOR3C \stonyman_0/substate_RNI99UL9_0[9]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/state[9]_net_1 ), 
        .C(\stonyman_0/substate[9]_net_1 ), .Y(
        \stonyman_0/substate_1_sqmuxa_10 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[8]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[8] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] ));
    OR2A \counter_0/COUNT_RNI51AR3[17]  (.A(\counter_0_COUNT[17] ), .B(
        \counter_0/COUNT_RNIDOCC3[16]_net_1 ), .Y(\counter_0/N_60 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6C9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[4] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[4] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_685 ));
    AND3C \psram_cr_0/cr_int_i0/op_counter_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_108 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_n3_i_0_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_65 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[7]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[7]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[7] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[5]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[10] ));
    DFN1E1 \counter_0/COUNT[19]  (.D(\counter_0/COUNT_n19 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[19] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[4]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[4] ));
    AX1C \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[12]  (.A(
        \FIFO_PIXEL_0/AND2_43_Y ), .B(\FIFO_PIXEL_0/AO1_5_Y ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[12] ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[12] ));
    NOR3B \stonyman_0/state_RNO_0[6]  (.A(\stonyman_0/N_1692_1 ), .B(
        \stonyman_0/state103 ), .C(\stonyman_0/N_1662 ), .Y(
        \stonyman_0/N_1692 ));
    OR2 \stonyman_0/counterPixelsCaptured_RNILUIM[11]  (.A(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/d_N_12 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/operation[28]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[28] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_207 ));
    NOR3A \stonyman_0/state_RNIQTHL1[2]  (.A(
        \stonyman_0/substate_ns_i_a4_10_0[1] ), .B(
        \stonyman_0/state[2]_net_1 ), .C(\stonyman_0/N_1485 ), .Y(
        \stonyman_0/substate_ns_i_a4_10_2[1] ));
    IOBI_IB_OB_EB \psram_data_pad[9]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[9] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[9]/U0/NET3 ), .DOUT(
        \psram_data_pad[9]/U0/NET1 ), .EOUT(
        \psram_data_pad[9]/U0/NET2 ), .Y(\psram_data_in[9] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[7] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ));
    NOR3C \counter_0/state_RNO_3[1]  (.A(\counter_0/N_29_15 ), .B(
        \counter_0/N_29_16 ), .C(\counter_0/N_29_19 ), .Y(
        \counter_0/N_29_22 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]  (.D(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave5_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_18  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[6] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[6] ), .Y(\FIFO_PIXEL_0/XNOR2_18_Y ));
    OR3 \stonyman_0/un3_counterWait_I_22  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[3] ), .Y(\stonyman_0/N_23 ));
    AO1D 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIQNPI4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_95 ));
    AO1A \psram_cr_0/ahb0/hrdata_reg_RNO_0[0]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_9 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] ), .C(
        \psram_cr_0/ahb0/data_out_m[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[23]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[23] ));
    NOR3C \stonyman_0/substate_RNO_4[4]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/state[8]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_2_1[4] ));
    AO1C \stonyman_0/state_RNIUIPGA[9]  (.A(\stonyman_0/N_146 ), .B(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_0_0 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_0 ));
    DFN1E1 \stonyman_0/pixelout[7]  (.D(\adc081s101_0_dataout[7] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[7] ));
    NOR2A \counter_0/counterInternal_RNIS0NK2[7]  (.A(
        \counter_0/COUNT8_22_1 ), .B(\counter_0/counterInternal_c3 ), 
        .Y(\counter_0/COUNT8_22 ));
    OR3 \stonyman_0/state_RNO[6]  (.A(\stonyman_0/N_1692 ), .B(
        \stonyman_0/N_1690 ), .C(\stonyman_0/N_1691 ), .Y(
        \stonyman_0/state_ns[6] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[17]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[17]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[17] ));
    OR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIHV9K[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_71 ));
    MX2 \FIFO_PIXEL_0/MX2_42  (.A(\FIFO_PIXEL_0/MX2_62_Y ), .B(
        \FIFO_PIXEL_0/MX2_25_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_42_Y ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_188 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[10]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[10] ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_64  (.A(
        \stonyman_0/N_714 ), .B(\stonyman_0/DWACT_ADD_CI_0_TMP[0] ), 
        .Y(\stonyman_0/I_64 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_16_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[16] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[16] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_55  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[23]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[22]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[24]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[22]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[23]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[24]INT_NET ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[11]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[11]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[11] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[16]  (.A(
        \psram_address_c[16] ), .B(
        \psram_cr_0/cr_int_i0/address_5[16] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_264 ));
    NOR2A \stonyman_0/substate_i_RNIQJNL2[0]  (.A(\stonyman_0/N_1529 ), 
        .B(\stonyman_0/substate_i[0]_net_1 ), .Y(\stonyman_0/N_1541 ));
    IOTRI_OB_EB \resv_pad/U0/U1  (.D(resv_c), .E(PLLEN_VCC), .DOUT(
        \resv_pad/U0/NET1 ), .EOUT(\resv_pad/U0/NET2 ));
    IOPAD_BI \psram_data_pad[4]/U0/U0  (.D(\psram_data_pad[4]/U0/NET1 )
        , .E(\psram_data_pad[4]/U0/NET2 ), .Y(
        \psram_data_pad[4]/U0/NET3 ), .PAD(psram_data[4]));
    MX2 \stonyman_0/writeEnable_RNO_0  (.A(
        \stonyman_0/un1_writeEnable_1_sqmuxa_1 ), .B(
        stonyman_0_writeEnable), .S(
        \stonyman_0/writeEnable_2_sqmuxa_net_1 ), .Y(
        \stonyman_0/N_767 ));
    OR2 \stonyman_0/counterWait_RNIN1JH[12]  (.A(
        \stonyman_0/counterWait[15]_net_1 ), .B(
        \stonyman_0/counterWait[12]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_10 ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I15_Y  
        (.A(\stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/mult1_un68_sum[7] ), .Y(
        \stonyman_0/mult1_un75_sum[5] ));
    NOR2B \stonyman_0/substate_RNO_3[4]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(\stonyman_0/N_1605 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_0[4] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[7]  (.A(
        \psram_cr_0/cr_int_i0/N_163 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[7] ));
    NAND3A \FIFO_PIXEL_0/NAND3A_3  (.A(\FIFO_PIXEL_0/MEM_WADDR[9] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[11] ), .Y(\FIFO_PIXEL_0/NAND3A_3_Y ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[13]  (.A(
        \psram_cr_0/cr_int_i0/N_169 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[13] ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[7]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[7] ));
    XNOR2 \stonyman_0/un3_counterWait_I_92  (.A(\stonyman_0/N_2 ), .B(
        \stonyman_0/counterWait[29]_net_1 ), .Y(\stonyman_0/I_92 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[10] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[10]_net_1 ));
    OR3 \stonyman_0/un3_counterWait_I_52  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[10] ), .C(
        \stonyman_0/DWACT_FDEC_E[12] ), .Y(\stonyman_0/N_13 ));
    DFN1E1 \counter_0/COUNT[27]  (.D(\counter_0/COUNT_n27 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[27] ));
    DFN1 \stonyman_0/counterPixelsCaptured[11]  (.D(
        \stonyman_0/counterPixelsCaptured_8[11] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ));
    NOR3B \psram_cr_0/ahb0/un1_haddr_reg_8_0_a2  (.A(
        \psram_cr_0/ahb0/N_95 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_8 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_214 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI3I8K[6]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[4]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[4] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[4] ));
    MX2 \FIFO_PIXEL_0/MX2_92  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB2 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB2 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_92_Y ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[31]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[31]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[31] ));
    NOR2A \stonyman_0/state_i_RNIV9H69[0]  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\stonyman_0/N_1709 ), .Y(\stonyman_0/state_ns[0] ));
    NOR3B \stonyman_0/substate_RNO_17[3]  (.A(\stonyman_0/N_1600 ), .B(
        \stonyman_0/substate[3]_net_1 ), .C(\stonyman_0/N_1476_i_0 ), 
        .Y(\stonyman_0/N_1559 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m11_s  
        (.A(\stonyman_0/mult1_un89_sum[6] ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m11_s ));
    NOR3B \stonyman_0/counterWait_RNO[11]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_32 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_20 ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I15_Y  
        (.A(\stonyman_0/counterPixelsCaptured[7]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .C(
        \stonyman_0/mult1_un89_sum[7] ), .Y(
        \stonyman_0/mult1_un96_sum[5] ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIS7GJI[1]  (.A(
        \stonyman_0/N_1953 ), .B(\stonyman_0/N_1956 ), .C(
        \stonyman_0/state20_0_a2_0 ), .Y(\stonyman_0/state20 ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNI3SHM[3]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_97 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_18_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[18] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[18] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[1]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[1] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[9]  (.A(
        \psram_cr_0/data_from_cr[9] ), .B(\psram_data_in[9] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_240 ));
    OR3 \stonyman_0/un3_counterWait_I_64  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[16] ), .Y(\stonyman_0/N_9_0 ));
    DFN1E1 \stonyman_0/counterWait[24]  (.D(\stonyman_0/N_36 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[24]_net_1 ));
    AND3B \stonyman_0/substate_i_RNO_12[0]  (.A(
        \stonyman_0/substate_i[0]_net_1 ), .B(\stonyman_0/N_1488 ), .C(
        \stonyman_0/N_1602 ), .Y(\stonyman_0/N_1538 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[3]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[3] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[3] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2970A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[8] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_65  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1 \psram_cr_0/ahb0/data_out[5]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[5]_net_1 ));
    NOR2B \stonyman_0/substate_RNO_28[3]  (.A(\stonyman_0/N_1475 ), .B(
        \stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1620 ));
    DFN1E1 \counter_0/COUNT[31]  (.D(\counter_0/COUNT_n31 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[31] ));
    IOPAD_TRI \psram_noe1_pad/U0/U0  (.D(\psram_noe1_pad/U0/NET1 ), .E(
        \psram_noe1_pad/U0/NET2 ), .PAD(psram_noe1));
    XA1C \psram_cr_0/cr_int_i0/ac_counter_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_69 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_56 ));
    NOR2A \stonyman_0/state_RNIOVJE[11]  (.A(\stonyman_0/N_126 ), .B(
        \stonyman_0/N_103 ), .Y(\stonyman_0/un1_reset_i_a2_0_2_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[21]  (.A(
        \psram_cr_0/ahb0/N_200 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 ));
    NOR3C \FIFO_PIXEL_0/AO1_18  (.A(\FIFO_PIXEL_0/AND2_19_Y ), .B(
        \FIFO_PIXEL_0/AND2_31_Y ), .C(\FIFO_PIXEL_0/AO1_6_Y ), .Y(
        \FIFO_PIXEL_0/AO1_18_Y ));
    NOR2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_2[0]  
        (.A(\CoreAPB3_0_APBmslave1_PADDR[4] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[1] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_2[0]_net_1 )
        );
    DFN1 \counter_0/counterInternal[25]  (.D(
        \counter_0/counterInternal_RNO[25]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[25]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_8_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[12]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[12] ));
    XA1A \counter_0/COUNT_RNO[28]  (.A(\counter_0_COUNT[28] ), .B(
        \counter_0/COUNT_RNIKOFG8[27]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n28 ));
    OR2 \stonyman_apb3_0/stonyman_ioreg_0/startCapture_RNO_0  (.A(
        \stonyman_apb3_0/bus_write_enable ), .B(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_101 ));
    NOR3B \stonyman_0/substate_RNIR69UN[5]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/I_13 ), .C(
        \stonyman_0/N_197 ), .Y(\stonyman_0/N_29_0 ));
    NOR3A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_0  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_0 ), .B(
        \psram_cr_0/cr_int_i0/N_76 ), .C(\psram_cr_0/cr_int_i0/N_72 ), 
        .Y(\psram_cr_0/cr_int_i0/N_96 ));
    IOTRI_OB_EB \psram_address_pad[17]/U0/U1  (.D(
        \psram_address_c[17] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[17]/U0/NET1 ), .EOUT(
        \psram_address_pad[17]/U0/NET2 ));
    XA1A \counter_0/COUNT_RNO[22]  (.A(\counter_0_COUNT[22] ), .B(
        \counter_0/N_64 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n22 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_216 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[10] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] ));
    XNOR2 \stonyman_0/un3_counterWait_I_32  (.A(\stonyman_0/N_20_0 ), 
        .B(\stonyman_0/counterWait[11]_net_1 ), .Y(\stonyman_0/I_32 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_258 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 ));
    NOR2A \counter_0/counterInternal_RNID3ML6[21]  (.A(
        \counter_0/N_477 ), .B(\counter_0/counterInternal[21]_net_1 ), 
        .Y(\counter_0/N_480 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[13] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] ));
    NOR2B \stonyman_0/incv_RNO  (.A(\stonyman_0/N_766 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_50 ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[5]  (.A(
        \psram_cr_0/ahb0/data_out[5]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[6]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[6] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[6] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_88 ));
    AOI1B \stonyman_0/substate_RNI7LNO1[5]  (.A(\stonyman_0/N_108 ), 
        .B(\stonyman_0/substate[5]_net_1 ), .C(
        \stonyman_0/un1_cachedPOINTER_0_sqmuxa_0_a2_0 ), .Y(
        \stonyman_0/N_140 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[5]  (.A(
        \psram_cr_0/data_to_cr[5] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_248 ));
    AND2 \stonyman_0/un1_counterPixelsCaptured_16_I_102  (.A(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_4[0] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[13]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_778 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[13]_net_1 ));
    XA1 \FIFO_TEST_COUNTER_0/AND2_FULLINT  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[7] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[7] ), .C(
        \FIFO_TEST_COUNTER_0/AND3_0_Y ), .Y(
        \FIFO_TEST_COUNTER_0/FULLINT ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[20]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[20]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[20] ));
    NAND3A \FIFO_PIXEL_0/NAND3A_0  (.A(\FIFO_PIXEL_0/MEM_RADDR[9] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[11] ), .Y(\FIFO_PIXEL_0/NAND3A_0_Y ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 ), 
        .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[2] )
        );
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[23]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[23]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[23] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[8]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[8] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[8] ));
    NOR3B \psram_cr_0/ahb0/psram_addr_sel_RNIOP6S  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/psram_addr_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(
        \psram_cr_0/ahb0/psram_addr5 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_90  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[29]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[28]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[30]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[28]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[29]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[30]INT_NET ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[22]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[22]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[22] ));
    DFN1E1 \stonyman_0/counterWait[23]  (.D(
        \stonyman_0/counterWait_82[23] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[23]_net_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[10]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_775 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[10]_net_1 ));
    BUFF \FIFO_PIXEL_0/XOR2_10  (.A(\FIFO_PIXEL_0/MEM_RADDR[4] ), .Y(
        \FIFO_PIXEL_0/XOR2_10_Y ));
    NOR2B \counter_0/COUNT_RNI5HQT[10]  (.A(\counter_0_COUNT[13] ), .B(
        \counter_0_COUNT[10] ), .Y(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_2 ));
    OR2 \adc081s101_0/cntrWaitQuiet_RNIFO24[1]  (.A(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ), .B(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .Y(\adc081s101_0/N_41 )
        );
    OR3 \stonyman_0/counterWait_RNI3MS51[5]  (.A(
        \stonyman_0/counterWait[24]_net_1 ), .B(
        \stonyman_0/counterWait[5]_net_1 ), .C(
        \stonyman_0/counterWait8lt29_9 ), .Y(
        \stonyman_0/counterWait8lt29_19 ));
    IOPAD_TRI \psram_address_pad[17]/U0/U0  (.D(
        \psram_address_pad[17]/U0/NET1 ), .E(
        \psram_address_pad[17]/U0/NET2 ), .PAD(psram_address[17]));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_256 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIDIT14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_710 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] ));
    DFN1 \psram_cr_0/ahb0/operation[11]  (.D(
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[11] ));
    DFN1E1 \adc081s101_0/cntrWaitQuiet[0]  (.D(\adc081s101_0/N_66 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitQuiete ), .Q(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ));
    NOR3B \counter_0/state_RNO_6[1]  (.A(\counter_0/state[1]_net_1 ), 
        .B(\counter_0/m9_e_0 ), .C(
        \counter_0/counterInternal[17]_net_1 ), .Y(\counter_0/m9_e_2 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[4] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[17]  (.A(
        \psram_cr_0/ahb0/N_228 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[15]  (.A(
        \psram_cr_0/data_from_cr[15] ), .B(
        \psram_cr_0/ahb0/data_out[15]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_274 ));
    DFN1 \psram_cr_0/ahb0/data_out[13]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[13]_net_1 ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I9_un1_Y_a0  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_0 ), .B(
        \stonyman_0/N146_0 ), .C(\stonyman_0/I11_un1_Y ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0 ));
    DFN1 \stonyman_0/state[1]  (.D(\stonyman_0/state_RNO[1]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_263 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 ));
    NOR3C 
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_RNIMKH43[0]  
        (.A(\stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .B(
        \stonyman_apb3_0/bus_write_enable ), .C(
        \stonyman_apb3_0/stonyman_ioreg_0/ready_5_0_a3_0_0_net_1 ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_31 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l_RNI86VL[1]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI00II ));
    DFN1 \stonyman_0/substate[14]  (.D(
        \stonyman_0/substate_RNO[14]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[14]_net_1 ));
    OR2 \FIFO_PIXEL_0/OR2_9  (.A(\FIFO_PIXEL_0/NAND3_0_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_9_Y ));
    MX2 \FIFO_PIXEL_0/MX2_27  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB2 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB2 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_27_Y ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[18]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[18] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[18] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_783 ));
    NOR3A \stonyman_0/substate_RNI26ME[10]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(
        \stonyman_0/state[11]_net_1 ), .C(
        \stonyman_0/substate[11]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_9_3_1[1] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 ));
    NOR2B \stonyman_0/substate_RNO_3[6]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0[6] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_269 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_46  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn ), .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[28]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[27]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[29]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[5]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/M2FRESETnINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[6]INT_NET ));
    DFN1 \psram_cr_0/ahb0/hready_reg  (.D(
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        CoreAHBLite_0_AHBmslave5_HREADY));
    NOR3B \stonyman_0/state_RNO_1[8]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[12]_net_1 ), .C(\stonyman_0/N_1658 ), .Y(
        \stonyman_0/N_1698 ));
    OR2 \stonyman_0/state_RNILO98[8]  (.A(\stonyman_0/state[8]_net_1 ), 
        .B(\stonyman_0/state[7]_net_1 ), .Y(\stonyman_0/N_74 ));
    DFN1E1 \counter_0/COUNT[4]  (.D(\counter_0/N_12 ), .CLK(SCLK_c), 
        .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[4] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[8]  (.D(
        \psram_cr_0/cr_int_i0/N_36 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[8] ));
    IOPAD_TRI \psram_address_pad[8]/U0/U0  (.D(
        \psram_address_pad[8]/U0/NET1 ), .E(
        \psram_address_pad[8]/U0/NET2 ), .PAD(psram_address[8]));
    NOR3 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_166 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]_net_1 ));
    NOR2 \stonyman_0/counterPixelsCaptured_RNI4THL[5]  (.A(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .Y(
        \stonyman_0/state103_3 ));
    NOR3 \stonyman_0/substate_RNIAIF5C[5]  (.A(\stonyman_0/N_141 ), .B(
        \stonyman_0/N_201 ), .C(\stonyman_0/N_140 ), .Y(
        \stonyman_0/substate_RNIAIF5C[5]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_58  (.A(\FIFO_PIXEL_0/RAM4K9_4_DOUTB6 ), .B(
        \FIFO_PIXEL_0/RAM4K9_6_DOUTB6 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_58_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_86  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET ));
    OR2B \stonyman_0/state_RNIFK2V71[11]  (.A(\stonyman_0/N_110 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/counterWait_82_sn_N_4 ));
    MX2B \stonyman_0/resv_RNO_1  (.A(\stonyman_0/counterWait8 ), .B(
        \stonyman_0/un1_substate_4_sqmuxa ), .S(\stonyman_0/N_73 ), .Y(
        \stonyman_0/un1_substate_4_sqmuxa_3 ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m4  
        (.A(\stonyman_0/N148 ), .B(\stonyman_0/ADD_9x9_fast_I17_Y_2 ), 
        .C(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_5 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[19]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[19]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[19] ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_9  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[1] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_9_Y ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[26]  (.A(
        \psram_cr_0/ahb0/max_addr[26] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[26] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[26] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI4R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[8] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_193 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 ));
    XAI1A \counter_0/counterInternal_RNO[16]  (.A(
        \counter_0/counterInternal[16]_net_1 ), .B(
        \counter_0/COUNT8_25 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/N_18 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[7] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        );
    OR3 \stonyman_0/un3_counterWait_I_18  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(
        \stonyman_0/counterWait[4]_net_1 ), .C(
        \stonyman_0/counterWait[5]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[2] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[5]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[1]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] ));
    NOR2A \stonyman_0/state_RNITDB6[12]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/state[12]_net_1 ), .Y(\stonyman_0/N_141_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(\psram_cr_0/data_to_cr[0] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_156 ));
    IOPAD_IN \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N  (.PAD(MSS_RESET_N), 
        .Y(\MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y ));
    OR3 \stonyman_0/un3_counterWait_I_73  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[18] ), .Y(\stonyman_0/N_7_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[11]  (.A(
        \psram_cr_0/reg_addr[11] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_190 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[24]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[24]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[24] ));
    NOR3 \stonyman_0/state_RNICSC02[1]  (.A(\stonyman_0/un46lto2 ), .B(
        \stonyman_0/N_1484 ), .C(\stonyman_0/N_104 ), .Y(
        \stonyman_0/un1_substate_9_sqmuxa_1_i_a2_0_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[23]  (.A(
        \psram_cr_0/cr_int_i0/N_271 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[20]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[20]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[20] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_54  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[20]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[19]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[21]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[19]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[20]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[21]INT_NET ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIM7UL[18]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ));
    DFN1E1 \stonyman_0/counterWait[10]  (.D(
        \stonyman_0/counterWait_82[10] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[10]_net_1 ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_83 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]_net_1 ));
    AXOI2 \stonyman_0/substate_RNO_22[3]  (.A(\stonyman_0/N_1476_i_0 ), 
        .B(\stonyman_0/cachedPOINTER[2]_net_1 ), .C(\stonyman_0/N_126 )
        , .Y(\stonyman_0/N_1517 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[24] ));
    AO1C \stonyman_0/counterWait_RNO_3[4]  (.A(
        \stonyman_0/counterWait8 ), .B(
        \stonyman_0/counterWait_82_i_a2_1_0[4] ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/counterWait_82_i_0[4] ));
    OR2A \stonyman_0/writeEnable_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/N_767 ), .Y(\stonyman_0/N_181 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[8]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[8] ));
    MX2 \psram_cr_0/cr_int_i0/nwe_RNO_0  (.A(psram_nwe_c), .B(
        \psram_cr_0/cr_int_i0/nwe_5 ), .S(\psram_cr_0/cr_int_i0/N_347 )
        , .Y(\psram_cr_0/cr_int_i0/N_227 ));
    OR3B \counter_0/COUNT_RNIKBU1[4]  (.A(\counter_0_COUNT[3] ), .B(
        \counter_0_COUNT[4] ), .C(\counter_0/COUNT_RNI9151[2]_net_1 ), 
        .Y(\counter_0/COUNT_RNIKBU1[4]_net_1 ));
    NOR3B \counter_0/COUNT_RNI07IE2[5]  (.A(\counter_0_COUNT[5] ), .B(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_7 ), .C(
        \counter_0/COUNT_RNIKBU1[4]_net_1 ), .Y(
        \counter_0/COUNT_RNI07IE2[5]_net_1 ));
    OR3 \stonyman_0/substate_RNO[12]  (.A(\stonyman_0/N_1588 ), .B(
        \stonyman_0/N_1587 ), .C(\stonyman_0/N_1586 ), .Y(
        \stonyman_0/substate_ns[12] ));
    XA1B \counter_0/counterInternal_RNO[23]  (.A(
        \counter_0/counterInternal[23]_net_1 ), .B(\counter_0/N_482 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[23]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[28]  (.D(N_1296), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[28] ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXEN  (.D(
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D ), .E(PLLEN_VCC), .PAD(MAC_TXEN));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_FULL  (.D(\FIFO_PIXEL_0/FULLINT ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        FIFO_PIXEL_0_FULL));
    AO1A \stonyman_0/state_RNIU2692[5]  (.A(\stonyman_0/N_1388 ), .B(
        \stonyman_0/N_1484 ), .C(\stonyman_0/counterWait_0_sqmuxa ), 
        .Y(\stonyman_0/un1_counterWait_0_sqmuxa_1_0_0 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[11]  (.D(
        \psram_cr_0/cr_int_i0/N_42 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[11] ));
    BUFF \FIFO_PIXEL_0/BUFF_5  (.A(\FIFO_PIXEL_0/DFN1E1C0_0_Q ), .Y(
        \FIFO_PIXEL_0/BUFF_5_Y ));
    OA1 \stonyman_0/substate_RNO_16[3]  (.A(
        \stonyman_0/substate_ns_0_a4_3_0[3] ), .B(
        \stonyman_0/substate_ns_0_a4_2_0[3] ), .C(\stonyman_0/N_1609 ), 
        .Y(\stonyman_0/substate_RNO_16[3]_net_1 ));
    NOR2 \psram_cr_0/cr_int_i0/op_counter_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/op_counter_n0 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIM5VC[1]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_9 ));
    NOR2B \stonyman_0/resp_RNO_6  (.A(\stonyman_0/N_201 ), .B(
        \stonyman_0/substate[5]_net_1 ), .Y(\stonyman_0/N_149 ));
    NOR2B \psram_cr_0/cr_int_i0/ac_counter_lb1_RNI2T2I  (.A(
        \psram_cr_0/cr_int_i0/N_110 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIAS2K[14]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_14 ));
    NOR3C \FIFO_TEST_COUNTER_0/AO1_13  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] ), .B(
        \FIFO_TEST_COUNTER_0/XOR2_41_Y ), .C(
        \FIFO_TEST_COUNTER_0/AO1_10_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AO1_13_Y ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_73  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABACETRIGINT_NET ), .PIN6INT(), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/CMP6INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP7INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP8INT_NET ));
    DFN1 \psram_cr_0/ahb0/data_out[1]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[1]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEJHQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[17] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[17] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_698 ));
    INV \clkgenerator_0/clkCameraSS_RNO  (.A(\clkgenerator_0/SCLK_i ), 
        .Y(\clkgenerator_0/SCLK_i_i ));
    OR2 \stonyman_0/substate_RNIEAV04[16]  (.A(\stonyman_0/N_208 ), .B(
        \stonyman_0/un1_state_18 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_2_0 ));
    NOR2 \psram_cr_0/cr_int_i0/ac_counter_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_102 ));
    DFN1 \counter_0/counterInternal[18]  (.D(\counter_0/N_21 ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[18]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_64  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[22]  (.A(
        \psram_cr_0/ahb0/N_233 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        );
    DFN1 \stonyman_0/cachedPOINTER[2]  (.D(\stonyman_0/N_31 ), .CLK(
        SCLK_c), .Q(\stonyman_0/cachedPOINTER[2]_net_1 ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a1_1  
        (.A(\stonyman_0/counterPixelsCaptured[7]_net_1 ), .B(
        \stonyman_0/mult1_un89_sum[5] ), .C(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a1_1 ));
    DFN1E1 \stonyman_0/counterWait[12]  (.D(
        \stonyman_0/counterWait_82[12] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[12]_net_1 ));
    AO1 \stonyman_0/substate_RNIRFHI2[12]  (.A(
        \stonyman_0/substate_ns_i_a4_4_2_1[1] ), .B(
        \stonyman_0/N_1515 ), .C(\stonyman_0/substate_ns_i_a4_9_3[1] ), 
        .Y(\stonyman_0/substate_ns_i_7_tz_0[1] ));
    OR3A \psram_cr_0/ahb0/hwrite_reg_RNI74PR6  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/ahb0/N_57 ), .C(
        \psram_cr_0/ahb0/N_56 ), .Y(\psram_cr_0/ahb0/N_18 ));
    IOPAD_TRI \led_pad[2]/U0/U0  (.D(\led_pad[2]/U0/NET1 ), .E(
        \led_pad[2]/U0/NET2 ), .PAD(led[2]));
    NOR3A \stonyman_0/substate_RNO_3[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(\stonyman_0/N_1476_i_0 ), 
        .C(\stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1576 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_20[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[16] ));
    OR3 \stonyman_0/un3_counterWait_I_67  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[34] ));
    IOPAD_TRI \rs485_nre_pad/U0/U0  (.D(\rs485_nre_pad/U0/NET1 ), .E(
        \rs485_nre_pad/U0/NET2 ), .PAD(rs485_nre));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        );
    NOR2 \stonyman_0/incv_RNO_3  (.A(\stonyman_0/substate[8]_net_1 ), 
        .B(\stonyman_0/substate[3]_net_1 ), .Y(\stonyman_0/N_1378 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[12]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[12]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[12] ));
    XA1A \counter_0/COUNT_RNO[14]  (.A(\counter_0_COUNT[14] ), .B(
        \counter_0/N_56 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n14 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[9]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[13]/U0/U1  (.D(
        \psram_address_c[13] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[13]/U0/NET1 ), .EOUT(
        \psram_address_pad[13]/U0/NET2 ));
    DFN1 \stonyman_0/counterPixelsCaptured[4]  (.D(
        \stonyman_0/counterPixelsCaptured_8[4] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI63GQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[31] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[31] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_712 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIV870A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[5] ));
    NOR3C \stonyman_0/substate_RNO_1[5]  (.A(\stonyman_0/N_1600 ), .B(
        \stonyman_0/substate[5]_net_1 ), .C(\stonyman_0/N_1488 ), .Y(
        \stonyman_0/N_1571 ));
    NOR2B \counter_0/COUNT_RNIH2Q[6]  (.A(\counter_0_COUNT[7] ), .B(
        \counter_0_COUNT[6] ), .Y(\counter_0/COUNT_n15_0_o3_m6_0_a2_1 )
        );
    MX2 \psram_cr_0/ahb0/operation_RNO_0[19]  (.A(
        \psram_cr_0/ahb0/operation[19]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_198 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIMFUP[14]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_5 ));
    OR3 \stonyman_0/un3_counterWait_I_42  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(\stonyman_0/DWACT_FDEC_E[7] )
        , .C(\stonyman_0/DWACT_FDEC_E[9] ), .Y(\stonyman_0/N_16_0 ));
    AND3B \adc081s101_0/bitsRead_RNIQPSJ1[1]  (.A(
        \adc081s101_0/bitsRead[1]_net_1 ), .B(
        \adc081s101_0/bitsRead[0]_net_1 ), .C(
        \adc081s101_0/cs16_0_a2_0_0 ), .Y(\adc081s101_0/N_83 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[23] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[23] ));
    IOBI_IB_OB_EB \psram_data_pad[6]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[6] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[6]/U0/NET3 ), .DOUT(
        \psram_data_pad[6]/U0/NET1 ), .EOUT(
        \psram_data_pad[6]/U0/NET2 ), .Y(\psram_data_in[6] ));
    XO1 \counter_0/counterInternal_RNO[6]  (.A(\counter_0/N_57 ), .B(
        \counter_0/counterInternal[6]_net_1 ), .C(\counter_0/COUNTe ), 
        .Y(\counter_0/counterInternal_RNO[6]_net_1 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a0_1  
        (.A(\stonyman_0/counterPixelsCaptured[13]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_1 ));
    OA1A \stonyman_0/state_RNI1JCC2[11]  (.A(\stonyman_0/N_1914 ), .B(
        \stonyman_0/substate[3]_net_1 ), .C(
        \stonyman_0/state[11]_net_1 ), .Y(
        \stonyman_0/counterWait_4_sqmuxa_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_5  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[26]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[25]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[27]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[25]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[26]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[27]INT_NET ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[15]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[15] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[15] ));
    DFN1E1 \stonyman_0/counterWait[17]  (.D(\stonyman_0/N_28 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[17]_net_1 ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNI7JJM  (.A(
        CoreAPB3_0_APBmslave0_0_PWRITE), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 ));
    NAND3C \FIFO_PIXEL_0/NAND3C_0  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3C_0_Y ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI27CR3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_703 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[1]  (.D(
        \stonyman_0/state_RNIRCPC5[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[1] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_189 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 ));
    IOPAD_TRI \psram_address_pad[13]/U0/U0  (.D(
        \psram_address_pad[13]/U0/NET1 ), .E(
        \psram_address_pad[13]/U0/NET2 ), .PAD(psram_address[13]));
    OR3 \counter_0/counterInternal_RNIEBTI3[10]  (.A(
        \counter_0/counterInternal[9]_net_1 ), .B(
        \counter_0/counterInternal_c8 ), .C(
        \counter_0/counterInternal[10]_net_1 ), .Y(\counter_0/N_26 ));
    MX2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_m9  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_N_7 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_9 ), .S(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_m9 ));
    DFN1 \stonyman_0/cachedValue_tile_WADDR_REG1[1]  (.D(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/WADDR_REG1[1] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[6]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[6] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[10]  (.A(
        \psram_cr_0/data_from_cr[10] ), .B(\psram_data_in[10] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_241 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[8]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[8] ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_2  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_9_Y ), .BLKB(\FIFO_PIXEL_0/OR2_12_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_2_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_2_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB0 ));
    OR3 \stonyman_0/counterWait_RNI2SOB2[10]  (.A(
        \stonyman_0/counterWait8lt29_7 ), .B(
        \stonyman_0/counterWait8lt29_6 ), .C(
        \stonyman_0/counterWait8lt29_19 ), .Y(
        \stonyman_0/counterWait8lt29_24 ));
    DFN1E1 \counter_0/COUNT[26]  (.D(\counter_0/COUNT_n26 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[26] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[11]  (.A(
        \psram_cr_0/ahb0/data_out[11]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_69 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[3]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[3] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[3] ));
    IOTRI_OB_EB \psram_address_pad[20]/U0/U1  (.D(
        \psram_address_c[20] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[20]/U0/NET1 ), .EOUT(
        \psram_address_pad[20]/U0/NET2 ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNIA52K3[3]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ));
    NOR3B \adc081s101_0/conversionComplete_RNO_3  (.A(
        \adc081s101_0/N_42 ), .B(\adc081s101_0/N_84 ), .C(
        TP_adcConvComplete_c), .Y(\adc081s101_0/N_108 ));
    MX2C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m5  
        (.A(\stonyman_0/ADD_9x9_fast_I11_un1_Y_N_4 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_5 ), .S(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_6 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_32  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[7]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[6]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[8]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[6]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[8]INT_NET ));
    IOTRI_OB_EB \rs485_de_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\rs485_de_pad/U0/NET1 ), .EOUT(\rs485_de_pad/U0/NET2 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[29]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[29] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[29] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_794 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ));
    OR3 \CoreAPB3_0/CAPB3llOI/PREADY_iv_i_s  (.A(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .C(
        \CoreAPB3_0/CAPB3llOI/N_1302 ), .Y(N_56));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[9] ));
    OR3 \counter_0/counterInternal_RNI3MNV[2]  (.A(
        \counter_0/counterInternal[1]_net_1 ), .B(
        \counter_0/counterInternal[0]_net_1 ), .C(
        \counter_0/counterInternal[2]_net_1 ), .Y(
        \counter_0/counterInternal_c2 ));
    NOR3C \stonyman_0/un1_counterPixelsCaptured_16_I_95  (.A(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_1[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_2[0] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUTD01[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_6  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[29]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[28]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[30]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[28]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[29]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[30]INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[23] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_39  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[8]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[7]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[9]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[7]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[8]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[9]INT_NET ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_30_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[30] ), .B(N_1301), .Y(N_48));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_211 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 ));
    OR3 \stonyman_0/counterWait_RNID67Q1[23]  (.A(
        \stonyman_0/counterWait8lt29_1 ), .B(
        \stonyman_0/counterWait8lt29_0 ), .C(
        \stonyman_0/counterWait8lt29_14 ), .Y(
        \stonyman_0/counterWait8lt29_22 ));
    DFN1 \psram_cr_0/ahb0/data_in[9]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[9] ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[14]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[14]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[14] ));
    AND2 \psram_cr_0/cr_int_i0/op_counter_n3_i_a2_0  (.A(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_115 ), .Y(\psram_cr_0/cr_int_i0/N_108 )
        );
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_0_6  
        (.A(\stonyman_0/ADD_9x9_fast_I1_P0N_a3 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a2_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_3 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_6 ));
    MX2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_1_1  
        (.A(\stonyman_0/ADD_9x9_fast_I5_un1_Y_a2_2 ), .B(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a1_2 ), .S(
        \stonyman_0/mult1_un89_sum[7] ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_1_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[31]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[31] ));
    DFN1 \stonyman_0/counterPixelsCaptured[2]  (.D(
        \stonyman_0/counterPixelsCaptured_8[2] ), .CLK(SCLK_c), .Q(
        \stonyman_0/N_715 ));
    AO1 \stonyman_0/counterWait_RNO[19]  (.A(\stonyman_0/I_56_0 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[19] ));
    DFN1 \counter_0/counterInternal[14]  (.D(
        \counter_0/counterInternal_RNO[14]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[14]_net_1 ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI9AVA5[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_71 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_73 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[10]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[10]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[10] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[23]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_788 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[23]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[4] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        );
    DFN1 \psram_cr_0/ahb0/operation_sel  (.D(
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation_sel_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[3]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[3]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[3] ));
    NOR2B \psram_cr_0/cr_int_i0/op_counter_lb1_RNO  (.A(
        \psram_cr_0/cr_int_i0/N_110 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 ));
    NOR2A \counter_0/counterInternal_RNIQVK77[23]  (.A(
        \counter_0/N_482 ), .B(\counter_0/counterInternal[23]_net_1 ), 
        .Y(\counter_0/N_485 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_235 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[0]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[0] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[0] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_211 )
        );
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 ));
    OR2 \adc081s101_0/cntrWaitQuiet_RNIO446[2]  (.A(
        \adc081s101_0/N_41 ), .B(\adc081s101_0/cntrWaitQuiet[2]_net_1 )
        , .Y(\adc081s101_0/N_42 ));
    AO1 \adc081s101_0/cs_RNID85I2  (.A(\adc081s101_0/N_84 ), .B(
        \adc081s101_0/N_42 ), .C(\adc081s101_0/un1_reset_i_1 ), .Y(
        \adc081s101_0/cntrWaitQuiete ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[20]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_785 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[20]_net_1 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_27_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_238 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_241 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 ));
    NOR3B \stonyman_0/counterWait_RNO[21]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_62 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_32 ));
    MX2 \stonyman_0/resp_RNO_0  (.A(
        \stonyman_0/un1_substate_0_sqmuxa_2 ), .B(resp_c), .S(
        \stonyman_0/un1_substate_0_sqmuxa_5 ), .Y(\stonyman_0/N_763 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[6]  (.D(
        \psram_cr_0/cr_int_i0/N_32 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[6] ));
    NOR2A \counter_0/counterInternal_RNO_0[27]  (.A(\counter_0/N_491 ), 
        .B(\counter_0/counterInternal[26]_net_1 ), .Y(
        \counter_0/N_494 ));
    IOPAD_TRI \psram_nbyte_en_pad[0]/U0/U0  (.D(
        \psram_nbyte_en_pad[0]/U0/NET1 ), .E(
        \psram_nbyte_en_pad[0]/U0/NET2 ), .PAD(psram_nbyte_en[0]));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[30]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[30]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[30] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[12]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[12] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[12] ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_20  (.A(\stonyman_0/N_2_0 ), 
        .B(\stonyman_0/cachedValue[7] ), .Y(\stonyman_0/I_20_0 ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[0]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[8]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[8] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[8] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIVHR14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_712 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] ));
    DFN1 \psram_cr_0/ahb0/data_out[7]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[7]_net_1 ));
    AND3 \FIFO_PIXEL_0/AND3_9  (.A(\FIFO_PIXEL_0/XNOR2_18_Y ), .B(
        \FIFO_PIXEL_0/XNOR2_20_Y ), .C(\FIFO_PIXEL_0/XNOR2_16_Y ), .Y(
        \FIFO_PIXEL_0/AND3_9_Y ));
    NOR2 \counter_0/counterInternal_RNIGKUH[16]  (.A(
        \counter_0/counterInternal[16]_net_1 ), .B(
        \counter_0/counterInternal[18]_net_1 ), .Y(\counter_0/m9_e_0 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_2[31]  (.A(
        \psram_cr_0/ahb0/max_addr[31] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_64 ));
    NOR2A \stonyman_0/state_i_RNIH6N7[0]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/N_1475 ), .Y(\stonyman_0/N_1600 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[18]  (.A(
        \psram_cr_0/ahb0/N_197 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_256 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[14]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[14] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[14] ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[1]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[1] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[1] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_83 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[8]  (.A(
        \psram_cr_0/cr_int_i0/N_164 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[8] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[4]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[4] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] ));
    AO1C \stonyman_0/substate_RNIA1O51[8]  (.A(\stonyman_0/N_1484 ), 
        .B(\stonyman_0/un1_reset_i_a2_0_2_1 ), .C(
        \stonyman_0/substate[8]_net_1 ), .Y(
        \stonyman_0/un1_reset_i_0_tz ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[1]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] ), .B(
        \FIFO_TEST_COUNTER_0/AND2_36_Y ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[1] ));
    NOR2 \stonyman_0/substate_RNID4HB[10]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .Y(\stonyman_0/N_1386_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[9]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[9] ), .Y(
        \psram_cr_0/ahb0/operation_m[9] ));
    OR2 \counter_0/counterInternal_RNIN9RD4[13]  (.A(
        \counter_0/counterInternal[13]_net_1 ), .B(\counter_0/N_28 ), 
        .Y(\counter_0/N_467 ));
    AO1 \stonyman_0/counterWait_RNO[10]  (.A(\stonyman_0/I_28 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[10] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_47  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET ));
    DFN1E1 \counter_0/COUNT[3]  (.D(\counter_0/N_10 ), .CLK(SCLK_c), 
        .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[3] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI3AS14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_705 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] ));
    IOTRI_OB_EB \psram_noe0_pad/U0/U1  (.D(psram_noe0_c), .E(PLLEN_VCC)
        , .DOUT(\psram_noe0_pad/U0/NET1 ), .EOUT(
        \psram_noe0_pad/U0/NET2 ));
    AND3 \FIFO_TEST_COUNTER_0/AND3_2  (.A(
        \FIFO_TEST_COUNTER_0/XNOR2_1_Y ), .B(
        \FIFO_TEST_COUNTER_0/XNOR2_9_Y ), .C(
        \FIFO_TEST_COUNTER_0/XNOR2_12_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AND3_2_Y ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_86 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_261 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[24]/U0/U1  (.D(
        \psram_address_c[24] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[24]/U0/NET1 ), .EOUT(
        \psram_address_pad[24]/U0/NET2 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_21  (.A(\FIFO_PIXEL_0/MEM_RADDR[2] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[2] ), .Y(\FIFO_PIXEL_0/XNOR2_21_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[15]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[15] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[0]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[0] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[0] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_765 ));
    AO1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_4  
        (.A(\stonyman_0/d_m8_0_a5_1_0 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_0_0 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[2]  (.D(N_62), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[2] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_87  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET ));
    MX2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m11_d  
        (.A(\stonyman_0/ADD_9x9_fast_I11_un1_Y_N_3 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_11 ), .S(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m11_d ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_13  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[2] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[2] ), .Y(\FIFO_PIXEL_0/XNOR2_13_Y ));
    OR2A \stonyman_0/state_RNI00KE[11]  (.A(\stonyman_0/N_126 ), .B(
        \stonyman_0/N_74 ), .Y(\stonyman_0/N_1506 ));
    IOBI_IB_OB_EB \psram_data_pad[12]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[12] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[12]/U0/NET3 ), .DOUT(
        \psram_data_pad[12]/U0/NET1 ), .EOUT(
        \psram_data_pad[12]/U0/NET2 ), .Y(\psram_data_in[12] ));
    OR2A \stonyman_0/startAdcCapture_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/N_768 ), .Y(\stonyman_0/N_180 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_171 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[5] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[21]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[21] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[21] ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_8  (.A(\FIFO_PIXEL_0/MEM_RADDR[7] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[7] ), .Y(\FIFO_PIXEL_0/XNOR2_8_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[21] ));
    OR3 \stonyman_0/substate_RNO[2]  (.A(\stonyman_0/N_92 ), .B(
        \stonyman_0/substate_ns_0_0_1[2]_net_1 ), .C(\stonyman_0/N_91 )
        , .Y(\stonyman_0/substate_ns[2] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[15] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[2]  (.D(
        \psram_cr_0/cr_int_i0/N_56 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[6]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_13_Y ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[6] ));
    OR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I2_P0N  
        (.A(\stonyman_0/N146_2 ), .B(\stonyman_0/mult1_un75_sum[5] ), 
        .Y(\stonyman_0/N129 ));
    NOR2A \counter_0/counterInternal_RNIFGGV1[5]  (.A(\counter_0/N_32 )
        , .B(\counter_0/counterInternal_c3 ), .Y(\counter_0/N_57 ));
    NOR3B \psram_cr_0/ahb0/data_in_sel_RNI52031  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/data_in_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(\psram_cr_0/ahb0/data_in7 ));
    OR3 \stonyman_0/un3_counterWait_I_84  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .C(
        \stonyman_0/DWACT_FDEC_E[22] ), .Y(
        \stonyman_0/DWACT_FDEC_E[23] ));
    OR2 \FIFO_PIXEL_0/OR2_2  (.A(\FIFO_PIXEL_0/NAND3A_4_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_2_Y ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[31]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[31] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[31] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_796 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(\psram_cr_0/data_to_cr[13] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_169 ));
    NOR3A \stonyman_0/substate_RNIL0MF[10]  (.A(
        \stonyman_0/state[2]_net_1 ), .B(
        \stonyman_0/substate[14]_net_1 ), .C(
        \stonyman_0/substate[10]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_3_2_0 ));
    MX2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_1  
        (.A(\stonyman_0/N150_3 ), .B(
        \stonyman_0/counterPixelsCaptured_RNIH9SI4[11]_net_1 ), .S(
        \stonyman_0/ADD_9x9_fast_I11_Y_m9 ), .Y(\stonyman_0/N146_2 ));
    OR2A \counter_0/COUNT_RNICV185[20]  (.A(\counter_0_COUNT[20] ), .B(
        \counter_0/N_62 ), .Y(\counter_0/COUNT_RNICV185[20]_net_1 ));
    DFN1 \counter_0/counterInternal[24]  (.D(
        \counter_0/counterInternal_RNO[24]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[24]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIT0VQ6  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[25]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[25] ));
    OR2 \stonyman_0/state_RNIHIOJ[1]  (.A(\stonyman_0/N_104 ), .B(
        \stonyman_0/N_1920 ), .Y(\stonyman_0/N_107 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_258 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 ));
    IOPAD_TRI \resv_pad/U0/U0  (.D(\resv_pad/U0/NET1 ), .E(
        \resv_pad/U0/NET2 ), .PAD(resv));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[5]  (.D(\FIFO_PIXEL_0/QXI[5] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[5] ));
    AND3 \FIFO_PIXEL_0/AND3_0  (.A(\FIFO_PIXEL_0/XNOR2_9_Y ), .B(
        \FIFO_PIXEL_0/AND3_8_Y ), .C(\FIFO_PIXEL_0/AND2_17_Y ), .Y(
        \FIFO_PIXEL_0/AND3_0_Y ));
    OR3 \stonyman_0/counterWait_RNIB5VD1[4]  (.A(
        \stonyman_0/counterWait[4]_net_1 ), .B(
        \stonyman_0/counterWait[6]_net_1 ), .C(
        \stonyman_0/counterWait8lt29_13 ), .Y(
        \stonyman_0/counterWait8lt29_21 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[28]  (.A(
        \psram_cr_0/ahb0/N_239 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 ));
    OR2 \FIFO_PIXEL_0/OR2_10  (.A(\FIFO_PIXEL_0/NAND3B_3_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_10_Y ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[7]  (.D(\FIFO_PIXEL_0/QXI[7] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[7] ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_52  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_3[0] ), .B(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .Y(
        \stonyman_0/I_52 ));
    AO1B \stonyman_0/substate_RNO_1[7]  (.A(\stonyman_0/N_122 ), .B(
        \stonyman_0/N_121 ), .C(\stonyman_0/N_74 ), .Y(
        \stonyman_0/N_1530 ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[6]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[6] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[6] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_83 ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I16_Y_1  
        (.A(\stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .C(
        \stonyman_0/mult1_un61_sum[8] ), .Y(
        \stonyman_0/ADD_9x9_fast_I16_Y_1_0 ));
    DFN1 \psram_cr_0/cr_int_i0/address[16]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[16] ));
    NOR3C \stonyman_0/state_RNISTHL1[4]  (.A(
        \stonyman_0/state[4]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(\stonyman_0/state9 ), .Y(
        \stonyman_0/N_1549 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIIPUJ[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_6 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_17 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[11] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_222 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[2]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9O0K1[5]  
        (.A(\CoreAHBLite_0_AHBmslave6_HRDATA[22] ), .B(
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] ), .S(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_703 ));
    AO1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_0_4  
        (.A(\stonyman_0/ADD_9x9_fast_I1_P0N_a6_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a6_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_4 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_247 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[4]  (.A(
        \psram_cr_0/data_from_cr[4] ), .B(\psram_data_in[4] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_235 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[15]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[15] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[15] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_176 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_10  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[5] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[5] ), .Y(\FIFO_PIXEL_0/XNOR2_10_Y ));
    DFN1 \psram_cr_0/ahb0/data_out[2]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[2]_net_1 ));
    NOR3C \stonyman_0/substate_RNIBULLI[13]  (.A(\stonyman_0/N_1953 ), 
        .B(\stonyman_0/substate_ns_i_a4_9_2_i_a2_0[1] ), .C(
        \stonyman_0/N_1692_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_2[1] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNIEQR52  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[7] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_31  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[4]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[3]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[5]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[3]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[4]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[5]INT_NET ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_78  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[8]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[9]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[10]INT_NET ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[16]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[16] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[16] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_781 ));
    OR2 \FIFO_PIXEL_0/OR2_6  (.A(\FIFO_PIXEL_0/NAND3C_0_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_6_Y ));
    OR2 \stonyman_0/substate_RNIL4HB[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(
        \stonyman_0/substate[17]_net_1 ), .Y(\stonyman_0/N_1489 ));
    NOR2 \stonyman_0/substate_RNI76KT[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_6_0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[22] ));
    AOI1B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNI10JB2  (.A(
        N_56), .B(CoreAPB3_0_APBmslave0_0_PENABLE), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 ));
    OA1B \stonyman_0/substate_RNO[8]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(\stonyman_0/N_1509 ), .C(
        \stonyman_0/substate_ns_i_1[8] ), .Y(
        \stonyman_0/substate_RNO[8]_net_1 ));
    OR2A \counter_0/COUNT_RNIPBI18[26]  (.A(\counter_0_COUNT[26] ), .B(
        \counter_0/COUNT_RNIVUKI7[25]_net_1 ), .Y(\counter_0/N_69 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[6] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_217 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_266 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIFBTL[11]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[11] ));
    OA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_Y_2  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a2_2 ), .B(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a4_1 ), .C(
        \stonyman_0/N146_0 ), .Y(\stonyman_0/ADD_9x9_fast_I9_Y_2 ));
    MX2 \stonyman_0/substate_RNO_0[15]  (.A(\stonyman_0/N_1505 ), .B(
        \stonyman_0/state[10]_net_1 ), .S(
        \stonyman_0/substate[15]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_0[15] ));
    OR3A \stonyman_0/state_RNO_1[2]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/N_1679 ), .C(\stonyman_0/N_1680 ), .Y(
        \stonyman_0/state_ns_i_1[2] ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a3  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a3_1 ), .B(
        \stonyman_0/N146_0 ), .Y(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a3 )
        );
    DFN1 \stonyman_0/substate[6]  (.D(\stonyman_0/substate_ns[6] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[6]_net_1 ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_102 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        );
    NOR2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_2[0]  (
        .A(\CoreAPB3_0_APBmslave1_PADDR[4] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[0] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_2[0]_net_1 )
        );
    NOR2A \stonyman_0/counterPixelsCaptured_RNIVFHK_1[9]  (.A(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/d_m7_i_a3_0_0 ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9LS61[12]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_12 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_21 ));
    NOR3A \stonyman_0/incp_RNO_3  (.A(\stonyman_0/N_109 ), .B(
        \stonyman_0/N_1484 ), .C(\stonyman_0/N_107 ), .Y(
        \stonyman_0/N_145 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_226 ));
    DFN1P0 \FIFO_PIXEL_0/DFN1P0_EMPTY  (.D(\FIFO_PIXEL_0/EMPTYINT ), 
        .CLK(SCLK_c), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        FIFO_PIXEL_0_EMPTY));
    OA1C \stonyman_0/state_RNO[4]  (.A(\stonyman_0/N_1669 ), .B(
        \stonyman_0/state[4]_net_1 ), .C(\stonyman_0/state_ns_i_0[4] ), 
        .Y(\stonyman_0/state_RNO[4]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[5]  (.A(
        \psram_cr_0/data_from_cr[5] ), .B(\psram_data_in[5] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_236 ));
    MX2 \FIFO_PIXEL_0/MX2_90  (.A(\FIFO_PIXEL_0/MX2_79_Y ), .B(
        \FIFO_PIXEL_0/MX2_94_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_90_Y ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a2_0  
        (.A(\stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_0 ));
    OR3 \stonyman_0/counterPixelsCaptured_RNIH9SI4[11]  (.A(
        \stonyman_0/d_N_17_0 ), .B(\stonyman_0/d_N_16_0 ), .C(
        \stonyman_0/d_m8_0_1 ), .Y(
        \stonyman_0/counterPixelsCaptured_RNIH9SI4[11]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_40  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[11]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[10]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[12]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[10]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[11]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[12]INT_NET ));
    OR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2NQBA[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_89 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_83 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_0  
        (.A(\stonyman_0/ADD_9x9_fast_I1_G0N_0_2 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_3 ), .Y(\stonyman_0/N125_0 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_240 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[2]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[2] ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_0  (.D(\FIFO_PIXEL_0/MEM_RADDR[9] )
        , .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/OR2A_7_Y ), .Q(\FIFO_PIXEL_0/DFN1E1C0_0_Q ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIT3O99[1]  (.A(
        \stonyman_0/cachedValue[4] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/state31_0_a2_0 ), .Y(
        \stonyman_0/state31_0_a2_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNII3IQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[19] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[19] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_700 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_12  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[0] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[0] ), .Y(\FIFO_PIXEL_0/XNOR2_12_Y ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_63  (.A(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_3[0] ), .Y(
        \stonyman_0/I_63 ));
    IOTRI_OB_EB \SCLK_pad/U0/U1  (.D(SCLK_c), .E(PLLEN_VCC), .DOUT(
        \SCLK_pad/U0/NET1 ), .EOUT(\SCLK_pad/U0/NET2 ));
    NOR3 \stonyman_0/counterWait_RNO[1]  (.A(\stonyman_0/N_158 ), .B(
        \stonyman_0/counterWait_82_i_1[1] ), .C(\stonyman_0/N_162 ), 
        .Y(\stonyman_0/N_35 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_80  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET ));
    NOR3A \stonyman_0/cachedValue_tile_WADDR_REG1_RNI27MV1[0]  (.A(
        \stonyman_0/I_5_0 ), .B(\stonyman_0/I_4_2 ), .C(
        \stonyman_0/I_4_1 ), .Y(\stonyman_0/N_7_0 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[1]  (.D(
        \psram_cr_0/cr_int_i0/N_61 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ));
    XA1C \adc081s101_0/cntrWaitTrailing_RNO[1]  (.A(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ), .B(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa ), .Y(\adc081s101_0/N_140 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_173 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIDR531[20]  (.A(
        \stonyman_0/counterWait[17]_net_1 ), .B(
        \stonyman_0/counterWait[20]_net_1 ), .C(
        \stonyman_0/counterWait8lt29_3 ), .Y(
        \stonyman_0/counterWait8lt29_16 ));
    NOR3 \stonyman_0/counterWait_RNO[2]  (.A(\stonyman_0/N_165 ), .B(
        \stonyman_0/counterWait_82_i_0[2]_net_1 ), .C(
        \stonyman_0/N_1919 ), .Y(\stonyman_0/N_1915 ));
    NOR2A \stonyman_0/counterWait_82_i_a2_2_RNO[2]  (.A(
        \stonyman_0/un1_state_18 ), .B(
        \stonyman_0/counterWait[2]_net_1 ), .Y(
        \stonyman_0/counterWait_82_i_a2_2_0[2] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[1]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] ));
    IOTRI_OB_EB \Phy_RMII_CLK_pad/U0/U1  (.D(Phy_RMII_CLK_c), .E(
        PLLEN_VCC), .DOUT(\Phy_RMII_CLK_pad/U0/NET1 ), .EOUT(
        \Phy_RMII_CLK_pad/U0/NET2 ));
    IOPAD_TRI \led_pad[0]/U0/U0  (.D(\led_pad[0]/U0/NET1 ), .E(
        \led_pad[0]/U0/NET2 ), .PAD(led[0]));
    AX1B \counter_0/counterInternal_RNO_0[20]  (.A(\counter_0/N_34 ), 
        .B(\counter_0/counterInternal[19]_net_1 ), .C(
        \counter_0/counterInternal[20]_net_1 ), .Y(\counter_0/N_32_0 ));
    NOR2A \stonyman_0/counterWait_RNO_7[1]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(
        \stonyman_0/substate_i[0]_net_1 ), .Y(
        \stonyman_0/counterWait_82_i_a2_1_1_0[1] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_11_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[11] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[11] ));
    DFN1 \counter_0/state[0]  (.D(\counter_0/state_nss[0] ), .CLK(
        SCLK_c), .Q(\counter_0/state[0]_net_1 ));
    BUFF \FIFO_PIXEL_0/BUFF_2  (.A(\FIFO_PIXEL_0/DFN1E1C0_1_Q ), .Y(
        \FIFO_PIXEL_0/BUFF_2_Y ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[2]  (.A(\FIFO_PIXEL_0/MX2_1_Y ), .B(
        \FIFO_PIXEL_0/MX2_15_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[2] ));
    AO1A \stonyman_0/resp_RNO_5  (.A(\stonyman_0/N_107 ), .B(
        \stonyman_0/un1_substate_0_sqmuxa_5_0_a2_2_0 ), .C(
        \stonyman_0/un1_substate_0_sqmuxa_5_0_0 ), .Y(
        \stonyman_0/un1_substate_0_sqmuxa_5_0_1 ));
    OR2A \counter_0/COUNT_RNIU97A4[18]  (.A(\counter_0_COUNT[18] ), .B(
        \counter_0/N_60 ), .Y(\counter_0/COUNT_RNIU97A4[18]_net_1 ));
    DFN1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ));
    AX1D \stonyman_0/substate_RNO_1[1]  (.A(\stonyman_0/I11_un1_Y_1 ), 
        .B(\stonyman_0/ADD_9x9_fast_I11_Y_0_1 ), .C(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .Y(
        \stonyman_0/substate_RNO_1[1]_net_1 ));
    NOR2 \stonyman_0/state_RNIQP97[3]  (.A(\stonyman_0/state[3]_net_1 )
        , .B(\stonyman_0/state[10]_net_1 ), .Y(
        \stonyman_0/substate_tr13_5_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[16] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[2]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[2] ));
    DFN1E1 \counter_0/COUNT[21]  (.D(\counter_0/COUNT_n21 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[21] ));
    IOTRI_OB_EB \led_pad[5]/U0/U1  (.D(\led_c[5] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[5]/U0/NET1 ), .EOUT(\led_pad[5]/U0/NET2 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 ));
    OR3 \stonyman_0/un3_counterWait_I_75  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .C(
        \stonyman_0/counterWait[24]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[19] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_180 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 ));
    NOR2A \stonyman_apb3_0/stonyman_ioreg_0/ready_5_0_a3_0_0  (.A(
        \CoreAPB3_0_APBmslave0_0_PWDATA[0] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/ready_5_0_a3_0_0_net_1 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_14_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[14] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[14] ));
    OA1 \stonyman_0/substate_RNO_1[8]  (.A(\stonyman_0/N_1473 ), .B(
        \stonyman_0/N_1475 ), .C(\stonyman_0/substate[3]_net_1 ), .Y(
        \stonyman_0/N_1578 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_218 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_34 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_220 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 ));
    AOI1B \stonyman_0/substate_RNIRO92J_0[2]  (.A(\stonyman_0/N_122 ), 
        .B(\stonyman_0/N_121 ), .C(\stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/resv_1_sqmuxa ));
    MX2 \FIFO_PIXEL_0/MX2_101  (.A(\FIFO_PIXEL_0/MX2_23_Y ), .B(
        \FIFO_PIXEL_0/MX2_43_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_101_Y ));
    DFN1E1 \counter_0/COUNT[30]  (.D(\counter_0/COUNT_n30 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[30] ));
    OR3 \adc081s101_0/conversionComplete_RNO_2  (.A(
        \adc081s101_0/N_108 ), .B(\adc081s101_0/N_62 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa ), .Y(\adc081s101_0/N_10 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[28]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[28] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] ));
    XA1A \counter_0/COUNT_RNO[2]  (.A(\counter_0_COUNT[2] ), .B(
        \counter_0/COUNT_RNI5IO[1]_net_1 ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\counter_0/N_8 ));
    DFN1 \stonyman_0/substate[2]  (.D(\stonyman_0/substate_ns[2] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[2]_net_1 ));
    NOR3B \stonyman_0/state_RNI64626[11]  (.A(\stonyman_0/N_105 ), .B(
        \stonyman_0/substate_i[0]_net_1 ), .C(
        \stonyman_0/state[11]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_3_0 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[7]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[7] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[7] ));
    AOI1B \stonyman_0/substate_RNIIPPR[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/state[2]_net_1 ), .C(\stonyman_0/N_102 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_1_0 ));
    OR2A \counter_0/COUNT_RNIC953[7]  (.A(\counter_0_COUNT[7] ), .B(
        \counter_0/COUNT_RNI36O2[6]_net_1 ), .Y(
        \counter_0/COUNT_RNIC953[7]_net_1 ));
    DFN1 \psram_cr_0/ahb0/hwrite_reg  (.D(
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ));
    NOR3C \FIFO_PIXEL_0/AO1_25  (.A(\FIFO_PIXEL_0/MEM_WADDR[3] ), .B(
        \FIFO_PIXEL_0/XOR2_16_Y ), .C(\FIFO_PIXEL_0/AO1_1_Y ), .Y(
        \FIFO_PIXEL_0/AO1_25_Y ));
    AND2A \FIFO_PIXEL_0/AND2_MEMORYRE  (.A(FIFO_PIXEL_0_EMPTY), .B(
        \FIFO_PIXEL_0.REP ), .Y(\FIFO_PIXEL_0/MEMORYRE ));
    NOR2 \stonyman_0/substate_RNIA7EC1[5]  (.A(\stonyman_0/N_1392_i_0 )
        , .B(\stonyman_0/substate[5]_net_1 ), .Y(\stonyman_0/N_200 ));
    NOR2B \FIFO_PIXEL_0/AO1_12  (.A(\FIFO_PIXEL_0/AND2_8_Y ), .B(
        \FIFO_PIXEL_0/AO1_5_Y ), .Y(\FIFO_PIXEL_0/AO1_12_Y ));
    OR2A \stonyman_0/counterWait_82_i_a2_RNO[2]  (.A(\stonyman_0/N_71 )
        , .B(\stonyman_0/N_135 ), .Y(\stonyman_0/N_136 ));
    OR2A \counter_0/COUNT_RNI6IN37[24]  (.A(\counter_0_COUNT[24] ), .B(
        \counter_0/N_66 ), .Y(\counter_0/N_67 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_185 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[3]  (.D(
        \psram_cr_0/cr_int_i0/N_58 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ));
    DFN1 \stonyman_0/state[10]  (.D(\stonyman_0/state_RNO[10]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[10]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIA3HQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[15] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[15] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_696 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[2]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[2]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[2] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_3_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[3] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[3] ));
    BUFF \FIFO_TEST_COUNTER_0/XOR2_9  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] ), .Y(
        \FIFO_TEST_COUNTER_0/XOR2_9_Y ));
    NOR2A \psram_cr_0/ahb0/hready_reg_RNI31AC1  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m));
    DFN1 \psram_cr_0/ahb0/fsm  (.D(\psram_cr_0/ahb0/fsm_0_sqmuxa_1 ), 
        .CLK(FAB_CLK), .Q(\psram_cr_0/ahb0/fsm_net_1 ));
    NAND3B \FIFO_PIXEL_0/NAND3B_4  (.A(\FIFO_PIXEL_0/MEM_RADDR[9] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[11] ), .Y(\FIFO_PIXEL_0/NAND3B_4_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_4[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_77 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        );
    DFN1E1 \stonyman_0/counterWait[14]  (.D(\stonyman_0/N_24 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[14]_net_1 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[4]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_55 ), .Y(\stonyman_0/counterPixelsCaptured_8[4] )
        );
    IOPAD_TRI \psram_noe0_pad/U0/U0  (.D(\psram_noe0_pad/U0/NET1 ), .E(
        \psram_noe0_pad/U0/NET2 ), .PAD(psram_noe0));
    DFN1 \psram_cr_0/ahb0/data_out[12]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[12]_net_1 ));
    OR2 \stonyman_0/un3_counterWait_I_87  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[30] ), .Y(
        \stonyman_0/DWACT_FDEC_E[24] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[29]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[29] ));
    IOPAD_TRI \TP_adcStartCapture_pad/U0/U0  (.D(
        \TP_adcStartCapture_pad/U0/NET1 ), .E(
        \TP_adcStartCapture_pad/U0/NET2 ), .PAD(TP_adcStartCapture));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[25]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[25] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[25] ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un61_sum_ADD_9x9_fast_I17_Y_a0  
        (.A(\stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_1 ), .C(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_0 ));
    OR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_0_0  
        (.A(\stonyman_0/counterPixelsCaptured[10]_net_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a8 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_0 ));
    DFN1 \stonyman_0/startAdcCapture  (.D(\stonyman_0/N_180 ), .CLK(
        SCLK_c), .Q(TP_adcStartCapture_c));
    DFN1 \counter_0/counterInternal[17]  (.D(
        \counter_0/counterInternal_RNO[17]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[17]_net_1 ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[2]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[2] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[2] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_79 ));
    NOR3A \stonyman_0/substate_RNO_3[1]  (.A(
        \stonyman_0/substate_ns_i_1_m4_0_a2_1 ), .B(
        \stonyman_0/substate_ns_i_7[1] ), .C(
        \stonyman_0/substate_ns_i_8_0_6[1] ), .Y(
        \stonyman_0/substate_ns_i_1_m4_0_a2_2 ));
    NOR3B \stonyman_0/counterWait_RNO[29]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_92 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_46 ));
    NOR3B \psram_cr_0/ahb0/operation_sel_RNIIIQ01  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/operation_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(\psram_cr_0/ahb0/operation5 )
        );
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_74 ));
    AND3 \FIFO_TEST_COUNTER_0/AND3_3  (.A(
        \FIFO_TEST_COUNTER_0/XNOR2_14_Y ), .B(
        \FIFO_TEST_COUNTER_0/XNOR2_4_Y ), .C(
        \FIFO_TEST_COUNTER_0/XNOR2_10_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AND3_3_Y ));
    DFN1 \psram_cr_0/cr_int_i0/address[24]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[24] ));
    OA1 \psram_cr_0/ahb0/busy_RNO  (.A(\psram_cr_0/dt_ack ), .B(
        \psram_cr_0/dt_req ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/N_24 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[0]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[0] ));
    DFN1 \psram_cr_0/ahb0/operation[21]  (.D(
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[21]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[6]  (.A(
        \psram_cr_0/data_from_cr[6] ), .B(
        \psram_cr_0/ahb0/data_out[6]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_265 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_UART_0_TXD  (.D(
        \MSS_CORE2_0/MSS_UART_0_TXD_D ), .E(PLLEN_VCC), .PAD(
        UART_0_TXD));
    NOR3B \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0_0[0]  
        (.A(\CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_40 ), .C(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0[1]_net_1 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]  (.D(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[11] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lI ), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]_net_1 ));
    OR3 \stonyman_0/incv_RNO_1  (.A(\stonyman_0/N_1048 ), .B(
        \stonyman_0/N_1378 ), .C(\stonyman_0/N_1052 ), .Y(
        \stonyman_0/un1_substate_8_sqmuxa_3 ));
    NOR2B \stonyman_0/substate_RNO_29[3]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[3]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0[3] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_216 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_30 ));
    OR3 \stonyman_0/un3_counterWait_I_60  (.A(
        \stonyman_0/counterWait[18]_net_1 ), .B(
        \stonyman_0/counterWait[19]_net_1 ), .C(
        \stonyman_0/counterWait[20]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[15] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_188 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[14]  (.A(
        \psram_cr_0/data_to_cr[14] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[14] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_257 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[2]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[2] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_213 )
        );
    DFN1 \psram_cr_0/ahb0/psram_addr[4]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[0] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[0]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHJTL[13]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_186 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 ));
    IOPAD_BI \psram_data_pad[15]/U0/U0  (.D(
        \psram_data_pad[15]/U0/NET1 ), .E(\psram_data_pad[15]/U0/NET2 )
        , .Y(\psram_data_pad[15]/U0/NET3 ), .PAD(psram_data[15]));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[11]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[11] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[11] ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_Y_5  
        (.A(\stonyman_0/ADD_9x9_fast_I9_Y_2 ), .B(
        \stonyman_0/ADD_9x9_fast_I9_Y_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I9_Y_3 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_Y_5 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_223 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_92  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(PLLEN_VCC), .PIN1(), .PIN2(), .PIN3(
        ), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHWRITEINT_NET ), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHREADYOUTINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRESPINT_NET ), .PIN3INT(
        GLMUXINT_GND));
    DFN1E1 \stonyman_0/counterWait[13]  (.D(\stonyman_0/N_22_0 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[13]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_245 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[0]  (.A(
        \psram_cr_0/ahb0/data_out[0]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_out_m[0] ));
    IOTRI_OB_EB \psram_nbyte_en_pad[0]/U0/U1  (.D(psram_ncs0_c_c_c), 
        .E(PLLEN_VCC), .DOUT(\psram_nbyte_en_pad[0]/U0/NET1 ), .EOUT(
        \psram_nbyte_en_pad[0]/U0/NET2 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_19_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[19] ), .B(N_1301), .Y(N_26));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[2]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[2] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[2] ));
    DFN1 \psram_cr_0/ahb0/data_out[8]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[8]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[6]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_P0N_a2  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a2 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_225 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_48 ));
    AO1D \stonyman_0/substate_RNO_2[10]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(
        \stonyman_0/substate[5]_net_1 ), .C(\stonyman_0/N_1496 ), .Y(
        \stonyman_0/substate_ns_i_0[10] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[0] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_211 ));
    AO1 \stonyman_0/counterWait_RNO[20]  (.A(\stonyman_0/I_59_0 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[20] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[12] ));
    NAND3B \FIFO_PIXEL_0/NAND3B_1  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[9] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[10] ), .Y(\FIFO_PIXEL_0/NAND3B_1_Y ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_5  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[0] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_5_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_217 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIK9K04[20]  (.A(
        \stonyman_0/counterWait8lt29_17 ), .B(
        \stonyman_0/counterWait8lt29_16 ), .C(
        \stonyman_0/counterWait8lt29_22 ), .Y(
        \stonyman_0/counterWait8lt29_26 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_29_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[29] ), .B(N_1301), .Y(N_1297));
    AND3 \FIFO_PIXEL_0/AND3_8  (.A(\FIFO_PIXEL_0/AND3_9_Y ), .B(
        \FIFO_PIXEL_0/AND3_7_Y ), .C(\FIFO_PIXEL_0/AND3_6_Y ), .Y(
        \FIFO_PIXEL_0/AND3_8_Y ));
    AO1D \stonyman_0/substate_i_RNICTDLD6[0]  (.A(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_0 ), .B(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_1 ), .C(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_1 ), .Y(
        \stonyman_0/N_25 ));
    IOPAD_TRI \Phy_RMII_CLK_pad/U0/U0  (.D(\Phy_RMII_CLK_pad/U0/NET1 ), 
        .E(\Phy_RMII_CLK_pad/U0/NET2 ), .PAD(Phy_RMII_CLK));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_MDC  (.D(
        \MSS_CORE2_0/MSS_MAC_0_MDC_D ), .E(PLLEN_VCC), .PAD(MAC_MDC));
    OAI1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_3_0  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_N_2 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a1_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_3_0 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[5]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[5] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[2]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[15]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] ));
    AND2 \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2  (.A(
        \psram_cr_0/ahb0/N_84 ), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1_net_1 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[30]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[30] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[30] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_795 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_20_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[20] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[20] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIF5VC[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI3IS14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_696 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] ));
    XA1B \counter_0/counterInternal_RNO[24]  (.A(
        \counter_0/counterInternal[24]_net_1 ), .B(\counter_0/N_485 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[24]_net_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/operation[27]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[27] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_206 ));
    AND3 \FIFO_TEST_COUNTER_0/AND3_1  (.A(
        \FIFO_TEST_COUNTER_0/XNOR2_0_Y ), .B(
        \FIFO_TEST_COUNTER_0/XNOR2_2_Y ), .C(
        \FIFO_TEST_COUNTER_0/XNOR2_8_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AND3_1_Y ));
    NOR3B \stonyman_0/substate_RNIJJDB8[2]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_3_5 ), .B(
        \stonyman_0/counterWait_0_sqmuxa_3_2 ), .C(\stonyman_0/N_1383 )
        , .Y(\stonyman_0/counterWait_0_sqmuxa_3 ));
    OR2 \stonyman_0/state_RNI0U97[11]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[8]_net_1 ), 
        .Y(\stonyman_0/N_1920 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 ));
    DFN1 \counter_0/counterInternal[27]  (.D(\counter_0/N_54 ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[27]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[11]  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[11] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[11]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[11] ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_89 ), 
        .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[7] )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_234 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRQKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_683 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] ));
    DFN1 \stonyman_0/state[11]  (.D(\stonyman_0/state_RNO[11]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[11]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[27]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[27] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] ));
    NOR2A \stonyman_0/counterPixelsCaptured_RNIFGR86O3[0]  (.A(
        \stonyman_0/un1_counterPixelsCaptured_15_4_3 ), .B(
        \stonyman_0/N_719 ), .Y(
        \stonyman_0/un1_counterPixelsCaptured_15_4 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_183 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[8]  (.A(
        \psram_cr_0/data_to_cr[8] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_251 ));
    AO1 \stonyman_0/substate_i_RNO_6[0]  (.A(
        \stonyman_0/substate_ns_i_0_a4_0[0] ), .B(\stonyman_0/N_1516 ), 
        .C(\stonyman_0/N_1538 ), .Y(\stonyman_0/substate_ns_i_0_0[0] ));
    IOPAD_BI \psram_data_pad[2]/U0/U0  (.D(\psram_data_pad[2]/U0/NET1 )
        , .E(\psram_data_pad[2]/U0/NET2 ), .Y(
        \psram_data_pad[2]/U0/NET3 ), .PAD(psram_data[2]));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[1]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[1] ));
    IOPAD_BI \psram_data_pad[13]/U0/U0  (.D(
        \psram_data_pad[13]/U0/NET1 ), .E(\psram_data_pad[13]/U0/NET2 )
        , .Y(\psram_data_pad[13]/U0/NET3 ), .PAD(psram_data[13]));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[3]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[3] ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIG4CK3[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI00II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTOO0II_i_m ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlOII_iv_0 ));
    MIN3X 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_m7  
        (.A(\stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_8 ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNI3SHM[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 ));
    OR2 \stonyman_0/counterWait_RNILPIH[11]  (.A(
        \stonyman_0/counterWait[14]_net_1 ), .B(
        \stonyman_0/counterWait[11]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_3 ));
    OR2A \counter_0/WRITEEN_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \counter_0/N_258 ), .Y(\counter_0/WRITEEN_RNO_net_1 ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_2  (.D(
        \FIFO_PIXEL_0/MEM_RADDR[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_PIXEL_0/OR2A_14_Y ), .Q(
        \FIFO_PIXEL_0/DFN1E1C0_2_Q ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_169 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 ));
    NOR3B \stonyman_0/counterWait_RNO[17]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_49 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_28 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI1R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[5] ));
    NOR2 \counter_0/counterInternal_RNO[0]  (.A(
        \counter_0/counterInternal[0]_net_1 ), .B(\counter_0/COUNTe ), 
        .Y(\counter_0/counterInternal_n0 ));
    OA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I11_Y_0  
        (.A(\stonyman_0/mult1_un103_sum[5] ), .B(\stonyman_0/N146_1 ), 
        .C(\stonyman_0/mult1_un103_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_0 ));
    NOR2 \stonyman_0/substate_RNO_20[3]  (.A(\stonyman_0/N_1473 ), .B(
        \stonyman_0/N_74 ), .Y(\stonyman_0/substate_tr32_3_4 ));
    OR2 \stonyman_0/counterWait_RNIQ9JH[21]  (.A(
        \stonyman_0/counterWait[21]_net_1 ), .B(
        \stonyman_0/counterWait[18]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_9 ));
    DFN1E1 \stonyman_0/pixelout[2]  (.D(\adc081s101_0_dataout[2] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[2] ));
    OA1 \stonyman_0/substate_RNIIM8K9[10]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(\stonyman_0/N_1489 ), .C(
        \stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1543 ));
    NOR3B \stonyman_0/startAdcCapture_RNO_1  (.A(
        \stonyman_0/state[10]_net_1 ), .B(
        \stonyman_0/substate[15]_net_1 ), .C(
        \stonyman_0/substate[16]_net_1 ), .Y(\stonyman_0/N_138 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_2_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[2] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[2] ));
    AO1C \stonyman_0/state_i_RNI6RM5[0]  (.A(
        stonyman_apb3_0_START_CAPTURE), .B(\stonyman_0/state[6]_net_1 )
        , .C(\stonyman_0/state_i[0]_net_1 ), .Y(\stonyman_0/N_77 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[29]  (.A(
        \psram_cr_0/ahb0/max_addr[29] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[29] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[29] ));
    NOR3C \psram_cr_0/ahb0/un1_haddr_reg_9_0_a2  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/N_95 ), .Y(\psram_cr_0/ahb0/un1_haddr_reg_9 ));
    IOTRI_OB_EB \resp_pad/U0/U1  (.D(resp_c), .E(PLLEN_VCC), .DOUT(
        \resp_pad/U0/NET1 ), .EOUT(\resp_pad/U0/NET2 ));
    NOR2B \stonyman_0/substate_RNI3DUI[2]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(
        \stonyman_0/state[1]_net_1 ), .Y(
        \stonyman_0/substate_4_sqmuxa ));
    DFN1 \stonyman_0/counterPixelsCaptured[14]  (.D(
        \stonyman_0/counterPixelsCaptured_8[14] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[14]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[1]/U0/U1  (.D(\psram_address_c[1] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[1]/U0/NET1 ), .EOUT(
        \psram_address_pad[1]/U0/NET2 ));
    DFN1E1 \stonyman_apb3_0/stonyman_ioreg_0/startCapture  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/N_100 ), .CLK(SCLK_c), .E(
        MSS_CORE2_0_M2F_RESET_N), .Q(stonyman_apb3_0_START_CAPTURE));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_232 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 ));
    XNOR2 \stonyman_0/un3_counterWait_I_23  (.A(\stonyman_0/N_23 ), .B(
        \stonyman_0/counterWait[8]_net_1 ), .Y(\stonyman_0/I_23 ));
    DFN1 \adc081s101_0/conversionComplete  (.D(\adc081s101_0/N_68 ), 
        .CLK(SCLK_c), .Q(TP_adcConvComplete_c));
    IOBI_IB_OB_EB \psram_data_pad[3]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[3]/U0/NET3 ), .DOUT(
        \psram_data_pad[3]/U0/NET1 ), .EOUT(
        \psram_data_pad[3]/U0/NET2 ), .Y(\psram_data_in[3] ));
    DFN1E1 \stonyman_apb3_0/stonyman_ioreg_0/ready  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/ready_5 ), .CLK(SCLK_c), .E(
        MSS_CORE2_0_M2F_RESET_N), .Q(\stonyman_apb3_0.ioreg_ready ));
    NOR2 \stonyman_0/substate_RNIU1JT[1]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(
        \stonyman_0/substate[3]_net_1 ), .Y(\stonyman_0/N_1388 ));
    OR2A \psram_cr_0/cr_int_i0/nbyte_en_1_RNO[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_230 ), .Y(
        \psram_cr_0/cr_int_i0/N_99 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[1]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[1] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[1] ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[5]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[5] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[5] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_82 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[6] ), .Y(
        \psram_cr_0/ahb0/operation_m[6] ));
    DFN1 \psram_cr_0/ahb0/data_out[9]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[9]_net_1 ));
    NOR2 \stonyman_0/counterWait_RNO_5[4]  (.A(
        \stonyman_0/substate[9]_net_1 ), .B(
        \stonyman_0/substate[4]_net_1 ), .Y(
        \stonyman_0/counterWait_82_i_a2_1_0[4] ));
    OR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNI5OE0G  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIlI_iv_0 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ));
    INV \FIFO_TEST_COUNTER_0/MEMREBUBBLE  (.A(
        \FIFO_TEST_COUNTER_0/MEMORYRE ), .Y(
        \FIFO_TEST_COUNTER_0/MEMRENEG ));
    XA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_a5_1  
        (.A(\stonyman_0/N148 ), .B(\stonyman_0/ADD_9x9_fast_I17_Y_2 ), 
        .C(\stonyman_0/ADD_9x9_fast_I11_Y_a0_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_23 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_22_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[22] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[22] ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[0]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[0] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_82 ));
    OR2 \stonyman_0/state_RNI3UEB[12]  (.A(\stonyman_0/N_1484 ), .B(
        \stonyman_0/state[12]_net_1 ), .Y(\stonyman_0/N_1488 ));
    NOR3C \stonyman_0/cachedPOINTER_RNIEFKB1_0[0]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(\stonyman_0/un45lto0 )
        , .C(\stonyman_0/cachedPOINTER[1]_net_1 ), .Y(
        \stonyman_0/state9 ));
    OR2 \CoreAPB3_0/CAPB3llOI/PREADY_iv_i_o3_0  (.A(
        COREAHBTOAPB3_0_APBmaster_PSELx_i_0), .B(
        \CoreAPB3_0_APBmslave1_PADDR[9] ), .Y(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[9]  (.D(
        \psram_cr_0/cr_int_i0/N_38 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[9] ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[0]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .B(\FIFO_PIXEL_0/MEMORYRE ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[0] ));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO_1  (.A(
        \COREAHBTOAPB3_0/N_152 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_175_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0_0 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[31]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_62 ));
    NOR3A \stonyman_0/substate_RNIH96I1[2]  (.A(\stonyman_0/N_1389 ), 
        .B(\stonyman_0/substate[6]_net_1 ), .C(
        \stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_3_3 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[7]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[7] ));
    IOTRI_OB_EB \led_pad[6]/U0/U1  (.D(\led_c[6] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[6]/U0/NET1 ), .EOUT(\led_pad[6]/U0/NET2 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a0_0  
        (.A(\stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_2 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[3]  (.D(
        \stonyman_0/state_RNIOEL1A[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[3] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[16]  (.A(
        \psram_cr_0/ahb0/N_195 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 ));
    NOR3B \stonyman_0/substate_RNO_14[3]  (.A(
        \stonyman_0/substate_ns_0_a4_0_2_0[3] ), .B(
        \stonyman_0/N_1517 ), .C(\stonyman_0/N_1484 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_2[3] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_255 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/dt_ack  (.D(\psram_cr_0/cr_int_i0/N_22 )
        , .CLK(FAB_CLK), .Q(\psram_cr_0/dt_ack ));
    DFN1E1 \counter_0/COUNT[6]  (.D(\counter_0/N_16 ), .CLK(SCLK_c), 
        .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[6] ));
    AO1 \adc081s101_0/cs_RNI08LB3  (.A(
        \adc081s101_0/cntrWaitTrailinglde_0_a2_0 ), .B(
        \adc081s101_0/N_109 ), .C(\adc081s101_0/cs_1_sqmuxa ), .Y(
        \adc081s101_0/cntrWaitTrailinge ));
    IOPAD_TRI \psram_address_pad[20]/U0/U0  (.D(
        \psram_address_pad[20]/U0/NET1 ), .E(
        \psram_address_pad[20]/U0/NET2 ), .PAD(psram_address[20]));
    DFN1 \psram_cr_0/ahb0/psram_addr[28]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[28] ));
    XNOR2 \stonyman_0/un3_counterWait_I_53  (.A(\stonyman_0/N_13 ), .B(
        \stonyman_0/counterWait[18]_net_1 ), .Y(\stonyman_0/I_53_0 ));
    IOTRI_OB_EB \led_pad[3]/U0/U1  (.D(\led_c[3] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[3]/U0/NET1 ), .EOUT(\led_pad[3]/U0/NET2 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[7]  (.A(
        \psram_cr_0/data_from_cr[7] ), .B(\psram_data_in[7] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_238 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[2]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[2] ));
    MSS_CCC_IP #( .VCOFREQUENCY(80.000000) )  
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_MSSCCC  (.CLKA(
        \MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC ), .EXTFB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .GLA(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT ), .GLAMSS(
        \MSS_CORE2_0/GLA0 ), .LOCK(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT ), .LOCKMSS(
        \MSS_CORE2_0/MSS_ADLIB_INST_PLLLOCK ), .CLKB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKB_INT ), .GLB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLB_INT ), .YB(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YB_INT ), .CLKC(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .GLC(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT ), .YC(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .MACCLK(
        \MSS_CORE2_0/MSS_ADLIB_INST_MACCLKCCC ), .SDIN(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), .SCLK(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), .SSHIFT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), .SUPDATE(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .MODE(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/MODE_INT ), .SDOUT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ), .PLLEN(PLLEN_VCC), 
        .OADIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .OADIVHALF(GLMUXINT_GND), .OADIVRST(
        GLMUXINT_GND), .OAMUX({PLLEN_VCC, GLMUXINT_GND, GLMUXINT_GND}), 
        .BYPASSA(GLMUXINT_GND), .DLYGLA({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), .DLYGLAMSS({
        GLMUXINT_GND, PLLEN_VCC, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .DLYGLAFAB({GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, 
        PLLEN_VCC, PLLEN_VCC}), .OBDIV({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC}), .OBDIVHALF(
        GLMUXINT_GND), .OBDIVRST(GLMUXINT_GND), .OBMUX({GLMUXINT_GND, 
        PLLEN_VCC, PLLEN_VCC}), .BYPASSB(GLMUXINT_GND), .DLYGLB({
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, GLMUXINT_GND})
        , .OCDIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .OCDIVHALF(GLMUXINT_GND), 
        .OCDIVRST(GLMUXINT_GND), .OCMUX({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND}), .BYPASSC(PLLEN_VCC), .DLYGLC({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND}), 
        .FINDIV({GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC}), .FBDIV({
        GLMUXINT_GND, GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC, PLLEN_VCC, 
        PLLEN_VCC, PLLEN_VCC}), .FBDLY({GLMUXINT_GND, GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND, PLLEN_VCC}), .FBSEL({GLMUXINT_GND, 
        PLLEN_VCC}), .XDLYSEL(GLMUXINT_GND), .VCOSEL({GLMUXINT_GND, 
        GLMUXINT_GND, GLMUXINT_GND}), .GLMUXINT(GLMUXINT_GND), 
        .GLMUXSEL({GLMUXINT_GND, GLMUXINT_GND}), .GLMUXCFG({
        GLMUXINT_GND, GLMUXINT_GND}));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I16_Y_1035_m2  
        (.A(\stonyman_0/N146_2 ), .B(\stonyman_0/mult1_un75_sum[5] ), 
        .C(\stonyman_0/N150_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_8 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_184 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_22_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ));
    NOR3A \counter_0/counterInternal_RNIMOT31[20]  (.A(
        \counter_0/COUNT8_20_0 ), .B(
        \counter_0/counterInternal[21]_net_1 ), .C(
        \counter_0/counterInternal[20]_net_1 ), .Y(\counter_0/N_29_15 )
        );
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIFQ1U2[6]  
        (.A(CoreAHBLite_0_AHBmslave6_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .C(
        CoreAHBLite_0_AHBmslave5_HREADY_i_m), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIlI_iv_0 ));
    OR2A \FIFO_PIXEL_0/OR2A_7  (.A(\FIFO_PIXEL_0/MEMRENEG ), .B(
        \FIFO_PIXEL_0/NAND3C_0_Y ), .Y(\FIFO_PIXEL_0/OR2A_7_Y ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(\psram_cr_0/data_to_cr[5] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_161 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3970A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[9] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[9] ));
    XOR2 \stonyman_0/un1_cachedPOINTER_3_I_13  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_TMP_0[0] ), .Y(\stonyman_0/I_13 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGRHQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[18] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[18] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_699 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_91  (.PIN4(FAB_CLK), .PIN5(
        GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), .PIN3(), 
        .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_182 ));
    OR2 \stonyman_0/counterWait_RNITHJH[23]  (.A(
        \stonyman_0/counterWait[28]_net_1 ), .B(
        \stonyman_0/counterWait[23]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[20]  (.A(
        \psram_address_c[20] ), .B(
        \psram_cr_0/cr_int_i0/address_5[20] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_268 ));
    NOR3A \stonyman_0/cachedValue_tile_DIN_REG1_RNI056KB[5]  (.A(
        \stonyman_0/N_1953 ), .B(\stonyman_0/cachedValue[0] ), .C(
        \stonyman_0/cachedValue[5] ), .Y(\stonyman_0/N_121 ));
    OR2 \adc081s101_0/bitsRead_RNIP0OQ1[3]  (.A(
        \adc081s101_0/cs_1_sqmuxa ), .B(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(
        \adc081s101_0/bitsReade ));
    OR2A \stonyman_0/state_RNO_1[4]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/N_1144 ), .Y(\stonyman_0/state_ns_i_0[4] ));
    DFN1 \psram_cr_0/ahb0/data_in[4]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[4] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[27]  (.D(N_1295), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[27] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[3]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[3] ), .Y(
        \psram_cr_0/ahb0/N_72 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[1]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[1] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[1] ));
    DFN1E1 \stonyman_0/pixelout[5]  (.D(\adc081s101_0_dataout[5] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[5] ));
    XA1 \stonyman_0/counterPixelsCaptured_RNIKKIVE83[0]  (.A(
        \stonyman_0/N146 ), .B(\stonyman_0/ADD_9x9_fast_I15_Y_0 ), .C(
        \stonyman_0/un1_counterPixelsCaptured_15_4_2 ), .Y(
        \stonyman_0/un1_counterPixelsCaptured_15_4_3 ));
    OR3 \stonyman_0/un3_counterWait_I_69  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[33] ), .Y(\stonyman_0/N_8 ));
    NOR2A \psram_cr_0/ahb0/un1_haddr_reg_6_0_a2_0  (.A(
        \psram_cr_0/ahb0/N_85 ), .B(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_95 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[0]  (.A(
        \psram_cr_0/data_from_cr[0] ), .B(\psram_data_in[0] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_231 ));
    IOTRI_OB_EB \TP_adcConvComplete_pad/U0/U1  (.D(
        TP_adcConvComplete_c), .E(PLLEN_VCC), .DOUT(
        \TP_adcConvComplete_pad/U0/NET1 ), .EOUT(
        \TP_adcConvComplete_pad/U0/NET2 ));
    NAND3A \FIFO_PIXEL_0/NAND3A_4  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3A_4_Y ));
    OR3 \stonyman_0/un3_counterWait_I_33  (.A(
        \stonyman_0/counterWait[9]_net_1 ), .B(
        \stonyman_0/counterWait[10]_net_1 ), .C(
        \stonyman_0/counterWait[11]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[7] ));
    MX2 \counter_0/state_RNO_4[1]  (.A(\counter_0/state[1]_net_1 ), .B(
        \counter_0/counterInternal[19]_net_1 ), .S(\counter_0/N_68 ), 
        .Y(\counter_0/N_10_0 ));
    IOPAD_IN \MSS_CORE2_0/MSS_UART_0_RXD  (.PAD(UART_0_RXD), .Y(
        \MSS_CORE2_0/MSS_UART_0_RXD_Y ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[2] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        );
    OR2A \psram_cr_0/cr_int_i0/op_counter_n3_i_0  (.A(
        \psram_cr_0/cr_int_i0/N_68 ), .B(\psram_cr_0/cr_int_i0/N_107 ), 
        .Y(\psram_cr_0/cr_int_i0/op_counter_n3_i_0_net_1 ));
    NOR3C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIFP322[3]  (
        .A(CoreAPB3_0_APBmslave0_0_PENABLE), .B(N_56), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ));
    NOR3A \stonyman_0/substate_RNI4N9V[10]  (.A(
        \stonyman_0/substate_ns_i_a4_9_3_1[1] ), .B(\stonyman_0/N_103 )
        , .C(\stonyman_0/N_74 ), .Y(
        \stonyman_0/substate_ns_i_a4_9_3[1] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[3] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[3]_net_1 ));
    NOR3A \stonyman_0/state_RNI2HJG[6]  (.A(\stonyman_0/state_inv_2_0 )
        , .B(\stonyman_0/state[8]_net_1 ), .C(
        \stonyman_0/state[6]_net_1 ), .Y(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ));
    NOR3B \stonyman_0/substate_RNO_1[2]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\stonyman_0/N_1692_1 ), .C(
        \stonyman_0/N_1386_1 ), .Y(\stonyman_0/N_91 ));
    DFN1 \psram_cr_0/ahb0/operation[17]  (.D(
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[17]_net_1 ));
    NAND3C \FIFO_PIXEL_0/NAND3C_1  (.A(\FIFO_PIXEL_0/MEM_WADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3C_1_Y ));
    OAI1 \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_RNIJT0L3  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/N_111 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[18]  (.A(
        \psram_cr_0/ahb0/N_229 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[9]  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[9] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[9]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[9] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[1]  (.D(N_60), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[1] ));
    NOR2A \stonyman_0/state_i_RNI800I9[0]  (.A(\stonyman_0/N_1600 ), 
        .B(\stonyman_0/N_1478 ), .Y(\stonyman_0/N_1604 ));
    AO1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI7ED6D[2]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[10]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[10] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[10] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_221 )
        );
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_76  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[2]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[3]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[4]INT_NET ));
    NOR3C \stonyman_0/substate_RNO_0[2]  (.A(\stonyman_0/N_1547_1 ), 
        .B(\stonyman_0/N_74 ), .C(\stonyman_0/N_1692_1 ), .Y(
        \stonyman_0/N_92 ));
    AO1B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNIS69I71_0  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[1]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[1]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[1] ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[0]  (.D(
        \psram_cr_0/cr_int_i0/op_counter_n0 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[6]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[6] ));
    AND2 \FIFO_TEST_COUNTER_0/AND2_36  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] ), .B(
        \FIFO_TEST_COUNTER_0/MEMORYRE ), .Y(
        \FIFO_TEST_COUNTER_0/AND2_36_Y ));
    XA1 \counter_0/COUNT_RNO[15]  (.A(\counter_0_COUNT[15] ), .B(
        \counter_0/COUNT_RNI07IE2[5]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n15 ));
    IOPAD_TRI \psram_address_pad[24]/U0/U0  (.D(
        \psram_address_pad[24]/U0/NET1 ), .E(
        \psram_address_pad[24]/U0/NET2 ), .PAD(psram_address[24]));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_220 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_38 ));
    NOR3A \stonyman_0/state_RNO_2[10]  (.A(
        \stonyman_0/substate[17]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/N_99 ));
    DFN1 \psram_cr_0/ahb0/operation[8]  (.D(
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[8] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/max_addr[30] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_241 ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[7]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[7] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[7] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_89 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[22]  (.A(
        \psram_cr_0/ahb0/operation[22]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[22] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_201 ));
    DFN1 \adc081s101_0/cntrWaitLeading[0]  (.D(
        \adc081s101_0/cntrWaitLeading_6[0] ), .CLK(SCLK_c), .Q(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ));
    IOPAD_TRI \led_pad[4]/U0/U0  (.D(\led_pad[4]/U0/NET1 ), .E(
        \led_pad[4]/U0/NET2 ), .PAD(led[4]));
    AO1C \stonyman_0/state_RNIFH5H[6]  (.A(\stonyman_0/N_1475 ), .B(
        \stonyman_0/N_1473 ), .C(\stonyman_0/N_1490 ), .Y(
        \stonyman_0/N_1499 ));
    DFN1 \psram_cr_0/ahb0/operation[13]  (.D(
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[13] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[15]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[15] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_226 )
        );
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(\psram_cr_0/data_to_cr[7] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_163 ));
    NOR3B \stonyman_0/substate_RNIATTD1[2]  (.A(
        \stonyman_0/substate_i[0]_net_1 ), .B(\stonyman_0/N_1388 ), .C(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_1383 ));
    XOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I16_Y  
        (.A(\stonyman_0/ADD_9x9_fast_I16_Y_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I16_Y_0 ), .Y(
        \stonyman_0/mult1_un89_sum[6] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_226 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_50 ));
    NOR3B \stonyman_0/substate_RNO_13[3]  (.A(
        \stonyman_0/substate_tr32_3_5 ), .B(
        \stonyman_0/substate_tr32_3_4 ), .C(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/substate_tr32_3_7 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[2]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_51 ), .Y(\stonyman_0/counterPixelsCaptured_8[2] )
        );
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[6] ));
    OR3 \adc081s101_0/cntrWaitTrailing_RNI4SDS[2]  (.A(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ), .C(
        \adc081s101_0/cntrWaitTrailing[2]_net_1 ), .Y(
        \adc081s101_0/N_44 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_a0  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_a2_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_2 ), .Y(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0 ));
    OR2 \FIFO_PIXEL_0/OR2_13  (.A(\FIFO_PIXEL_0/NAND3B_0_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_13_Y ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[4]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ));
    NOR2 \stonyman_0/resp_RNO_8  (.A(\stonyman_0/substate[5]_net_1 ), 
        .B(\stonyman_0/un45lto2 ), .Y(
        \stonyman_0/un1_substate_0_sqmuxa_5_0_a2_2_0 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] ));
    DFN1 \stonyman_0/counterPixelsCaptured[7]  (.D(
        \stonyman_0/counterPixelsCaptured_8[7] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[0]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .B(\FIFO_PIXEL_0/MEMORYWE ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[0] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNINTNH3  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[7] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[9]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[9] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[9] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_774 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_191 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_48  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB7 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB7 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_48_Y ));
    NOR3C \stonyman_0/substate_RNO_2[4]  (.A(\stonyman_0/N_121 ), .B(
        \stonyman_0/N_122 ), .C(\stonyman_0/substate_ns_0_a4_2_1[4] ), 
        .Y(\stonyman_0/N_1568 ));
    AO1B \stonyman_0/state_RNIVBRUG1[11]  (.A(\stonyman_0/N_1921 ), .B(
        \stonyman_0/counterWait8 ), .C(\stonyman_0/N_71 ), .Y(
        \stonyman_0/N_106 ));
    AX1C \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[3]  (.A(
        \FIFO_TEST_COUNTER_0/XOR2_9_Y ), .B(
        \FIFO_TEST_COUNTER_0/AO1_1_Y ), .C(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[3] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[3]  (.A(
        \psram_cr_0/ahb0/data_out[3]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_73 ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[2]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .B(\FIFO_PIXEL_0/AO1_14_Y ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[2] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_10  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET ), .PIN6INT(), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_1[0] )
        );
    DFN1 \psram_cr_0/cr_int_i0/start_0  (.D(\psram_cr_0/start_0_0 ), 
        .CLK(FAB_CLK), .Q(\psram_cr_0/cr_int_i0/start_0_net_1 ));
    AX1B \stonyman_0/un3_counterWait_I_12  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(
        \stonyman_0/DWACT_FDEC_E[0] ), .C(
        \stonyman_0/counterWait[4]_net_1 ), .Y(\stonyman_0/I_12 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_69 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] ));
    NOR2 \stonyman_0/substate_i_RNO_18[0]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(
        \stonyman_0/substate[3]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_4[0] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[21] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_232 ));
    NOR3 \stonyman_apb3_0/bus_write_enable_0_a2  (.A(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .C(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(\stonyman_apb3_0/N_109 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_174 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 ));
    OR3 \stonyman_0/counterWait_RNINVU29[10]  (.A(
        \stonyman_0/counterWait8lt29_25 ), .B(
        \stonyman_0/counterWait8lt29_24 ), .C(
        \stonyman_0/counterWait8lt29_26 ), .Y(
        \stonyman_0/counterWait8 ));
    AXOI7 \stonyman_0/state_RNIKFSB9[10]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(\stonyman_0/counterWait8 )
        , .C(\stonyman_0/state[10]_net_1 ), .Y(\stonyman_0/N_1663 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_219 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_36 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[4]  (.A(
        \psram_address_c[4] ), .B(\psram_cr_0/cr_int_i0/address_5[4] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_252 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[9]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_774 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[9]_net_1 ));
    MX2A \stonyman_0/incp_RNO_0  (.A(\stonyman_0/N_19_0 ), .B(incp_c), 
        .S(\stonyman_0/un1_substate_9_sqmuxa_4 ), .Y(
        \stonyman_0/N_762 ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_40  (.A(
        \stonyman_0/N_713 ), .B(\stonyman_0/writeEnableState_nsss[0] ), 
        .Y(\stonyman_0/DWACT_ADD_CI_0_partial_sum[0] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[29]  (.A(
        \psram_cr_0/ahb0/N_208 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[21]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[21]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[21] ));
    AND3 \FIFO_PIXEL_0/AND3_1  (.A(\FIFO_PIXEL_0/XNOR2_3_Y ), .B(
        \FIFO_PIXEL_0/AND3_2_Y ), .C(\FIFO_PIXEL_0/AND2_65_Y ), .Y(
        \FIFO_PIXEL_0/AND3_1_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIJRTL[15]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[4]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[4] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[14] ));
    XOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I17_Y  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_2 ), .B(\stonyman_0/N148 ), 
        .Y(\stonyman_0/mult1_un89_sum[7] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_17_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[17] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[17] ));
    MX2 \FIFO_PIXEL_0/MX2_15  (.A(\FIFO_PIXEL_0/MX2_92_Y ), .B(
        \FIFO_PIXEL_0/MX2_30_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_15_Y ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[4]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[2]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] ));
    NOR2B \stonyman_0/substate_RNID41P[16]  (.A(\stonyman_0/N_208 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/writeEnableState_nsss[0] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNICBHQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[16] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[16] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_697 ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[5]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] ));
    DFN1 \counter_0/counterInternal[2]  (.D(\counter_0/N_438_i ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[2]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[18]/U0/U1  (.D(
        \psram_address_c[18] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[18]/U0/NET1 ), .EOUT(
        \psram_address_pad[18]/U0/NET2 ));
    AND3 \FIFO_TEST_COUNTER_0/AND3_0  (.A(
        \FIFO_TEST_COUNTER_0/XNOR2_11_Y ), .B(
        \FIFO_TEST_COUNTER_0/AND3_2_Y ), .C(
        \FIFO_TEST_COUNTER_0/AND3_1_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AND3_0_Y ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[9] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[16]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_781 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[16]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[5]  (.A(
        \psram_cr_0/cr_int_i0/N_161 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[5] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[3]  (.A(\psram_cr_0/ahb0/N_246 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_3  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[1] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[1] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_3_Y ));
    MX2 \FIFO_PIXEL_0/MX2_26  (.A(\FIFO_PIXEL_0/MX2_72_Y ), .B(
        \FIFO_PIXEL_0/MX2_61_Y ), .S(\FIFO_PIXEL_0/BUFF_2_Y ), .Y(
        \FIFO_PIXEL_0/MX2_26_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUB9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[0] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[0] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_681 ));
    DFN1 \stonyman_0/state[5]  (.D(\stonyman_0/state_RNO[5]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[5]_net_1 ));
    OR2A \counter_0/state_RNO_0[0]  (.A(\counter_0/state[1]_net_1 ), 
        .B(\counter_0/state[0]_net_1 ), .Y(\counter_0/N_20 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/max_addr[25] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_236 ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_4  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[5] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_4_Y ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[7]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[7] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[7] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_772 ));
    DFN1E1 \stonyman_0/pixelout[3]  (.D(\adc081s101_0_dataout[3] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[3] ));
    OR3B \stonyman_0/state_RNO_0[4]  (.A(\stonyman_0/state31 ), .B(
        \stonyman_0/state[3]_net_1 ), .C(\stonyman_0/N_1658 ), .Y(
        \stonyman_0/N_1669 ));
    NOR2A \stonyman_0/substate_RNO_31[3]  (.A(
        \stonyman_0/state[3]_net_1 ), .B(\stonyman_0/un45lto0 ), .Y(
        \stonyman_0/substate_ns_0_a4_4_2_0[3] ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a2_1  
        (.A(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/mult1_un89_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a2_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[3]  (.A(
        \psram_cr_0/data_from_cr[3] ), .B(
        \psram_cr_0/ahb0/data_out[3]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_262 ));
    OR3 \stonyman_0/un3_counterWait_I_80  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[9] )
        , .C(\stonyman_0/DWACT_FDEC_E[12] ), .Y(
        \stonyman_0/DWACT_FDEC_E[30] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_224 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_46 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_4[1]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[1] ), .Y(
        \psram_cr_0/ahb0/operation_m[1] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_35  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[16]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[15]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[17]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[15]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[16]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[17]INT_NET ));
    NOR2 \counter_0/counterInternal_RNI5KUH[10]  (.A(
        \counter_0/counterInternal[13]_net_1 ), .B(
        \counter_0/counterInternal[10]_net_1 ), .Y(
        \counter_0/COUNT8_23_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[5]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[5] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[5] ));
    IOPAD_TRI \psram_address_pad[18]/U0/U0  (.D(
        \psram_address_pad[18]/U0/NET1 ), .E(
        \psram_address_pad[18]/U0/NET2 ), .PAD(psram_address[18]));
    NOR3C \stonyman_0/substate_i_RNO_4[0]  (.A(\stonyman_0/N_121 ), .B(
        \stonyman_0/N_122 ), .C(
        \stonyman_0/substate_ns_i_0_a2_4_0_a2_0[0] ), .Y(
        \stonyman_0/N_1599 ));
    AND3 \FIFO_PIXEL_0/AND3_6  (.A(\FIFO_PIXEL_0/XNOR2_14_Y ), .B(
        \FIFO_PIXEL_0/XNOR2_24_Y ), .C(\FIFO_PIXEL_0/XNOR2_10_Y ), .Y(
        \FIFO_PIXEL_0/AND3_6_Y ));
    DFN1E1 \counter_0/COUNT[12]  (.D(\counter_0/COUNT_n12 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[12] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[9]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[9] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_178 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_9  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[9] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[9] ), .Y(\FIFO_PIXEL_0/XNOR2_9_Y ));
    OA1A \stonyman_0/substate_RNIEBOT[12]  (.A(\stonyman_0/N_1386_1 ), 
        .B(\stonyman_0/substate[12]_net_1 ), .C(
        \stonyman_0/un1_state_18_3_tz ), .Y(
        \stonyman_0/un1_state_18_3 ));
    NOR2B \stonyman_0/resv_RNO  (.A(\stonyman_0/N_764 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_54 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[4] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[4]_net_1 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNI4NLG2[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_17 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_16 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_22 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_26 ));
    NOR3B \adc081s101_0/cs_RNIS37J  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \adc081s101_0/cs_1_sqmuxa_1 ), .C(\adc081s101_0/N_42 ), .Y(
        \adc081s101_0/cs_1_sqmuxa ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[16]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/dt_rw ), .Y(
        \psram_cr_0/ahb0/N_58 ));
    NOR2B \stonyman_0/substate_RNO_0[13]  (.A(
        \stonyman_0/substate[8]_net_1 ), .B(\stonyman_0/N_1476_i_0 ), 
        .Y(\stonyman_0/substate_ns_0_a4_0_0[13] ));
    XNOR2 \stonyman_0/un3_counterWait_I_43  (.A(\stonyman_0/N_16_0 ), 
        .B(\stonyman_0/counterWait[15]_net_1 ), .Y(\stonyman_0/I_43 ));
    NAND3B \FIFO_PIXEL_0/NAND3B_3  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3B_3_Y ));
    NOR3B \stonyman_0/counterWait_RNO[27]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_86 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_42 ));
    AOI1 \stonyman_0/state_RNO_0[5]  (.A(\stonyman_0/state42 ), .B(
        \stonyman_0/state[4]_net_1 ), .C(\stonyman_0/state[5]_net_1 ), 
        .Y(\stonyman_0/N_1687 ));
    AX1C \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[7]  (.A(
        \FIFO_PIXEL_0/XOR2_53_Y ), .B(\FIFO_PIXEL_0/AO1_2_Y ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[7] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[1]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[1] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[1] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_212 )
        );
    OA1B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_2  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_178 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_170 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[18]  (.A(
        \psram_cr_0/ahb0/operation[18]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[18] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_197 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[24]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[24] ));
    OR2 \stonyman_0/state_i_RNI1OPE9[0]  (.A(\stonyman_0/N_1478 ), .B(
        \stonyman_0/N_1475 ), .Y(\stonyman_0/N_1497 ));
    DFN1E1 \counter_0/COUNT[20]  (.D(\counter_0/COUNT_n20 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[20] ));
    OA1B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNO_2  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_a3_0_0 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4_0_0 ));
    OR3B \stonyman_0/substate_RNI99UL9[9]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(
        \stonyman_0/substate[9]_net_1 ), .C(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/N_1504 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_58 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[16] ));
    NAND3 \FIFO_PIXEL_0/NAND3_0  (.A(\FIFO_PIXEL_0/MEM_WADDR[11] ), .B(
        \FIFO_PIXEL_0/MEM_WADDR[10] ), .C(\FIFO_PIXEL_0/MEM_WADDR[9] ), 
        .Y(\FIFO_PIXEL_0/NAND3_0_Y ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAC9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[6] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[6] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_687 ));
    DFN1 \stonyman_0/substate[8]  (.D(
        \stonyman_0/substate_RNO[8]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[8]_net_1 ));
    NOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_P0N_a3  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a3_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_42  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_28_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[4]  (.D(
        \stonyman_0/state_RNIOF3CC[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[4] ));
    IOPAD_TRI \psram_address_pad[1]/U0/U0  (.D(
        \psram_address_pad[1]/U0/NET1 ), .E(
        \psram_address_pad[1]/U0/NET2 ), .PAD(psram_address[1]));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI0RFQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[10] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[10] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_691 ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_14  (.A(\stonyman_0/N_4_0 ), 
        .B(\stonyman_0/cachedValue[5] ), .Y(\stonyman_0/I_14_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[8]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[2]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .B(\FIFO_PIXEL_0/AO1_1_Y ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[2] ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[2]  (.D(\FIFO_PIXEL_0/QXI[2] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[2] ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_17  (.A(\FIFO_PIXEL_0/MEM_RADDR[1] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[1] ), .Y(\FIFO_PIXEL_0/XNOR2_17_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_242 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 ));
    DFN1E1 \adc081s101_0/cntrWaitQuiet[2]  (.D(\adc081s101_0/N_27_1 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitQuiete ), .Q(
        \adc081s101_0/cntrWaitQuiet[2]_net_1 ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_P0N_0  
        (.A(\stonyman_0/ADD_9x9_fast_I1_P0N_a1 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_6 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_2 ), .Y(\stonyman_0/N126_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_49  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET ));
    MX2 \CoreAPB3_0/CAPB3llOI/PREADY_iv_i_m2  (.A(
        \stonyman_apb3_0.ioreg_ready ), .B(
        \fifo_32bit_apb3_0.ioreg_ready ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_1302 ));
    DFN1 \psram_cr_0/ahb0/operation[1]  (.D(
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[1] ));
    AO1 \stonyman_0/state_RNIVNC51[3]  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/state[3]_net_1 ), .C(\stonyman_0/N_1614 ), .Y(
        \stonyman_0/N_1512 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_82  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET ));
    AX1B \counter_0/counterInternal_RNO_0[2]  (.A(
        \counter_0/counterInternal[1]_net_1 ), .B(
        \counter_0/counterInternal[0]_net_1 ), .C(
        \counter_0/counterInternal[2]_net_1 ), .Y(\counter_0/N_438_tz )
        );
    DFN1 \psram_cr_0/ahb0/data_out[0]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[0]_net_1 ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[6]  (.A(
        \psram_cr_0/ahb0/data_out[6]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[6] ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[6]  (.D(
        \stonyman_0/state_RNIRHV0H[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[6] ));
    OA1B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_Y_3  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_2 ), .B(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_3 ), .C(
        \stonyman_0/mult1_un96_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_Y_3 ));
    NOR3A \stonyman_0/substate_RNIKL6I1[6]  (.A(\stonyman_0/N_1389 ), 
        .B(\stonyman_0/substate[5]_net_1 ), .C(
        \stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_2_2_6 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_10[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[26] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_89  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET ));
    OR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPSD76[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 ));
    IOPAD_TRI \resp_pad/U0/U0  (.D(\resp_pad/U0/NET1 ), .E(
        \resp_pad/U0/NET2 ), .PAD(resp));
    DFN1 \clkgenerator_0/clkCameraSS  (.D(\clkgenerator_0/SCLK_i_i ), 
        .CLK(FAB_CLK), .Q(\clkgenerator_0/SCLK_i ));
    DFN1 \stonyman_0/counterPixelsCaptured[10]  (.D(
        \stonyman_0/counterPixelsCaptured_8[10] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ));
    XA1A \counter_0/COUNT_RNO[7]  (.A(\counter_0_COUNT[7] ), .B(
        \counter_0/COUNT_RNI36O2[6]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_RNO[7]_net_1 ));
    NAND3A \FIFO_PIXEL_0/NAND3A_5  (.A(\FIFO_PIXEL_0/MEM_WADDR[10] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[11] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3A_5_Y ));
    NOR2A \stonyman_0/substate_RNIL1DH1[11]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(\stonyman_0/N_1486 ), .Y(
        \stonyman_0/N_1547_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[8]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[8] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[10]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] ));
    AO1A \stonyman_0/counterWait_RNO_1[4]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/N_1921 ), .C(
        \stonyman_0/counterWait_82_i_0[4] ), .Y(
        \stonyman_0/counterWait_82_i_1[4] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[30]  (.A(
        \psram_cr_0/ahb0/N_209 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_77  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[5]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[6]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[7]INT_NET ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[0] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 ));
    XA1A \counter_0/COUNT_RNO[3]  (.A(\counter_0_COUNT[3] ), .B(
        \counter_0/COUNT_RNI9151[2]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/N_10 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_4_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[4] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[4] ));
    XA1B \psram_cr_0/cr_int_i0/ac_counter_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_54 ));
    DFN1 \psram_cr_0/ahb0/data_in[13]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[13] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_FULL  (.D(
        \FIFO_TEST_COUNTER_0/FULLINT ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(FIFO_TEST_COUNTER_0_FULL));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_219 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_58  (.A(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_10[0] ), .Y(
        \stonyman_0/I_58 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[1] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[1]_net_1 ));
    AO18 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I9_Y  
        (.A(\stonyman_0/counterPixelsCaptured[7]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .C(
        \stonyman_0/N146_0 ), .Y(\stonyman_0/N150_2 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[20]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[20] ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[1]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_1304 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_60));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI4BGQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[12] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[12] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_693 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[3]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[3] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] ));
    OR3 \stonyman_0/substate_RNINRRV7[12]  (.A(\stonyman_0/N_1551 ), 
        .B(\stonyman_0/substate_ns_i_8_0_0[1] ), .C(
        \stonyman_0/N_1540 ), .Y(\stonyman_0/substate_ns_i_8_0_2[1] ));
    NOR3B \stonyman_0/substate_RNI21RI[12]  (.A(
        \stonyman_0/substate_i[0]_net_1 ), .B(\stonyman_0/N_1386_1 ), 
        .C(\stonyman_0/substate[12]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_4_2_1[1] ));
    OR3 \stonyman_0/un3_counterWait_I_66  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/counterWait[21]_net_1 ), .C(
        \stonyman_0/counterWait[22]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[33] ));
    OR3A \CoreAPB3_0/CAPB3llOI/PRDATA_8_i_o3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_1301));
    NOR3B \stonyman_0/counterWait_RNO[14]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_40 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_24 ));
    NOR3B \counter_0/COUNT_RNO[6]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \counter_0/COUNT_RNI36O2[6]_net_1 ), .C(
        \counter_0/COUNT_RNO_0[6]_net_1 ), .Y(\counter_0/N_16 ));
    DFN1 \stonyman_0/state[2]  (.D(\stonyman_0/state_RNO[2]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[2]_net_1 ));
    IOTRI_OB_EB \CS_pad/U0/U1  (.D(CS_c), .E(PLLEN_VCC), .DOUT(
        \CS_pad/U0/NET1 ), .EOUT(\CS_pad/U0/NET2 ));
    OR2B \stonyman_0/substate_RNI03C8S[17]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_71 ));
    DFN1P0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[0] ), .CLK(
        FAB_CLK), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[4]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[4]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[4] ));
    OR2 \stonyman_0/cachedPOINTER_RNILV2T[1]  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/un45lto2 )
        );
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[3]  (.A(
        \psram_cr_0/data_from_cr[3] ), .B(\psram_data_in[3] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_234 ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a0_2  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_0 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/mult1_un96_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_2 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(\psram_cr_0/data_to_cr[3] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_159 ));
    OR2A \counter_0/COUNT_RNIKOFG8[27]  (.A(\counter_0_COUNT[27] ), .B(
        \counter_0/N_69 ), .Y(\counter_0/COUNT_RNIKOFG8[27]_net_1 ));
    DFN1 \stonyman_0/state[7]  (.D(\stonyman_0/state_RNO[7]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[7]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[3]  (.A(\psram_cr_0/ahb0/N_72 )
        , .B(\psram_cr_0/ahb0/N_74 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[3] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[3] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[31]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_796 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[31]_net_1 ));
    DFN1 \counter_0/counterInternal[0]  (.D(
        \counter_0/counterInternal_n0 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[0]_net_1 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_12_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[12] ), .B(N_1301), .Y(N_12));
    OA1 \stonyman_0/substate_RNO_2[5]  (.A(\stonyman_0/counterWait8 ), 
        .B(\stonyman_0/N_1499 ), .C(\stonyman_0/substate_ns_0_a4_0[5] )
        , .Y(\stonyman_0/N_1569 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_181 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[14]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[14] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[14] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_779 ));
    AOI1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_0_2  
        (.A(\stonyman_0/ADD_9x9_fast_I1_G0N_a3_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a1_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_a1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_2 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[17]  (.A(
        \psram_address_c[17] ), .B(
        \psram_cr_0/cr_int_i0/address_5[17] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_265 ));
    AO1A \stonyman_0/incp_RNO_5  (.A(\stonyman_0/substate[6]_net_1 ), 
        .B(\stonyman_0/N_113 ), .C(\stonyman_0/N_154 ), .Y(
        \stonyman_0/un1_substate_9_sqmuxa_4_0_0 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[3]  (.A(
        \psram_address_c[3] ), .B(\psram_cr_0/cr_int_i0/address_5[3] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_251 ));
    XNOR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I16_Y  
        (.A(\stonyman_0/N150 ), .B(\stonyman_0/mult1_un103_sum[5] ), 
        .C(\stonyman_0/N146_1 ), .Y(\stonyman_0/mult1_un110_sum[6] ));
    XA1A \counter_0/COUNT_RNO[13]  (.A(\counter_0_COUNT[13] ), .B(
        \counter_0/COUNT_RNINLNG1[12]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n13 ));
    AO1 \stonyman_0/substate_RNO[13]  (.A(
        \stonyman_0/substate_ns_0_a4_0_0[13] ), .B(\stonyman_0/N_1604 )
        , .C(\stonyman_0/N_1589 ), .Y(\stonyman_0/substate_ns[13] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_213 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_182 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[0] ));
    NOR2A \counter_0/counterInternal_RNO[5]  (.A(\counter_0/N_441_tz ), 
        .B(\counter_0/COUNTe ), .Y(\counter_0/N_441_i ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[4]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_17_Y ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[4] ));
    DFN1 \psram_cr_0/cr_int_i0/address[10]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[10] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[13]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[13] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[13] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_22_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[22] ), .B(N_1301), .Y(N_1290));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[16]  (.D(N_20), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[16] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_34  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[13]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[12]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[14]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[12]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[13]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[14]INT_NET ));
    OR3 \stonyman_0/counterWait_RNI1QHM2[12]  (.A(
        \stonyman_0/counterWait8lt29_11 ), .B(
        \stonyman_0/counterWait8lt29_10 ), .C(
        \stonyman_0/counterWait8lt29_21 ), .Y(
        \stonyman_0/counterWait8lt29_25 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[12]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[12] ), .Y(
        \psram_cr_0/ahb0/operation_m[12] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[2]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[2] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[0]  (.A(\psram_cr_0/ahb0/N_243 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 ));
    XA1B \counter_0/counterInternal_RNO[21]  (.A(
        \counter_0/counterInternal[21]_net_1 ), .B(\counter_0/N_477 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[21]_net_1 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[8]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[8] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[8]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[8] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 ));
    AX1C \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[7]  (.A(
        \FIFO_PIXEL_0/XOR2_0_Y ), .B(\FIFO_PIXEL_0/AO1_9_Y ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[7] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNISQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[0] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3[1]  
        (.A(\CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[1] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_73 ));
    AND2 \stonyman_0/un1_counterPixelsCaptured_16_I_96  (.A(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_1[0] ));
    DFN1 \stonyman_0/substate[7]  (.D(
        \stonyman_0/substate_RNO[7]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[7]_net_1 ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[7]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[7] ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[0]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[0] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[0] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_1303 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[1]  (.A(\psram_cr_0/ahb0/N_244 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[3]  (.D(\FIFO_PIXEL_0/QXI[3] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[3] ));
    IOTRI_OB_EB \psram_address_pad[5]/U0/U1  (.D(\psram_address_c[5] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[5]/U0/NET1 ), .EOUT(
        \psram_address_pad[5]/U0/NET2 ));
    OR3 \stonyman_0/un3_counterWait_I_55  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/counterWait[18]_net_1 ), .Y(\stonyman_0/N_12_0 ));
    OA1A \stonyman_0/substate_RNI2NCC2[3]  (.A(\stonyman_0/N_1913 ), 
        .B(\stonyman_0/substate[3]_net_1 ), .C(
        \stonyman_0/state[12]_net_1 ), .Y(
        \stonyman_0/counterWait_1_sqmuxa_3 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXD_0  (.D(
        \MSS_CORE2_0/MACTXD_net_0[0] ), .E(PLLEN_VCC), .PAD(MAC_TXD[0])
        );
    NOR3B \stonyman_0/substate_ns_0_0_0_RNO_0[2]  (.A(
        \stonyman_0/substate_ns_0_0_a2_3_0[2] ), .B(
        \stonyman_0/state[8]_net_1 ), .C(\stonyman_0/un46lto2 ), .Y(
        \stonyman_0/N_93 ));
    NOR3C \counter_0/COUNT_RNI507C2[6]  (.A(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_2 ), .B(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_1 ), .C(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_6 ), .Y(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_7 ));
    NOR2 \stonyman_0/substate_RNI62KT[4]  (.A(
        \stonyman_0/substate[8]_net_1 ), .B(
        \stonyman_0/substate[4]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_0_a4_4_2[0] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[2] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_171 ));
    AO1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I9_Y_0  
        (.A(\stonyman_0/counterPixelsCaptured[6]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_14 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_Y_0 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIV80MA[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ));
    DFN1 \psram_cr_0/cr_int_i0/start  (.D(
        \psram_cr_0/cr_int_i0/start_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/start_net_1 ));
    NOR3A \stonyman_0/incp_RNO_8  (.A(
        \stonyman_0/un1_substate_9_sqmuxa_4_0_a2_2_0 ), .B(
        \stonyman_0/N_1486 ), .C(\stonyman_0/N_107 ), .Y(
        \stonyman_0/N_154 ));
    MX2 \stonyman_0/incv_RNO_0  (.A(\stonyman_0/substate[3]_net_1 ), 
        .B(incv_c), .S(\stonyman_0/un1_substate_8_sqmuxa_3 ), .Y(
        \stonyman_0/N_766 ));
    XNOR2 \stonyman_0/un3_counterWait_I_89  (.A(\stonyman_0/N_3 ), .B(
        \stonyman_0/counterWait[28]_net_1 ), .Y(\stonyman_0/I_89 ));
    AX1C \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[5]  (.A(
        \FIFO_TEST_COUNTER_0/XOR2_7_Y ), .B(
        \FIFO_TEST_COUNTER_0/AO1_17_Y ), .C(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[5] ));
    XA1A \FIFO_PIXEL_0/AND2_17  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[10] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[10] ), .C(\FIFO_PIXEL_0/XNOR2_4_Y ), 
        .Y(\FIFO_PIXEL_0/AND2_17_Y ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNIVNHMC[3]  (.A(
        \stonyman_0/substate_tr13_5_8 ), .B(
        \stonyman_0/cachedValue[3] ), .C(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/substate_tr13_5_10 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI5QS14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_697 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a3_1  
        (.A(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/mult1_un89_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_a0_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIVQ8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[3] ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[0]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] ), .B(
        \FIFO_TEST_COUNTER_0/MEMORYRE ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[0] ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_14  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[3] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[3] ), .Y(\FIFO_PIXEL_0/XNOR2_14_Y ));
    BUFF \FIFO_PIXEL_0/BUFF_3  (.A(\FIFO_PIXEL_0/DFN1E1C0_0_Q ), .Y(
        \FIFO_PIXEL_0/BUFF_3_Y ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_29_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[29] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[29] ));
    IOPAD_BI \psram_data_pad[7]/U0/U0  (.D(\psram_data_pad[7]/U0/NET1 )
        , .E(\psram_data_pad[7]/U0/NET2 ), .Y(
        \psram_data_pad[7]/U0/NET3 ), .PAD(psram_data[7]));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[6]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[6]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[6] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[26]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_791 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[26]_net_1 ));
    AOI1B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_a5  
        (.A(\stonyman_0/ADD_9x9_fast_I1_G0N_N_19 ), .B(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_a5_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_21 ));
    XNOR2 \stonyman_0/un3_counterWait_I_74  (.A(\stonyman_0/N_7_1 ), 
        .B(\stonyman_0/counterWait[24]_net_1 ), .Y(\stonyman_0/I_74 ));
    NOR3 \psram_cr_0/cr_int_i0/op_counter_RNI28G7_0[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ));
    XA1A \counter_0/COUNT_RNO[24]  (.A(\counter_0_COUNT[24] ), .B(
        \counter_0/N_66 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n24 ));
    DFN1 \psram_cr_0/ahb0/operation[5]  (.D(
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[5] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[17]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[17] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_41  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[14]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[13]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[15]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[13]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[14]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[15]INT_NET ));
    OR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI7D8Q[2]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .B(
        CoreAPB3_0_APBmslave0_0_PWRITE), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 ));
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO_0[3]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_151 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_166 ));
    AX1B \stonyman_0/un3_counterWait_I_35  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[6] )
        , .C(\stonyman_0/counterWait[12]_net_1 ), .Y(\stonyman_0/I_35 )
        );
    OR3B \counter_0/state_RNO[0]  (.A(\counter_0/N_20 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\counter_0/COUNT8 ), .Y(
        \counter_0/state_nss[0] ));
    NOR2A \counter_0/COUNT_RNO[0]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \counter_0_COUNT[0] ), .Y(\counter_0/N_517 ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_51  (.A(
        \stonyman_0/N_715 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \stonyman_0/I_51 ));
    DFN1E1 \counter_0/COUNT[29]  (.D(\counter_0/COUNT_n29 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[29] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_81  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[23]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[23] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] ));
    IOTRI_OB_EB \psram_address_pad[22]/U0/U1  (.D(
        \psram_address_c[22] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[22]/U0/NET1 ), .EOUT(
        \psram_address_pad[22]/U0/NET2 ));
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_RNO_1  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_171 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[4]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[4] ));
    DFN1 \psram_cr_0/ahb0/operation[0]  (.D(
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[0] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[11]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[11] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[11] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[9]  (.A(\psram_cr_0/ahb0/N_252 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[23]  (.D(N_1291), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[23] ));
    OR2A \counter_0/counterInternal_RNI71PE8[17]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\counter_0/COUNT8 ), .Y(
        \counter_0/COUNTe ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a5  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a5_0 ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/mult1_un96_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a5 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 ));
    OR3 \stonyman_0/substate_i_RNO_1[0]  (.A(\stonyman_0/N_1536 ), .B(
        \stonyman_0/substate_ns_i_0_0[0] ), .C(\stonyman_0/N_1539 ), 
        .Y(\stonyman_0/substate_ns_i_0_2[0] ));
    IOPAD_TRI \rs485_de_pad/U0/U0  (.D(\rs485_de_pad/U0/NET1 ), .E(
        \rs485_de_pad/U0/NET2 ), .PAD(rs485_de));
    OR2 \counter_0/counterInternal_RNIHIOH5[17]  (.A(\counter_0/N_470 )
        , .B(\counter_0/counterInternal[17]_net_1 ), .Y(
        \counter_0/N_471 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[20]  (.D(N_1288), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[20] ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_17  (.A(\stonyman_0/N_3_0 ), 
        .B(\stonyman_0/cachedValue[6] ), .Y(\stonyman_0/I_17_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_3  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[20]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[19]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[21]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[19]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[20]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[21]INT_NET ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[1]  (.A(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[1] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_170 ));
    AX1D 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I16_Y  
        (.A(\stonyman_0/N146 ), .B(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ), .C(
        \stonyman_0/mult1_un110_sum_1[5] ), .Y(\stonyman_0/N_719 ));
    IOTRI_OB_EB \psram_nwe_pad/U0/U1  (.D(psram_nwe_c), .E(PLLEN_VCC), 
        .DOUT(\psram_nwe_pad/U0/NET1 ), .EOUT(\psram_nwe_pad/U0/NET2 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[2]  (.D(
        \stonyman_0/state_RNIPD7N7[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[2] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[2]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[2] ));
    DFN1 \stonyman_0/cachedPOINTER[1]  (.D(\stonyman_0/N_29_0 ), .CLK(
        SCLK_c), .Q(\stonyman_0/cachedPOINTER[1]_net_1 ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un68_sum_ADD_9x9_fast_I17_Y_3  
        (.A(\stonyman_0/ADD_9x9_fast_I17_Y_0_0 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_3_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I17_Y_a2 ), .Y(
        \stonyman_0/mult1_un68_sum[7] ));
    XA1A \counter_0/COUNT_RNO[19]  (.A(\counter_0_COUNT[19] ), .B(
        \counter_0/COUNT_RNIU97A4[18]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n19 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_242 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 ));
    NOR3C \stonyman_0/substate_RNO_9[3]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/substate_tr32_1_1 ));
    NOR3B \stonyman_0/state_RNI5FANB[4]  (.A(
        \stonyman_0/substate_tr13_4_3_a2_0 ), .B(
        \stonyman_0/cachedValue[2] ), .C(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/substate_tr13_4_3_a2_2 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[23]  (.A(
        \psram_cr_0/ahb0/N_202 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 ));
    NOR2 \stonyman_0/substate_i_RNO_3[0]  (.A(\stonyman_0/N_1489 ), .B(
        \stonyman_0/N_1482 ), .Y(
        \stonyman_0/substate_ns_i_0_a4_2_0[0] ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[3]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_80 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_64));
    AO1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I9_Y  
        (.A(\stonyman_0/N126 ), .B(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .C(
        \stonyman_0/N125_0 ), .Y(\stonyman_0/N150_0 ));
    NOR2 \stonyman_0/substate_RNII4HB[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(
        \stonyman_0/substate[14]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_2_2_1 ));
    IOTRI_OB_EB \psram_address_pad[2]/U0/U1  (.D(\psram_address_c[2] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[2]/U0/NET1 ), .EOUT(
        \psram_address_pad[2]/U0/NET2 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI0E204[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_8 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_7 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTl00I_2 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I ));
    DFN1 \psram_cr_0/ahb0/psram_addr[0]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[0] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[1] ));
    NOR2B \FIFO_PIXEL_0/AO1_9  (.A(\FIFO_PIXEL_0/AND2_59_Y ), .B(
        \FIFO_PIXEL_0/AO1_25_Y ), .Y(\FIFO_PIXEL_0/AO1_9_Y ));
    XOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_m3  
        (.A(\stonyman_0/N148 ), .B(\stonyman_0/ADD_9x9_fast_I17_Y_2 ), 
        .Y(\stonyman_0/ADD_9x9_fast_I1_G0N_N_19 ));
    IOIN_IB \MISO_pad/U0/U1  (.YIN(\MISO_pad/U0/NET1 ), .Y(MISO_c));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[25]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[25] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[25] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_790 ));
    OR2 \stonyman_0/state_RNI8E4B3[4]  (.A(
        \stonyman_0/un1_state_18_3_0 ), .B(
        \stonyman_0/un1_state_18_2_0 ), .Y(\stonyman_0/un1_state_18 ));
    OA1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I11_Y_1_0  
        (.A(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/mult1_un89_sum[6] ), .C(
        \stonyman_0/ADD_9x9_fast_I11_Y_a0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_1_0 ));
    OR2 \CoreAPB3_0/CAPB3llOI/PREADY_iv_i_o3_1  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[10] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[11] ), .Y(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_8_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[8] ), .B(N_1301), .Y(N_4));
    NOR2B \stonyman_0/un1_counterPixelsCaptured_16_I_87  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_1[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11[0] ));
    XA1 \counter_0/COUNT_RNO[1]  (.A(\counter_0_COUNT[0] ), .B(
        \counter_0_COUNT[1] ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/N_6 ));
    NOR2B \FIFO_PIXEL_0/AND2_59  (.A(\FIFO_PIXEL_0/MEM_WADDR[5] ), .B(
        \FIFO_PIXEL_0/XOR2_62_Y ), .Y(\FIFO_PIXEL_0/AND2_59_Y ));
    DFN1 \psram_cr_0/ahb0/operation[2]  (.D(
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[2] ));
    NOR3A \stonyman_0/state_RNIQNJE[11]  (.A(
        \stonyman_0/substate_tr13_5_1 ), .B(
        \stonyman_0/state[8]_net_1 ), .C(\stonyman_0/state[11]_net_1 ), 
        .Y(\stonyman_0/substate_tr13_5_5 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_2  (.A(\FIFO_PIXEL_0/MEM_RADDR[8] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[8] ), .Y(\FIFO_PIXEL_0/XNOR2_2_Y ));
    DFN1 \stonyman_0/resp  (.D(\stonyman_0/N_56 ), .CLK(SCLK_c), .Q(
        resp_c));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_7_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[23]  (.A(
        \psram_cr_0/ahb0/operation[23]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_202 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[4]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[4] ), .Y(
        \psram_cr_0/ahb0/operation_m[4] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[9]  (.A(
        \psram_cr_0/data_from_cr[9] ), .B(
        \psram_cr_0/ahb0/data_out[9]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_268 ));
    NOR3B \stonyman_0/counterPixelsCaptured_RNI0NBJ1[7]  (.A(
        \stonyman_0/state103_1 ), .B(\stonyman_0/state103_0 ), .C(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/state103_6 ));
    OR2B \stonyman_0/state_RNI5PA5[6]  (.A(
        stonyman_apb3_0_START_CAPTURE), .B(\stonyman_0/state[6]_net_1 )
        , .Y(\stonyman_0/N_1490 ));
    XA1C \adc081s101_0/cntrWaitQuiet_RNO[1]  (.A(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ), .C(
        \adc081s101_0/un1_reset_i_1 ), .Y(\adc081s101_0/N_137 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I11_Y_4_tz_0  
        (.A(\stonyman_0/counterPixelsCaptured[7]_net_1 ), .B(
        \stonyman_0/mult1_un89_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_4_tz_0 ));
    OR2 \counter_0/counterInternal_RNIJVR44[12]  (.A(\counter_0/N_27 ), 
        .B(\counter_0/counterInternal[12]_net_1 ), .Y(\counter_0/N_28 )
        );
    IOPAD_BI \psram_data_pad[11]/U0/U0  (.D(
        \psram_data_pad[11]/U0/NET1 ), .E(\psram_data_pad[11]/U0/NET2 )
        , .Y(\psram_data_pad[11]/U0/NET3 ), .PAD(psram_data[11]));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/operation[25]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[25] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_204 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_15_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[15] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[15] ));
    MX2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I16_Y_1035_m5  
        (.A(\stonyman_0/ADD_9x9_fast_I16_Y_1035_N_8 ), .B(
        \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_9 ), .S(
        \stonyman_0/mult1_un75_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I16_Y_1035_N_6 ));
    NOR2B \FIFO_PIXEL_0/AO1_14  (.A(\FIFO_PIXEL_0/MEM_RADDR[1] ), .B(
        \FIFO_PIXEL_0/AND2_61_Y ), .Y(\FIFO_PIXEL_0/AO1_14_Y ));
    OR2 \stonyman_0/un3_counterWait_I_6  (.A(
        \stonyman_0/counterWait[1]_net_1 ), .B(
        \stonyman_0/counterWait[0]_net_1 ), .Y(\stonyman_0/N_29 ));
    DFN1 \psram_cr_0/ahb0/operation[19]  (.D(
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[19]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_5  (.A(\FIFO_PIXEL_0/MEM_RADDR[5] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[5] ), .Y(\FIFO_PIXEL_0/XNOR2_5_Y ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_24[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[6] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[7]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[7] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[3] ));
    NOR3B \stonyman_0/state_RNI0T827[1]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_2_1 ), .B(
        \stonyman_0/counterWait_0_sqmuxa_3_2 ), .C(\stonyman_0/N_1383 )
        , .Y(\stonyman_0/counterWait_0_sqmuxa_2 ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[6]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[6] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[6] ));
    NOR3B \stonyman_0/state_RNIRCPC5[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_5_0_0 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIRCPC5[6]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[13]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[13] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[13]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[13] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[5]  (.A(
        \psram_cr_0/data_from_cr[5] ), .B(
        \psram_cr_0/ahb0/data_out[5]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_264 ));
    AOI1 \stonyman_0/substate_RNO_0[16]  (.A(
        \stonyman_0/substate[15]_net_1 ), .B(
        \stonyman_0/state[10]_net_1 ), .C(
        \stonyman_0/substate[16]_net_1 ), .Y(\stonyman_0/N_183 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_95  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ));
    DFN1 \counter_0/counterInternal[11]  (.D(
        \counter_0/counterInternal_RNO[11]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[11]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(\psram_cr_0/data_to_cr[2] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_158 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[18]  (.A(
        \psram_address_c[18] ), .B(
        \psram_cr_0/cr_int_i0/address_5[18] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_266 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[3]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        );
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_82 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]_net_1 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_9_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[9] ), .B(N_1301), .Y(N_6));
    NOR3C \stonyman_0/state_RNI0U0P4[2]  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/state[2]_net_1 ), 
        .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/substate_ns_i_a4_9_2_i_a2_1_1[1] ));
    AOI1D \stonyman_0/writeEnable_2_sqmuxa  (.A(stonyman_0_writeEnable)
        , .B(\stonyman_0/N_1662 ), .C(
        \stonyman_0/writeEnable_2_sqmuxa_0_net_1 ), .Y(
        \stonyman_0/writeEnable_2_sqmuxa_net_1 ));
    DFN1 \stonyman_0/inphi  (.D(\stonyman_0/N_52 ), .CLK(SCLK_c), .Q(
        inphi_c));
    XA1B \counter_0/counterInternal_RNO[8]  (.A(\counter_0/COUNT8_22 ), 
        .B(\counter_0/counterInternal[8]_net_1 ), .C(
        \counter_0/COUNTe ), .Y(\counter_0/N_444_i ));
    NOR3A \stonyman_0/counterPixelsCaptured_RNI2OS11[15]  (.A(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/d_N_16_0 ));
    IOPAD_BI \psram_data_pad[8]/U0/U0  (.D(\psram_data_pad[8]/U0/NET1 )
        , .E(\psram_data_pad[8]/U0/NET2 ), .Y(
        \psram_data_pad[8]/U0/NET3 ), .PAD(psram_data[8]));
    OR2A \counter_0/COUNT_RNI1CVM5[21]  (.A(\counter_0_COUNT[21] ), .B(
        \counter_0/COUNT_RNICV185[20]_net_1 ), .Y(\counter_0/N_64 ));
    DFN1 \stonyman_0/substate[11]  (.D(
        \stonyman_0/substate_RNO[11]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[11]_net_1 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[4] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_215 ));
    DFN1 \psram_cr_0/ahb0/operation[27]  (.D(
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[27]_net_1 ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52_1[12]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ));
    IOPAD_TRI \incp_pad/U0/U0  (.D(\incp_pad/U0/NET1 ), .E(
        \incp_pad/U0/NET2 ), .PAD(incp));
    DFN1 \psram_cr_0/ahb0/haddr_reg[7]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ));
    XA1A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_a5_0  
        (.A(\stonyman_0/mult1_un89_sum[5] ), .B(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_16 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_m13_i_a5_0_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_22 ));
    DFN1 \psram_cr_0/ahb0/data_in[8]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[8] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[11] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[11]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_78 ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXD_1  (.PAD(MAC_RXD[1]), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXD_1_Y ));
    OA1C \counter_0/state_RNO_1[1]  (.A(\counter_0/state[1]_net_1 ), 
        .B(\counter_0/N_29_22 ), .C(\counter_0/N_10_0 ), .Y(
        \counter_0/N_29_0 ));
    DFN1E1 \counter_0/COUNT[1]  (.D(\counter_0/N_6 ), .CLK(SCLK_c), .E(
        \counter_0/COUNTe ), .Q(\counter_0_COUNT[1] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIK3IQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[29] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[29] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_710 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl  (.D(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[12]  (.D(N_12), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[12] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[2] ), .Y(
        \psram_cr_0/ahb0/operation_m[2] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_6[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[30] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[4] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] ));
    OR2A \counter_0/COUNT_RNIOI4P4[19]  (.A(\counter_0_COUNT[19] ), .B(
        \counter_0/COUNT_RNIU97A4[18]_net_1 ), .Y(\counter_0/N_62 ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[4]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[4] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[4] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_81 ));
    MX2C \stonyman_0/substate_i_RNO_11[0]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(\stonyman_0/state9 ), .S(
        \stonyman_0/state[1]_net_1 ), .Y(\stonyman_0/N_1516 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[18]  (.A(
        \psram_cr_0/cr_int_i0/N_266 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_257 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 ));
    NAND3B \FIFO_PIXEL_0/NAND3B_5  (.A(\FIFO_PIXEL_0/MEM_WADDR[11] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[9] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[10] ), .Y(\FIFO_PIXEL_0/NAND3B_5_Y ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_o3[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ));
    OR2A \psram_cr_0/cr_int_i0/enable_RNIDN3J2  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_111 ), .Y(\psram_cr_0/cr_int_i0/N_348 )
        );
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[11]  (.D(N_10), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[11] ));
    DFN1 \psram_cr_0/cr_int_i0/nbyte_en_1[0]  (.D(
        \psram_cr_0/cr_int_i0/N_99 ), .CLK(FAB_CLK), .Q(
        psram_ncs0_c_c_c));
    NOR3B \psram_cr_0/ahb0/hwrite_reg_RNIS5013  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(\psram_cr_0/ahb0/N_85 ), .C(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .Y(\psram_cr_0/ahb0/N_56 )
        );
    NOR3C \stonyman_0/substate_RNINCGOA[5]  (.A(
        \stonyman_0/substate[5]_net_1 ), .B(\stonyman_0/N_108 ), .C(
        \stonyman_0/cachedPOINTER_23_0_i_a2_0 ), .Y(\stonyman_0/N_197 )
        );
    OA1A \stonyman_0/state_RNIIHS0L[8]  (.A(\stonyman_0/N_1914 ), .B(
        \stonyman_0/resv_1_sqmuxa ), .C(\stonyman_0/state[8]_net_1 ), 
        .Y(\stonyman_0/counterWait_4_sqmuxa ));
    NAND3B \FIFO_PIXEL_0/NAND3B_0  (.A(\FIFO_PIXEL_0/MEM_WADDR[9] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[10] ), .C(
        \FIFO_PIXEL_0/MEM_WADDR[11] ), .Y(\FIFO_PIXEL_0/NAND3B_0_Y ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_5_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[5] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[5] ));
    XNOR2 \stonyman_0/un3_counterWait_I_77  (.A(\stonyman_0/N_6 ), .B(
        \stonyman_0/counterWait[25]_net_1 ), .Y(\stonyman_0/I_77 ));
    DFN1 \psram_cr_0/ahb0/operation[23]  (.D(
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[23]_net_1 ));
    OR2A \counter_0/WRITEEN_RNO_1  (.A(\counter_0/state[0]_net_1 ), .B(
        \counter_0/COUNT8 ), .Y(\counter_0/un1_COUNT8 ));
    OR3 \stonyman_0/un3_counterWait_I_45  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(
        \stonyman_0/DWACT_FDEC_E[10] ), .C(
        \stonyman_0/counterWait[15]_net_1 ), .Y(\stonyman_0/N_15 ));
    NOR3B \stonyman_0/counterWait_RNO[24]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_74 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_36 ));
    NOR3A \stonyman_0/substate_RNO_0[4]  (.A(
        \stonyman_0/substate[4]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(\stonyman_0/N_1482 ), .Y(
        \stonyman_0/N_1565 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[18]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[18] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[15]  (.D(N_18), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[15] ));
    NOR3C \stonyman_0/substate_RNIJQDJ5[17]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(
        \stonyman_0/substate[17]_net_1 ), .C(\stonyman_0/state103 ), 
        .Y(\stonyman_0/N_1037_i_i_a2_1 ));
    DFN1 \stonyman_0/substate[16]  (.D(
        \stonyman_0/substate_RNO[16]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[16]_net_1 ));
    DFN1 \stonyman_0/incv  (.D(\stonyman_0/N_50 ), .CLK(SCLK_c), .Q(
        incv_c));
    AX1C \stonyman_0/un1_cachedPOINTER_3_I_14  (.A(
        \stonyman_0/DWACT_ADD_CI_0_TMP_0[0] ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .C(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/I_14 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNINTNH3_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[7] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ));
    NOR2 \stonyman_0/substate_RNI3MJT[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_1617 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[15]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[15] ));
    IOTRI_OB_EB \incv_pad/U0/U1  (.D(incv_c), .E(PLLEN_VCC), .DOUT(
        \incv_pad/U0/NET1 ), .EOUT(\incv_pad/U0/NET2 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a1_2  
        (.A(\stonyman_0/ADD_9x9_fast_I5_un1_Y_a1_1 ), .B(
        \stonyman_0/mult1_un89_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a1_2 ));
    NOR2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a2_1[0]  
        (.A(\CoreAPB3_0_APBmslave1_PADDR[6] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[5] ), .Y(
        \stonyman_apb3_0.stonyman_ioreg_0.dataout_6_iv_0_a3_1_0[0] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[14]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_779 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[14]_net_1 ));
    BUFF \FIFO_PIXEL_0/XOR2_19  (.A(\FIFO_PIXEL_0/MEM_WADDR[8] ), .Y(
        \FIFO_PIXEL_0/XOR2_19_Y ));
    OA1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_0_0  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_N_2 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_0 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_7[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[29] ));
    MX2 \FIFO_PIXEL_0/MX2_QXI[0]  (.A(\FIFO_PIXEL_0/MX2_18_Y ), .B(
        \FIFO_PIXEL_0/MX2_101_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[0] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIMTC2D_0  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m )
        );
    DFN1E1 \stonyman_0/counterWait[25]  (.D(\stonyman_0/N_38 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[25]_net_1 ));
    XO1 \psram_cr_0/cr_int_i0/op_counter_RNI28G7_1[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(\psram_cr_0/cr_int_i0/N_77 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[7]  (.A(\psram_cr_0/ahb0/N_250 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 ));
    DFN1 \counter_0/counterInternal[21]  (.D(
        \counter_0/counterInternal_RNO[21]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[21]_net_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[14]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[14] ), .Y(
        \psram_cr_0/ahb0/operation_m[14] ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_a1  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_a1_0 ));
    OR2 \stonyman_0/substate_RNIJQDJ5_0[17]  (.A(\stonyman_0/N_1662 ), 
        .B(\stonyman_0/state103 ), .Y(\stonyman_0/N_1664 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_15  (.A(\FIFO_PIXEL_0/MEM_RADDR[6] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[6] ), .Y(\FIFO_PIXEL_0/XNOR2_15_Y ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_21[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[9] ));
    XA1A \counter_0/COUNT_RNO[10]  (.A(\counter_0_COUNT[10] ), .B(
        \counter_0/COUNT_RNI1SV3[9]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n10 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_215 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[7]  (.A(
        \psram_address_c[7] ), .B(\psram_cr_0/cr_int_i0/address_5[7] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_255 ));
    NOR3C \psram_cr_0/ahb0/operation_sel_RNO  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/ahb0/fsm_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa ));
    OR2A \counter_0/COUNT_RNIDOCC3[16]  (.A(\counter_0_COUNT[16] ), .B(
        \counter_0/N_58 ), .Y(\counter_0/COUNT_RNIDOCC3[16]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI0970A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[6] ));
    XA1C \psram_cr_0/cr_int_i0/ac_counter_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_82 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_58 ));
    DFN1 \psram_cr_0/cr_int_i0/address[18]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[18] ));
    NOR2A \counter_0/counterInternal_RNI2EKG7[24]  (.A(
        \counter_0/N_485 ), .B(\counter_0/counterInternal[24]_net_1 ), 
        .Y(\counter_0/N_488 ));
    OA1 \stonyman_0/substate_RNO_18[3]  (.A(\stonyman_0/N_1499 ), .B(
        \stonyman_0/N_1620 ), .C(\stonyman_0/substate_ns_0_a4_0[3] ), 
        .Y(\stonyman_0/N_1557 ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[7]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_84 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_1298));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[20]  (.A(
        \psram_cr_0/ahb0/N_231 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 ));
    OR2A \psram_cr_0/cr_int_i0/noe0_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/cr_int_i0/N_229 ), .Y(
        \psram_cr_0/cr_int_i0/N_100 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[9] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_252 ));
    DFN1P0 \FIFO_TEST_COUNTER_0/DFN1P0_EMPTY  (.D(
        \FIFO_TEST_COUNTER_0/EMPTYINT ), .CLK(SCLK_c), .PRE(
        MSS_CORE2_0_M2F_RESET_N), .Q(FIFO_TEST_COUNTER_0_EMPTY));
    DFN1 \stonyman_0/cachedValue_tile_WADDR_REG1[2]  (.D(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/WADDR_REG1[2] ));
    XNOR2 \stonyman_0/un3_counterWait_I_86  (.A(\stonyman_0/N_4 ), .B(
        \stonyman_0/counterWait[27]_net_1 ), .Y(\stonyman_0/I_86 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_215 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 ));
    IOPAD_BI \psram_data_pad[9]/U0/U0  (.D(\psram_data_pad[9]/U0/NET1 )
        , .E(\psram_data_pad[9]/U0/NET2 ), .Y(
        \psram_data_pad[9]/U0/NET3 ), .PAD(psram_data[9]));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_231 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 ));
    OR2 \adc081s101_0/cntrWaitLeading_RNO[1]  (.A(\adc081s101_0/I_10 ), 
        .B(\adc081s101_0/cs_1_sqmuxa ), .Y(
        \adc081s101_0/cntrWaitLeading_6[1] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_26_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[26] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[26] ));
    MX2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_m6  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_N_4 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_6 ), .S(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_7 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_15_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[15] ), .B(N_1301), .Y(N_18));
    NOR3B \stonyman_0/counterWait_RNO[18]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_53_0 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_30 ));
    MX2C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I11_Y_m8  
        (.A(\stonyman_0/ADD_9x9_fast_I11_Y_N_8 ), .B(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_2 ), .S(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_N_9 ));
    OR2 \stonyman_0/state_RNINP8A9[10]  (.A(\stonyman_0/N_1473 ), .B(
        \stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1478 ));
    IOPAD_TRI \psram_address_pad[5]/U0/U0  (.D(
        \psram_address_pad[5]/U0/NET1 ), .E(
        \psram_address_pad[5]/U0/NET2 ), .PAD(psram_address[5]));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNITHR14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_702 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] ));
    NOR2 \fifo_32bit_apb3_0/bus_read_enable_0_a3  (.A(
        CoreAPB3_0_APBmslave0_0_PWRITE), .B(N_1301), .Y(
        \fifo_32bit_apb3_0/bus_read_enable ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_212 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I9_un1_Y_a0_0  
        (.A(\stonyman_0/counterPixelsCaptured[5]_net_1 ), .B(
        \stonyman_0/mult1_un96_sum[5] ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a0_0 ));
    IOPAD_TRI \SCLK_pad/U0/U0  (.D(\SCLK_pad/U0/NET1 ), .E(
        \SCLK_pad/U0/NET2 ), .PAD(SCLK));
    MX2 \FIFO_PIXEL_0/MX2_QXI[3]  (.A(\FIFO_PIXEL_0/MX2_26_Y ), .B(
        \FIFO_PIXEL_0/MX2_42_Y ), .S(\FIFO_PIXEL_0/DFN1E1C0_2_Q ), .Y(
        \FIFO_PIXEL_0/QXI[3] ));
    NOR3C \stonyman_0/substate_RNO_1[13]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/N_1509 ), .Y(\stonyman_0/N_1589 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[8]  (.A(
        \psram_cr_0/data_from_cr[8] ), .B(
        \psram_cr_0/ahb0/data_out[8]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_267 ));
    NOR3C \FIFO_PIXEL_0/AND2_56  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), .B(
        \FIFO_PIXEL_0/XOR2_50_Y ), .C(\FIFO_PIXEL_0/AND2_48_Y ), .Y(
        \FIFO_PIXEL_0/AND2_56_Y ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[19] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_230 ));
    XA1B \counter_0/counterInternal_RNO[25]  (.A(
        \counter_0/counterInternal[25]_net_1 ), .B(\counter_0/N_488 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[25]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[10]  (.A(
        \psram_cr_0/cr_int_i0/N_166 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[10] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_3[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[11] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_25_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[25] ), .B(N_1301), .Y(N_1293));
    NOR2 \stonyman_0/substate_RNIQ0PH9[6]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/cachedPOINTER_23_0_i_a2_0 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_28_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[28] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[28] ));
    DFN1 \psram_cr_0/ahb0/data_in[6]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[6] ));
    NOR3 \stonyman_0/substate_RNO[10]  (.A(\stonyman_0/N_1581 ), .B(
        \stonyman_0/N_1583 ), .C(\stonyman_0/substate_ns_i_0[10] ), .Y(
        \stonyman_0/substate_RNO[10]_net_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_177 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIS0EA2[0]  (.A(
        \stonyman_0/DOUT_TMP[0] ), .B(\stonyman_0/DIN_REG1[0] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[0] ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_5  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_1_Y ), .BLKB(\FIFO_PIXEL_0/OR2_2_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_5_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_5_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB0 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[19]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_784 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[19]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_94  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNIINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0BCLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNIINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBALERTNOINT_NET ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I_RNI2VJJ[1]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] ));
    OA1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_0_0  
        (.A(\stonyman_0/counterPixelsCaptured[14]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[11]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_0_0_0 ));
    OR2A \FIFO_PIXEL_0/OR2A_14  (.A(\FIFO_PIXEL_0/MEMRENEG ), .B(
        \FIFO_PIXEL_0/NAND3B_1_Y ), .Y(\FIFO_PIXEL_0/OR2A_14_Y ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_261 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_53  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB5 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB5 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_53_Y ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNIDGTBB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[10] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[10] ));
    NOR2B \psram_cr_0/ahb0/hwrite_reg_RNO  (.A(\psram_cr_0/ahb0/N_168 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_2  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[5] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_2_Y ));
    NOR3B \stonyman_0/state_RNO_1[1]  (.A(\stonyman_0/state9 ), .B(
        \stonyman_0/state_i[0]_net_1 ), .C(\stonyman_0/N_1659 ), .Y(
        \stonyman_0/N_1678 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[26]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[26] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] ));
    AO1 \stonyman_0/counterWait_RNO[7]  (.A(\stonyman_0/I_20 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[7] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[30]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_795 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[30]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[0]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[0] ));
    NAND3A \FIFO_PIXEL_0/NAND3A_1  (.A(\FIFO_PIXEL_0/MEM_RADDR[10] ), 
        .B(\FIFO_PIXEL_0/MEM_RADDR[11] ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[9] ), .Y(\FIFO_PIXEL_0/NAND3A_1_Y ));
    AO1B \stonyman_0/state_RNO_1[5]  (.A(\stonyman_0/N_1658 ), .B(
        \stonyman_0/state[4]_net_1 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/state_ns_i_0[5] ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_3_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[3] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[3] ));
    OA1B \stonyman_0/substate_RNI5HTFH1[12]  (.A(\stonyman_0/N_1482 ), 
        .B(\stonyman_0/substate_ns_i_7_tz_0[1] ), .C(
        \stonyman_0/N_100 ), .Y(\stonyman_0/substate_ns_i_7[1] ));
    NOR3A \stonyman_0/state_RNI5LI61[12]  (.A(\stonyman_0/N_141_1 ), 
        .B(\stonyman_0/N_1484 ), .C(\stonyman_0/N_108 ), .Y(
        \stonyman_0/N_141 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[15]  (.A(
        \psram_cr_0/cr_int_i0/N_171 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[15] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_2_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGC9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[9] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[9] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_690 ));
    DFN1 \psram_cr_0/ahb0/data_out[14]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[14]_net_1 ));
    IOBI_IB_OB_EB \psram_data_pad[15]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[15]/U0/NET3 ), .DOUT(
        \psram_data_pad[15]/U0/NET1 ), .EOUT(
        \psram_data_pad[15]/U0/NET2 ), .Y(\psram_data_in[15] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[23]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[23] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[23] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_788 ));
    OA1A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I11_Y_0  
        (.A(\stonyman_0/mult1_un110_sum_1[5] ), .B(\stonyman_0/N146 ), 
        .C(\stonyman_0/mult1_un110_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_Y_0_1 ));
    DFN1 \stonyman_0/substate[5]  (.D(\stonyman_0/substate_ns[5] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[5]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[4]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[4] ));
    DFN1 \counter_0/counterInternal[3]  (.D(\counter_0/N_439_i ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[3]_net_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[4]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_769 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[4]_net_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[15]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_780 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[15]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_28[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[2] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[12]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_777 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[12]_net_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNITQKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_684 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[1]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[1] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_13_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[13] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[13] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[17]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[17] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[5] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[5]_net_1 ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a0_1  
        (.A(\stonyman_0/mult1_un89_sum[5] ), .B(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a0_1 ));
    NOR3B \stonyman_0/substate_RNO_0[5]  (.A(
        \stonyman_0/substate_ns_0_a4_0_1[5] ), .B(\stonyman_0/N_1602 ), 
        .C(\stonyman_0/N_1488 ), .Y(\stonyman_0/N_1570 ));
    RAM512X18 \FIFO_TEST_COUNTER_0/RAM512X18_QXI[31]  (.RADDR8(
        AFLSDF_GND), .RADDR7(GLMUXINT_GND), .RADDR6(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] ), .RADDR5(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[5] ), .RADDR4(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] ), .RADDR3(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[3] ), .RADDR2(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] ), .RADDR1(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[1] ), .RADDR0(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[0] ), .WADDR8(AFLSDF_GND), 
        .WADDR7(GLMUXINT_GND), .WADDR6(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] ), .WADDR5(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[5] ), .WADDR4(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] ), .WADDR3(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] ), .WADDR2(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[2] ), .WADDR1(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[1] ), .WADDR0(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] ), .WD17(GLMUXINT_GND), 
        .WD16(\counter_0_COUNT[31] ), .WD15(\counter_0_COUNT[30] ), 
        .WD14(\counter_0_COUNT[29] ), .WD13(\counter_0_COUNT[28] ), 
        .WD12(\counter_0_COUNT[27] ), .WD11(\counter_0_COUNT[26] ), 
        .WD10(\counter_0_COUNT[25] ), .WD9(\counter_0_COUNT[24] ), 
        .WD8(GLMUXINT_GND), .WD7(\counter_0_COUNT[23] ), .WD6(
        \counter_0_COUNT[22] ), .WD5(\counter_0_COUNT[21] ), .WD4(
        \counter_0_COUNT[20] ), .WD3(\counter_0_COUNT[19] ), .WD2(
        \counter_0_COUNT[18] ), .WD1(\counter_0_COUNT[17] ), .WD0(
        \counter_0_COUNT[16] ), .RW0(GLMUXINT_GND), .RW1(PLLEN_VCC), 
        .WW0(GLMUXINT_GND), .WW1(PLLEN_VCC), .PIPE(GLMUXINT_GND), .REN(
        \FIFO_TEST_COUNTER_0/MEMRENEG ), .WEN(
        \FIFO_TEST_COUNTER_0/MEMWENEG ), .RCLK(SCLK_c), .WCLK(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .RD17(), .RD16(
        \FIFO_TEST_COUNTER_0/QXI[31] ), .RD15(
        \FIFO_TEST_COUNTER_0/QXI[30] ), .RD14(
        \FIFO_TEST_COUNTER_0/QXI[29] ), .RD13(
        \FIFO_TEST_COUNTER_0/QXI[28] ), .RD12(
        \FIFO_TEST_COUNTER_0/QXI[27] ), .RD11(
        \FIFO_TEST_COUNTER_0/QXI[26] ), .RD10(
        \FIFO_TEST_COUNTER_0/QXI[25] ), .RD9(
        \FIFO_TEST_COUNTER_0/QXI[24] ), .RD8(), .RD7(
        \FIFO_TEST_COUNTER_0/QXI[23] ), .RD6(
        \FIFO_TEST_COUNTER_0/QXI[22] ), .RD5(
        \FIFO_TEST_COUNTER_0/QXI[21] ), .RD4(
        \FIFO_TEST_COUNTER_0/QXI[20] ), .RD3(
        \FIFO_TEST_COUNTER_0/QXI[19] ), .RD2(
        \FIFO_TEST_COUNTER_0/QXI[18] ), .RD1(
        \FIFO_TEST_COUNTER_0/QXI[17] ), .RD0(
        \FIFO_TEST_COUNTER_0/QXI[16] ));
    DFN1 \psram_cr_0/ahb0/data_in[15]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[15] ));
    OR3A \stonyman_0/state_RNO_0[12]  (.A(
        \stonyman_0/un1_counterPixelsCaptured_15_4 ), .B(
        \stonyman_0/N_717 ), .C(\stonyman_0/N_1664 ), .Y(
        \stonyman_0/N_1671 ));
    AO1 \stonyman_0/substate_RNIVA2E[14]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(\stonyman_0/state[6]_net_1 ), 
        .Y(\stonyman_0/un1_state_18_0 ));
    DFN1 \psram_cr_0/cr_int_i0/address[5]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[5] ));
    NOR2 \counter_0/counterInternal_RNIDSUH[22]  (.A(
        \counter_0/counterInternal[23]_net_1 ), .B(
        \counter_0/counterInternal[22]_net_1 ), .Y(
        \counter_0/COUNT8_20_0 ));
    OA1C \counter_0/COUNT_RNO_0[6]  (.A(\counter_0_COUNT[5] ), .B(
        \counter_0/COUNT_RNIKBU1[4]_net_1 ), .C(\counter_0_COUNT[6] ), 
        .Y(\counter_0/COUNT_RNO_0[6]_net_1 ));
    XO1A \counter_0/counterInternal_RNO[17]  (.A(\counter_0/N_470 ), 
        .B(\counter_0/counterInternal[17]_net_1 ), .C(
        \counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[17]_net_1 ));
    NOR3C \stonyman_0/state_RNISR2F9[11]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(\stonyman_0/N_1692_1 ), 
        .Y(\stonyman_0/N_1567 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[22]  (.A(
        \psram_cr_0/cr_int_i0/N_270 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 ));
    IOPAD_TRI \psram_address_pad[2]/U0/U0  (.D(
        \psram_address_pad[2]/U0/NET1 ), .E(
        \psram_address_pad[2]/U0/NET2 ), .PAD(psram_address[2]));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[25]  (.A(
        \psram_cr_0/ahb0/N_236 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[1]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[1] ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_WADDR[3]  (.D(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] ));
    OR3 \stonyman_0/substate_RNO_12[3]  (.A(
        \stonyman_0/substate_RNO_16[3]_net_1 ), .B(\stonyman_0/N_1559 )
        , .C(\stonyman_0/N_1557 ), .Y(\stonyman_0/substate_ns_0_1[3] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 ));
    OR3B \stonyman_0/substate_RNIDESC9[14]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(
        \stonyman_0/substate[14]_net_1 ), .C(\stonyman_0/counterWait8 )
        , .Y(\stonyman_0/N_1505 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_258 ));
    OR2A \counter_0/COUNT_RNO_0[30]  (.A(\counter_0_COUNT[29] ), .B(
        \counter_0/N_71 ), .Y(\counter_0/N_516 ));
    AO1A \stonyman_0/substate_RNO_0[6]  (.A(\stonyman_0/N_1920 ), .B(
        \stonyman_0/N_1486 ), .C(\stonyman_0/substate_ns_0_a4_1_1[6] ), 
        .Y(\stonyman_0/substate_ns_0_0_tz[6] ));
    OR2 \stonyman_0/counterWait_RNIJIVM[2]  (.A(
        \stonyman_0/counterWait[2]_net_1 ), .B(
        \stonyman_0/counterWait[3]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_13 ));
    DFN1 \stonyman_0/state[12]  (.D(\stonyman_0/state_RNO[12]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[12]_net_1 ));
    NOR3C \stonyman_0/state_RNIUVSD9[3]  (.A(
        \stonyman_0/cachedValue[4] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/substate_ns_i_a4_9_2_i_a2_0_1[1] ), .Y(
        \stonyman_0/N_1949 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[4]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[4] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[4] ));
    OA1A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I11_un1_Y_0  
        (.A(\stonyman_0/N146_1 ), .B(\stonyman_0/mult1_un103_sum[5] ), 
        .C(\stonyman_0/N150 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_0_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_9  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET ));
    DFN1 \stonyman_0/substate[4]  (.D(\stonyman_0/substate_ns[4] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[4]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[17]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[17] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[17] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_16  (.A(
        \stonyman_0/DWACT_FINC_E[0] ), .B(\stonyman_0/DWACT_FINC_E[1] )
        , .C(\stonyman_0/cachedValue[5] ), .Y(\stonyman_0/N_3_0 ));
    OR2A \stonyman_0/cachedPOINTER_RNIJV2T[0]  (.A(
        \stonyman_0/un45lto0 ), .B(\stonyman_0/cachedPOINTER[1]_net_1 )
        , .Y(\stonyman_0/N_1485 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[1]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[1] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[1] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_766 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_186 ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIL4N32[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 ), .Y(
        \psram_cr_0/ahb0/N_84 ));
    DFN1E1 \stonyman_0/counterWait[26]  (.D(\stonyman_0/N_40 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[26]_net_1 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[17]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[17] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[17] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_782 ));
    DFN1 \stonyman_0/counterPixelsCaptured[1]  (.D(
        \stonyman_0/counterPixelsCaptured_8[1] ), .CLK(SCLK_c), .Q(
        \stonyman_0/N_714 ));
    OR2 \stonyman_0/state_RNI0MDE9[6]  (.A(\stonyman_0/N_1478 ), .B(
        \stonyman_0/state[6]_net_1 ), .Y(\stonyman_0/N_1507 ));
    IOBI_IB_OB_EB \psram_data_pad[0]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[0] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[0]/U0/NET3 ), .DOUT(
        \psram_data_pad[0]/U0/NET1 ), .EOUT(
        \psram_data_pad[0]/U0/NET2 ), .Y(\psram_data_in[0] ));
    IOBI_IB_OB_EB \psram_data_pad[13]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[13] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[13]/U0/NET3 ), .DOUT(
        \psram_data_pad[13]/U0/NET1 ), .EOUT(
        \psram_data_pad[13]/U0/NET2 ), .Y(\psram_data_in[13] ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m10_0  
        (.A(\stonyman_0/counterPixelsCaptured[6]_net_1 ), .B(
        \stonyman_0/mult1_un89_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m10_0 ));
    DFN1E1 \counter_0/COUNT[14]  (.D(\counter_0/COUNT_n14 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[14] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[5]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[5] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[5] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[15]  (.A(
        \psram_address_c[15] ), .B(
        \psram_cr_0/cr_int_i0/address_5[15] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_263 ));
    DFN1E1 \adc081s101_0/dataout[1]  (.D(\adc081s101_0_dataout[0] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[1] ));
    NOR3B \stonyman_0/substate_RNO_25[3]  (.A(\stonyman_0/N_1614 ), .B(
        \stonyman_0/N_1546_1 ), .C(\stonyman_0/N_1484 ), .Y(
        \stonyman_0/substate_ns_0_a4_6_1[3] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[30]  (.A(
        \psram_cr_0/ahb0/max_addr[30] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[30] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[30] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[22]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[22] ));
    OR3 \stonyman_0/un3_counterWait_I_68  (.A(
        \stonyman_0/DWACT_FDEC_E[34] ), .B(
        \stonyman_0/DWACT_FDEC_E[2] ), .C(\stonyman_0/DWACT_FDEC_E[5] )
        , .Y(\stonyman_0/DWACT_FDEC_E[29] ));
    DFN1 \psram_cr_0/ahb0/operation[7]  (.D(
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[7] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[19] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[19] ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_84 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]_net_1 ));
    AND3 \stonyman_0/un2_cachedValue_1_I_13  (.A(
        \stonyman_0/DWACT_FINC_E[0] ), .B(\stonyman_0/cachedValue[3] ), 
        .C(\stonyman_0/cachedValue[4] ), .Y(\stonyman_0/N_4_0 ));
    AOI1 \stonyman_0/state_RNO[10]  (.A(\stonyman_0/state[9]_net_1 ), 
        .B(\stonyman_0/counterWait8 ), .C(
        \stonyman_0/state_ns_i_0_2[10] ), .Y(
        \stonyman_0/state_RNO[10]_net_1 ));
    OA1C \stonyman_0/state_RNO[11]  (.A(\stonyman_0/N_1670 ), .B(
        \stonyman_0/state[11]_net_1 ), .C(
        \stonyman_0/state_ns_i_0[12] ), .Y(
        \stonyman_0/state_RNO[11]_net_1 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[15]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_66 ), .Y(
        \stonyman_0/counterPixelsCaptured_8[15] ));
    OR2 \stonyman_0/cachedPOINTER_RNIEFKB1[2]  (.A(\stonyman_0/N_1485 )
        , .B(\stonyman_0/cachedPOINTER[2]_net_1 ), .Y(
        \stonyman_0/N_1486 ));
    NOR3B \stonyman_0/counterWait_RNO_6[1]  (.A(\stonyman_0/N_105 ), 
        .B(\stonyman_0/counterWait_82_i_a2_1_1_0[1] ), .C(
        \stonyman_0/state[11]_net_1 ), .Y(
        \stonyman_0/counterWait_82_i_a2_1_1[1] ));
    AO1 \stonyman_0/counterWait_RNO[12]  (.A(\stonyman_0/I_35 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[12] ));
    OA1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIMTC2D  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTllIl113_2 ), 
        .Y(MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRESP_0));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[9]  (.A(
        \psram_cr_0/cr_int_i0/N_165 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[9] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[24]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_789 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[24]_net_1 ));
    NOR3B \stonyman_0/writeEnableState_RNO[1]  (.A(
        \stonyman_0/writeEnableState[0]_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_208 ), .Y(
        \stonyman_0/N_66 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[5] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_184 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[17] ));
    XO1A \counter_0/counterInternal_RNO[4]  (.A(
        \counter_0/counterInternal_c3 ), .B(
        \counter_0/counterInternal[4]_net_1 ), .C(\counter_0/COUNTe ), 
        .Y(\counter_0/counterInternal_RNO[4]_net_1 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[2]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[2] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_767 ));
    NOR3A \psram_cr_0/ahb0/haddr_reg_RNIA52K3_0[3]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO_0[1]  (.A(
        CoreAPB3_0_APBmslave0_0_PENABLE), .B(\COREAHBTOAPB3_0/N_152 ), 
        .Y(\COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl_0_0_a3_0[1] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[11]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[11] ));
    DFN1 \stonyman_0/writeEnableState[1]  (.D(\stonyman_0/N_66 ), .CLK(
        SCLK_c), .Q(\stonyman_0/writeEnableState[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_214 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIVH8K[2]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] ));
    OA1A \stonyman_0/substate_RNO_1[6]  (.A(\stonyman_0/N_1490 ), .B(
        \stonyman_0/N_1478 ), .C(\stonyman_0/substate_ns_0_a4_0[6] ), 
        .Y(\stonyman_0/N_1572 ));
    NOR2B \stonyman_0/substate_RNIFDQT[1]  (.A(\stonyman_0/N_1602 ), 
        .B(\stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_1609 ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[0]  (.D(\FIFO_PIXEL_0/QXI[0] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[0] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[3]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[3] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_172 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[28]  (.A(
        \psram_cr_0/ahb0/max_addr[28] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[28] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[28] ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[2]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_8_Y ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[2] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[20]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[20] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] ));
    DFN1 \psram_cr_0/cr_int_i0/address[0]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[0] ));
    DFN1 \counter_0/counterInternal[13]  (.D(
        \counter_0/counterInternal_RNO[13]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[13]_net_1 ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[4]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[4] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[4] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_86 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIEQR52_0[18]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ));
    OR3 \stonyman_0/un3_counterWait_I_13  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(
        \stonyman_0/counterWait[3]_net_1 ), .C(
        \stonyman_0/counterWait[4]_net_1 ), .Y(\stonyman_0/N_26_0 ));
    NOR3B \stonyman_0/substate_RNI6SQL[16]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/state[10]_net_1 ), .C(TP_adcConvComplete_c), .Y(
        \stonyman_0/N_208 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_270 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 ));
    OR3 \stonyman_0/un3_counterWait_I_8  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(\stonyman_0/N_28_0 ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_4  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_4_Y ), .BLKB(\FIFO_PIXEL_0/OR2_6_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_4_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_4_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_4_DOUTB0 ));
    IOTRI_OB_EB \psram_address_pad[0]/U0/U1  (.D(\psram_address_c[0] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[0]/U0/NET1 ), .EOUT(
        \psram_address_pad[0]/U0/NET2 ));
    OR2 \FIFO_PIXEL_0/OR2_8  (.A(\FIFO_PIXEL_0/NAND3B_5_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_8_Y ));
    IOPAD_TRI \led_pad[5]/U0/U0  (.D(\led_pad[5]/U0/NET1 ), .E(
        \led_pad[5]/U0/NET2 ), .PAD(led[5]));
    AO1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I11_Y  
        (.A(\stonyman_0/ADD_9x9_fast_I11_un1_Y_0_0 ), .B(
        \stonyman_0/N132 ), .C(\stonyman_0/ADD_9x9_fast_I11_Y_0 ), .Y(
        \stonyman_0/N146 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPQKO3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_682 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[7]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_772 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[7]_net_1 ));
    AO1A \stonyman_0/substate_RNO_0[3]  (.A(\stonyman_0/state31 ), .B(
        \stonyman_0/substate_tr32_2_2 ), .C(\stonyman_0/N_1224 ), .Y(
        \stonyman_0/substate_ns_0_4[3] ));
    DFN1E1 \adc081s101_0/cntrWaitTrailing[1]  (.D(\adc081s101_0/N_140 )
        , .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitTrailinge ), .Q(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[19]  (.A(
        \psram_cr_0/cr_int_i0/N_267 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 ));
    NOR2B \FIFO_PIXEL_0/AND2_31  (.A(\FIFO_PIXEL_0/MEM_RADDR[7] ), .B(
        \FIFO_PIXEL_0/XOR2_53_Y ), .Y(\FIFO_PIXEL_0/AND2_31_Y ));
    DFN1E1 \adc081s101_0/cntrWaitQuiet[1]  (.D(\adc081s101_0/N_137 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitQuiete ), .Q(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_1  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_14_Y ), .BLKB(\FIFO_PIXEL_0/OR2_0_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_1_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_1_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_1_DOUTB0 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[0]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ));
    OR2 \FIFO_PIXEL_0/OR2_4  (.A(\FIFO_PIXEL_0/NAND3C_1_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_4_Y ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[23]  (.A(
        \psram_cr_0/ahb0/N_234 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[6] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_175 ));
    OR3 \stonyman_0/state_RNI2QEB[5]  (.A(\stonyman_0/state[11]_net_1 )
        , .B(\stonyman_0/state[5]_net_1 ), .C(
        \stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/un1_state_18_4_0_tz ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[11]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_56 ), .Y(
        \stonyman_0/counterPixelsCaptured_8[11] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[7] ));
    DFN1 \psram_cr_0/ahb0/data_out[4]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[4]_net_1 ));
    NOR2A \counter_0/state_RNO[1]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \counter_0/N_435 ), .Y(\counter_0/state_nss[1] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[24]  (.D(N_1292), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[24] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_211 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[4]/U0/U1  (.D(\psram_address_c[4] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[4]/U0/NET1 ), .EOUT(
        \psram_address_pad[4]/U0/NET2 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[14]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[14] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[14] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_225 )
        );
    IOBI_IB_OB_EB \psram_data_pad[1]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[1] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[1]/U0/NET3 ), .DOUT(
        \psram_data_pad[1]/U0/NET1 ), .EOUT(
        \psram_data_pad[1]/U0/NET2 ), .Y(\psram_data_in[1] ));
    IOPAD_TRI \psram_address_pad[22]/U0/U0  (.D(
        \psram_address_pad[22]/U0/NET1 ), .E(
        \psram_address_pad[22]/U0/NET2 ), .PAD(psram_address[22]));
    AND2 \FIFO_TEST_COUNTER_0/AND2_18  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[0] ), .B(
        \FIFO_TEST_COUNTER_0/MEMORYWE ), .Y(
        \FIFO_TEST_COUNTER_0/AND2_18_Y ));
    AOI1 \stonyman_0/substate_RNO_2[8]  (.A(\stonyman_0/N_1476_i_0 ), 
        .B(\stonyman_0/substate[3]_net_1 ), .C(
        \stonyman_0/substate[8]_net_1 ), .Y(\stonyman_0/N_1577 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[3]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        );
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[15] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(\psram_cr_0/data_to_cr[4] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_160 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_224 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_268 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[18]  (.D(N_24), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[18] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[29]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_794 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[29]_net_1 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_RNO_net_1 ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ));
    NOR3A \stonyman_0/state_RNO_0[3]  (.A(\stonyman_0/state31 ), .B(
        \stonyman_0/N_1658 ), .C(\stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/N_1684 ));
    OR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI9L8Q[4]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[4]_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3OI ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3Il_0_0 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[21]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[21] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[21] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_786 ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIS7GJI[2]  (.A(
        \stonyman_0/N_1956 ), .B(\stonyman_0/state42_0_a2_0 ), .C(
        \stonyman_0/N_122 ), .Y(\stonyman_0/state42 ));
    IOPAD_BI \psram_data_pad[6]/U0/U0  (.D(\psram_data_pad[6]/U0/NET1 )
        , .E(\psram_data_pad[6]/U0/NET2 ), .Y(
        \psram_data_pad[6]/U0/NET3 ), .PAD(psram_data[6]));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[6]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[6] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[6] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] ));
    NOR2B \psram_cr_0/ahb0/fsm_RNO  (.A(\psram_cr_0/ahb0/fsm_0_sqmuxa )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/fsm_0_sqmuxa_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_45  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[25]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[24]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[26]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[2]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[3]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[4]INT_NET ));
    MX2 \FIFO_PIXEL_0/MX2_2  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB7 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB7 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_2_Y ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[5]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[5] ), .Y(
        \psram_cr_0/ahb0/operation_m[5] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[31]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[31] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[17]  (.A(
        \psram_cr_0/ahb0/operation[17]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[17] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_196 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[27]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[27] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[27] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[3]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_82 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] ));
    DFN1 \stonyman_0/writeEnableState[0]  (.D(
        \stonyman_0/writeEnableState_nsss[0] ), .CLK(SCLK_c), .Q(
        \stonyman_0/writeEnableState[0]_net_1 ));
    AO1A \stonyman_0/substate_RNO_0[17]  (.A(\stonyman_0/N_77 ), .B(
        \stonyman_0/substate_ns_0_a4_0_0[17] ), .C(\stonyman_0/N_1597 )
        , .Y(\stonyman_0/substate_ns_0_0[17] ));
    AND2 \stonyman_0/un1_counterPixelsCaptured_16_I_94  (.A(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_3[0] ));
    DFN1 \stonyman_0/incp  (.D(\stonyman_0/N_58 ), .CLK(SCLK_c), .Q(
        incp_c));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_85  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET ));
    NOR3 \stonyman_0/substate_RNO[11]  (.A(\stonyman_0/N_1585 ), .B(
        \stonyman_0/N_1496 ), .C(\stonyman_0/N_1584 ), .Y(
        \stonyman_0/substate_RNO[11]_net_1 ));
    NOR2A \stonyman_0/counterWait_RNO_2[1]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_1 ), .B(
        \stonyman_0/N_110 ), .Y(\stonyman_0/N_162 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[14]  (.A(
        \psram_address_c[14] ), .B(
        \psram_cr_0/cr_int_i0/address_5[14] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_262 ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_9  (.A(\stonyman_0/N_6_0 ), 
        .B(\stonyman_0/cachedValue[3] ), .Y(\stonyman_0/I_9_0 ));
    NOR3B \stonyman_0/counterWait_RNO[28]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_89 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_44 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[6]  (.A(
        \psram_cr_0/cr_int_i0/N_162 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[6] ));
    DFN1 \stonyman_0/substate[17]  (.D(\stonyman_0/substate_ns[17] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[17]_net_1 ));
    OR3 \stonyman_0/state_RNIPKEC[8]  (.A(\stonyman_0/state[1]_net_1 ), 
        .B(\stonyman_0/state[8]_net_1 ), .C(
        \stonyman_0/state[7]_net_1 ), .Y(
        \stonyman_0/un1_state_18_3_tz ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIDAVPG  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_72  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[25]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_790 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[25]_net_1 ));
    MX2 \FIFO_PIXEL_0/MX2_63  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB4 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB4 ), .S(\FIFO_PIXEL_0/BUFF_5_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_63_Y ));
    DFN1 \counter_0/counterInternal[23]  (.D(
        \counter_0/counterInternal_RNO[23]_net_1 ), .CLK(SCLK_c), .Q(
        \counter_0/counterInternal[23]_net_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[22]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_787 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[22]_net_1 ));
    NOR2B \adc081s101_0/cntrWaitTrailing_RNIULAG2[2]  (.A(
        \adc081s101_0/N_44 ), .B(\adc081s101_0/N_83 ), .Y(
        \adc081s101_0/cntrWaitTrailinglde_0_a2_0 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[2]  (.A(
        \psram_address_c[2] ), .B(\psram_cr_0/cr_int_i0/address_5[2] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_250 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_79  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[5]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[5] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[5] ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_P0N_a2  
        (.A(\stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a6_1 ), .C(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a2_0 ));
    AO1 \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0[0]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0[1]_net_1 )
        , .B(FIFO_PIXEL_0_FULL), .C(
        \stonyman_apb3_0/stonyman_ioreg_0/N_33 ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[0] ));
    OR2B \stonyman_0/state_RNI31GB9[6]  (.A(\stonyman_0/N_1672 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_1496 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[8]  (.A(
        \psram_cr_0/ahb0/data_out[8]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_256 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[3]  (.A(
        \psram_cr_0/data_to_cr[3] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[3] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_246 ));
    XNOR2 \stonyman_0/un3_counterWait_I_70  (.A(\stonyman_0/N_8 ), .B(
        \stonyman_0/counterWait[23]_net_1 ), .Y(\stonyman_0/I_70 ));
    NOR3C \stonyman_0/substate_RNIS4174[6]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_2_2_7 ), .B(
        \stonyman_0/counterWait_0_sqmuxa_2_2_6 ), .C(
        \stonyman_0/N_1391 ), .Y(\stonyman_0/counterWait_0_sqmuxa_3_2 )
        );
    OR2A \counter_0/COUNT_RNIMGI3[8]  (.A(\counter_0_COUNT[8] ), .B(
        \counter_0/COUNT_RNIC953[7]_net_1 ), .Y(
        \counter_0/COUNT_RNIMGI3[8]_net_1 ));
    OR2B \adc081s101_0/bitsRead_RNIR4UP[1]  (.A(
        \adc081s101_0/bitsRead[1]_net_1 ), .B(
        \adc081s101_0/bitsRead[0]_net_1 ), .Y(\adc081s101_0/N_45 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[9]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[9] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[9] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[5]  (.A(
        \psram_cr_0/data_to_cr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[5] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[12] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[12] ));
    OR3 \stonyman_0/un3_counterWait_I_24  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[3] ), .Y(
        \stonyman_0/DWACT_FDEC_E[4] ));
    NOR3B \stonyman_0/state_RNO_0[8]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[8]_net_1 ), .C(\stonyman_0/N_1660 ), .Y(
        \stonyman_0/N_1697 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBE242[3]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_11 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_10 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_21 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_25 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNI0R8AB[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave6_HADDR[4] ));
    NOR3 \stonyman_0/substate_RNO_0[1]  (.A(
        \stonyman_0/substate_ns_i_7[1] ), .B(
        \stonyman_0/substate_ns_i_8_0_6[1] ), .C(
        \stonyman_0/substate[17]_net_1 ), .Y(
        \stonyman_0/substate_RNO_0[1]_net_1 ));
    NOR2B \stonyman_0/state_RNIP40D[9]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(\stonyman_0/N_102 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_0_0 ));
    AO1A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO  (.A(
        \psram_cr_0/cr_int_i0/ac_countere ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_96 ), .Y(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[7]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[7] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[7] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_84 ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_61  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11[0] ), .B(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .Y(
        \stonyman_0/I_61 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(\psram_cr_0/data_to_cr[6] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_162 ));
    NOR3C \FIFO_TEST_COUNTER_0/AO1_10  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[3] ), .B(
        \FIFO_TEST_COUNTER_0/XOR2_9_Y ), .C(
        \FIFO_TEST_COUNTER_0/AO1_1_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AO1_10_Y ));
    NOR2A \stonyman_0/counterWait_RNO_4[4]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/substate[4]_net_1 ), 
        .Y(\stonyman_0/counterWait_82_i_a2_2_0[4] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[22]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[22]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[22] ));
    NOR2 \stonyman_0/counterPixelsCaptured_RNIGFHK[0]  (.A(
        \stonyman_0/N_713 ), .B(\stonyman_0/N_715 ), .Y(
        \stonyman_0/state103_1 ));
    OR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI864UU[2]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIL2CS2[2]_net_1 )
        , .B(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_155 ));
    RAM4K9 \FIFO_PIXEL_0/RAM4K9_3  (.ADDRA11(AFLSDF_GND), .ADDRA10(
        AFLSDF_GND), .ADDRA9(AFLSDF_GND), .ADDRA8(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .ADDRA7(
        \FIFO_PIXEL_0/MEM_WADDR[7] ), .ADDRA6(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .ADDRA5(
        \FIFO_PIXEL_0/MEM_WADDR[5] ), .ADDRA4(
        \FIFO_PIXEL_0/MEM_WADDR[4] ), .ADDRA3(
        \FIFO_PIXEL_0/MEM_WADDR[3] ), .ADDRA2(
        \FIFO_PIXEL_0/MEM_WADDR[2] ), .ADDRA1(
        \FIFO_PIXEL_0/MEM_WADDR[1] ), .ADDRA0(
        \FIFO_PIXEL_0/MEM_WADDR[0] ), .ADDRB11(AFLSDF_GND), .ADDRB10(
        AFLSDF_GND), .ADDRB9(AFLSDF_GND), .ADDRB8(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .ADDRB7(
        \FIFO_PIXEL_0/MEM_RADDR[7] ), .ADDRB6(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .ADDRB5(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .ADDRB4(
        \FIFO_PIXEL_0/MEM_RADDR[4] ), .ADDRB3(
        \FIFO_PIXEL_0/MEM_RADDR[3] ), .ADDRB2(
        \FIFO_PIXEL_0/MEM_RADDR[2] ), .ADDRB1(
        \FIFO_PIXEL_0/MEM_RADDR[1] ), .ADDRB0(
        \FIFO_PIXEL_0/MEM_RADDR[0] ), .DINA8(GLMUXINT_GND), .DINA7(
        \led_c[7] ), .DINA6(\led_c[6] ), .DINA5(\led_c[5] ), .DINA4(
        \led_c[4] ), .DINA3(\led_c[3] ), .DINA2(\led_c[2] ), .DINA1(
        \led_c[1] ), .DINA0(\led_c[0] ), .DINB8(GLMUXINT_GND), .DINB7(
        GLMUXINT_GND), .DINB6(GLMUXINT_GND), .DINB5(GLMUXINT_GND), 
        .DINB4(GLMUXINT_GND), .DINB3(GLMUXINT_GND), .DINB2(
        GLMUXINT_GND), .DINB1(GLMUXINT_GND), .DINB0(GLMUXINT_GND), 
        .WIDTHA0(PLLEN_VCC), .WIDTHA1(PLLEN_VCC), .WIDTHB0(PLLEN_VCC), 
        .WIDTHB1(PLLEN_VCC), .PIPEA(GLMUXINT_GND), .PIPEB(GLMUXINT_GND)
        , .WMODEA(GLMUXINT_GND), .WMODEB(GLMUXINT_GND), .BLKA(
        \FIFO_PIXEL_0/OR2_3_Y ), .BLKB(\FIFO_PIXEL_0/OR2_5_Y ), .WENA(
        GLMUXINT_GND), .WENB(PLLEN_VCC), .CLKA(SCLK_c), .CLKB(SCLK_c), 
        .RESET(MSS_CORE2_0_M2F_RESET_N), .DOUTA8(), .DOUTA7(), .DOUTA6(
        ), .DOUTA5(), .DOUTA4(), .DOUTA3(), .DOUTA2(), .DOUTA1(), 
        .DOUTA0(), .DOUTB8(), .DOUTB7(\FIFO_PIXEL_0/RAM4K9_3_DOUTB7 ), 
        .DOUTB6(\FIFO_PIXEL_0/RAM4K9_3_DOUTB6 ), .DOUTB5(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB5 ), .DOUTB4(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB4 ), .DOUTB3(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB3 ), .DOUTB2(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB2 ), .DOUTB1(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB1 ), .DOUTB0(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB0 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        );
    AX1C \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[7]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[6] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_13_Y ), .C(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[7] ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[7] ));
    NOR2B \psram_cr_0/cr_int_i0/start_0_0  (.A(\psram_cr_0/dt_req ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/start_0_0 ));
    XA1A \counter_0/COUNT_RNO[25]  (.A(\counter_0_COUNT[25] ), .B(
        \counter_0/N_67 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n25 ));
    NOR3B \stonyman_0/resp_RNO_3  (.A(\stonyman_0/un45lto2 ), .B(
        \stonyman_0/state[7]_net_1 ), .C(
        \stonyman_0/substate_i[0]_net_1 ), .Y(\stonyman_0/N_144 ));
    OR3 \stonyman_0/un3_counterWait_I_54  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[9] )
        , .C(\stonyman_0/DWACT_FDEC_E[12] ), .Y(
        \stonyman_0/DWACT_FDEC_E[13] ));
    OA1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNIJ3O1S  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4_1_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ));
    OR2B \psram_cr_0/ahb0/dt_req_RNIPGR1  (.A(\psram_cr_0/dt_req ), .B(
        \psram_cr_0/dt_ack ), .Y(\psram_cr_0/ahb0/N_4 ));
    AOI1B \stonyman_0/counterPixelsCaptured_RNI2OS11_0[15]  (.A(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/d_m8_0_a5_0 ));
    NOR2A \stonyman_0/state_RNI4MP46[11]  (.A(\stonyman_0/N_105 ), .B(
        \stonyman_0/N_1920 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_2_0 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[5]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_770 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[5]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[2]  (.A(\psram_cr_0/ahb0/N_245 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[29]  (.D(
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[29]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI4RFQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[30] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[30] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_711 ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[0]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[0]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[0] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 ));
    IOPAD_IN \CLK50_pad/U0/U0  (.PAD(CLK50), .Y(\CLK50_pad/U0/NET1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I_RNI1VJJ[0]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIUH8K[1]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ));
    NOR3B \stonyman_0/state_RNIOF3CC[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_12_0 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIOF3CC[6]_net_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[5]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[5] ));
    NOR3C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I11_un1_Y  
        (.A(\stonyman_0/N129 ), .B(\stonyman_0/N150_0 ), .C(
        \stonyman_0/N132_0 ), .Y(\stonyman_0/I11_un1_Y_0 ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[4]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[4]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[4] ));
    DFN1 \psram_cr_0/ahb0/data_out[11]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[11]_net_1 ));
    NOR2B \FIFO_PIXEL_0/AO1_16  (.A(\FIFO_PIXEL_0/AND2_48_Y ), .B(
        \FIFO_PIXEL_0/AO1_18_Y ), .Y(\FIFO_PIXEL_0/AO1_16_Y ));
    AND3 \FIFO_PIXEL_0/AND3_7  (.A(\FIFO_PIXEL_0/XNOR2_12_Y ), .B(
        \FIFO_PIXEL_0/XNOR2_7_Y ), .C(\FIFO_PIXEL_0/XNOR2_13_Y ), .Y(
        \FIFO_PIXEL_0/AND3_7_Y ));
    DFN1 \psram_cr_0/ahb0/busy  (.D(\psram_cr_0/ahb0/N_24 ), .CLK(
        FAB_CLK), .Q(\psram_cr_0/ahb0/busy_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[18] ));
    OR2A \counter_0/COUNT_RNO_0[14]  (.A(\counter_0_COUNT[13] ), .B(
        \counter_0/COUNT_RNINLNG1[12]_net_1 ), .Y(\counter_0/N_56 ));
    AO1C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIJPVGU[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[0]_net_1 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ));
    NOR3B \stonyman_0/counterWait_RNO[5]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_14_0 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_14 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[8]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[8]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[8] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_10_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[10] ), .B(N_1301), .Y(N_8));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_212 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[8]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[8] ), .B(\FIFO_PIXEL_0/AO1_18_Y ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[8] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[9]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[9] ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[8]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_773 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[8]_net_1 ));
    AO1B \stonyman_0/state_RNO_1[3]  (.A(\stonyman_0/N_1658 ), .B(
        \stonyman_0/state[2]_net_1 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/state_ns_i_0[3] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[25]  (.A(
        \psram_cr_0/ahb0/N_204 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 ));
    NOR3A \counter_0/counterInternal_RNI29T31[17]  (.A(
        \counter_0/m9_e_0 ), .B(\counter_0/counterInternal[19]_net_1 ), 
        .C(\counter_0/counterInternal[17]_net_1 ), .Y(
        \counter_0/COUNT8_2 ));
    DFN1P0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        , .CLK(FAB_CLK), .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        );
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[4]  (.A(
        \psram_cr_0/cr_int_i0/N_160 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[4] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(\psram_cr_0/reg_addr[10] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_166 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[15]  (.A(
        \psram_cr_0/data_from_cr[15] ), .B(\psram_data_in[15] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_246 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_221 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[13]  (.A(
        \psram_address_c[13] ), .B(
        \psram_cr_0/cr_int_i0/address_5[13] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_261 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_5_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[5] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[5] ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I9_Y  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a0 ), .B(
        \stonyman_0/ADD_9x9_fast_I9_Y_0 ), .C(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a1 ), .Y(\stonyman_0/N150 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[6]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[6] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[6] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[6] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[6] ));
    OR3 \stonyman_0/state_RNIPA3G12[7]  (.A(
        \stonyman_0/counterWait_4_sqmuxa ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_1_4 ), .C(
        \stonyman_0/counterWait_1_sqmuxa_5 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_1 ));
    NOR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNI33AV6[2]  (.A(
        \stonyman_0/cachedValue[2] ), .B(\stonyman_0/N_115 ), .Y(
        \stonyman_0/state42_0_a2_0 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_265 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 ));
    OR2 \counter_0/counterInternal_RNO[20]  (.A(\counter_0/N_32_0 ), 
        .B(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[20]_net_1 ));
    NOR2 \stonyman_0/state_RNO_3[5]  (.A(\stonyman_0/state[4]_net_1 ), 
        .B(\stonyman_0/N_1658 ), .Y(\stonyman_0/state_ns_i_a4_1_0[5] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_20_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[20] ), .B(N_1301), .Y(N_1288));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[4]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3III_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_167 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[4] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_iv_0_a3[0]  
        (.A(\CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[0] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_71 ));
    MX2 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR_RNO[10]  (.A(
        \CoreAHBLite_0_AHBmslave6_HADDR[10] ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]_net_1 ), .S(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[10] ));
    RAM512X18 \stonyman_0/cachedValue_tile_I_1  (.RADDR8(GLMUXINT_GND), 
        .RADDR7(GLMUXINT_GND), .RADDR6(GLMUXINT_GND), .RADDR5(
        GLMUXINT_GND), .RADDR4(GLMUXINT_GND), .RADDR3(GLMUXINT_GND), 
        .RADDR2(\stonyman_0/N_31 ), .RADDR1(\stonyman_0/N_29_0 ), 
        .RADDR0(\stonyman_0/N_27_0 ), .WADDR8(GLMUXINT_GND), .WADDR7(
        GLMUXINT_GND), .WADDR6(GLMUXINT_GND), .WADDR5(GLMUXINT_GND), 
        .WADDR4(GLMUXINT_GND), .WADDR3(GLMUXINT_GND), .WADDR2(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .WADDR1(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .WADDR0(
        \stonyman_0/un45lto0 ), .WD17(GLMUXINT_GND), .WD16(
        GLMUXINT_GND), .WD15(GLMUXINT_GND), .WD14(GLMUXINT_GND), .WD13(
        GLMUXINT_GND), .WD12(GLMUXINT_GND), .WD11(GLMUXINT_GND), .WD10(
        GLMUXINT_GND), .WD9(GLMUXINT_GND), .WD8(GLMUXINT_GND), .WD7(
        \stonyman_0/state_RNIUIDBJ[6]_net_1 ), .WD6(
        \stonyman_0/state_RNIRHV0H[6]_net_1 ), .WD5(
        \stonyman_0/state_RNIPGHME[6]_net_1 ), .WD4(
        \stonyman_0/state_RNIOF3CC[6]_net_1 ), .WD3(
        \stonyman_0/state_RNIOEL1A[6]_net_1 ), .WD2(
        \stonyman_0/state_RNIPD7N7[6]_net_1 ), .WD1(
        \stonyman_0/state_RNIRCPC5[6]_net_1 ), .WD0(
        \stonyman_0/state_RNIUBB23[6]_net_1 ), .RW0(PLLEN_VCC), .RW1(
        GLMUXINT_GND), .WW0(PLLEN_VCC), .WW1(GLMUXINT_GND), .PIPE(
        GLMUXINT_GND), .REN(GLMUXINT_GND), .WEN(\stonyman_0/N_9 ), 
        .RCLK(SCLK_c), .WCLK(SCLK_c), .RESET(PLLEN_VCC), .RD17(), 
        .RD16(), .RD15(), .RD14(), .RD13(), .RD12(), .RD11(), .RD10(), 
        .RD9(), .RD8(), .RD7(\stonyman_0/DOUT_TMP[7] ), .RD6(
        \stonyman_0/DOUT_TMP[6] ), .RD5(\stonyman_0/DOUT_TMP[5] ), 
        .RD4(\stonyman_0/DOUT_TMP[4] ), .RD3(\stonyman_0/DOUT_TMP[3] ), 
        .RD2(\stonyman_0/DOUT_TMP[2] ), .RD1(\stonyman_0/DOUT_TMP[1] ), 
        .RD0(\stonyman_0/DOUT_TMP[0] ));
    DFN1 \psram_cr_0/cr_int_i0/ac_counter_lb1  (.D(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_218 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[8]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[8] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[8] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_44  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[22]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[21]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[23]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SLEEPINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[1]INT_NET ));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3lII_net_1 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_179 ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns_0[0] ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_ns[0] ));
    MX2 \FIFO_PIXEL_0/MX2_35  (.A(\FIFO_PIXEL_0/RAM4K9_7_DOUTB1 ), .B(
        \FIFO_PIXEL_0/RAM4K9_5_DOUTB1 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_35_Y ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[5]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[5] ));
    NOR2A \stonyman_0/resp_RNO_4  (.A(\stonyman_0/N_104 ), .B(
        \stonyman_0/substate_i[0]_net_1 ), .Y(\stonyman_0/N_142 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[26]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[26] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(\psram_cr_0/reg_addr[15] ), 
        .S(\psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_171 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[27]  (.A(
        \psram_cr_0/ahb0/N_206 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 ));
    DFN1C0 \FIFO_TEST_COUNTER_0/DFN1C0_MEM_RADDR[6]  (.D(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_30_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[30] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[30] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_84  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[26]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[27]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[28]INT_NET ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_53  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[17]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[16]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[18]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[16]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[17]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[18]INT_NET ));
    NOR2 \stonyman_0/counterWait_RNO_0[4]  (.A(\stonyman_0/N_110 ), .B(
        \stonyman_0/state[9]_net_1 ), .Y(\stonyman_0/N_169 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[6] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[6]_net_1 ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_0  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[4] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_0_Y ));
    NOR2A \stonyman_0/counterWait_RNO_0[0]  (.A(
        \stonyman_0/counterWait8 ), .B(
        \stonyman_0/counterWait[0]_net_1 ), .Y(
        \stonyman_0/counterWait_82_0_a2_0[0] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[20] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[12]  (.A(
        \psram_cr_0/reg_addr[12] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[12] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_191 ));
    DFN1 \stonyman_0/counterPixelsCaptured[12]  (.D(
        \stonyman_0/counterPixelsCaptured_8[12] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ));
    IOPAD_TRI \led_pad[6]/U0/U0  (.D(\led_pad[6]/U0/NET1 ), .E(
        \led_pad[6]/U0/NET2 ), .PAD(led[6]));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_172 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[9]  (.A(
        \psram_address_c[9] ), .B(\psram_cr_0/cr_int_i0/address_5[9] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_257 ));
    XA1A \counter_0/COUNT_RNO[11]  (.A(\counter_0_COUNT[11] ), .B(
        \counter_0/COUNT_RNII4TI[10]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n11 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_71  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET ));
    XA1C \counter_0/counterInternal_RNO[18]  (.A(\counter_0/N_471 ), 
        .B(\counter_0/counterInternal[18]_net_1 ), .C(
        \counter_0/COUNTe ), .Y(\counter_0/N_21 ));
    DFN1 \psram_cr_0/cr_int_i0/address[13]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[13] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[1]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[1] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_30[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[0] ));
    XO1A \counter_0/counterInternal_RNO[12]  (.A(
        \counter_0/counterInternal[12]_net_1 ), .B(\counter_0/N_27 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[12]_net_1 ));
    NOR3C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNIS69I71  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_175_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[19]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[19] ));
    NOR3B \stonyman_0/counterWait_RNO[22]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_65_0 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_34 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[11]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[11] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[11] ));
    IOPAD_TRI \led_pad[3]/U0/U0  (.D(\led_pad[3]/U0/NET1 ), .E(
        \led_pad[3]/U0/NET2 ), .PAD(led[3]));
    OR3A \stonyman_0/substate_RNIA30O9[13]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(\stonyman_0/N_1945 ), .C(
        \stonyman_0/N_201 ), .Y(\stonyman_0/N_53 ));
    DFN1E1 \counter_0/COUNT[13]  (.D(\counter_0/COUNT_n13 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[13] ));
    AO1A \stonyman_0/state_RNI6SGQ1[5]  (.A(\stonyman_0/N_1391 ), .B(
        \stonyman_0/un1_state_18_4_0_tz ), .C(
        \stonyman_0/un1_state_18_3 ), .Y(\stonyman_0/un1_state_18_3_0 )
        );
    NOR3A \stonyman_0/cachedValue_tile_DIN_REG1_RNIS2AV6_0[1]  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/cachedValue[4] ), 
        .C(\stonyman_0/cachedValue[1] ), .Y(
        \stonyman_0/state20_0_a2_0 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[7]  (.D(N_1298), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[7] ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_57  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ), .Y(
        \stonyman_0/I_57 ));
    IOTRI_OB_EB \psram_address_pad[21]/U0/U1  (.D(
        \psram_address_c[21] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[21]/U0/NET1 ), .EOUT(
        \psram_address_pad[21]/U0/NET2 ));
    AND3C \stonyman_0/incp_RNO_4  (.A(\stonyman_0/state[12]_net_1 ), 
        .B(\stonyman_0/N_1484 ), .C(\stonyman_0/N_108 ), .Y(
        \stonyman_0/N_153 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIRCV9[4]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_7 ));
    XOR2 \stonyman_0/cachedValue_tile_WADDR_REG1_RNI3L8I[2]  (.A(
        \stonyman_0/WADDR_REG1[2] ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/I_4_2 ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIM0FF6[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_25 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_24 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_26 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_63  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET ), .PIN3INT(
        GLMUXINT_GND));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I9_un1_Y_a1  
        (.A(\stonyman_0/counterPixelsCaptured[5]_net_1 ), .B(
        \stonyman_0/mult1_un96_sum[6] ), .C(\stonyman_0/I11_un1_Y ), 
        .Y(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a1 ));
    NOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I1_G0N  
        (.A(\stonyman_0/counterPixelsCaptured[5]_net_1 ), .B(
        \stonyman_0/N146 ), .Y(\stonyman_0/N125 ));
    IOPAD_TRI \CS_pad/U0/U0  (.D(\CS_pad/U0/NET1 ), .E(
        \CS_pad/U0/NET2 ), .PAD(CS));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNIDDFN1[1]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0II ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTOO0II_i_m ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[29]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[29]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[29] ));
    AO1A \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO[1]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl_0_0_a3_0[1] ), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl[1] ));
    INV \FIFO_PIXEL_0/MEMREBUBBLE  (.A(\FIFO_PIXEL_0/MEMORYRE ), .Y(
        \FIFO_PIXEL_0/MEMRENEG ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNI4MIN3[9]  (.A(
        \psram_cr_0/ahb0/N_97 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 ), .C(
        \psram_cr_0/ahb0/N_84 ), .Y(\psram_cr_0/ahb0/N_57 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[11]  (.A(
        \psram_address_c[11] ), .B(
        \psram_cr_0/cr_int_i0/address_5[11] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_259 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_7_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[7] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[7] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_RNI8BOQ  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[22]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[22] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[22] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_787 ));
    AO1 \stonyman_0/counterWait_RNO[15]  (.A(\stonyman_0/I_43 ), .B(
        \stonyman_0/N_106 ), .C(\stonyman_0/N_1919 ), .Y(
        \stonyman_0/counterWait_82[15] ));
    NOR2B \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIL2CS2[2]  (
        .A(\COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_159 ), .B(
        \COREAHBTOAPB3_0/N_152 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNIL2CS2[2]_net_1 )
        );
    DFN1E1 \adc081s101_0/dataout[3]  (.D(\adc081s101_0_dataout[2] ), 
        .CLK(SCLK_c), .E(\adc081s101_0/bitsRead_0_sqmuxa_1 ), .Q(
        \adc081s101_0_dataout[3] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_21_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[21] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[21] ));
    DFN1E1 \stonyman_0/counterWait[15]  (.D(
        \stonyman_0/counterWait_82[15] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[15]_net_1 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/max_addr[29] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[29] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_240 ));
    OAI1 \stonyman_0/state_RNIEHUI1[12]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(\stonyman_0/state[12]_net_1 ), 
        .C(\stonyman_0/N_1486 ), .Y(\stonyman_0/N_109 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI0I8K[3]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ));
    OR3 \stonyman_0/un3_counterWait_I_88  (.A(
        \stonyman_0/DWACT_FDEC_E[24] ), .B(
        \stonyman_0/DWACT_FDEC_E[23] ), .C(
        \stonyman_0/counterWait[27]_net_1 ), .Y(\stonyman_0/N_3 ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIEQR52_1[18]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[3] ));
    OR3 \stonyman_0/un3_counterWait_I_79  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .C(
        \stonyman_0/DWACT_FDEC_E[20] ), .Y(
        \stonyman_0/DWACT_FDEC_E[21] ));
    OR3 \stonyman_0/un3_counterWait_I_27  (.A(
        \stonyman_0/DWACT_FDEC_E[4] ), .B(
        \stonyman_0/counterWait[8]_net_1 ), .C(
        \stonyman_0/counterWait[9]_net_1 ), .Y(\stonyman_0/N_21_0 ));
    XA1C \counter_0/counterInternal_RNO[1]  (.A(
        \counter_0/counterInternal[1]_net_1 ), .B(
        \counter_0/counterInternal[0]_net_1 ), .C(\counter_0/COUNTe ), 
        .Y(\counter_0/counterInternal_RNO[1]_net_1 ));
    AOI1 \stonyman_0/substate_RNO[7]  (.A(
        \stonyman_0/substate_ns_i_a4_0[7] ), .B(\stonyman_0/N_1530 ), 
        .C(\stonyman_0/substate_ns_i_1[7] ), .Y(
        \stonyman_0/substate_RNO[7]_net_1 ));
    OR2 \stonyman_0/incp_RNO_1  (.A(\stonyman_0/N_145 ), .B(
        \stonyman_0/N_113 ), .Y(\stonyman_0/N_19_0 ));
    DFN1 \psram_cr_0/ahb0/operation[30]  (.D(
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[30]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[12]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[12] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[12] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_223 )
        );
    IOPAD_TRI \psram_address_pad[0]/U0/U0  (.D(
        \psram_address_pad[0]/U0/NET1 ), .E(
        \psram_address_pad[0]/U0/NET2 ), .PAD(psram_address[0]));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_4  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[23]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[22]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPI[24]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[22]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[23]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/GPO[24]INT_NET ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_29[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[1] ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNI3TRG3[9]  (.A(
        \psram_cr_0/ahb0/N_85 ), .B(\psram_cr_0/ahb0/N_97 ), .C(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ));
    DFN1 \psram_cr_0/cr_int_i0/address[17]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[17] ));
    AND2A \FIFO_PIXEL_0/AND2A_0  (.A(FIFO_PIXEL_0_EMPTY), .B(
        \FIFO_PIXEL_0.REP ), .Y(\FIFO_PIXEL_0/AND2A_0_Y ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_226 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[8]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[8] ), .B(\FIFO_PIXEL_0/AO1_5_Y ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[8] ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_24_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[24] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[24] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_2_0[0] )
        );
    DFN1 \psram_cr_0/ahb0/haddr_reg[3]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_8  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DCDnINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RInINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART1CTSnINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[3]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0RTSnINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DTRnINT_NET ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[14]  (.D(
        \psram_cr_0/cr_int_i0/N_48 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[14] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_17_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[17] ), .B(N_1301), .Y(N_22));
    DFN1 \psram_cr_0/ahb0/operation[16]  (.D(
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/dt_rw ));
    OA1C \stonyman_apb3_0/stonyman_ioreg_0/startCapture_RNO  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_101 ), .B(
        stonyman_apb3_0_START_CAPTURE), .C(
        \stonyman_apb3_0/stonyman_ioreg_0/N_31 ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_100 ));
    NOR3C \stonyman_0/state_RNIQQ9D1[1]  (.A(\stonyman_0/N_1389 ), .B(
        \stonyman_0/state[1]_net_1 ), .C(
        \stonyman_0/tp_substateout_1_1[1] ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_2_1 ));
    NOR2A \stonyman_0/state_RNIH01F[10]  (.A(\stonyman_0/N_1600 ), .B(
        \stonyman_0/N_1473 ), .Y(\stonyman_0/N_1602 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave6_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 ));
    NOR3A \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_RNO[0]  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3Il ), .B(
        CoreAPB3_0_APBmslave0_0_PENABLE), .C(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[0]_net_1 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl_ns[0] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIO3O81[10]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_2 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_1 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_14 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_22 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[7]  (.A(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[7] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_176 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[28]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[28]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[28] ));
    NOR2A \stonyman_0/state_RNI392C[12]  (.A(\stonyman_0/N_141_1 ), .B(
        \stonyman_0/N_77 ), .Y(\stonyman_0/N_1945 ));
    IOPAD_TRI \psram_address_pad[4]/U0/U0  (.D(
        \psram_address_pad[4]/U0/NET1 ), .E(
        \psram_address_pad[4]/U0/NET2 ), .PAD(psram_address[4]));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_248 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNO[3]_net_1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI[3]_net_1 ));
    OR2 \stonyman_0/un3_counterWait_I_57  (.A(
        \stonyman_0/counterWait[18]_net_1 ), .B(
        \stonyman_0/counterWait[19]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[14] ));
    NOR2B \stonyman_0/un1_counterPixelsCaptured_16_I_71  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_2[0] ), .B(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_2[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_g_array_3[0] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[20]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[20] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[20] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_785 ));
    IOPAD_TRI \TP_adcConvComplete_pad/U0/U0  (.D(
        \TP_adcConvComplete_pad/U0/NET1 ), .E(
        \TP_adcConvComplete_pad/U0/NET2 ), .PAD(TP_adcConvComplete));
    DFN1E1 \adc081s101_0/cntrWaitTrailing[0]  (.D(\adc081s101_0/N_139 )
        , .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitTrailinge ), .Q(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[10]  (.A(
        \psram_cr_0/ahb0/data_out[10]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] ));
    NOR3C \stonyman_0/substate_RNIOFSB9[17]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/state[10]_net_1 ), 
        .C(\stonyman_0/substate[17]_net_1 ), .Y(
        \stonyman_0/substate_3_sqmuxa_3 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[25]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[25] ));
    OA1 \stonyman_0/substate_RNIB4BO9[11]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\stonyman_0/N_1507 ), .C(
        \stonyman_0/substate[11]_net_1 ), .Y(\stonyman_0/N_1544 ));
    NOR3B \stonyman_0/substate_RNO_19[3]  (.A(\stonyman_0/N_126 ), .B(
        \stonyman_0/substate_tr32_3_2 ), .C(\stonyman_0/N_1484 ), .Y(
        \stonyman_0/substate_tr32_3_5 ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[13]  (.A(
        \psram_cr_0/ahb0/data_out[13]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]  (.D(
        \CoreAHBLite_0_AHBmslave6_HADDR[10] ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\COREAHBTOAPB3_0/CAHBtoAPB3lI ), 
        .Q(\COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3l1I[10]_net_1 ));
    DFN1E1 \counter_0/COUNT[15]  (.D(\counter_0/COUNT_n15 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[15] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_27_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[27] ), .B(N_1301), .Y(N_1295));
    NOR3C \stonyman_0/state_RNIONT761[6]  (.A(
        \stonyman_0/substate_tr13_5_11 ), .B(\stonyman_0/N_1021 ), .C(
        \stonyman_0/N_121 ), .Y(\stonyman_0/N_1145 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[20] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[20] ));
    NOR2B \FIFO_TEST_COUNTER_0/AO1_1  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[1] ), .B(
        \FIFO_TEST_COUNTER_0/AND2_18_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AO1_1_Y ));
    DFN1E1C0 \FIFO_PIXEL_0/DFN1E1C0_Q[1]  (.D(\FIFO_PIXEL_0/QXI[1] ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \FIFO_PIXEL_0/DVLDI ), .Q(\FIFO_PIXEL_0_Q[1] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[1]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[1] ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[5]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[5] ));
    IOTRI_OB_EB \psram_address_pad[10]/U0/U1  (.D(
        \psram_address_c[10] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[10]/U0/NET1 ), .EOUT(
        \psram_address_pad[10]/U0/NET2 ));
    OR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIPGTT[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_93 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[12]  (.A(
        \psram_address_c[12] ), .B(
        \psram_cr_0/cr_int_i0/address_5[12] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_260 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[19]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[19] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[19] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_784 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[21]  (.A(
        \psram_cr_0/cr_int_i0/N_269 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[11]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[11] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[9]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[9] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[9] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_220 )
        );
    DFN1 \stonyman_0/counterPixelsCaptured[13]  (.D(
        \stonyman_0/counterPixelsCaptured_8[13] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ));
    NOR3B \psram_cr_0/ahb0/hready_reg_RNI983D2  (.A(
        \psram_cr_0/ahb0/hwrite_reg4_0 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_2 ));
    OR3B \counter_0/COUNT_RNI36O2[6]  (.A(\counter_0_COUNT[5] ), .B(
        \counter_0_COUNT[6] ), .C(\counter_0/COUNT_RNIKBU1[4]_net_1 ), 
        .Y(\counter_0/COUNT_RNI36O2[6]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_254 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/operation[30]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[30] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_209 ));
    NOR3C \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_RNIHOPQB  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        CoreAHBLite_0_AHBmslave6_HREADY), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl1O0l.CAHBLTI1Il6 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4_1_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[1]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_766 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[1]_net_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIR9R14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_701 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] ));
    AX1C \stonyman_0/un1_counterPixelsCaptured_16_I_60  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_10[0] ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[13]_net_1 ), .Y(
        \stonyman_0/I_60 ));
    OR2 \stonyman_0/un3_counterWait_I_44  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[9] )
        , .Y(\stonyman_0/DWACT_FDEC_E[10] ));
    MX2 \psram_cr_0/cr_int_i0/noe0_RNO_0  (.A(psram_noe0_c), .B(
        \psram_cr_0/cr_int_i0/noe0_5 ), .S(
        \psram_cr_0/cr_int_i0/N_347 ), .Y(\psram_cr_0/cr_int_i0/N_229 )
        );
    NOR3C \stonyman_0/state_RNO_2[8]  (.A(\stonyman_0/state[7]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_1660 ), .Y(
        \stonyman_0/N_1696 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[1]  (.A(
        \psram_cr_0/data_from_cr[1] ), .B(
        \psram_cr_0/ahb0/data_out[1]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_260 ));
    OR2 \stonyman_0/un3_counterWait_I_15  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(
        \stonyman_0/counterWait[4]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[1] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[13]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[13] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI7HF6A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1ll ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        CoreAHBLite_0_AHBmslave5_HWRITE));
    XNOR2 \stonyman_0/un3_counterWait_I_37  (.A(\stonyman_0/N_18_0 ), 
        .B(\stonyman_0/counterWait[13]_net_1 ), .Y(\stonyman_0/I_37 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[6]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[6] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[6] ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNICL9T[9]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \psram_cr_0/ahb0/fsm_net_1 ), .C(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter_lb1  (.D(
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[11]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[11] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[14]  (.A(
        \psram_cr_0/data_to_cr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[14] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_257 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 ));
    IOPAD_TRI \psram_address_pad[10]/U0/U0  (.D(
        \psram_address_pad[10]/U0/NET1 ), .E(
        \psram_address_pad[10]/U0/NET2 ), .PAD(psram_address[10]));
    DFN1 \psram_cr_0/cr_int_i0/data_out[2]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[2] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_DVLDI  (.D(\FIFO_PIXEL_0/AND2A_0_Y ), 
        .CLK(SCLK_c), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \FIFO_PIXEL_0/DVLDI ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI12S14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_704 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] ));
    OA1A \stonyman_0/substate_i_RNO_2[0]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(\stonyman_0/state104 ), .C(
        \stonyman_0/substate_ns_i_0_a4_0_0[0] ), .Y(
        \stonyman_0/N_1535 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[6]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[6] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[28]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[28] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[31]  (.D(N_50), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[31] ));
    OR3 \stonyman_0/un3_counterWait_I_61  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[15] ), .Y(\stonyman_0/N_10 ));
    BUFF \FIFO_PIXEL_0/XOR2_53  (.A(\FIFO_PIXEL_0/MEM_RADDR[6] ), .Y(
        \FIFO_PIXEL_0/XOR2_53_Y ));
    OA1B \stonyman_0/counterWait_RNO_4[1]  (.A(
        \stonyman_0/counterWait_82_i_a2_3_0[1] ), .B(
        \stonyman_0/counterWait_82_i_a2_1_1[1] ), .C(
        \stonyman_0/un1_state_18 ), .Y(
        \stonyman_0/counterWait_82_i_1096_0 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[11]  (.A(
        \psram_cr_0/data_from_cr[11] ), .B(\psram_data_in[11] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_242 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[24]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[24]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_60 ));
    AOI1B \stonyman_0/substate_RNO_2[3]  (.A(
        \stonyman_0/state53_0_a2_0 ), .B(\stonyman_0/N_121 ), .C(
        \stonyman_0/substate_tr32_3_9 ), .Y(\stonyman_0/N_1226 ));
    DFN1 \counter_0/counterInternal[8]  (.D(\counter_0/N_444_i ), .CLK(
        SCLK_c), .Q(\counter_0/counterInternal[8]_net_1 ));
    NOR3A \stonyman_0/state_RNIUBB23[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/N_1473 ), .C(\stonyman_0/cachedValue[0] ), .Y(
        \stonyman_0/state_RNIUBB23[6]_net_1 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_219 ));
    OR2 \stonyman_0/state_RNIHKEC[1]  (.A(\stonyman_0/N_103 ), .B(
        \stonyman_0/state[1]_net_1 ), .Y(\stonyman_0/N_104 ));
    NOR3C \psram_cr_0/cr_int_i0/dt_ack_RNO  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/cr_int_i0/N_22 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[4]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[4] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[4] ));
    OR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_P0N_0_2  
        (.A(\stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a3_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a2 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_0_2 ));
    XA1A \counter_0/COUNT_RNO[23]  (.A(\counter_0_COUNT[23] ), .B(
        \counter_0/COUNT_RNINOS56[22]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n23 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[2] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[6]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[6] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTOO0l[0] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNIQPUJ[8]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_4 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_16 ));
    XA1B \counter_0/counterInternal_RNO[26]  (.A(
        \counter_0/counterInternal[26]_net_1 ), .B(\counter_0/N_491 ), 
        .C(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[26]_net_1 ));
    OR2 \stonyman_0/counterWait_RNI12KH[29]  (.A(
        \stonyman_0/counterWait[29]_net_1 ), .B(
        \stonyman_0/counterWait[26]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_0 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[22] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[22] ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[19]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[19]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[19] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI1AS14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_695 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[11]  (.A(
        \psram_cr_0/data_from_cr[11] ), .B(
        \psram_cr_0/ahb0/data_out[11]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_270 ));
    NOR3C \counter_0/COUNT_RNIFCID1[11]  (.A(\counter_0_COUNT[12] ), 
        .B(\counter_0_COUNT[11] ), .C(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_4 ), .Y(
        \counter_0/COUNT_n15_0_o3_m6_0_a2_6 ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a0_0  
        (.A(\stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a1_0 ));
    DFN1 \psram_cr_0/ahb0/operation[9]  (.D(
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[9] ));
    AND2B \FIFO_TEST_COUNTER_0/AND2_MEMORYWE  (.A(counter_0_WRITEEN), 
        .B(FIFO_TEST_COUNTER_0_FULL), .Y(
        \FIFO_TEST_COUNTER_0/MEMORYWE ));
    XA1B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I16_Y_0  
        (.A(\stonyman_0/ADD_9x9_fast_I16_Y_1035_N_6 ), .B(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I15_Y_0_2 ), .Y(
        \stonyman_0/ADD_9x9_fast_I16_Y_0 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[18]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[18] ));
    OA1A \psram_cr_0/ahb0/hready_reg_RNI7A00S  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ), .C(
        \psram_cr_0/ahb0/hwrite_reg4_3 ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4 ));
    DFN1 \stonyman_0/counterPixelsCaptured[5]  (.D(
        \stonyman_0/counterPixelsCaptured_8[5] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[0]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[0] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] ));
    AO1A \stonyman_0/counterWait_82_i_0[2]  (.A(
        \stonyman_0/counterWait8 ), .B(
        \stonyman_0/counterWait_82_i_a2_2_0[2] ), .C(
        \stonyman_0/N_164 ), .Y(
        \stonyman_0/counterWait_82_i_0[2]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_19  (.A(\FIFO_PIXEL_0/MEM_RADDR[3] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[3] ), .Y(\FIFO_PIXEL_0/XNOR2_19_Y ));
    XOR2 \stonyman_0/un1_counterPixelsCaptured_16_I_55  (.A(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \stonyman_0/I_55 ));
    IOTRI_OB_EB \psram_address_pad[14]/U0/U1  (.D(
        \psram_address_c[14] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[14]/U0/NET1 ), .EOUT(
        \psram_address_pad[14]/U0/NET2 ));
    NOR2A \stonyman_0/cachedPOINTER_RNIVBMI[1]  (.A(
        \stonyman_0/state[2]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .Y(\stonyman_0/N_1614 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[24]  (.A(
        \psram_cr_0/ahb0/N_203 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 ));
    BUFF \FIFO_TEST_COUNTER_0/XOR2_41  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] ), .Y(
        \FIFO_TEST_COUNTER_0/XOR2_41_Y ));
    XA1A \FIFO_PIXEL_0/AND2_65  (.A(\FIFO_PIXEL_0/MEM_RADDR[11] ), .B(
        \FIFO_PIXEL_0/WBINNXTSHIFT[11] ), .C(\FIFO_PIXEL_0/XNOR2_6_Y ), 
        .Y(\FIFO_PIXEL_0/AND2_65_Y ));
    NOR3C \stonyman_0/substate_RNO_10[3]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/state[4]_net_1 ), .Y(
        \stonyman_0/substate_tr32_0_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[1]  (.A(
        \psram_address_c[1] ), .B(\psram_cr_0/cr_int_i0/address_5[1] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_249 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_224 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_13_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[13] ), .B(N_1301), .Y(N_14));
    MX2 \FIFO_PIXEL_0/MX2_14  (.A(\FIFO_PIXEL_0/MX2_63_Y ), .B(
        \FIFO_PIXEL_0/MX2_36_Y ), .S(\FIFO_PIXEL_0/BUFF_7_Y ), .Y(
        \FIFO_PIXEL_0/MX2_14_Y ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[0] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[0] ));
    DFN1 \psram_cr_0/cr_int_i0/address[20]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[20] ));
    OA1A \stonyman_0/substate_RNIQTHL1[12]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\stonyman_0/state9 ), .C(
        \stonyman_0/substate[12]_net_1 ), .Y(\stonyman_0/N_1540 ));
    AND2 \stonyman_0/un2_cachedValue_1_I_15  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/cachedValue[4] ), 
        .Y(\stonyman_0/DWACT_FINC_E[1] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[15] ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[9]  (.D(N_6), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[9] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_23[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[7] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_262 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 ));
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE1  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN5(), .PIN2INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .PIN3INT(), 
        .PIN4INT(), .PIN1INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT )
        , .PIN5INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT ));
    NOR3C \counter_0/counterInternal_RNI6T2B2[11]  (.A(
        \counter_0/COUNT8_23_3 ), .B(\counter_0/COUNT8_23_2 ), .C(
        \counter_0/COUNT8_23_4 ), .Y(\counter_0/N_29_19 ));
    DFN1E1 \stonyman_0/counterWait[16]  (.D(\stonyman_0/N_26 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[16]_net_1 ));
    NOR3B \stonyman_0/state_RNIPGHME[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_14_1 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIPGHME[6]_net_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[5]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ));
    BUFF \FIFO_TEST_COUNTER_0/XOR2_7  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[4] ), .Y(
        \FIFO_TEST_COUNTER_0/XOR2_7_Y ));
    OR2A \counter_0/COUNT_RNI1SV3[9]  (.A(\counter_0_COUNT[9] ), .B(
        \counter_0/COUNT_RNIMGI3[8]_net_1 ), .Y(
        \counter_0/COUNT_RNI1SV3[9]_net_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[18]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_783 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[18]_net_1 ));
    NOR2 \stonyman_0/substate_i_RNIRNFK1[0]  (.A(\stonyman_0/N_102 ), 
        .B(\stonyman_0/un46lto2 ), .Y(\stonyman_0/N_213 ));
    OA1C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_95 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .C(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 )
        );
    IOPAD_TRI \psram_address_pad[14]/U0/U0  (.D(
        \psram_address_pad[14]/U0/NET1 ), .E(
        \psram_address_pad[14]/U0/NET2 ), .PAD(psram_address[14]));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[18]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[18]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[18] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_23_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[23] ), .B(N_1301), .Y(N_1291));
    OR3B \counter_0/COUNT_RNO_0[31]  (.A(\counter_0_COUNT[30] ), .B(
        \counter_0_COUNT[29] ), .C(\counter_0/N_71 ), .Y(
        \counter_0/N_73 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_14[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[22] ));
    DFN1 \psram_cr_0/cr_int_i0/address[9]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[9] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 ));
    XA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m10  
        (.A(\stonyman_0/ADD_9x9_fast_I11_un1_Y_N_8 ), .B(
        \stonyman_0/mult1_un89_sum[5] ), .C(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m10_0 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_11 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIP9R14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_691 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_58  (.PIN4(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] ), .PIN6(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRESP_0), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] ), .PIN2(), .PIN3()
        , .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET ), 
        .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[4]  (.D(N_66), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[4] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ));
    XNOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I15_Y_0  
        (.A(\stonyman_0/counterPixelsCaptured[5]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[4]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I15_Y_0 ));
    DFN1 \stonyman_0/state[4]  (.D(\stonyman_0/state_RNO[4]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[4]_net_1 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[1]  (.A(
        \psram_cr_0/reg_addr[1] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[1] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_180 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[13]  (.A(
        \psram_cr_0/data_from_cr[13] ), .B(
        \psram_cr_0/ahb0/data_out[13]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_272 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIT870A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[3] ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_52 ), .Y(\stonyman_0/counterPixelsCaptured_8[9] )
        );
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_14  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[4] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[4] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_14_Y ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        );
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I5_un1_Y_a2_2  
        (.A(\stonyman_0/ADD_9x9_fast_I5_un1_Y_a2_1 ), .B(
        \stonyman_0/mult1_un89_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I5_un1_Y_a2_2 ));
    NOR3 \stonyman_0/state_RNO[3]  (.A(\stonyman_0/N_1684 ), .B(
        \stonyman_0/state_ns_i_0[3] ), .C(\stonyman_0/N_1682 ), .Y(
        \stonyman_0/state_RNO[3]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_7  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[1] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[1] ), .Y(\FIFO_PIXEL_0/XNOR2_7_Y ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        );
    MSS_CCC_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE0  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN2INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), 
        .PIN3INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHMSF1[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[3] ));
    OR2A \counter_0/COUNT_RNI4DQ11[11]  (.A(\counter_0_COUNT[11] ), .B(
        \counter_0/COUNT_RNII4TI[10]_net_1 ), .Y(
        \counter_0/COUNT_RNI4DQ11[11]_net_1 ));
    NOR3B \stonyman_0/substate_RNO_4[1]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(
        \stonyman_0/substate[17]_net_1 ), .C(\stonyman_0/state103 ), 
        .Y(\stonyman_0/substate_ns_i_1_m4_0_a2_1 ));
    MX2 \CoreAPB3_0/CAPB3llOI/PRDATA_i_m2[3]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[3] ), .B(
        \CoreAPB3_0_APBmslave1_PRDATA[3] ), .S(
        \CoreAPB3_0_APBmslave1_PADDR[8] ), .Y(
        \CoreAPB3_0/CAPB3llOI/N_80 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEC9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[8] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[8] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_689 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_0_0[5] )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[1]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9J6G[9]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_11 ));
    DFN1 \stonyman_0/state[6]  (.D(\stonyman_0/state_ns[6] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state[6]_net_1 ));
    NOR2 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3IOI_RNI1PR3U[2]  (.A(
        \COREAHBTOAPB3_0/N_152 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/CAHBtoAPB3l4 ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/N_179 ));
    NOR2 \stonyman_0/substate_RNI77IK[11]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .Y(
        \stonyman_0/tp_substateout_1_1[1] ));
    DFN1E1 \stonyman_0/counterWait[0]  (.D(
        \stonyman_0/counterWait_82[0] ), .CLK(SCLK_c), .E(
        \stonyman_0/N_25 ), .Q(\stonyman_0/counterWait[0]_net_1 ));
    DFN1P0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/HREADYOUT_4 ), .CLK(FAB_CLK), 
        .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        CoreAHBLite_0_AHBmslave6_HREADY));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_68  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET ));
    OR2 \FIFO_PIXEL_0/OR2_3  (.A(\FIFO_PIXEL_0/NAND3A_5_Y ), .B(
        \FIFO_PIXEL_0/MEMWENEG ), .Y(\FIFO_PIXEL_0/OR2_3_Y ));
    MX2 \stonyman_0/state_RNID96K2[7]  (.A(\stonyman_0/N_1481 ), .B(
        \stonyman_0/un45lto2 ), .S(\stonyman_0/state[7]_net_1 ), .Y(
        \stonyman_0/N_1529 ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[4]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[4] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[4] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_769 ));
    NOR3C \stonyman_0/state_RNI9N491[11]  (.A(
        \stonyman_0/substate_tr13_5_5 ), .B(\stonyman_0/state_inv_2_0 )
        , .C(\stonyman_0/substate_tr13_5_6 ), .Y(
        \stonyman_0/substate_tr13_5_8 ));
    IOBI_IB_OB_EB \psram_data_pad[11]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[11] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[11]/U0/NET3 ), .DOUT(
        \psram_data_pad[11]/U0/NET1 ), .EOUT(
        \psram_data_pad[11]/U0/NET2 ), .Y(\psram_data_in[11] ));
    DFN1 \psram_cr_0/cr_int_i0/address[1]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[1] ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[9]  (.A(
        \psram_cr_0/ahb0/data_out[9]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] ));
    DFN1 \psram_cr_0/ahb0/operation[15]  (.D(
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[15] ));
    XA1A \counter_0/COUNT_RNO[29]  (.A(\counter_0_COUNT[29] ), .B(
        \counter_0/N_71 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n29 ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[23] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_234 ));
    NOR2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_1[0]  (
        .A(\CoreAPB3_0_APBmslave1_PADDR[7] ), .B(
        \CoreAPB3_0_APBmslave1_PADDR[1] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_1[0]_net_1 )
        );
    NOR3B \stonyman_0/substate_RNO_1[17]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[17]_net_1 ), .C(
        \stonyman_0/state[10]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_0[17] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_250 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[27]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[27] ));
    OR3 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_Y_1  
        (.A(\stonyman_0/ADD_9x9_fast_I9_un1_Y_a5 ), .B(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a6 ), .C(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a3 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_Y_1 ));
    IOPAD_BI \psram_data_pad[3]/U0/U0  (.D(\psram_data_pad[3]/U0/NET1 )
        , .E(\psram_data_pad[3]/U0/NET2 ), .Y(
        \psram_data_pad[3]/U0/NET3 ), .PAD(psram_data[3]));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[24]  (.A(
        \psram_cr_0/ahb0/operation[24]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[24] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_203 ));
    NOR2B \stonyman_0/incv_RNO_4  (.A(\stonyman_0/substate[8]_net_1 ), 
        .B(\stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1052 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[9] ));
    OR2 \FIFO_PIXEL_0/OR2_5  (.A(\FIFO_PIXEL_0/NAND3A_1_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_5_Y ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[6]  (.A(
        \psram_address_c[6] ), .B(\psram_cr_0/cr_int_i0/address_5[6] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_254 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[14]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[14] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] ));
    OR3 \stonyman_0/substate_i_RNO[0]  (.A(\stonyman_0/N_1537 ), .B(
        \stonyman_0/substate_ns_i_0_2[0] ), .C(\stonyman_0/N_1535 ), 
        .Y(\stonyman_0/substate_ns_i[0] ));
    NOR2B \stonyman_0/counterPixelsCaptured_RNIIAGA5[12]  (.A(
        \stonyman_0/state103_13 ), .B(\stonyman_0/state103_12 ), .Y(
        \stonyman_0/state103 ));
    DFN1E1 \counter_0/COUNT[22]  (.D(\counter_0/COUNT_n22 ), .CLK(
        SCLK_c), .E(\counter_0/COUNTe ), .Q(\counter_0_COUNT[22] ));
    NOR3B \stonyman_0/substate_RNO_7[3]  (.A(
        \stonyman_0/substate_tr32_3_7 ), .B(\stonyman_0/N_1021 ), .C(
        \stonyman_0/N_1939 ), .Y(\stonyman_0/substate_tr32_3_9 ));
    OAI1 \stonyman_0/state_RNO_1[10]  (.A(\stonyman_0/state[10]_net_1 )
        , .B(\stonyman_0/substate[14]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/state_ns_i_0_0[10] ));
    MX2 \adc081s101_0/conversionComplete_RNO_0  (.A(
        TP_adcConvComplete_c), .B(
        \adc081s101_0/un1_conversionComplete18 ), .S(
        \adc081s101_0/N_10 ), .Y(\adc081s101_0/N_104 ));
    NOR3C \stonyman_0/state_RNO_2[5]  (.A(\stonyman_0/N_121 ), .B(
        \stonyman_0/state53_0_a2_0 ), .C(
        \stonyman_0/state_ns_i_a4_1_0[5] ), .Y(\stonyman_0/N_1689 ));
    NOR2B \counter_0/counterInternal_RNI0PIB8[17]  (.A(
        \counter_0/COUNT8_4 ), .B(\counter_0/COUNT8_25 ), .Y(
        \counter_0/COUNT8 ));
    OR2A \stonyman_0/substate_RNO_5[5]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(\stonyman_0/un45lto2 ), .Y(
        \stonyman_0/N_1495 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[9]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[9] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[9] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[26]  (.A(
        \psram_cr_0/ahb0/N_237 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_190 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 ));
    AO1A \stonyman_0/state_RNO_0[11]  (.A(\stonyman_0/N_717 ), .B(
        \stonyman_0/un1_counterPixelsCaptured_15_4 ), .C(
        \stonyman_0/N_1664 ), .Y(\stonyman_0/N_1670 ));
    AO1 \psram_cr_0/ahb0/dt_req_RNO  (.A(\psram_cr_0/ahb0/operation5 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\psram_cr_0/ahb0/N_65 ), .Y(
        \psram_cr_0/ahb0/dt_req_RNO_net_1 ));
    IOTRI_OB_EB \psram_address_pad[7]/U0/U1  (.D(\psram_address_c[7] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[7]/U0/NET1 ), .EOUT(
        \psram_address_pad[7]/U0/NET2 ));
    NOR3B \stonyman_0/state_RNIPD7N7[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_7 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIPD7N7[6]_net_1 ));
    IOTRI_OB_EB \led_pad[1]/U0/U1  (.D(\led_c[1] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[1]/U0/NET1 ), .EOUT(\led_pad[1]/U0/NET2 ));
    NOR2 \stonyman_0/substate_RNO_0[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/state[1]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_0[7] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[20]  (.A(
        \psram_cr_0/ahb0/N_199 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_9[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[27] ));
    OR2 \stonyman_0/un3_counterWait_I_47  (.A(
        \stonyman_0/counterWait[15]_net_1 ), .B(
        \stonyman_0/counterWait[16]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[11] ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[7]  (.D(
        \stonyman_0/state_RNIUIDBJ[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[7] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[12]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[12] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]  (.D(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave5_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ));
    NOR3B \stonyman_0/counterWait_RNO[8]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_23 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_18 ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNI1AOS2  (.A(
        \psram_cr_0/cr_int_i0/N_111 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ));
    NOR3B \stonyman_0/counterWait_RNO[3]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_9 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_12 ));
    OR3 \stonyman_0/un3_counterWait_I_76  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[19] ), .Y(\stonyman_0/N_6 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8JGQ1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[23] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[23] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_704 ));
    OR2A \stonyman_0/state_RNI89GJB[11]  (.A(\stonyman_0/N_1917 ), .B(
        \stonyman_0/un1_state_18 ), .Y(\stonyman_0/N_1921 ));
    DFN1P0 \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Oll/PSEL_RNO_net_1 ), .CLK(FAB_CLK), 
        .PRE(MSS_CORE2_0_M2F_RESET_N), .Q(
        COREAHBTOAPB3_0_APBmaster_PSELx_i_0));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 ));
    NOR3B \stonyman_0/counterWait_RNO[25]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_77 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_38 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[7] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l_RNIK3GP[0]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[1]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTIO0l[0]_net_1 )
        , .Y(\CoreAHBLite_0_AHBmslave6_HWDATA[0] ));
    NOR2A \CoreAPB3_0/CAPB3llOI/PRDATA_31_i  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[31] ), .B(N_1301), .Y(N_50));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNITPR14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_693 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8C9H1[6]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[5] ), .B(
        \CoreAHBLite_0_AHBmslave6_HRDATA[5] ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_686 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_11[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[25] ));
    DFN1 \stonyman_0/cachedPOINTER[0]  (.D(\stonyman_0/N_27_0 ), .CLK(
        SCLK_c), .Q(\stonyman_0/un45lto0 ));
    OR3 \stonyman_0/cachedPOINTER_RNIEFKB1[0]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(\stonyman_0/un45lto0 )
        , .C(\stonyman_0/cachedPOINTER[1]_net_1 ), .Y(
        \stonyman_0/un46lto2 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_60 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[24] ));
    NOR2B \stonyman_0/un1_counterPixelsCaptured_16_I_70  (.A(
        \stonyman_0/DWACT_ADD_CI_0_g_array_3[0] ), .B(
        \stonyman_0/DWACT_ADD_CI_0_pog_array_1_3[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_g_array_11_1[0] ));
    MX2 \FIFO_PIXEL_0/MX2_43  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB0 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB0 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_43_Y ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[6]  (.D(N_70), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[6] ));
    OR3A \psram_cr_0/cr_int_i0/nwe_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/N_67 ), .B(\psram_cr_0/cr_int_i0/N_76 ), 
        .C(\psram_cr_0/cr_int_i0/N_87 ), .Y(
        \psram_cr_0/cr_int_i0/nwe_5 ));
    OR3 \stonyman_0/incp_RNO_2  (.A(\stonyman_0/N_153 ), .B(
        \stonyman_0/un1_substate_9_sqmuxa_4_0_0 ), .C(
        \stonyman_0/N_152 ), .Y(\stonyman_0/un1_substate_9_sqmuxa_4 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[14] ));
    DFN1E0C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/PADDR[10]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_5[10] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ), 
        .Q(\CoreAPB3_0_APBmslave1_PADDR[10] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[7]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[7] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[7] ));
    MX2 \FIFO_PIXEL_0/MX2_79  (.A(\FIFO_PIXEL_0/RAM4K9_0_DOUTB1 ), .B(
        \FIFO_PIXEL_0/RAM4K9_3_DOUTB1 ), .S(\FIFO_PIXEL_0/BUFF_6_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_79_Y ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_27[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[3] ));
    DFN1 \psram_cr_0/cr_int_i0/start_1  (.D(
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/start_1_net_1 ));
    IOTRI_OB_EB \led_pad[7]/U0/U1  (.D(\led_c[7] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[7]/U0/NET1 ), .EOUT(\led_pad[7]/U0/NET2 ));
    NOR3A \stonyman_0/substate_RNO_2[6]  (.A(\stonyman_0/un46lto2 ), 
        .B(\stonyman_0/state[7]_net_1 ), .C(
        \stonyman_0/state[12]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_1_1[6] ));
    DFN1 \psram_cr_0/ahb0/data_in[11]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[11] ));
    NOR3C \stonyman_0/state_RNO_2[6]  (.A(\stonyman_0/N_121 ), .B(
        \stonyman_0/state53_0_a2_0 ), .C(
        \stonyman_0/state_ns_0_a4_0_0[6] ), .Y(\stonyman_0/N_1691 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[0]  
        (.A(CoreAHBLite_0_AHBmslave6_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_73 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_81 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[12]  (.D(
        \psram_cr_0/cr_int_i0/N_44 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[12] ));
    NOR3B \psram_cr_0/cr_int_i0/enable_RNO_0  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .C(
        \psram_cr_0/cr_int_i0/start_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_98 ));
    NOR3A \stonyman_0/substate_RNO[14]  (.A(\stonyman_0/N_1505 ), .B(
        \stonyman_0/N_1591 ), .C(\stonyman_0/N_1482 ), .Y(
        \stonyman_0/substate_RNO[14]_net_1 ));
    NOR2B \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_RNIG054  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ));
    AND3 \FIFO_TEST_COUNTER_0/AND3_4  (.A(
        \FIFO_TEST_COUNTER_0/XNOR2_5_Y ), .B(
        \FIFO_TEST_COUNTER_0/XNOR2_3_Y ), .C(
        \FIFO_TEST_COUNTER_0/XNOR2_6_Y ), .Y(
        \FIFO_TEST_COUNTER_0/AND3_4_Y ));
    IOIN_IB \CLK50_pad/U0/U1  (.YIN(\CLK50_pad/U0/NET1 ), .Y(CLK50_c));
    OR2 \adc081s101_0/cntrWaitLeading_RNI72EI[1]  (.A(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitLeading[1]_net_1 ), .Y(
        \adc081s101_0/un7lto1 ));
    NOR3B \stonyman_0/counterWait_RNO[16]  (.A(
        \stonyman_0/counterWait8 ), .B(\stonyman_0/I_46 ), .C(
        \stonyman_0/counterWait_82_sn_N_4 ), .Y(\stonyman_0/N_26 ));
    MX2 \psram_cr_0/cr_int_i0/nbyte_en_1_RNO_0[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ), .B(psram_ncs0_c_c_c), 
        .S(\psram_cr_0/cr_int_i0/N_77 ), .Y(
        \psram_cr_0/cr_int_i0/N_230 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[29]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[29] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] ));
    BUFF \FIFO_PIXEL_0/XOR2_50  (.A(\FIFO_PIXEL_0/MEM_RADDR[10] ), .Y(
        \FIFO_PIXEL_0/XOR2_50_Y ));
    AO1C \stonyman_0/state_RNO_1[7]  (.A(\stonyman_0/N_1659 ), .B(
        \stonyman_0/state[7]_net_1 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/state_ns_i_0[7] ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIS2AV6[1]  (.A(
        \stonyman_0/cachedValue[4] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/state53_0_a2_0 ));
    NOR2 \stonyman_0/substate_RNIG4HB[11]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .Y(\stonyman_0/N_1387 ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_88 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]_net_1 ));
    NOR2B \stonyman_0/substate_RNO_0[12]  (.A(\stonyman_0/N_1605 ), .B(
        \stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1588 ));
    DFN1 \psram_cr_0/cr_int_i0/address[12]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[12] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_274 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 ));
    DFN1E1 \adc081s101_0/bitsRead[1]  (.D(\adc081s101_0/N_35 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[1]_net_1 ));
    AX1C \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[11]  (.A(
        \FIFO_PIXEL_0/XOR2_50_Y ), .B(\FIFO_PIXEL_0/AO1_16_Y ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[11] ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[11] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[10]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[10] ));
    XNOR2 \stonyman_0/counterPixelsCaptured_RNIVFHK[9]  (.A(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[9]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I15_Y_0_2 ));
    NOR2A \stonyman_0/cachedPOINTER_RNIKV2T[0]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(\stonyman_0/un45lto0 )
        , .Y(\stonyman_0/N_1546_1 ));
    DFN1E1 \stonyman_0/counterWait[6]  (.D(\stonyman_0/N_16 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[6]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_4  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[11] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[11] ), .Y(\FIFO_PIXEL_0/XNOR2_4_Y ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[6]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[6]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[6] ));
    OR2B \stonyman_0/substate_RNICSDQ1_0[1]  (.A(\stonyman_0/un46lto2 )
        , .B(\stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_1914 ));
    NOR2 \stonyman_0/state_RNO_0[2]  (.A(\stonyman_0/state[1]_net_1 ), 
        .B(\stonyman_0/N_1658 ), .Y(\stonyman_0/state_ns_i_a4_1_0[2] ));
    OR2A \counter_0/COUNT_RNIE5QK6[23]  (.A(\counter_0_COUNT[23] ), .B(
        \counter_0/COUNT_RNINOS56[22]_net_1 ), .Y(\counter_0/N_66 ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_89 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[7]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[12]  (.A(
        \psram_cr_0/data_from_cr[12] ), .B(
        \psram_cr_0/ahb0/data_out[12]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_271 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[28]  (.A(
        \psram_cr_0/ahb0/N_207 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[30]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[30] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[30] ));
    NOR2 \stonyman_0/state_RNIQGJG[5]  (.A(\stonyman_0/N_103 ), .B(
        \stonyman_0/N_1484 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_4_0 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_273 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[13]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_83 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[5] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] ));
    DFN1E1 \stonyman_0/counterWait[2]  (.D(\stonyman_0/N_1915 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[2]_net_1 ));
    NOR3C \stonyman_0/un1_counterPixelsCaptured_16_I_86  (.A(
        \stonyman_0/N_715 ), .B(\stonyman_0/N_716 ), .C(
        \stonyman_0/DWACT_ADD_CI_0_g_array_1[0] ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_g_array_2[0] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[4]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[4] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_WBINNXTSHIFT[1]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[1] ), .B(
        \FIFO_TEST_COUNTER_0/AND2_18_Y ), .Y(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[1] ));
    OR3 \stonyman_0/substate_RNIPQ55S[17]  (.A(
        \stonyman_0/substate_1_sqmuxa_10 ), .B(\stonyman_0/N_1709 ), 
        .C(\stonyman_0/substate_3_sqmuxa_3 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa ));
    DFN1 \adc081s101_0/cs  (.D(\adc081s101_0/N_67 ), .CLK(SCLK_c), .Q(
        CS_c));
    AOI1 \psram_cr_0/cr_int_i0/op_counter_n3_i_0_RNO  (.A(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_107 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_222 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_42 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[6]  (.A(
        \psram_cr_0/data_to_cr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[6] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[6] ));
    NOR2B \stonyman_0/substate_RNIL1102[11]  (.A(\stonyman_0/N_1547_1 )
        , .B(\stonyman_0/N_1506 ), .Y(\stonyman_0/N_1547 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_3[8]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[8] ), .Y(
        \psram_cr_0/ahb0/operation_m[8] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[15]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .C(\psram_cr_0/ahb0/data_out_m[15] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] ));
    DFN1 \stonyman_0/state[9]  (.D(\stonyman_0/state_ns[9] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state[9]_net_1 ));
    XOR2 \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[6]  (.A(
        \FIFO_PIXEL_0/MEM_RADDR[6] ), .B(\FIFO_PIXEL_0/AO1_2_Y ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[6] ));
    NOR3A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un75_sum_ADD_9x9_fast_I1_G0N_0  
        (.A(\stonyman_0/ADD_9x9_fast_I1_G0N_0_0_0 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0 ), .C(
        \stonyman_0/ADD_9x9_fast_I1_G0N_a1_0 ), .Y(
        \stonyman_0/I7_un1_Y ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[16]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[16] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIEQR52[18]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[14] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[5]  (.D(
        \psram_cr_0/cr_int_i0/N_30 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[5] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAN6G[9]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTI10I_2 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[13] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_192 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[14]  (.A(
        \psram_cr_0/cr_int_i0/N_170 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[14] ));
    NOR2B \stonyman_0/substate_i_RNO_5[0]  (.A(\stonyman_0/N_201 ), .B(
        \stonyman_0/N_1489 ), .Y(\stonyman_0/N_1536 ));
    AO1D \stonyman_0/writeEnable_RNO_1  (.A(stonyman_0_writeEnable), 
        .B(\stonyman_0/N_1662 ), .C(
        \stonyman_0/writeEnableState[1]_net_1 ), .Y(
        \stonyman_0/un1_writeEnable_1_sqmuxa_1 ));
    XA1 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m1  
        (.A(\stonyman_0/N148 ), .B(\stonyman_0/ADD_9x9_fast_I17_Y_2 ), 
        .C(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_2 ));
    OA1C 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un61_sum_ADD_9x9_fast_I17_Y_0  
        (.A(\stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_1 ), .C(
        \stonyman_0/ADD_9x9_fast_I17_Y_a0_0 ), .Y(
        \stonyman_0/mult1_un61_sum[8] ));
    CLKSRC 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRGT61_0[6]/U_CLKSRC  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRGT61[6]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[17]  (.D(N_22), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[17] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[6]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIl0II ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTll0II ));
    OR2 \counter_0/counterInternal_RNI6GAA1[3]  (.A(
        \counter_0/counterInternal_c2 ), .B(
        \counter_0/counterInternal[3]_net_1 ), .Y(
        \counter_0/counterInternal_c3 ));
    NOR2B \psram_cr_0/ahb0/data_in_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa ));
    OR2A \counter_0/counterInternal_RNI4FAV2[8]  (.A(
        \counter_0/COUNT8_22 ), .B(
        \counter_0/counterInternal[8]_net_1 ), .Y(
        \counter_0/counterInternal_c8 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_18[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[18] ));
    OR2A \stonyman_0/substate_RNIVHN89[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(\stonyman_0/counterWait8 )
        , .Y(\stonyman_0/N_1659 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(
        \psram_cr_0/ahb0/operation[29]_net_1 ), .Y(
        \psram_cr_0/ahb0/operation_m[29] ));
    NOR3A \stonyman_0/substate_RNO_4[3]  (.A(
        \stonyman_0/substate_tr32_1_1 ), .B(\stonyman_0/counterWait8 ), 
        .C(\stonyman_0/state20 ), .Y(\stonyman_0/N_1224 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[15]  (.A(
        \psram_cr_0/reg_addr[15] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[15] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_194 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[2] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_245 ));
    AO1B \stonyman_0/substate_RNIOQ424[1]  (.A(
        \stonyman_0/un1_substate_9_sqmuxa_1_i_a2_0_1 ), .B(
        \stonyman_0/N_109 ), .C(\stonyman_0/substate[1]_net_1 ), .Y(
        \stonyman_0/N_113 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[10]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_53 ), .Y(
        \stonyman_0/counterPixelsCaptured_8[10] ));
    IOTRI_OB_EB \psram_noe1_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\psram_noe1_pad/U0/NET1 ), .EOUT(
        \psram_noe1_pad/U0/NET2 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[14]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[14] ));
    OR2A \stonyman_0/state_RNI8CSR71[11]  (.A(\stonyman_0/N_71 ), .B(
        \stonyman_0/N_1921 ), .Y(\stonyman_0/N_110 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI6I8K[9]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[9] ));
    MX2 \psram_cr_0/ahb0/psram_addr_RNO_0[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[7] ), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_218 ));
    NOR2B \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]  (.A(
        \stonyman_apb3_0/stonyman_ioreg_0/N_87 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[5]_net_1 ));
    XNOR2 \stonyman_0/un3_counterWait_I_20  (.A(\stonyman_0/N_24_0 ), 
        .B(\stonyman_0/counterWait[7]_net_1 ), .Y(\stonyman_0/I_20 ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[8] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_187 ));
    NOR2 \stonyman_0/counterPixelsCaptured_RNIN6JM[15]  (.A(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[12]_net_1 ), .Y(
        \stonyman_0/d_m8_0_a5_1_0 ));
    XA1C \counter_0/counterInternal_RNO[3]  (.A(
        \counter_0/counterInternal_c2 ), .B(
        \counter_0/counterInternal[3]_net_1 ), .C(\counter_0/COUNTe ), 
        .Y(\counter_0/N_439_i ));
    AO1A \stonyman_0/substate_RNIDT3862[3]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_1 ), .B(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_1_1 ), .C(
        \stonyman_0/N_213 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_o2_0 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_8[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[28] ));
    AO13 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un96_sum_ADD_9x9_fast_I9_Y  
        (.A(\stonyman_0/mult1_un89_sum[7] ), .B(
        \stonyman_0/counterPixelsCaptured[7]_net_1 ), .C(
        \stonyman_0/counterPixelsCaptured[8]_net_1 ), .Y(
        \stonyman_0/N150_1 ));
    NOR2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a2_0  
        (.A(\stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[6]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a5_0 ));
    MX2 \FIFO_PIXEL_0/MX2_77  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB5 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB5 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_77_Y ));
    NOR3B \stonyman_0/state_RNI177I[4]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/substate_tr13_5_3 ), .C(
        \stonyman_0/state[4]_net_1 ), .Y(
        \stonyman_0/substate_tr13_5_6 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[28]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_793 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[28]_net_1 ));
    DFN1E1 \counter_0/COUNT[2]  (.D(\counter_0/N_8 ), .CLK(SCLK_c), .E(
        \counter_0/COUNTe ), .Q(\counter_0_COUNT[2] ));
    OA1C \stonyman_0/state_RNO[7]  (.A(\stonyman_0/resv_0_sqmuxa ), .B(
        \stonyman_0/state[6]_net_1 ), .C(\stonyman_0/state_ns_i_1[7] ), 
        .Y(\stonyman_0/state_RNO[7]_net_1 ));
    NOR2 \stonyman_0/substate_RNO[15]  (.A(
        \stonyman_0/substate_ns_i_0[15] ), .B(\stonyman_0/N_1482 ), .Y(
        \stonyman_0/substate_RNO[15]_net_1 ));
    XA1C \counter_0/counterInternal_RNO[13]  (.A(\counter_0/N_28 ), .B(
        \counter_0/counterInternal[13]_net_1 ), .C(\counter_0/COUNTe ), 
        .Y(\counter_0/counterInternal_RNO[13]_net_1 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_5[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/N_88 ), .C(\psram_cr_0/reg_addr[0] ), .Y(
        \psram_cr_0/ahb0/operation_m[0] ));
    XNOR2 \stonyman_0/un3_counterWait_I_62  (.A(\stonyman_0/N_10 ), .B(
        \stonyman_0/counterWait[21]_net_1 ), .Y(\stonyman_0/I_62 ));
    XA1A \FIFO_TEST_COUNTER_0/AND2_EMPTYINT  (.A(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[7] ), .B(
        \FIFO_TEST_COUNTER_0/MEM_WADDR[7] ), .C(
        \FIFO_TEST_COUNTER_0/AND3_5_Y ), .Y(
        \FIFO_TEST_COUNTER_0/EMPTYINT ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_27_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[27] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[27] ));
    DFN1 \stonyman_0/substate[13]  (.D(\stonyman_0/substate_ns[13] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[13]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[1]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[1] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6BUP[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_9 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_19 ));
    OR2A \psram_cr_0/cr_int_i0/enable_RNIEAE8  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_110 ), .Y(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ));
    OR2 \stonyman_0/counterWait_RNIFIVM[1]  (.A(
        \stonyman_0/counterWait[1]_net_1 ), .B(
        \stonyman_0/counterWait[0]_net_1 ), .Y(
        \stonyman_0/counterWait8lt29_14 ));
    NOR3C \counter_0/counterInternal_RNIUQOB3[17]  (.A(
        \counter_0/N_29_15 ), .B(\counter_0/N_29_16 ), .C(
        \counter_0/COUNT8_2 ), .Y(\counter_0/COUNT8_4 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[10]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_5  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[1] ), 
        .Y(\stonyman_0/I_5_0_0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[13] ));
    OR2 \FIFO_PIXEL_0/OR2_15  (.A(\FIFO_PIXEL_0/NAND3B_4_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_15_Y ));
    XA1A \counter_0/COUNT_RNO[20]  (.A(\counter_0_COUNT[20] ), .B(
        \counter_0/N_62 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \counter_0/COUNT_n20 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[0]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[0] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[0] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[5]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave6_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1O0l/CAHBLTlI0l/N_88 ));
    OR2 \stonyman_0/un3_counterWait_I_90  (.A(
        \stonyman_0/counterWait[27]_net_1 ), .B(
        \stonyman_0/counterWait[28]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[25] ));
    OR3 \stonyman_0/un3_counterWait_I_50  (.A(
        \stonyman_0/counterWait[15]_net_1 ), .B(
        \stonyman_0/counterWait[16]_net_1 ), .C(
        \stonyman_0/counterWait[17]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[12] ));
    XA1A \counter_0/COUNT_RNO[5]  (.A(\counter_0_COUNT[5] ), .B(
        \counter_0/COUNT_RNIKBU1[4]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/N_14 ));
    OR2B \psram_cr_0/cr_int_i0/ac_counter_RNILLIU[1]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_69 ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[18]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[18] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[18] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[6] ));
    MX2B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un103_sum_ADD_9x9_fast_I11_un1_Y_m11  
        (.A(\stonyman_0/ADD_9x9_fast_I11_un1_Y_m11_d ), .B(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_N_6 ), .S(
        \stonyman_0/ADD_9x9_fast_I11_un1_Y_m11_s ), .Y(
        \stonyman_0/I11_un1_Y ));
    DFN1E1 \stonyman_0/pixelout[1]  (.D(\adc081s101_0_dataout[1] ), 
        .CLK(SCLK_c), .E(\stonyman_0/writeEnableState_nsss[0] ), .Q(
        \led_c[1] ));
    INV \stonyman_0/cachedValue_tile_I_3_RNO  (.A(\stonyman_0/N_9 ), 
        .Y(\stonyman_0/N_9_i ));
    DFN1 \psram_cr_0/ahb0/psram_addr[10]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[10] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[27]  (.A(
        \psram_cr_0/ahb0/max_addr[27] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[27] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[27] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[19]  (.A(
        \psram_address_c[19] ), .B(
        \psram_cr_0/cr_int_i0/address_5[19] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_267 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_62 ), .B(\psram_cr_0/ahb0/N_63 ), .C(
        \psram_cr_0/ahb0/N_64 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[31] ));
    XNOR2 \FIFO_TEST_COUNTER_0/XNOR2_12  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[2] ), .B(
        \FIFO_TEST_COUNTER_0/WBINNXTSHIFT[2] ), .Y(
        \FIFO_TEST_COUNTER_0/XNOR2_12_Y ));
    OR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNI7RMQ1[4]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOIIl ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_7 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_19 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10_24 ));
    NOR2A \stonyman_0/counterWait_RNO_5[1]  (.A(\stonyman_0/N_202 ), 
        .B(\stonyman_0/N_102 ), .Y(
        \stonyman_0/counterWait_82_i_a2_3_0[1] ));
    NOR2B \stonyman_0/substate_RNO_8[3]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/state[3]_net_1 ), .Y(
        \stonyman_0/substate_tr32_2_0 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[1]  (.A(
        \psram_cr_0/data_from_cr[1] ), .B(\psram_data_in[1] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_232 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[5]  (.A(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[5] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_174 ));
    IOPAD_TRI \psram_address_pad[21]/U0/U0  (.D(
        \psram_address_pad[21]/U0/NET1 ), .E(
        \psram_address_pad[21]/U0/NET2 ), .PAD(psram_address[21]));
    IOBI_IB_OB_EB \psram_data_pad[5]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[5] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[5]/U0/NET3 ), .DOUT(
        \psram_data_pad[5]/U0/NET1 ), .EOUT(
        \psram_data_pad[5]/U0/NET2 ), .Y(\psram_data_in[5] ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNIS7GJI[0]  (.A(
        \stonyman_0/N_1953 ), .B(\stonyman_0/state31_0_a2_1 ), .C(
        \stonyman_0/cachedValue[0] ), .Y(\stonyman_0/state31 ));
    OR3 \stonyman_0/un3_counterWait_I_81  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[30] ), .C(
        \stonyman_0/DWACT_FDEC_E[21] ), .Y(\stonyman_0/N_5_1 ));
    NOR2B \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[6]  (.A(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_771 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[6]_net_1 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[12]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_58 ), .Y(
        \stonyman_0/counterPixelsCaptured_8[12] ));
    NOR2B \stonyman_0/substate_RNIFQU8[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\stonyman_0/N_1605 ));
    DFN1 \psram_cr_0/ahb0/data_in[12]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[12] ));
    MX2 \psram_cr_0/ahb0/operation_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/operation[31]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[31] ), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_210 ));
    MX2A \stonyman_0/counterWait_82_i_a2_RNO_0[2]  (.A(
        \stonyman_0/N_1917 ), .B(\stonyman_0/counterWait8 ), .S(
        \stonyman_0/un1_state_18 ), .Y(\stonyman_0/N_135 ));
    OR2 \stonyman_0/state_RNIDO98[3]  (.A(\stonyman_0/state[3]_net_1 ), 
        .B(\stonyman_0/state[4]_net_1 ), .Y(\stonyman_0/N_1484 ));
    NOR3A \CoreAPB3_0/CAPB3llOI/PRDATA_i[4]  (.A(
        \CoreAPB3_0/CAPB3llOI/N_81 ), .B(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_0 ), .C(
        \CoreAPB3_0.CAPB3llOI.PREADY_iv_i_o3_1 ), .Y(N_66));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_75  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[3]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[3]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[3] ));
    OR3B \stonyman_0/state_RNIL72S9[6]  (.A(\stonyman_0/N_1490 ), .B(
        \stonyman_0/N_1476_i_0 ), .C(\stonyman_0/N_1478 ), .Y(
        \stonyman_0/N_1509 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[24]  (.A(
        \psram_cr_0/cr_int_i0/N_272 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 ));
    OR3 \stonyman_0/un3_counterWait_I_30  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[5] ), .Y(
        \stonyman_0/DWACT_FDEC_E[6] ));
    AX1C \FIFO_PIXEL_0/XOR2_RBINNXTSHIFT[5]  (.A(
        \FIFO_PIXEL_0/XOR2_10_Y ), .B(\FIFO_PIXEL_0/AO1_6_Y ), .C(
        \FIFO_PIXEL_0/MEM_RADDR[5] ), .Y(
        \FIFO_PIXEL_0/RBINNXTSHIFT[5] ));
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[20]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[20] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[20] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI92T14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_708 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] ));
    NOR3 \stonyman_0/substate_RNIENCI1[8]  (.A(\stonyman_0/N_74 ), .B(
        \stonyman_0/N_1392_i_0 ), .C(\stonyman_0/N_104 ), .Y(
        \stonyman_0/N_194 ));
    OR2A \stonyman_0/state_RNIRN2F9[10]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/N_1663 ), .Y(\stonyman_0/state_ns_i_0[12] ));
    MX2 \FIFO_PIXEL_0/MX2_95  (.A(\FIFO_PIXEL_0/RAM4K9_1_DOUTB7 ), .B(
        \FIFO_PIXEL_0/RAM4K9_2_DOUTB7 ), .S(\FIFO_PIXEL_0/BUFF_3_Y ), 
        .Y(\FIFO_PIXEL_0/MX2_95_Y ));
    MX2 \stonyman_0/inphi_RNO_0  (.A(\stonyman_0/substate[4]_net_1 ), 
        .B(inphi_c), .S(\stonyman_0/N_21 ), .Y(\stonyman_0/N_765 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1[0]  (
        .A(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_1[0]_net_1 )
        , .B(
        \stonyman_apb3_0.stonyman_ioreg_0.dataout_6_iv_0_a3_1_0[0] ), 
        .C(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_1_2[0]_net_1 )
        , .Y(\stonyman_apb3_0/stonyman_ioreg_0/N_40 ));
    DFN1C0 \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3OIl[1]  (.D(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ill/CAHBtoAPB3IIl[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        CoreAPB3_0_APBmslave0_0_PENABLE));
    NOR2 \stonyman_0/incv_RNO_6  (.A(\stonyman_0/state[5]_net_1 ), .B(
        \stonyman_0/state[11]_net_1 ), .Y(
        \stonyman_0/un1_substate_8_sqmuxa_i_a2_0 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[2]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[2] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[2] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[21]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[21] ));
    XOR2 \FIFO_PIXEL_0/XOR2_WBINNXTSHIFT[6]  (.A(
        \FIFO_PIXEL_0/MEM_WADDR[6] ), .B(\FIFO_PIXEL_0/AO1_9_Y ), .Y(
        \FIFO_PIXEL_0/WBINNXTSHIFT[6] ));
    NOR2A 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un117_sum_ADD_9x9_fast_I9_un1_Y_a6  
        (.A(\stonyman_0/counterPixelsCaptured[4]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[5]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I9_un1_Y_a6 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[11] ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[3]  (.D(
        \psram_cr_0/cr_int_i0/N_65 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        );
    NOR3 \stonyman_0/cachedValue_tile_DIN_REG1_RNIS2AV6_1[1]  (.A(
        \stonyman_0/cachedValue[4] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/cachedValue[3] ), .Y(\stonyman_0/N_122 ));
    AO1A \stonyman_0/state_RNI2IJG1[4]  (.A(\stonyman_0/N_1387 ), .B(
        \stonyman_0/state[4]_net_1 ), .C(\stonyman_0/un1_state_18_1 ), 
        .Y(\stonyman_0/un1_state_18_2_0 ));
    OR2A \counter_0/counterInternal_RNO[7]  (.A(\counter_0/N_443_tz ), 
        .B(\counter_0/COUNTe ), .Y(
        \counter_0/counterInternal_RNO[7]_net_1 ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[9]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO[9]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[9] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[7]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[7] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9AT14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_699 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] ));
    OR2B \psram_cr_0/cr_int_i0/enable_RNIJA44  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/cr_int_i0/N_72 ));
    AOI1 \psram_cr_0/cr_int_i0/op_counter_RNO_0[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_106 ));
    NOR3B \psram_cr_0/cr_int_i0/op_counter_RNI28G7[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(\psram_cr_0/cr_int_i0/N_110 ));
    MX2 \psram_cr_0/ahb0/data_in_RNO_0[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(
        \CoreAHBLite_0_AHBmslave5_HWDATA[10] ), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_253 ));
    AO1 \stonyman_0/substate_RNO_6[3]  (.A(
        \stonyman_0/substate_ns_0_1088_0 ), .B(\stonyman_0/N_1604 ), 
        .C(\stonyman_0/substate_ns_0_1[3] ), .Y(
        \stonyman_0/substate_ns_0_2[3] ));
    DFN1 \stonyman_0/substate[9]  (.D(
        \stonyman_0/substate_RNO[9]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[9]_net_1 ));
    NOR2 \stonyman_0/state_RNIPKEC[1]  (.A(\stonyman_0/N_74 ), .B(
        \stonyman_0/state[1]_net_1 ), .Y(\stonyman_0/N_1476_i_0 ));
    DFN1 \psram_cr_0/ahb0/operation[18]  (.D(
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[18]_net_1 ));
    MX2 \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO_0[5]  (.A(
        \CoreAPB3_0_APBmslave0_0_PRDATA[5] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_6[5] ), .S(
        \stonyman_apb3_0/bus_read_enable ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_87 ));
    NOR2B \stonyman_0/state_RNI6LE6J[8]  (.A(
        \stonyman_0/resv_1_sqmuxa ), .B(\stonyman_0/state[8]_net_1 ), 
        .Y(\stonyman_0/substate_9_sqmuxa_5 ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_WADDR[3]  (.D(
        \FIFO_PIXEL_0/WBINNXTSHIFT[3] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_WADDR[3] ));
    NOR2 \stonyman_0/substate_RNO_21[3]  (.A(
        \stonyman_0/state[2]_net_1 ), .B(\stonyman_0/N_1485 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_2_0[3] ));
    DFN1 \psram_cr_0/ahb0/operation[26]  (.D(
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[26]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[10]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[10] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] ));
    DFN1E1 \stonyman_0/counterWait[3]  (.D(\stonyman_0/N_12 ), .CLK(
        SCLK_c), .E(\stonyman_0/N_25 ), .Q(
        \stonyman_0/counterWait[3]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[6]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[6] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[6] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_217 )
        );
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI21EA2[6]  (.A(
        \stonyman_0/DOUT_TMP[6] ), .B(\stonyman_0/DIN_REG1[6] ), .S(
        \stonyman_0/N_7_0 ), .Y(\stonyman_0/cachedValue[6] ));
    DFN1C0 \FIFO_PIXEL_0/DFN1C0_MEM_RADDR[10]  (.D(
        \FIFO_PIXEL_0/RBINNXTSHIFT[10] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .Q(\FIFO_PIXEL_0/MEM_RADDR[10] ));
    MX2 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[28]  (.A(
        \CoreAPB3_0_APBmslave1_PRDATA[28] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[28] ), .S(
        \fifo_32bit_apb3_0/bus_read_enable ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_793 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIS870A[6]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[2] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[2] ));
    NOR3B \psram_cr_0/ahb0/hready_reg_RNI6V1PB  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[1] ), .B(
        \psram_cr_0/ahb0/hwrite_reg4_2 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTOO0l[0] ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_3 ));
    DFN1 \stonyman_apb3_0/stonyman_ioreg_0/dataout[2]  (.D(
        \stonyman_apb3_0/stonyman_ioreg_0/dataout_RNO[2]_net_1 ), .CLK(
        SCLK_c), .Q(\CoreAPB3_0_APBmslave0_0_PRDATA[2] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_213 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[5]  (.D(N_68), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[5] ));
    NOR3B \stonyman_0/substate_RNI1NNFN[5]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/DWACT_ADD_CI_0_partial_sum_0[0] ), .C(
        \stonyman_0/N_197 ), .Y(\stonyman_0/N_27_0 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_175 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 ));
    NOR3C \stonyman_apb3_0/stonyman_ioreg_0/dataout_6_iv_0_a3_0[0]  (
        .A(\CoreAPB3_0_APBmslave1_PADDR[3] ), .B(
        \stonyman_apb3_0/stonyman_ioreg_0/N_41 ), .C(
        \FIFO_PIXEL_0_Q[0] ), .Y(
        \stonyman_apb3_0/stonyman_ioreg_0/N_33 ));
    DFN1 \psram_cr_0/ahb0/data_in_sel  (.D(
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_in_sel_net_1 ));
    OR3 \stonyman_0/substate_RNO[4]  (.A(\stonyman_0/N_1565 ), .B(
        \stonyman_0/substate_ns_0_0[4] ), .C(\stonyman_0/N_1568 ), .Y(
        \stonyman_0/substate_ns[4] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[0]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1II_0[3] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[4]  (.A(\psram_cr_0/ahb0/N_247 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 ));
    DFN1E1C0 \COREAHBTOAPB3_0/CAHBtoAPB3lll/HRDATA[29]  (.D(N_1297), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \COREAHBTOAPB3_0/CAHBtoAPB3II ), .Q(
        \CoreAHBLite_0_AHBmslave6_HRDATA[29] ));
    AO1 \psram_cr_0/cr_int_i0/active_data_RNO  (.A(
        \psram_cr_0/cr_int_i0/N_111 ), .B(MSS_CORE2_0_M2F_RESET_N), .C(
        \psram_cr_0/cr_int_i0/N_93 ), .Y(
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBAT14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_709 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] ));
    NOR3B 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un89_sum_ADD_9x9_fast_I12_Y_m12_0_a3_0_2  
        (.A(\stonyman_0/N126 ), .B(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_0_0 ), .C(
        \stonyman_0/mult1_un75_sum[6] ), .Y(
        \stonyman_0/ADD_9x9_fast_I12_Y_m12_0_a3_0_2 ));
    NOR3A \stonyman_0/state_RNIV8JF1[12]  (.A(
        \stonyman_0/un1_counterWait_1_sqmuxa_1_i_a2_6_0 ), .B(
        \stonyman_0/state[12]_net_1 ), .C(
        \stonyman_0/substate[5]_net_1 ), .Y(\stonyman_0/N_192 ));
    NOR2A \adc081s101_0/conversionComplete_RNO_4  (.A(
        \adc081s101_0/N_84 ), .B(TP_adcStartCapture_c), .Y(
        \adc081s101_0/N_62 ));
    IOPAD_TRI \psram_address_pad[7]/U0/U0  (.D(
        \psram_address_pad[7]/U0/NET1 ), .E(
        \psram_address_pad[7]/U0/NET2 ), .PAD(psram_address[7]));
    XA1A \counter_0/COUNT_RNO[9]  (.A(\counter_0_COUNT[9] ), .B(
        \counter_0/COUNT_RNIMGI3[8]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\counter_0/COUNT_n9 ));
    NOR3C \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6_4_0_a3  (.A(
        \CoreAPB3_0_APBmslave1_PADDR[2] ), .B(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/N_77 ), .C(
        \FIFO_TEST_COUNTER_0_Q[4] ), .Y(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_6[4] ));
    NOR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un82_sum_ADD_9x9_fast_I1_G0N_a0_0  
        (.A(\stonyman_0/counterPixelsCaptured[11]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured[15]_net_1 ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_P0N_a0_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_56  (.PIN4(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] ), .PIN6(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] ), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] ), .PIN2(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] ), .PIN3(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] ), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[26]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[25]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[27]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[25]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[26]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[27]INT_NET ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        );
    NOR2A \stonyman_0/state_i_RNITQL89[0]  (.A(\stonyman_0/N_77 ), .B(
        \stonyman_0/counterWait8 ), .Y(\stonyman_0/N_1939 ));
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE3  (.PIN2(
        GLMUXINT_GND), .PIN3(CLK50_c), .PIN4(GLMUXINT_GND), .PIN1(), 
        .PIN5(Phy_RMII_CLK_c), .PIN2INT(), .PIN3INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .PIN5INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT ));
    NOR2B \adc081s101_0/cntrWaitLeading_RNIDGHQ[1]  (.A(
        \adc081s101_0/un7lto1 ), .B(\adc081s101_0/N_109 ), .Y(
        \adc081s101_0/N_63 ));
    OA1A \stonyman_0/counterPixelsCaptured_RNO[13]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_1672 ), .C(
        \stonyman_0/I_60 ), .Y(
        \stonyman_0/counterPixelsCaptured_8[13] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[0]  (.A(
        \psram_cr_0/data_from_cr[0] ), .B(
        \psram_cr_0/ahb0/data_out[0]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_259 ));
    OR2 \FIFO_PIXEL_0/OR2_11  (.A(\FIFO_PIXEL_0/NAND3B_1_Y ), .B(
        \FIFO_PIXEL_0/MEMRENEG ), .Y(\FIFO_PIXEL_0/OR2_11_Y ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[2]  (.A(
        \psram_cr_0/ahb0/data_out[2]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[18] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[18] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[12] ));
    DFN1 \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout[1]  (.D(
        \fifo_32bit_apb3_0/fifo_32bit_ioreg_0/dataout_RNO_0[1]_net_1 ), 
        .CLK(SCLK_c), .Q(\CoreAPB3_0_APBmslave1_PRDATA[1] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        );
    DFN1E1C0 \FIFO_TEST_COUNTER_0/DFN1E1C0_Q[28]  (.D(
        \FIFO_TEST_COUNTER_0/QXI[28] ), .CLK(SCLK_c), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(\FIFO_TEST_COUNTER_0/DVLDI ), .Q(
        \FIFO_TEST_COUNTER_0_Q[28] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ));
    OR3 \stonyman_0/un3_counterWait_I_29  (.A(
        \stonyman_0/counterWait[6]_net_1 ), .B(
        \stonyman_0/counterWait[7]_net_1 ), .C(
        \stonyman_0/counterWait[8]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[5] ));
    DFN1 \psram_cr_0/ahb0/data_in[5]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[5] ));
    XOR2 \FIFO_TEST_COUNTER_0/XOR2_RBINNXTSHIFT[6]  (.A(
        \FIFO_TEST_COUNTER_0/MEM_RADDR[6] ), .B(
        \FIFO_TEST_COUNTER_0/AO1_18_Y ), .Y(
        \FIFO_TEST_COUNTER_0/RBINNXTSHIFT[6] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_18  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/cachedValue[4] ), 
        .C(\stonyman_0/cachedValue[5] ), .Y(
        \stonyman_0/DWACT_FINC_E[2] ));
    OR2 
        \stonyman_0/un1_counterPixelsCaptured_13_if_generate_plus.mult1_un110_sum_ADD_9x9_fast_I1_G0N_m13_i_o3  
        (.A(\stonyman_0/counterPixelsCaptured[8]_net_1 ), .B(
        \stonyman_0/mult1_un89_sum[7] ), .Y(
        \stonyman_0/ADD_9x9_fast_I1_G0N_N_16 ));
    OR2A \stonyman_0/substate_RNIH2JPE[17]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_210 ), .Y(
        \stonyman_0/N_116 ));
    NOR2A \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa  (.A(
        \COREAHBTOAPB3_0/CAHBtoAPB3l_i_3 ), .B(
        \COREAHBTOAPB3_0/CAHBtoAPB3Ol ), .Y(
        \COREAHBTOAPB3_0/CAHBtoAPB3lll/CAHBtoAPB3I1I_1_sqmuxa_net_1 ));
    NOR3B \stonyman_0/state_RNIRHV0H[6]  (.A(
        \stonyman_0/un1_cachedValue_7_0_a2_0_2[0] ), .B(
        \stonyman_0/I_17_0 ), .C(\stonyman_0/N_1473 ), .Y(
        \stonyman_0/state_RNIRHV0H[6]_net_1 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_RNIHL7KC1  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14_0 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTlI0I_17_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ));
    NOR2A \stonyman_0/substate_RNO_5[3]  (.A(
        \stonyman_0/substate_tr32_0_1 ), .B(\stonyman_0/counterWait8 ), 
        .Y(\stonyman_0/substate_tr32_0_2 ));
    XO1A \stonyman_0/counterPixelsCaptured_RNIO4PKI[10]  (.A(
        \stonyman_0/N146_2 ), .B(
        \stonyman_0/counterPixelsCaptured[10]_net_1 ), .C(
        \stonyman_0/d_m7_i_o3_0 ), .Y(
        \stonyman_0/counterPixelsCaptured_RNIO4PKI[10]_net_1 ));
    XNOR2 \FIFO_PIXEL_0/XNOR2_20  (.A(\FIFO_PIXEL_0/RBINNXTSHIFT[7] ), 
        .B(\FIFO_PIXEL_0/MEM_WADDR[7] ), .Y(\FIFO_PIXEL_0/XNOR2_20_Y ));
    OA1 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI72T14[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl114 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTllIl113 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_698 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_26[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(\CoreAHBLite_0_AHBmslave5_HWDATA[4] ));
    OR2A \psram_cr_0/cr_int_i0/ac_counter_RNO_0[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_69 ), .Y(\psram_cr_0/cr_int_i0/N_82 ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNISPDBH[1]  (.A(
        \stonyman_0/cachedValue[4] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/substate_tr13_5_10 ), .Y(
        \stonyman_0/substate_tr13_5_11 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
