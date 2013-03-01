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
       UART_0_TXD,
       adcConvComplete,
       adcStartCapture,
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
output UART_0_TXD;
output adcConvComplete;
output adcStartCapture;
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

    wire MSS_CORE2_0_M2F_RESET_N, FAB_CLK, 
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
        CoreAHBLite_0_AHBmslave5_HREADY, N_71, 
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
        \psram_cr_0.cr_int_i0.data_reg[15] , 
        \inputConditioner_0.conditioner[5] , \psram_data_in[0] , 
        \psram_data_in[1] , \psram_data_in[2] , \psram_data_in[3] , 
        \psram_data_in[4] , \psram_data_in[5] , \psram_data_in[6] , 
        \psram_data_in[7] , \psram_data_in[8] , \psram_data_in[9] , 
        \psram_data_in[10] , \psram_data_in[11] , \psram_data_in[12] , 
        \psram_data_in[13] , \psram_data_in[14] , \psram_data_in[15] , 
        CAPTURE_c, CLK50_c, CS_c, Phy_RMII_CLK_c, SCLK_c, 
        adcConvComplete_c, adcStartCapture_c, incp_c, incv_c, inphi_c, 
        \led_2_c[0] , \led_2_c[1] , \led_2_c[2] , \led_2_c[3] , 
        \led_net_0_c[0] , \led_net_0_c[1] , \led_net_0_c[2] , 
        \led_net_0_c[3] , \psram_address_c[0] , \psram_address_c[1] , 
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
        psram_nwe_c, resp_c, resv_c, N_39, N_45, N_55, N_29, N_33, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll , N_35, 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[2] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[1] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 , 
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.un1_CAHBLTI1OI , N_69, 
        N_67, N_65, N_63, N_61, N_59, N_57, N_53, N_51, N_49, N_47, 
        N_43, N_41, N_37, N_31, N_27, N_25, N_23, N_21, N_640, N_639, 
        N_638, N_637, N_636, N_635, N_634, 
        \CoreAHBLite_0_AHBmslave5_HADDR[9] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[8] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[7] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[6] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[5] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[4] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[3] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[1] , 
        \CoreAHBLite_0_AHBmslave5_HADDR[0] , 
        CoreAHBLite_0_AHBmslave5_HWRITE, 
        \inputConditioner_0/intermediate[0] , 
        \inputConditioner_0/conditioner[0]_net_1 , 
        \inputConditioner_0/intermediate[1] , 
        \inputConditioner_0/conditioner[1]_net_1 , 
        \inputConditioner_0/intermediate[2] , 
        \inputConditioner_0/conditioner[2]_net_1 , 
        \inputConditioner_0/intermediate[3] , 
        \inputConditioner_0/conditioner[3]_net_1 , 
        \inputConditioner_0/intermediate[4] , 
        \inputConditioner_0/conditioner[4]_net_1 , 
        \clkgenerator_0/SCLK_i , \clkgenerator_0/SCLK_i_i , 
        \psram_cr_0/data_from_cr[0] , \psram_cr_0/data_from_cr[1] , 
        \psram_cr_0/data_from_cr[2] , \psram_cr_0/data_from_cr[3] , 
        \psram_cr_0/data_from_cr[4] , \psram_cr_0/data_from_cr[5] , 
        \psram_cr_0/data_from_cr[6] , \psram_cr_0/data_from_cr[7] , 
        \psram_cr_0/data_from_cr[8] , \psram_cr_0/data_from_cr[9] , 
        \psram_cr_0/data_from_cr[10] , \psram_cr_0/data_from_cr[11] , 
        \psram_cr_0/data_from_cr[12] , \psram_cr_0/data_from_cr[13] , 
        \psram_cr_0/data_from_cr[14] , \psram_cr_0/data_from_cr[15] , 
        \psram_cr_0/max_addr[16] , \psram_cr_0/max_addr[13] , 
        \psram_cr_0/max_addr[11] , \psram_cr_0/max_addr[19] , 
        \psram_cr_0/max_addr[14] , \psram_cr_0/max_addr[24] , 
        \psram_cr_0/max_addr[23] , \psram_cr_0/max_addr[22] , 
        \psram_cr_0/max_addr[21] , \psram_cr_0/max_addr[20] , 
        \psram_cr_0/max_addr[18] , \psram_cr_0/max_addr[17] , 
        \psram_cr_0/max_addr[15] , \psram_cr_0/max_addr[12] , 
        \psram_cr_0/max_addr[10] , \psram_cr_0/max_addr[9] , 
        \psram_cr_0/max_addr[8] , \psram_cr_0/max_addr[7] , 
        \psram_cr_0/max_addr[6] , \psram_cr_0/max_addr[5] , 
        \psram_cr_0/max_addr[4] , \psram_cr_0/max_addr[3] , 
        \psram_cr_0/max_addr[2] , \psram_cr_0/max_addr[1] , 
        \psram_cr_0/max_addr[0] , \psram_cr_0/reg_addr[0] , 
        \psram_cr_0/reg_addr[1] , \psram_cr_0/reg_addr[2] , 
        \psram_cr_0/reg_addr[3] , \psram_cr_0/reg_addr[4] , 
        \psram_cr_0/reg_addr[5] , \psram_cr_0/reg_addr[6] , 
        \psram_cr_0/reg_addr[7] , \psram_cr_0/reg_addr[8] , 
        \psram_cr_0/reg_addr[9] , \psram_cr_0/reg_addr[10] , 
        \psram_cr_0/reg_addr[11] , \psram_cr_0/reg_addr[12] , 
        \psram_cr_0/reg_addr[13] , \psram_cr_0/reg_addr[14] , 
        \psram_cr_0/reg_addr[15] , \psram_cr_0/data_to_cr[0] , 
        \psram_cr_0/data_to_cr[1] , \psram_cr_0/data_to_cr[2] , 
        \psram_cr_0/data_to_cr[3] , \psram_cr_0/data_to_cr[4] , 
        \psram_cr_0/data_to_cr[5] , \psram_cr_0/data_to_cr[6] , 
        \psram_cr_0/data_to_cr[7] , \psram_cr_0/data_to_cr[8] , 
        \psram_cr_0/data_to_cr[9] , \psram_cr_0/data_to_cr[10] , 
        \psram_cr_0/data_to_cr[11] , \psram_cr_0/data_to_cr[12] , 
        \psram_cr_0/data_to_cr[13] , \psram_cr_0/data_to_cr[14] , 
        \psram_cr_0/data_to_cr[15] , \psram_cr_0/dt_rw , 
        \psram_cr_0/dt_req , \psram_cr_0/dt_ack , 
        \psram_cr_0/start_0_0 , \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 , 
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_87 , 
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 , 
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_108 , \psram_cr_0/cr_int_i0/N_115 , 
        \psram_cr_0/cr_int_i0/op_counter_n3_i_0_net_1 , 
        \psram_cr_0/cr_int_i0/N_68 , \psram_cr_0/cr_int_i0/N_107 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_0 , 
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_96 , \psram_cr_0/cr_int_i0/N_76 , 
        \psram_cr_0/cr_int_i0/N_72 , \psram_cr_0/cr_int_i0/N_65 , 
        \psram_cr_0/cr_int_i0/ac_countere , 
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 , 
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_56 , \psram_cr_0/cr_int_i0/N_69 , 
        \psram_cr_0/cr_int_i0/un1_clr_i_1 , 
        \psram_cr_0/cr_int_i0/N_54 , \psram_cr_0/cr_int_i0/N_63 , 
        \psram_cr_0/cr_int_i0/N_106 , \psram_cr_0/cr_int_i0/N_20 , 
        \psram_cr_0/cr_int_i0/N_98 , \psram_cr_0/cr_int_i0/N_97 , 
        \psram_cr_0/cr_int_i0/N_93 , \psram_cr_0/cr_int_i0/N_77 , 
        \psram_cr_0/cr_int_i0/start_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/start_0_net_1 , 
        \psram_cr_0/cr_int_i0/start_1_net_1 , 
        \psram_cr_0/cr_int_i0/N_231 , 
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa , 
        \psram_cr_0/cr_int_i0/N_232 , \psram_cr_0/cr_int_i0/N_233 , 
        \psram_cr_0/cr_int_i0/N_234 , \psram_cr_0/cr_int_i0/N_235 , 
        \psram_cr_0/cr_int_i0/N_236 , \psram_cr_0/cr_int_i0/N_237 , 
        \psram_cr_0/cr_int_i0/N_238 , \psram_cr_0/cr_int_i0/N_239 , 
        \psram_cr_0/cr_int_i0/N_240 , \psram_cr_0/cr_int_i0/N_241 , 
        \psram_cr_0/cr_int_i0/N_243 , \psram_cr_0/cr_int_i0/N_246 , 
        \psram_cr_0/cr_int_i0/N_249 , 
        \psram_cr_0/cr_int_i0/address_5[1] , 
        \psram_cr_0/cr_int_i0/un1_op_counter_1 , 
        \psram_cr_0/cr_int_i0/N_251 , 
        \psram_cr_0/cr_int_i0/address_5[3] , 
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
        \psram_cr_0/cr_int_i0/N_258 , 
        \psram_cr_0/cr_int_i0/address_5[10] , 
        \psram_cr_0/cr_int_i0/N_263 , 
        \psram_cr_0/cr_int_i0/address_5[15] , 
        \psram_cr_0/cr_int_i0/N_265 , 
        \psram_cr_0/cr_int_i0/address_5[17] , 
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
        \psram_cr_0/cr_int_i0/N_212 , 
        \psram_cr_0/cr_int_i0/data_reg_6[1] , 
        \psram_cr_0/cr_int_i0/N_348 , \psram_cr_0/cr_int_i0/N_215 , 
        \psram_cr_0/cr_int_i0/data_reg_6[4] , 
        \psram_cr_0/cr_int_i0/N_216 , 
        \psram_cr_0/cr_int_i0/data_reg_6[5] , 
        \psram_cr_0/cr_int_i0/N_218 , 
        \psram_cr_0/cr_int_i0/data_reg_6[7] , 
        \psram_cr_0/cr_int_i0/N_220 , 
        \psram_cr_0/cr_int_i0/data_reg_6[9] , 
        \psram_cr_0/cr_int_i0/N_30 , \psram_cr_0/cr_int_i0/N_34 , 
        \psram_cr_0/cr_int_i0/N_38 , 
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[3]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[4]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 , 
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 , 
        \psram_cr_0/cr_int_i0/enable_net_1 , 
        \psram_cr_0/cr_int_i0/N_160 , 
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa , 
        \psram_cr_0/cr_int_i0/N_161 , \psram_cr_0/cr_int_i0/N_157 , 
        \psram_cr_0/cr_int_i0/N_163 , \psram_cr_0/cr_int_i0/N_165 , 
        \psram_cr_0/cr_int_i0/N_61 , 
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_111 , 
        \psram_cr_0/cr_int_i0/op_counter_n0 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 , 
        \psram_cr_0/cr_int_i0/start_net_1 , 
        \psram_cr_0/cr_int_i0/N_347 , 
        \psram_cr_0/cr_int_i0/un1_op_counter18 , 
        \psram_cr_0/cr_int_i0/nwe_5 , \psram_cr_0/cr_int_i0/N_67 , 
        \psram_cr_0/cr_int_i0/N_110 , \psram_cr_0/cr_int_i0/N_101 , 
        \psram_cr_0/cr_int_i0/N_227 , \psram_cr_0/cr_int_i0/N_99 , 
        \psram_cr_0/cr_int_i0/N_230 , 
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/address_5[0] , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 , 
        \psram_cr_0/cr_int_i0/N_244 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 , 
        \psram_cr_0/cr_int_i0/N_242 , 
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_248 , 
        \psram_cr_0/cr_int_i0/data_reg_6[11] , 
        \psram_cr_0/cr_int_i0/N_167 , 
        \psram_cr_0/cr_int_i0/data_reg_6[6] , 
        \psram_cr_0/cr_int_i0/N_162 , 
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 , 
        \psram_cr_0/cr_int_i0/N_245 , \psram_cr_0/cr_int_i0/N_42 , 
        \psram_cr_0/cr_int_i0/N_222 , \psram_cr_0/cr_int_i0/N_32 , 
        \psram_cr_0/cr_int_i0/N_217 , \psram_cr_0/cr_int_i0/N_262 , 
        \psram_cr_0/cr_int_i0/address_5[14] , 
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 , 
        \psram_cr_0/cr_int_i0/N_229 , \psram_cr_0/cr_int_i0/noe0_5 , 
        \psram_cr_0/cr_int_i0/N_100 , \psram_cr_0/cr_int_i0/N_102 , 
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 , 
        \psram_cr_0/cr_int_i0/N_22 , \psram_cr_0/cr_int_i0/N_58 , 
        \psram_cr_0/cr_int_i0/N_82 , \psram_cr_0/cr_int_i0/N_214 , 
        \psram_cr_0/cr_int_i0/data_reg_6[3] , 
        \psram_cr_0/cr_int_i0/N_223 , 
        \psram_cr_0/cr_int_i0/data_reg_6[12] , 
        \psram_cr_0/cr_int_i0/N_224 , 
        \psram_cr_0/cr_int_i0/data_reg_6[13] , 
        \psram_cr_0/cr_int_i0/N_225 , 
        \psram_cr_0/cr_int_i0/data_reg_6[14] , 
        \psram_cr_0/cr_int_i0/N_226 , 
        \psram_cr_0/cr_int_i0/data_reg_6[15] , 
        \psram_cr_0/cr_int_i0/N_44 , \psram_cr_0/cr_int_i0/N_46 , 
        \psram_cr_0/cr_int_i0/N_48 , \psram_cr_0/cr_int_i0/N_50 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 , 
        \psram_cr_0/cr_int_i0/N_159 , \psram_cr_0/cr_int_i0/N_171 , 
        \psram_cr_0/cr_int_i0/N_168 , \psram_cr_0/cr_int_i0/N_169 , 
        \psram_cr_0/cr_int_i0/N_170 , 
        \psram_cr_0/cr_int_i0/data_reg_6[10] , 
        \psram_cr_0/cr_int_i0/N_166 , 
        \psram_cr_0/cr_int_i0/address_5[2] , 
        \psram_cr_0/cr_int_i0/data_reg_6[8] , 
        \psram_cr_0/cr_int_i0/N_164 , 
        \psram_cr_0/cr_int_i0/address_5[16] , 
        \psram_cr_0/cr_int_i0/data_reg_6[2] , 
        \psram_cr_0/cr_int_i0/N_158 , 
        \psram_cr_0/cr_int_i0/data_reg_6[0] , 
        \psram_cr_0/cr_int_i0/N_156 , 
        \psram_cr_0/cr_int_i0/address_5[24] , 
        \psram_cr_0/cr_int_i0/address_5[11] , 
        \psram_cr_0/cr_int_i0/address_5[13] , 
        \psram_cr_0/cr_int_i0/address_5[12] , 
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 , 
        \psram_cr_0/cr_int_i0/N_264 , 
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 , 
        \psram_cr_0/cr_int_i0/N_261 , 
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 , 
        \psram_cr_0/cr_int_i0/N_260 , 
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 , 
        \psram_cr_0/cr_int_i0/N_259 , 
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 , 
        \psram_cr_0/cr_int_i0/N_272 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_213 , 
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 , 
        \psram_cr_0/cr_int_i0/N_211 , 
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 , 
        \psram_cr_0/cr_int_i0/N_250 , \psram_cr_0/cr_int_i0/N_40 , 
        \psram_cr_0/cr_int_i0/N_221 , \psram_cr_0/cr_int_i0/N_36 , 
        \psram_cr_0/cr_int_i0/N_219 , \psram_cr_0/ahb0/hwrite_reg4_2 , 
        \psram_cr_0/ahb0/hwrite_reg4_0 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] , 
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa , 
        \psram_cr_0/ahb0/operation_m[14] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] , 
        \psram_cr_0/ahb0/data_out[14]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] , 
        \psram_cr_0/ahb0/operation_m[2] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] , 
        \psram_cr_0/ahb0/data_out[2]_net_1 , \psram_cr_0/ahb0/N_111 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[6] , 
        \psram_cr_0/ahb0/operation_m[6] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[6] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[12] , 
        \psram_cr_0/ahb0/operation_m[12] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[12] , 
        \psram_cr_0/ahb0/data_out[12]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] , 
        \psram_cr_0/ahb0/operation_m[4] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] , 
        \psram_cr_0/ahb0/data_out[4]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] , 
        \psram_cr_0/ahb0/operation_m[15] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] , 
        \psram_cr_0/ahb0/data_out[15]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_6_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] , 
        \psram_cr_0/ahb0/operation_m[5] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] , 
        \psram_cr_0/ahb0/data_out[5]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] , 
        \psram_cr_0/ahb0/operation_m[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] , 
        \psram_cr_0/ahb0/data_out[13]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] , 
        \psram_cr_0/ahb0/operation_m[9] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[9] , 
        \psram_cr_0/ahb0/data_out[9]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] , 
        \psram_cr_0/ahb0/operation_m[10] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] , 
        \psram_cr_0/ahb0/data_out[10]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] , 
        \psram_cr_0/ahb0/operation_m[8] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] , 
        \psram_cr_0/ahb0/data_out[8]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] , 
        \psram_cr_0/ahb0/operation_m[0] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] , 
        \psram_cr_0/ahb0/un1_haddr_reg_8 , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] , 
        \psram_cr_0/ahb0/data_out_m[0] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[1] , 
        \psram_cr_0/ahb0/operation_m[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] , 
        \psram_cr_0/ahb0/data_out[1]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[1] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] , 
        \psram_cr_0/ahb0/operation_m[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[3] , 
        \psram_cr_0/ahb0/N_73 , 
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] , 
        \psram_cr_0/ahb0/N_69 , \psram_cr_0/ahb0/N_87 , 
        \psram_cr_0/ahb0/un1_haddr_reg_9 , 
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa_0_a2_1_0 , 
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0 , 
        \psram_cr_0/ahb0/fsm_net_1 , 
        \psram_cr_0/ahb0/hwrite_reg_net_1 , 
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1 , 
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 , \psram_cr_0/ahb0/N_97 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 , 
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 , 
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 , 
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[11] , \psram_cr_0/ahb0/N_68 , 
        \psram_cr_0/ahb0/N_70 , \psram_cr_0/ahb0/hwrite_reg4 , 
        \psram_cr_0/ahb0/N_56 , \psram_cr_0/ahb0/N_84 , 
        \psram_cr_0/ahb0/N_18 , \psram_cr_0/ahb0/N_57 , 
        \psram_cr_0/ahb0/hrdata_reg_17[31] , \psram_cr_0/ahb0/N_62 , 
        \psram_cr_0/ahb0/N_63 , \psram_cr_0/ahb0/N_64 , 
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 , \psram_cr_0/ahb0/N_95 , 
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[3] , \psram_cr_0/ahb0/N_72 , 
        \psram_cr_0/ahb0/N_74 , \psram_cr_0/ahb0/un1_haddr_reg_5 , 
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
        \psram_cr_0/ahb0/hrdata_reg_17[13] , 
        \psram_cr_0/ahb0/psram_addr_m[13] , 
        \psram_cr_0/ahb0/hrdata_reg_17[0] , 
        \psram_cr_0/ahb0/psram_addr_m[0] , 
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
        \psram_cr_0/ahb0/psram_addr_m[15] , \psram_cr_0/ahb0/N_168 , 
        \psram_cr_0/ahb0/fsm_0_sqmuxa , \psram_cr_0/ahb0/N_169 , 
        \psram_cr_0/ahb0/N_170 , \psram_cr_0/ahb0/N_172 , 
        \psram_cr_0/ahb0/N_173 , \psram_cr_0/ahb0/N_174 , 
        \psram_cr_0/ahb0/N_175 , \psram_cr_0/ahb0/N_176 , 
        \psram_cr_0/ahb0/N_177 , \psram_cr_0/ahb0/N_178 , 
        \psram_cr_0/ahb0/N_179 , \psram_cr_0/ahb0/operation5 , 
        \psram_cr_0/ahb0/N_180 , \psram_cr_0/ahb0/N_181 , 
        \psram_cr_0/ahb0/N_182 , \psram_cr_0/ahb0/N_183 , 
        \psram_cr_0/ahb0/N_184 , \psram_cr_0/ahb0/N_185 , 
        \psram_cr_0/ahb0/N_186 , \psram_cr_0/ahb0/N_187 , 
        \psram_cr_0/ahb0/N_188 , \psram_cr_0/ahb0/N_189 , 
        \psram_cr_0/ahb0/N_191 , \psram_cr_0/ahb0/N_193 , 
        \psram_cr_0/ahb0/N_194 , \psram_cr_0/ahb0/N_196 , 
        \psram_cr_0/ahb0/operation[17]_net_1 , \psram_cr_0/ahb0/N_197 , 
        \psram_cr_0/ahb0/operation[18]_net_1 , \psram_cr_0/ahb0/N_199 , 
        \psram_cr_0/ahb0/operation[20]_net_1 , \psram_cr_0/ahb0/N_200 , 
        \psram_cr_0/ahb0/operation[21]_net_1 , \psram_cr_0/ahb0/N_201 , 
        \psram_cr_0/ahb0/operation[22]_net_1 , \psram_cr_0/ahb0/N_202 , 
        \psram_cr_0/ahb0/operation[23]_net_1 , \psram_cr_0/ahb0/N_204 , 
        \psram_cr_0/ahb0/operation[25]_net_1 , \psram_cr_0/ahb0/N_205 , 
        \psram_cr_0/ahb0/operation[26]_net_1 , \psram_cr_0/ahb0/N_206 , 
        \psram_cr_0/ahb0/operation[27]_net_1 , \psram_cr_0/ahb0/N_207 , 
        \psram_cr_0/ahb0/operation[28]_net_1 , \psram_cr_0/ahb0/N_208 , 
        \psram_cr_0/ahb0/operation[29]_net_1 , \psram_cr_0/ahb0/N_209 , 
        \psram_cr_0/ahb0/operation[30]_net_1 , \psram_cr_0/ahb0/N_210 , 
        \psram_cr_0/ahb0/operation[31]_net_1 , \psram_cr_0/ahb0/N_211 , 
        \psram_cr_0/ahb0/psram_addr5 , \psram_cr_0/ahb0/N_212 , 
        \psram_cr_0/ahb0/N_213 , \psram_cr_0/ahb0/N_214 , 
        \psram_cr_0/ahb0/N_215 , \psram_cr_0/ahb0/N_216 , 
        \psram_cr_0/ahb0/N_217 , \psram_cr_0/ahb0/N_218 , 
        \psram_cr_0/ahb0/N_219 , \psram_cr_0/ahb0/N_220 , 
        \psram_cr_0/ahb0/N_221 , \psram_cr_0/ahb0/N_223 , 
        \psram_cr_0/ahb0/N_226 , \psram_cr_0/ahb0/N_228 , 
        \psram_cr_0/ahb0/N_229 , \psram_cr_0/ahb0/N_231 , 
        \psram_cr_0/ahb0/N_232 , \psram_cr_0/ahb0/N_233 , 
        \psram_cr_0/ahb0/N_234 , \psram_cr_0/ahb0/N_236 , 
        \psram_cr_0/ahb0/max_addr[25] , \psram_cr_0/ahb0/N_237 , 
        \psram_cr_0/ahb0/max_addr[26] , \psram_cr_0/ahb0/N_238 , 
        \psram_cr_0/ahb0/max_addr[27] , \psram_cr_0/ahb0/N_239 , 
        \psram_cr_0/ahb0/max_addr[28] , \psram_cr_0/ahb0/N_240 , 
        \psram_cr_0/ahb0/max_addr[29] , \psram_cr_0/ahb0/N_241 , 
        \psram_cr_0/ahb0/max_addr[30] , \psram_cr_0/ahb0/N_242 , 
        \psram_cr_0/ahb0/max_addr[31] , \psram_cr_0/ahb0/N_243 , 
        \psram_cr_0/ahb0/data_in7 , \psram_cr_0/ahb0/N_244 , 
        \psram_cr_0/ahb0/N_245 , \psram_cr_0/ahb0/N_246 , 
        \psram_cr_0/ahb0/N_247 , \psram_cr_0/ahb0/N_248 , 
        \psram_cr_0/ahb0/N_249 , \psram_cr_0/ahb0/N_250 , 
        \psram_cr_0/ahb0/N_251 , \psram_cr_0/ahb0/N_252 , 
        \psram_cr_0/ahb0/N_253 , \psram_cr_0/ahb0/N_255 , 
        \psram_cr_0/ahb0/N_257 , \psram_cr_0/ahb0/N_258 , 
        \psram_cr_0/ahb0/N_260 , \psram_cr_0/ahb0/N_4 , 
        \psram_cr_0/ahb0/N_261 , \psram_cr_0/ahb0/N_262 , 
        \psram_cr_0/ahb0/data_out[3]_net_1 , \psram_cr_0/ahb0/N_263 , 
        \psram_cr_0/ahb0/N_264 , \psram_cr_0/ahb0/N_265 , 
        \psram_cr_0/ahb0/data_out[6]_net_1 , \psram_cr_0/ahb0/N_266 , 
        \psram_cr_0/ahb0/data_out[7]_net_1 , \psram_cr_0/ahb0/N_267 , 
        \psram_cr_0/ahb0/N_268 , \psram_cr_0/ahb0/N_271 , 
        \psram_cr_0/ahb0/N_274 , \psram_cr_0/ahb0/data_in_sel_net_1 , 
        \psram_cr_0/ahb0/busy_net_1 , 
        \psram_cr_0/ahb0/psram_addr_sel_net_1 , 
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa , 
        \psram_cr_0/ahb0/N_61_0 , 
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa , 
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa , 
        \psram_cr_0/ahb0/operation_sel_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[24] , 
        \psram_cr_0/ahb0/operation[24]_net_1 , 
        \psram_cr_0/ahb0/un1_haddr_reg_6 , 
        \psram_cr_0/ahb0/data_out[0]_net_1 , 
        \psram_cr_0/ahb0/operation_m[17] , 
        \psram_cr_0/ahb0/hrdata_reg_17[17] , 
        \psram_cr_0/ahb0/operation_m[18] , 
        \psram_cr_0/ahb0/hrdata_reg_17[18] , 
        \psram_cr_0/ahb0/operation_m[19] , 
        \psram_cr_0/ahb0/operation[19]_net_1 , 
        \psram_cr_0/ahb0/hrdata_reg_17[19] , 
        \psram_cr_0/ahb0/operation_m[20] , 
        \psram_cr_0/ahb0/hrdata_reg_17[20] , 
        \psram_cr_0/ahb0/operation_m[21] , 
        \psram_cr_0/ahb0/hrdata_reg_17[21] , 
        \psram_cr_0/ahb0/operation_m[22] , 
        \psram_cr_0/ahb0/hrdata_reg_17[22] , 
        \psram_cr_0/ahb0/operation_m[23] , 
        \psram_cr_0/ahb0/hrdata_reg_17[23] , 
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
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/fsm_0_sqmuxa_1 , 
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[30]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 , 
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 , 
        \psram_cr_0/ahb0/N_171 , 
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 , 
        \psram_cr_0/ahb0/N_167 , 
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa , 
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa , 
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/N_190 , \psram_cr_0/ahb0/data_out[11]_net_1 , 
        \psram_cr_0/ahb0/N_65_0 , 
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/N_272 , 
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/N_270 , 
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 , 
        \psram_cr_0/ahb0/N_259 , \psram_cr_0/ahb0/N_24 , 
        \psram_cr_0/ahb0/dt_req_RNO_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/N_225 , 
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 , 
        \psram_cr_0/ahb0/N_273 , 
        \psram_cr_0/ahb0/data_out_RNO[10]_net_1 , 
        \psram_cr_0/ahb0/N_269 , \psram_cr_0/ahb0/N_192 , 
        \psram_cr_0/ahb0/N_224 , \psram_cr_0/ahb0/N_256 , 
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 , 
        \psram_cr_0/ahb0/N_222 , \psram_cr_0/ahb0/N_254 , 
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 , 
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 , 
        \psram_cr_0/ahb0/N_203 , 
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 , 
        \psram_cr_0/ahb0/N_198 , 
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 , 
        \psram_cr_0/ahb0/N_195 , 
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 , 
        \psram_cr_0/ahb0/N_235 , 
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 , 
        \psram_cr_0/ahb0/N_230 , 
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 , 
        \psram_cr_0/ahb0/N_227 , \psram_cr_0/ahb0/hrdata_reg_17[16] , 
        \psram_cr_0/ahb0/N_59_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTOO0II , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1ll , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_7 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_4 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_6 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_3 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113_0_a2_0_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[6] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_103 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_101 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_174 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_127 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_176 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTII1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m_i_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m_i_0 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_13_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_5_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_4_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_11_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_12_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_1_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_0_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_9_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_7_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_3_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/N_123 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNO_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_2[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_101 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_3_0[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_97 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_96 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_95 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 , 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 , 
        \adc081s101_0/conversionComplete_1_0_a3_0 , 
        \adc081s101_0/cntrWaitQuiet_n2_i_a3_0 , 
        \adc081s101_0/cntrWaitQuiet[0]_net_1 , 
        \adc081s101_0/cntrWaitQuiet[1]_net_1 , 
        \adc081s101_0/cntrWaitQuiet[2]_net_1 , 
        \adc081s101_0/dataout7_0_a3_0 , 
        \adc081s101_0/bitsRead[3]_net_1 , 
        \adc081s101_0/cntrWaitTrailinglde_0_o2_1 , 
        \adc081s101_0/bitsRead[2]_net_1 , 
        \adc081s101_0/bitsRead[0]_net_1 , 
        \adc081s101_0/cntrWaitTrailinglde_0_o2_0 , 
        \adc081s101_0/bitsRead[1]_net_1 , \adc081s101_0/N_35 , 
        \adc081s101_0/N_45 , \adc081s101_0/bitsRead_0_sqmuxa_1 , 
        \adc081s101_0/N_33 , \adc081s101_0/N_103 , 
        \adc081s101_0/bitsRead_0_sqmuxa , \adc081s101_0/N_104 , 
        \adc081s101_0/N_42 , \adc081s101_0/N_57 , 
        \adc081s101_0/un7lto1 , 
        \adc081s101_0/cntrWaitLeading[0]_net_1 , 
        \adc081s101_0/cntrWaitLeading[1]_net_1 , 
        \adc081s101_0/cntrWaitLeading15 , \adc081s101_0/N_46 , 
        \adc081s101_0/N_49 , \adc081s101_0/N_135 , 
        \adc081s101_0/cntrWaitTrailing[0]_net_1 , 
        \adc081s101_0/cntrWaitTrailinge , \adc081s101_0/N_62_1 , 
        \adc081s101_0/conversionComplete_RNO_net_1 , 
        \adc081s101_0/cs_RNO_net_1 , \adc081s101_0/N_136 , 
        \adc081s101_0/cntrWaitTrailing[1]_net_1 , \adc081s101_0/N_26 , 
        \adc081s101_0/N_40 , \adc081s101_0/cntrWaitTrailing[2]_net_1 , 
        \adc081s101_0/N_60 , \adc081s101_0/N_47 , \adc081s101_0/N_67 , 
        \adc081s101_0/cntrWaitLeading_5[0] , 
        \adc081s101_0/cntrWaitLeading_5[1] , \adc081s101_0/I_10 , 
        \adc081s101_0/bitsReade , \adc081s101_0/N_139 , 
        \adc081s101_0/N_52_i , \adc081s101_0/N_37 , 
        \adc081s101_0/cntrWaitQuiete , \adc081s101_0/N_29_1 , 
        \adc081s101_0/DWACT_ADD_CI_0_TMP[0] , 
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
        \MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC , \stonyman_0/N_194 , 
        \stonyman_0/counterWait_RNINVU29[26]_net_1 , 
        \stonyman_0/DWACT_ADD_CI_0_TMP[0] , 
        \stonyman_0/cachedPOINTER[1]_net_1 , 
        \stonyman_0/cachedValue[1] , \stonyman_0/cachedValue[0] , 
        \stonyman_0/cachedValue[3] , \stonyman_0/DWACT_FINC_E[0] , 
        \stonyman_0/counterWait[1]_net_1 , 
        \stonyman_0/counterWait[0]_net_1 , 
        \stonyman_0/counterWait[3]_net_1 , 
        \stonyman_0/DWACT_FDEC_E[0] , 
        \stonyman_0/counterWait[8]_net_1 , 
        \stonyman_0/DWACT_FDEC_E[4] , \stonyman_0/DWACT_FDEC_E[7] , 
        \stonyman_0/DWACT_FDEC_E[6] , \stonyman_0/N_5_i , 
        \stonyman_0/N_5_0 , \stonyman_0/N_167 , 
        \stonyman_0/substate_ns_0_i_a2_0_0[13] , 
        \stonyman_0/substate_ns_0_a2_9_0[0] , \stonyman_0/N_2415 , 
        \stonyman_0/substate_tr13_0_0_net_1 , 
        \stonyman_0/un35_i_a2_0_a2_0_a2_2_1[3] , \stonyman_0/N_2321 , 
        \stonyman_0/substate[2]_net_1 , \stonyman_0/N_3739 , 
        \stonyman_0/counterWait_2_m_0[2] , \stonyman_0/resp_0_sqmuxa , 
        \stonyman_0/N_171_i , \stonyman_0/substate[6]_net_1 , 
        \stonyman_0/substate[11]_net_1 , \stonyman_0/N_154 , 
        \stonyman_0/N_2392 , \stonyman_0/N_30 , 
        \stonyman_0/counterWait_8_m_i[2] , 
        \stonyman_0/counterWait_8[2] , 
        \stonyman_0/un1_counterWait_2_sqmuxa , 
        \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_0_net_1 , 
        \stonyman_0/substate_ns_14[0]_net_1 , 
        \stonyman_0/substate_ns_12[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_3[0]_net_1 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_2[0]_net_1 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_0[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_1[0] , 
        \stonyman_0/substate_ns_0_a4_1_0[0]_net_1 , 
        \stonyman_0/substate[13]_net_1 , 
        \stonyman_0/counterWait_80_10_m2_e_2_net_1 , 
        \stonyman_0/counterWait_80_10_m2_e_1_net_1 , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_3_s , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_1 , 
        \stonyman_0/un1_counterWait_4_sqmuxa , 
        \stonyman_0/un1_counterWait_1_sqmuxa_1 , 
        \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_2 , 
        \stonyman_0/un5_counterWait_m[2]_net_1 , 
        \stonyman_0/counterWait_RNO_2[2]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_3[4] , 
        \stonyman_0/counterWait_RNO_3[4]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_1[4] , \stonyman_0/N_430 , 
        \stonyman_0/counterWait_RNO_7[4]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_0[4] , 
        \stonyman_0/counterWait_RNO_9[4]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_0_m2_0_a2_1 , 
        \stonyman_0/un5_counterWait_m[0]_net_1 , 
        \stonyman_0/counterWait_RNO_3[0]_net_1 , 
        \stonyman_0/counterWait_6_m[0] , 
        \stonyman_0/counterWait_80_0_iv_0[8] , \stonyman_0/I_23 , 
        \stonyman_0/un1_state_0_sqmuxa , 
        \stonyman_0/counterWait_6_m[8] , 
        \stonyman_0/counterWait_80_0_iv_0[17] , \stonyman_0/I_49 , 
        \stonyman_0/counterWait_6_m[17] , 
        \stonyman_0/counterWait_80_0_iv_0[21] , \stonyman_0/I_62 , 
        \stonyman_0/counterWait_6_m[21] , 
        \stonyman_0/counterWait_80_0_iv_0[27] , \stonyman_0/I_86 , 
        \stonyman_0/counterWait_6_m[27] , 
        \stonyman_0/counterWait_80_0_iv_0[5] , \stonyman_0/I_14_0 , 
        \stonyman_0/counterWait_6_m[5] , 
        \stonyman_0/counterWait_80_0_iv_0[13] , \stonyman_0/I_37 , 
        \stonyman_0/counterWait_6_m[13] , 
        \stonyman_0/counterWait_80_0_iv_0[6] , \stonyman_0/I_17 , 
        \stonyman_0/counterWait_6_m[6] , 
        \stonyman_0/counterWait_80_0_iv_0[29] , \stonyman_0/I_92 , 
        \stonyman_0/counterWait_6_m[29] , 
        \stonyman_0/counterWait_80_0_iv_0[14] , \stonyman_0/I_40 , 
        \stonyman_0/counterWait_6_m[14] , 
        \stonyman_0/counterWait_80_0_iv_0[26] , \stonyman_0/I_82 , 
        \stonyman_0/counterWait_6_m[26] , 
        \stonyman_0/counterWait_80_0_iv_0[25] , \stonyman_0/I_77 , 
        \stonyman_0/counterWait_6_m[25] , 
        \stonyman_0/counterWait_80_0_iv_0[24] , \stonyman_0/I_74 , 
        \stonyman_0/counterWait_6_m[24] , 
        \stonyman_0/counterWait_80_0_iv_0[22] , \stonyman_0/I_65 , 
        \stonyman_0/counterWait_6_m[22] , 
        \stonyman_0/counterWait_80_0_iv_0[28] , \stonyman_0/I_89 , 
        \stonyman_0/counterWait_6_m[28] , 
        \stonyman_0/counterWait_80_0_iv_0[16] , \stonyman_0/I_46 , 
        \stonyman_0/counterWait_6_m[16] , 
        \stonyman_0/counterWait_80_0_iv_0[18] , \stonyman_0/I_53 , 
        \stonyman_0/counterWait_6_m[18] , 
        \stonyman_0/counterWait_80_0_iv_0[11] , \stonyman_0/I_32 , 
        \stonyman_0/counterWait_6_m[11] , 
        \stonyman_0/state_ns_i_0_a2_0_0_1[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_2_1[0] , \stonyman_0/N_641 , 
        \stonyman_0/state_ns_i_0_a2_0_0_0[0] , 
        \stonyman_0/counterWait_80_0_iv_1[12] , \stonyman_0/I_35 , 
        \stonyman_0/counterWait_80_0_iv_0[12] , 
        \stonyman_0/counterWait_8[12] , 
        \stonyman_0/counterWait_6_m[12] , 
        \stonyman_0/counterWait_80_0_iv_1[19] , \stonyman_0/I_56 , 
        \stonyman_0/counterWait_80_0_iv_0[19] , 
        \stonyman_0/counterWait_8[19] , 
        \stonyman_0/counterWait_6_m[19] , 
        \stonyman_0/counterWait_80_0_iv_0_1[20] , \stonyman_0/N_3508 , 
        \stonyman_0/N_3510 , \stonyman_0/N_3506 , 
        \stonyman_0/counterWait_80_0_iv_1[15] , \stonyman_0/I_43 , 
        \stonyman_0/counterWait_80_0_iv_0[15] , 
        \stonyman_0/counterWait_8[15] , 
        \stonyman_0/counterWait_6_m[15] , 
        \stonyman_0/counterWait_80_0_iv_1[7] , \stonyman_0/I_20 , 
        \stonyman_0/counterWait_80_0_iv_0[7] , 
        \stonyman_0/counterWait_8[7] , \stonyman_0/counterWait_6_m[7] , 
        \stonyman_0/counterWait_80_0_iv_i_9_m2_0_a2_0 , 
        \stonyman_0/counterWait_80_0_iv_itt_9_m3_0_a2_1 , 
        \stonyman_0/state_i_RNI0AH5H3[0]_net_1 , \stonyman_0/N_427 , 
        \stonyman_0/substate_ns_i_5_0[1] , 
        \stonyman_0/substate_ns_i_a4_1_2[1] , 
        \stonyman_0/substate_ns_i_5_tz[1] , \stonyman_0/N_1978 , 
        \stonyman_0/substate_ns_i_3[1] , \stonyman_0/N_2292 , 
        \stonyman_0/substate[12]_net_1 , 
        \stonyman_0/substate_ns_i_2[1] , 
        \stonyman_0/substate_ns_i_0[1] , \stonyman_0/N_2362 , 
        \stonyman_0/N_2358 , \stonyman_0/N_2277_i_1 , 
        \stonyman_0/substate[1]_net_1 , \stonyman_0/N_2364 , 
        \stonyman_0/counterWait_80_0_iv_2_m1_e_0 , 
        \stonyman_0/counterWait_0_sqmuxa_7 , 
        \stonyman_0/counterWait_1_sqmuxa_3 , 
        \stonyman_0/counterWait_2_m_0[14] , 
        \stonyman_0/counterWait[14]_net_1 , 
        \stonyman_0/counterWait_2_m_0[17] , 
        \stonyman_0/counterWait[17]_net_1 , 
        \stonyman_0/counterWait_2_m_0[13] , 
        \stonyman_0/counterWait[13]_net_1 , 
        \stonyman_0/counterWait_2_m_0[29] , 
        \stonyman_0/counterWait[29]_net_1 , 
        \stonyman_0/counterWait_2_m_0[16] , 
        \stonyman_0/counterWait[16]_net_1 , 
        \stonyman_0/counterWait_2_m_0[27] , 
        \stonyman_0/counterWait[27]_net_1 , 
        \stonyman_0/counterWait_2_m_0[26] , 
        \stonyman_0/counterWait[26]_net_1 , 
        \stonyman_0/counterWait_2_m_0[28] , 
        \stonyman_0/counterWait[28]_net_1 , 
        \stonyman_0/counterWait_2_m_0[22] , 
        \stonyman_0/counterWait[22]_net_1 , 
        \stonyman_0/counterWait_2_m_0[5] , 
        \stonyman_0/counterWait[5]_net_1 , 
        \stonyman_0/counterWait_2_m_0[11] , 
        \stonyman_0/counterWait[11]_net_1 , 
        \stonyman_0/counterWait_2_m_0[25] , 
        \stonyman_0/counterWait[25]_net_1 , 
        \stonyman_0/counterWait_2_m_0[21] , 
        \stonyman_0/counterWait[21]_net_1 , 
        \stonyman_0/counterWait_2_m_0[24] , 
        \stonyman_0/counterWait[24]_net_1 , 
        \stonyman_0/counterWait_2_m_0[8] , 
        \stonyman_0/counterWait_2_m_0[18] , 
        \stonyman_0/counterWait[18]_net_1 , 
        \stonyman_0/counterWait_2_m_0[6] , 
        \stonyman_0/counterWait[6]_net_1 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_0[0] , 
        \stonyman_0/N_1934_3 , \stonyman_0/state[10]_net_1 , 
        \stonyman_0/state_ns_i_a2_i_i_0_a2_1[9] , \stonyman_0/N_629 , 
        \stonyman_0/state[8]_net_1 , 
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0[9] , 
        \stonyman_0/state[9]_net_1 , \stonyman_0/N_587 , 
        \stonyman_0/substate_ns_0_0[4] , 
        \stonyman_0/substate_ns_0_a4_0_0[4] , 
        \stonyman_0/state_RNIU93R9[6]_net_1 , \stonyman_0/N_2382 , 
        \stonyman_0/substate_ns_22[0] , \stonyman_0/N_322 , 
        \stonyman_0/substate_tr13_5_6 , \stonyman_0/N_2406 , 
        \stonyman_0/substate_ns_21[0] , \stonyman_0/substate_ns_17[0] , 
        \stonyman_0/substate_ns_16[0] , \stonyman_0/substate_ns_18[0] , 
        \stonyman_0/substate_ns_20[0] , \stonyman_0/substate_tr30_0_0 , 
        \stonyman_0/state39 , \stonyman_0/N_2423 , 
        \stonyman_0/substate[8]_net_1 , \stonyman_0/N_2297 , 
        \stonyman_0/N_2434 , \stonyman_0/substate_ns_13[0] , 
        \stonyman_0/N_1933 , \stonyman_0/N_2410 , 
        \stonyman_0/substate_ns_0_a4_1_1[0] , 
        \stonyman_0/substate_i_0_RNO_13[0]_net_1 , \stonyman_0/N_2419 , 
        \stonyman_0/substate_ns_9[0] , \stonyman_0/substate_ns_10[0] , 
        \stonyman_0/N_2446 , \stonyman_0/substate_ns_0_a4_0[0] , 
        \stonyman_0/N_2352 , \stonyman_0/substate_ns_7[0] , 
        \stonyman_0/N_2408 , \stonyman_0/N_2405 , \stonyman_0/N_2407 , 
        \stonyman_0/substate_ns_4[0] , \stonyman_0/substate_ns_5[0] , 
        \stonyman_0/substate_ns_2[0] , \stonyman_0/substate_ns_1[0] , 
        \stonyman_0/N_1932 , \stonyman_0/N_2353 , \stonyman_0/N_2430 , 
        \stonyman_0/substate_tr13_2_1 , \stonyman_0/N_573 , 
        \stonyman_0/N_2351 , \stonyman_0/N_2418 , \stonyman_0/N_2355 , 
        \stonyman_0/N_2347 , \stonyman_0/state_ns_i_0_a2_0_0_o2_5[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a1_2[0] , 
        \stonyman_0/state30 , \stonyman_0/state_ns_i_0_a2_0_0_o2_3[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_o2_4[0] , 
        \stonyman_0/state_i_RNO_10[0]_net_1 , 
        \stonyman_0/state_ns_i_0_a2_0_0_o2_1[0] , \stonyman_0/N_594 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_6[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a0_0[0] , 
        \stonyman_0/N_252 , \stonyman_0/state_i_RNO_18[0]_net_1 , 
        \stonyman_0/state_i_RNO_19[0]_net_1 , 
        \stonyman_0/state_i_RNO_20[0]_net_1 , 
        \stonyman_0/substate_i[0] , \stonyman_0/N_2427 , 
        \stonyman_0/substate_ns_i_a4_1_1[1] , 
        \stonyman_0/substate_ns_i_2[7] , 
        \stonyman_0/substate_ns_i_a4_0_0[7] , 
        \stonyman_0/substate_ns_i_1[7] , \stonyman_0/N_2289 , 
        \stonyman_0/state_RNIN1TN9[6]_net_1 , \stonyman_0/N_2391 , 
        \stonyman_0/state_ns_i_a2_i_i_0_a2_3_0[9] , \stonyman_0/N_620 , 
        \stonyman_0/counterWait_80_0_iv_i_a2_2_2[4] , 
        \stonyman_0/counterWait_80_0_iv_i_a2_2_0[4] , 
        \stonyman_0/counterWait_RNO_15[4]_net_1 , 
        \stonyman_0/counterWait_RNO_16[4]_net_1 , \stonyman_0/N_2330 , 
        \stonyman_0/N_422 , \stonyman_0/state_ns_i_a2_0_i_0_a2_0[8] , 
        \stonyman_0/substate_ns_0_4[3] , \stonyman_0/N_2005 , 
        \stonyman_0/substate_ns_0_3[3] , \stonyman_0/state21 , 
        \stonyman_0/substate_tr30_1_0 , 
        \stonyman_0/substate_ns_0_2[3] , \stonyman_0/N_2375 , 
        \stonyman_0/substate_ns_0_0[3] , 
        \stonyman_0/substate_RNO_8[3]_net_1 , 
        \stonyman_0/substate_ns_0_a4_1_0[3] , \stonyman_0/N_2377 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_2[1] , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_4[1] , 
        \stonyman_0/N_300 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1[1] , 
        \stonyman_0/counterWait_RNO_11[1]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_0[1] , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0_0 , 
        \stonyman_0/counterWait_RNO_17[1]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_o2_1_0[9] , 
        \stonyman_0/state_i_RNI735OG1[0]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_o2_0_a1_0[9] , 
        \stonyman_0/counterWait_80_0_iv_i_0 , \stonyman_0/I_26 , 
        \stonyman_0/counterWait_RNIP6UA2[9]_net_1 , 
        \stonyman_0/state_ns_i_a2_i_0_i_a2_0[5] , 
        \stonyman_0/state[5]_net_1 , \stonyman_0/substate_tr13_5_4 , 
        \stonyman_0/N_1546_tz , \stonyman_0/substate_tr13_5_2 , 
        \stonyman_0/substate_tr13_5_1 , \stonyman_0/N_1934_4 , 
        \stonyman_0/N_1934_6 , \stonyman_0/state[2]_net_1 , 
        \stonyman_0/substate_ns_i_a4_0[7] , 
        \stonyman_0/substate[7]_net_1 , \stonyman_0/state[1]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_0_a0_0[23] , 
        \stonyman_0/counterWait[23]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_a2_a0_1[4] , 
        \stonyman_0/counterWait[4]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_1_a0_0[0] , 
        \stonyman_0/counterWait_2_m_0[0] , 
        \stonyman_0/counterWait_80_0_iv_i_1_a0_0[4] , 
        \stonyman_0/state_0_sqmuxa , 
        \stonyman_0/counterWait_80_0_iv_0_a0_0[10] , 
        \stonyman_0/counterWait[10]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_i_828_a0_0 , 
        \stonyman_0/counterWait[9]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_1_a0_0[2] , 
        \stonyman_0/state_ns_i_a2_i_i_m2_0_a2_0[2] , 
        \stonyman_0/substate_tr30_3_1 , 
        \stonyman_0/substate_ns_i_8_1[1] , \stonyman_0/N_590_1 , 
        \stonyman_0/substate_RNO_8[1]_net_1 , \stonyman_0/N_1976 , 
        \stonyman_0/substate_ns_i_1[12] , \stonyman_0/N_2436 , 
        \stonyman_0/cachedValue[5] , 
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a1_1[0] , 
        \stonyman_0/N_3746 , \stonyman_0/N_1933_9 , 
        \stonyman_0/state[4]_net_1 , \stonyman_0/substate_ns_0_1[2] , 
        \stonyman_0/substate_ns_0_a4_0[2] , 
        \stonyman_0/substate_ns_0_0[2] , 
        \stonyman_0/substate_ns_0_a4_4_1[2] , \stonyman_0/N_2442 , 
        \stonyman_0/N_2371 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_2[1] , 
        \stonyman_0/counterWait_80_0_iv_0_a2_2_0[1] , 
        \stonyman_0/N_209 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_0[1] , 
        \stonyman_0/N_3741 , \stonyman_0/I_5 , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_0 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_7_0[0] , 
        \stonyman_0/state[3]_net_1 , \stonyman_0/counterWait_80_0[2] , 
        \stonyman_0/counterWait_1_sqmuxa_6 , 
        \stonyman_0/state_ns_i_a2_0_i_0_a2_5_8_m2_e_2 , 
        \stonyman_0/state_ns_i_a2_0_i_0_a2_5_8_m2_e_0 , 
        \stonyman_0/N_619 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_5[0] , 
        \stonyman_0/N_161 , \stonyman_0/state[11]_net_1 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_4[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_3[0] , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_1[0] , 
        \stonyman_0/state_i[0]_net_1 , \stonyman_0/state_ns_0_6[7] , 
        \stonyman_0/N_3331 , \stonyman_0/state_tr25_32_0_i_0 , 
        \stonyman_0/N_3291 , \stonyman_0/state_ns_0_4[7] , 
        \stonyman_0/state_ns_0_10[7] , \stonyman_0/state_ns_0_9[7] , 
        \stonyman_0/state_ns_0_3_0[7] , \stonyman_0/state_ns_0_0[7] , 
        \stonyman_0/state_ns_0_1[7] , \stonyman_0/state_ns_0_3[7] , 
        \stonyman_0/N_3320 , \stonyman_0/N_3297 , 
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a1_0[1] , 
        \stonyman_0/substate_9_sqmuxa_5_s , \stonyman_0/state30_0_0 , 
        \stonyman_0/state30_0 , \stonyman_0/state39_0_a2_0 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_3_2_1[0] , 
        \stonyman_0/state48_0_a2_0_o2_0 , \stonyman_0/N_332 , 
        \stonyman_0/counterPixelsCaptured_1_sqmuxa , 
        \stonyman_0/substate_ns_0_0[5] , \stonyman_0/resp_1_sqmuxa_1 , 
        \stonyman_0/N_2383 , \stonyman_0/substate_1_sqmuxa_7 , 
        \stonyman_0/substate_ns_0_a2_4_0_m4_0_a2_1 , 
        \stonyman_0/state[7]_net_1 , 
        \stonyman_0/state_ns_i_a2_i_i_o2_0_0[4] , 
        \stonyman_0/cachedValue[2] , 
        \stonyman_0/substate_ns_0_o2_7_0[0] , \stonyman_0/N_2440 , 
        \stonyman_0/state_ns_i_a2_0_0_0_a2_0_0[1] , 
        \stonyman_0/un31lto0 , \stonyman_0/N_320 , 
        \stonyman_0/state_ns_i_a2_i_i_m2_0_a2_0_0[2] , 
        \stonyman_0/substate_ns_i_1[8] , \stonyman_0/N_109 , 
        \stonyman_0/substate_ns_i_0[8] , \stonyman_0/N_2286 , 
        \stonyman_0/state21_2 , \stonyman_0/state21_4 , 
        \stonyman_0/state21_0 , \stonyman_0/N_2929_li , 
        \stonyman_0/cachedValue[6] , \stonyman_0/cachedValue[7] , 
        \stonyman_0/substate_ns_i_0_0[11] , 
        \stonyman_0/substate_ns_0_a0_0[0] , \stonyman_0/N_2307 , 
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_3[9] , 
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_2[9] , 
        \stonyman_0/N_3731 , 
        \stonyman_0/state_ns_i_a2_i_i_0_o2_2_2[9] , 
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_0[9] , 
        \stonyman_0/substate[14]_net_1 , 
        \stonyman_0/substate_ns_0_a4_1_0[5] , 
        \stonyman_0/substate[5]_net_1 , 
        \stonyman_0/substate_ns_0_a4_0_0[10] , 
        \stonyman_0/substate[10]_net_1 , 
        \stonyman_0/substate_ns_0_a2_10_2[0] , \stonyman_0/N_2437 , 
        \stonyman_0/state39_0_a2_3 , 
        \stonyman_0/counterWait_80_0_iv_i_o2_3_4_m2_0_a2_m1_e_2 , 
        \stonyman_0/counterWait_80_0_iv_i_o2_3_4_m2_0_a2_m1_e_0 , 
        \stonyman_0/counterWait_1_sqmuxa_4 , 
        \stonyman_0/substate_ns_0_a4_0_2[3] , \stonyman_0/N_2290 , 
        \stonyman_0/substate_ns_0_a4_0_0[3] , 
        \stonyman_0/state[6]_net_1 , 
        \stonyman_0/substate_ns_0_o2_3_2_1[0] , \stonyman_0/N_2336 , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_m1_e_0 , 
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_7 , 
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_5 , 
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_3 , 
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_2 , 
        \stonyman_0/N_138_i_i_i_o2_8 , 
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_0 , 
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] , 
        \stonyman_0/state_ns_0_9_tz_2[7] , \stonyman_0/N_3715 , 
        \stonyman_0/N_172 , \stonyman_0/state_ns_0_0_0_o2_2_0[6] , 
        \stonyman_0/N_100_i_i_0_a2_0 , \stonyman_0/N_201 , 
        \stonyman_0/cachedPOINTER_23_0_i_i_a2_i_a2_0 , 
        \stonyman_0/N_2283_i_0 , 
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_3 , 
        \stonyman_0/N_390 , \stonyman_0/I_1_RNIVEI82 , 
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_2 , 
        \stonyman_0/DIN_REG1_RNI21EA2[6] , 
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_0 , 
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li , 
        \stonyman_0/DIN_REG1[0] , \stonyman_0/DIN_REG1_RNITQ5L2[2] , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_2 , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_1 , 
        \stonyman_0/d_m3_0_a2_1_1 , \stonyman_0/N_386 , 
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a2_1[0] , 
        \stonyman_0/N_391 , \stonyman_0/substate_ns_0_0_a2_0_2[16] , 
        \stonyman_0/substate_ns_0_0_a2_0_1[16] , 
        \stonyman_0/substate[16]_net_1 , 
        \stonyman_0/substate_ns_i_0[6] , 
        \stonyman_0/substate_ns_i_a4_2[6] , 
        \stonyman_0/substate_ns_i_a4_1[6] , 
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_4 , 
        \stonyman_0/counterWait_3_sqmuxa , 
        \stonyman_0/un1_counterWait_0_sqmuxa , 
        \stonyman_0/state_0_sqmuxa_m2_e_0 , 
        \stonyman_0/substate_ns_0_a2_7_3[0] , \stonyman_0/N_2329 , 
        \stonyman_0/substate[4]_net_1 , \stonyman_0/substate[3]_net_1 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_3_1 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_0 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_m5_i_0 , 
        \stonyman_0/state_ns_i_a2_0_0_0_a2_2_0[1] , 
        \stonyman_0/d_m2_0_a2_0 , \stonyman_0/N_323 , 
        \stonyman_0/un1_counterWait_2_sqmuxa_4 , 
        \stonyman_0/un1_counterWait_2_sqmuxa_0 , 
        \stonyman_0/counterWait_2_sqmuxa_7 , 
        \stonyman_0/counterWait_2_sqmuxa_5 , 
        \stonyman_0/un1_counterWait_2_sqmuxa_3 , 
        \stonyman_0/un1_counterWait_2_sqmuxa_2 , 
        \stonyman_0/counterWait_2_sqmuxa_3 , 
        \stonyman_0/un1_counterWait_2_sqmuxa_5 , 
        \stonyman_0/counterWait_2_sqmuxa_4 , 
        \stonyman_0/substate_ns_0_a2_7_1[0] , \stonyman_0/N_2315 , 
        \stonyman_0/N_2441 , \stonyman_0/N_625 , \stonyman_0/N_190 , 
        \stonyman_0/counterWait_1_sqmuxa_4_m3_0_a2_0 , 
        \stonyman_0/substate[9]_net_1 , 
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_5 , 
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_3 , 
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_1 , 
        \stonyman_0/N_262_i_0_o2_0 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_2 , 
        \stonyman_0/N_316 , \stonyman_0/N_2318 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_0 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_1 , 
        \stonyman_0/I_5_0 , \stonyman_0/DOUT_TMP[3] , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_0 , 
        \stonyman_0/substate_0_sqmuxa_4 , \stonyman_0/d_m3_0_a2_1_0 , 
        \stonyman_0/substate_ns_i_a4_0_0[6] , \stonyman_0/N_508 , 
        \stonyman_0/substate_ns_i_a2_6_m3_e_4 , 
        \stonyman_0/substate_ns_i_a2_6_m3_e_2 , 
        \stonyman_0/substate_ns_i_a2_6_m3_e_1 , \stonyman_0/N_2435 , 
        \stonyman_0/N_189 , \stonyman_0/substate_ns_0_a2_5_0_m4_e_5 , 
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_4 , 
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_1 , 
        \stonyman_0/N_2407_1 , \stonyman_0/substate_ns_i_o4_7_m3_e_4 , 
        \stonyman_0/substate_ns_i_o4_7_m3_e_2 , 
        \stonyman_0/substate_ns_i_o4_7_m3_e_0 , 
        \stonyman_0/state_0_sqmuxa_m2_e_3 , 
        \stonyman_0/state_0_sqmuxa_m2_e_1 , 
        \stonyman_0/counterWait_1_sqmuxa_6_0 , \stonyman_0/N_549 , 
        \stonyman_0/N_2294 , \stonyman_0/un32lto2 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_7_0 , 
        \stonyman_0/N_612 , \stonyman_0/substate[15]_net_1 , 
        \stonyman_0/un1_substate35_i_a2_3 , 
        \stonyman_0/un1_substate35_i_a2_1 , \stonyman_0/N_2206 , 
        \stonyman_0/led_2_c_1[2] , 
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_6 , 
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_3 , 
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_4 , 
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_1 , 
        \stonyman_0/N_138_i_i_i_o2_7_2 , 
        \stonyman_0/N_138_i_i_i_o2_7_3 , \stonyman_0/N_138_i_i_i_o2_6 , 
        \stonyman_0/un43_i_0_a2_2 , \stonyman_0/un43_i_0_a2_0 , 
        \stonyman_0/DOUT_5_a0_0[3] , \stonyman_0/DIN_REG1[3] , 
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0_0[3] , 
        \stonyman_0/substate_tr13_3_10_0 , \stonyman_0/N_1933_1 , 
        \stonyman_0/state_ns_0_3_tz_0[7] , \stonyman_0/N_3714 , 
        \stonyman_0/state_ns_0_9_tz_3[7] , \stonyman_0/N_3716 , 
        \stonyman_0/state_ns_0_9_tz_0[7] , \stonyman_0/N_3718 , 
        \stonyman_0/N_3720 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_8_0 , 
        \stonyman_0/state60_0_a2_0_o2_0_0_m11_0_a3_0_0 , 
        \stonyman_0/DOUT_TMP[5] , \stonyman_0/DOUT_TMP[2] , 
        \stonyman_0/state60_0_a2_0_o2_0_0_m11_0_a3_0 , 
        \stonyman_0/DIN_REG1[5] , \stonyman_0/DIN_REG1[2] , 
        \stonyman_0/N_204 , \stonyman_0/state_ns_i_a2_i_i_0_o2_2_0[9] , 
        \stonyman_0/N_3732 , \stonyman_0/substate_tr13_2_0 , 
        \stonyman_0/un1_state_7_i_a4_0_1_0 , 
        \stonyman_0/substate_ns_i_a4_2_2_0[1] , \stonyman_0/N_2424 , 
        \stonyman_0/state_ns_0_1_tz_2[7] , 
        \stonyman_0/state_ns_0_1_tz_1[7] , 
        \stonyman_0/un35_i_a2_0_a2_0_a2_2_0[2] , 
        \stonyman_0/un1_counterWait_3_sqmuxa_0_0 , 
        \stonyman_0/state_ns_i_a2_i_a2_0_30_0_o4_i_o2_1[2] , 
        \stonyman_0/counterWait[19]_net_1 , 
        \stonyman_0/counterWait[20]_net_1 , \stonyman_0/led_2_c_1[1] , 
        \stonyman_0/state60_0_a2_0_o2_0_0_m4_0 , 
        \stonyman_0/WADDR_REG1[1] , \stonyman_0/N_5_1 , 
        \stonyman_0/N_208 , \stonyman_0/state_ns_0_10_tz_4[7] , 
        \stonyman_0/state_ns_0_10_tz_2[7] , 
        \stonyman_0/state_ns_0_10_tz_3[7] , 
        \stonyman_0/counterWait[12]_net_1 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_1tt_m3_0 , 
        \stonyman_0/state_tr25_30_0_i_a2_1 , 
        \stonyman_0/N_138_i_i_i_o2_6_0 , 
        \stonyman_0/counterWait[15]_net_1 , 
        \stonyman_0/state_ns_i_a2_i_a2_0_29_0_a2_0_o2_0[2] , 
        \stonyman_0/un35_i_a2_1_a2_2_a2_1[1] , 
        \stonyman_0/un33_i_a2_0_a2_1[1] , 
        \stonyman_0/un33_i_a2_0_a2_2[0] , 
        \stonyman_0/un33_i_a2_0_a2_1[0] , 
        \stonyman_0/un33_i_a2_0_a2_0[0] , 
        \stonyman_0/un35_i_a2_0_a2_1[0] , \stonyman_0/N_310 , 
        \stonyman_0/un1_state_0_sqmuxa_1_3_m2_0 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 , 
        \stonyman_0/counterWait_RNO_1[0]_net_1 , 
        \stonyman_0/counterWait_RNO[9]_net_1 , \stonyman_0/N_425 , 
        \stonyman_0/counterWait_RNO_2[9]_net_1 , 
        \stonyman_0/counterWait_80[23] , 
        \stonyman_0/counterWait_RNO_0[23]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_0_0[23] , \stonyman_0/N_11 , 
        \stonyman_0/counterWait_80[10] , 
        \stonyman_0/counterWait_RNO_0[10]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_0_0[10] , \stonyman_0/N_13 , 
        \stonyman_0/N_639 , 
        \stonyman_0/counterWait_RNINB7KH3[9]_net_1 , 
        \stonyman_0/counterWait_RNO_5[9]_net_1 , 
        \stonyman_0/counterWait_RNO_8[9]_net_1 , 
        \stonyman_0/counterWait_80_0_iv_0_a2_2_0_tz[1] , 
        \stonyman_0/N_1548_tz , \stonyman_0/substate_ns_i_a4_2_2[1] , 
        \stonyman_0/N_2298 , \stonyman_0/substate_ns_i_a4_9_1[1] , 
        \stonyman_0/N_2443 , \stonyman_0/substate_ns_0_a4_1[3] , 
        \stonyman_0/N_2317 , \stonyman_0/state30_3 , 
        \stonyman_0/N_542 , \stonyman_0/N_623 , \stonyman_0/N_378 , 
        \stonyman_0/DIN_REG1_RNIEC19J[0] , \stonyman_0/N_3745 , 
        \stonyman_0/state_RNO[8]_net_1 , \stonyman_0/N_574 , 
        \stonyman_0/N_576 , \stonyman_0/N_575 , \stonyman_0/N_3707 , 
        \stonyman_0/counterWait_80[19] , 
        \stonyman_0/counterWait_2[19] , 
        \stonyman_0/un1_counterWait_3_sqmuxa_7 , 
        \stonyman_0/counterWait_80[12] , 
        \stonyman_0/counterWait_2[12] , \stonyman_0/N_2201 , 
        \stonyman_0/counterWait_80[15] , 
        \stonyman_0/counterWait_2[15] , \stonyman_0/counterWait_80[7] , 
        \stonyman_0/counterWait_2[7] , 
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 , 
        \stonyman_0/counterWait_80[17] , \stonyman_0/N_2401 , 
        \stonyman_0/N_2006 , \stonyman_0/substate_tr30_2_0 , 
        \stonyman_0/N_411 , \stonyman_0/N_312 , 
        \stonyman_0/counterWait_RNO_6[1]_net_1 , 
        \stonyman_0/counterWait_80[1] , \stonyman_0/N_157 , 
        \stonyman_0/N_436 , \stonyman_0/N_435 , 
        \stonyman_0/counterWait_RNO[4]_net_1 , \stonyman_0/N_431 , 
        \stonyman_0/counterWait_RNO_2[4]_net_1 , \stonyman_0/N_3749 , 
        \stonyman_0/I_12 , \stonyman_0/counterWait_2_m[3] , 
        \stonyman_0/counterWait_6_m[3] , 
        \stonyman_0/un1_state_0_sqmuxa_1_1 , \stonyman_0/I_9 , 
        \stonyman_0/counterWait_80[3] , 
        \stonyman_0/un5_counterWait_m[3]_net_1 , \stonyman_0/N_2284 , 
        \stonyman_0/substate_ns[3] , \stonyman_0/N_617 , 
        \stonyman_0/N_609 , \stonyman_0/substate_RNO[14]_net_1 , 
        \stonyman_0/N_2296 , \stonyman_0/N_2344 , 
        \stonyman_0/counterWait_80[24] , 
        \stonyman_0/counterWait_80[25] , 
        \stonyman_0/substate_RNO[8]_net_1 , 
        \stonyman_0/substate_ns[16] , \stonyman_0/N_2402 , 
        \stonyman_0/N_168 , \stonyman_0/N_169 , \stonyman_0/N_605 , 
        \stonyman_0/N_377 , \stonyman_0/N_601 , \stonyman_0/N_607 , 
        \stonyman_0/N_165 , \stonyman_0/N_163 , 
        \stonyman_0/un1_substate_8_sqmuxa , \stonyman_0/N_192 , 
        \stonyman_0/N_3514 , \stonyman_0/substate_ns[5] , 
        \stonyman_0/N_2300 , \stonyman_0/N_638 , \stonyman_0/N_3710 , 
        \stonyman_0/N_592 , \stonyman_0/state_ns_i[0] , 
        \stonyman_0/N_618 , \stonyman_0/N_1816 , \stonyman_0/N_383 , 
        \stonyman_0/counterWait_80[29] , 
        \stonyman_0/counterWait_80[26] , 
        \stonyman_0/counterWait[7]_net_1 , 
        \stonyman_0/substate_RNO[11]_net_1 , \stonyman_0/N_174 , 
        \stonyman_0/N_2341 , \stonyman_0/counterWait_80[5] , 
        \stonyman_0/counterWait_80[6] , \stonyman_0/counterWait_80[8] , 
        \stonyman_0/counterWait_80[11] , 
        \stonyman_0/counterWait_80[13] , 
        \stonyman_0/counterWait_80[14] , 
        \stonyman_0/counterWait_80[16] , 
        \stonyman_0/counterWait_80[18] , 
        \stonyman_0/counterWait_80[21] , 
        \stonyman_0/counterWait_80[22] , 
        \stonyman_0/counterWait_80[27] , 
        \stonyman_0/counterWait_80[28] , \stonyman_0/N_3289 , 
        \stonyman_0/N_3325 , \stonyman_0/N_3328 , \stonyman_0/I_59 , 
        \stonyman_0/state_RNO[11]_net_1 , \stonyman_0/N_2291 , 
        \stonyman_0/N_3332 , \stonyman_0/N_3334 , 
        \stonyman_0/cachedPOINTER[2]_net_1 , \stonyman_0/N_603 , 
        \stonyman_0/N_614 , \stonyman_0/N_3737 , \stonyman_0/N_3726 , 
        \stonyman_0/N_3328_2 , \stonyman_0/counterWait_80[20] , 
        \stonyman_0/N_3453 , \stonyman_0/N_2388 , 
        \stonyman_0/substate_ns[2] , \stonyman_0/N_2369 , 
        \stonyman_0/substate_RNO_2[2]_net_1 , 
        \stonyman_0/substate_RNO[6]_net_1 , \stonyman_0/N_2340 , 
        \stonyman_0/N_1933_10 , \stonyman_0/substate_RNO[7]_net_1 , 
        \stonyman_0/N_2338 , \stonyman_0/substate_RNO[12]_net_1 , 
        \stonyman_0/N_2398 , \stonyman_0/N_2327_i , 
        \stonyman_0/state_ns[7] , \stonyman_0/N_2209 , 
        \stonyman_0/un1_counterWait_3_sqmuxa , 
        \stonyman_0/un1_counterWait_3_sqmuxa_0 , 
        \stonyman_0/substate_RNO[1]_net_1 , 
        \stonyman_0/substate_ns_i_6[1] , \stonyman_0/substate_ns[4] , 
        \stonyman_0/N_2381 , \stonyman_0/N_2379 , 
        \stonyman_0/un35_i_a2_0_a2_0_a2_2[2] , 
        \stonyman_0/state_RNIQMT51[8]_net_1 , 
        \stonyman_0/substate_RNIL2U51[8]_net_1 , 
        \stonyman_0/substate_RNIC1TN1[8]_net_1 , 
        \stonyman_0/counterWait_RNO_14[1]_net_1 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_N_9 , 
        \stonyman_0/substate_i_0_RNO_17[0]_net_1 , \stonyman_0/N_2425 , 
        \stonyman_0/counterWait_RNO_12[4]_net_1 , 
        \stonyman_0/counterWait_RNO_11[4]_net_1 , 
        \stonyman_0/WADDR_REG1_RNI27MV1[0] , 
        \stonyman_0/WADDR_REG1_RNIVK8I_0[0] , \stonyman_0/I_4_2 , 
        \stonyman_0/DIN_REG1_RNI3NS51[7] , \stonyman_0/DOUT_TMP[7] , 
        \stonyman_0/DIN_REG1[7] , \stonyman_0/DOUT_5_7_m5_0 , 
        \stonyman_0/counterWait_RNO_15[1]_net_1 , 
        \stonyman_0/substate_ns[0] , \stonyman_0/I_1_RNIV0EA2 , 
        \stonyman_0/state_i_RNIGGJNI1[0]_net_1 , 
        \stonyman_0/state_RNIUOR5E[8]_net_1 , 
        \stonyman_0/substate_RNI5O628[1]_net_1 , 
        \stonyman_0/resv_RNO_4_net_1 , \stonyman_0/resv_RNO_1_net_1 , 
        \stonyman_0/resv_RNO_3_net_1 , \stonyman_0/resv_1_N_12 , 
        \stonyman_0/substate_RNIKP7U9[7]_net_1 , 
        \stonyman_0/resv_1_N_13 , \stonyman_0/resv_RNO_net_1 , 
        \stonyman_0/substate_RNI76KFB[6]_net_1 , \stonyman_0/N_112 , 
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_a4_N_8 , 
        \stonyman_0/counterWait_80_10_m2_e_2_RNIJDPN6_net_1 , 
        \stonyman_0/DIN_REG1_RNIRQ3A41[0] , 
        \stonyman_0/DIN_REG1_RNIBUL4L3[0] , 
        \stonyman_0/substate_ns_i_a4_7_0[1] , 
        \stonyman_0/substate_ns_i_a4_8_0[1] , 
        \stonyman_0/counterWait_RNO_2[0]_net_1 , 
        \stonyman_0/substate_RNIJ5BU44[7]_net_1 , 
        \stonyman_0/counterWait_RNO[0]_net_1 , 
        \stonyman_0/WADDR_REG1_RNI2F0T[2] , \stonyman_0/WADDR_REG1[2] , 
        \stonyman_0/counterWait_RNO[2]_net_1 , \stonyman_0/I_5_1 , 
        \stonyman_0/DOUT_5_0[3] , \stonyman_0/N_144 , 
        \stonyman_0/DIN_REG1_RNIS0EA2[0] , \stonyman_0/DOUT_TMP[0] , 
        \stonyman_0/substate_i_0_RNIPT1NK1[0]_net_1 , 
        \stonyman_0/DIN_REG1_RNIP6CD02[6] , 
        \stonyman_0/substate_RNIEEQIB[6]_net_1 , \stonyman_0/N_6 , 
        \stonyman_0/DOUT_TMP[6] , \stonyman_0/DIN_REG1[6] , 
        \stonyman_0/WADDR_REG1_RNI27MV1[2] , \stonyman_0/I_1_RNIQFOH , 
        \stonyman_0/DIN_REG1_RNIV3N3[1] , \stonyman_0/DIN_REG1[4] , 
        \stonyman_0/DIN_REG1[1] , \stonyman_0/DOUT_TMP[1] , 
        \stonyman_0/DOUT_TMP[4] , \stonyman_0/DIN_REG1_RNI4SC61[7] , 
        \stonyman_0/DIN_REG1_RNI3SC61[6] , 
        \stonyman_0/DIN_REG1_RNI2NS51[6] , \stonyman_0/WADDR_REG1[0] , 
        \stonyman_0/substate_i_0_RNO_16[0]_net_1 , 
        \stonyman_0/un1_state_0_sqmuxa_1_3_0 , 
        \stonyman_0/resp_1_sqmuxa , \stonyman_0/I_4_1 , 
        \stonyman_0/counterWait_80_0_iv_0_0_tz[23] , 
        \stonyman_0/counterWait_80_0_iv_i_a2_4_0[4] , 
        \stonyman_0/N_2337 , \stonyman_0/state_ns_i_a2_0_0_0_0[1] , 
        \stonyman_0/state_ns_i_a2_0_0_0_0_tz[1] , 
        \stonyman_0/un1_state_7_i_0_tz , \stonyman_0/N_2204 , 
        \stonyman_0/substate_ns_0_a4_3_0[2] , 
        \stonyman_0/substate_ns_0_a4_3_0[3] , 
        \stonyman_0/counterWait[2]_net_1 , 
        \stonyman_0/state_RNO[1]_net_1 , \stonyman_0/N_764 , 
        \stonyman_0/un1_counterWait_3_sqmuxa_3 , 
        \stonyman_0/un1_substate_2 , \stonyman_0/substate_0_sqmuxa_5 , 
        \stonyman_0/N_622 , \stonyman_0/incv_RNO_net_1 , 
        \stonyman_0/N_15 , \stonyman_0/I_70 , \stonyman_0/I_28 , 
        \stonyman_0/DIN_REG1_RNIUBB23[0] , 
        \stonyman_0/state_RNIRCPC5[6]_net_1 , \stonyman_0/I_5_0_0 , 
        \stonyman_0/state_RNIPD7N7[6]_net_1 , \stonyman_0/I_7_0 , 
        \stonyman_0/state_RNIQLB1C[6]_net_1 , \stonyman_0/I_9_0 , 
        \stonyman_0/state_RNIQMPBE[6]_net_1 , \stonyman_0/I_12_0 , 
        \stonyman_0/state_RNIRN7MG[6]_net_1 , \stonyman_0/I_14_1 , 
        \stonyman_0/state_RNITIDBJ[6]_net_1 , \stonyman_0/I_17_0 , 
        \stonyman_0/state_RNI1EJ0M[6]_net_1 , \stonyman_0/I_20_0 , 
        \stonyman_0/N_263 , \stonyman_0/N_2302 , \stonyman_0/N_646 , 
        \stonyman_0/startAdcCapture_RNO_net_1 , \stonyman_0/N_765 , 
        \stonyman_0/N_384 , \stonyman_0/N_3581 , \stonyman_0/N_635 , 
        \stonyman_0/N_72 , \stonyman_0/I_14 , \stonyman_0/N_70 , 
        \stonyman_0/I_13 , \stonyman_0/N_68 , 
        \stonyman_0/DWACT_ADD_CI_0_partial_sum[0] , \stonyman_0/N_28 , 
        \stonyman_0/N_760 , \stonyman_0/un1_cachedPOINTER_1_sqmuxa_1 , 
        \stonyman_0/resp_RNO_net_1 , \stonyman_0/N_763 , 
        \stonyman_0/N_647 , \stonyman_0/N_83 , \stonyman_0/N_2288 , 
        \stonyman_0/substate_ns[10] , \stonyman_0/N_187 , 
        \stonyman_0/substate_RNO[15]_net_1 , \stonyman_0/N_2343 , 
        \stonyman_0/N_2328 , \stonyman_0/N_2301 , \stonyman_0/N_762 , 
        \stonyman_0/inphi_RNO_net_1 , 
        \stonyman_0/substate_RNO[9]_net_1 , \stonyman_0/N_2342 , 
        \stonyman_0/N_2304 , \stonyman_0/N_648 , \stonyman_0/N_397 , 
        \stonyman_0/I_7 , \stonyman_0/state_RNO[9]_net_1 , 
        \stonyman_0/state_ns[6] , \stonyman_0/N_541 , 
        \stonyman_0/state_ns[10] , \stonyman_0/N_499 , 
        \stonyman_0/N_2 , \stonyman_0/DWACT_FDEC_E[24] , 
        \stonyman_0/DWACT_FDEC_E[23] , \stonyman_0/DWACT_FDEC_E[25] , 
        \stonyman_0/N_3 , \stonyman_0/DWACT_FDEC_E[29] , 
        \stonyman_0/DWACT_FDEC_E[30] , \stonyman_0/N_4 , 
        \stonyman_0/DWACT_FDEC_E[15] , \stonyman_0/DWACT_FDEC_E[17] , 
        \stonyman_0/DWACT_FDEC_E[22] , \stonyman_0/N_5_2 , 
        \stonyman_0/DWACT_FDEC_E[21] , \stonyman_0/DWACT_FDEC_E[9] , 
        \stonyman_0/DWACT_FDEC_E[12] , \stonyman_0/DWACT_FDEC_E[20] , 
        \stonyman_0/N_6_0 , \stonyman_0/DWACT_FDEC_E[13] , 
        \stonyman_0/DWACT_FDEC_E[19] , \stonyman_0/N_7_0 , 
        \stonyman_0/DWACT_FDEC_E[18] , \stonyman_0/N_8 , 
        \stonyman_0/DWACT_FDEC_E[33] , \stonyman_0/DWACT_FDEC_E[34] , 
        \stonyman_0/DWACT_FDEC_E[2] , \stonyman_0/DWACT_FDEC_E[5] , 
        \stonyman_0/N_9 , \stonyman_0/DWACT_FDEC_E[28] , 
        \stonyman_0/DWACT_FDEC_E[16] , \stonyman_0/N_10 , 
        \stonyman_0/N_11_0 , \stonyman_0/DWACT_FDEC_E[14] , 
        \stonyman_0/N_12 , \stonyman_0/N_13_0 , 
        \stonyman_0/DWACT_FDEC_E[10] , \stonyman_0/N_14 , 
        \stonyman_0/DWACT_FDEC_E[11] , \stonyman_0/N_15_0 , 
        \stonyman_0/N_16 , \stonyman_0/N_17 , 
        \stonyman_0/DWACT_FDEC_E[8] , \stonyman_0/N_18 , 
        \stonyman_0/N_20 , \stonyman_0/N_21 , 
        \stonyman_0/DWACT_FDEC_E[3] , \stonyman_0/N_23 , 
        \stonyman_0/N_24 , \stonyman_0/N_25 , 
        \stonyman_0/DWACT_FDEC_E[1] , \stonyman_0/N_26 , 
        \stonyman_0/N_28_0 , \stonyman_0/N_2_0 , 
        \stonyman_0/DWACT_FINC_E[2] , \stonyman_0/N_3_0 , 
        \stonyman_0/DWACT_FINC_E[1] , \stonyman_0/N_4_0 , 
        \stonyman_0/N_6_1 , \CS_pad/U0/NET1 , \CS_pad/U0/NET2 , 
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
        \resp_pad/U0/NET1 , \resp_pad/U0/NET2 , 
        \psram_data_pad[14]/U0/NET1 , \psram_data_pad[14]/U0/NET2 , 
        \psram_data_pad[14]/U0/NET3 , \psram_address_pad[16]/U0/NET1 , 
        \psram_address_pad[16]/U0/NET2 , 
        \psram_address_pad[14]/U0/NET1 , 
        \psram_address_pad[14]/U0/NET2 , 
        \psram_address_pad[18]/U0/NET1 , 
        \psram_address_pad[18]/U0/NET2 , \resv_pad/U0/NET1 , 
        \resv_pad/U0/NET2 , \led_pad[1]/U0/NET1 , \led_pad[1]/U0/NET2 , 
        \psram_noe0_pad/U0/NET1 , \psram_noe0_pad/U0/NET2 , 
        \psram_address_pad[2]/U0/NET1 , \psram_address_pad[2]/U0/NET2 , 
        \psram_address_pad[6]/U0/NET1 , \psram_address_pad[6]/U0/NET2 , 
        \psram_address_pad[10]/U0/NET1 , 
        \psram_address_pad[10]/U0/NET2 , \rs485_nre_pad/U0/NET1 , 
        \rs485_nre_pad/U0/NET2 , \adcStartCapture_pad/U0/NET1 , 
        \adcStartCapture_pad/U0/NET2 , \CAPTURE_pad/U0/NET1 , 
        \led_pad[2]/U0/NET1 , \led_pad[2]/U0/NET2 , 
        \inphi_pad/U0/NET1 , \inphi_pad/U0/NET2 , 
        \psram_data_pad[3]/U0/NET1 , \psram_data_pad[3]/U0/NET2 , 
        \psram_data_pad[3]/U0/NET3 , \psram_data_pad[0]/U0/NET1 , 
        \psram_data_pad[0]/U0/NET2 , \psram_data_pad[0]/U0/NET3 , 
        \psram_address_pad[17]/U0/NET1 , 
        \psram_address_pad[17]/U0/NET2 , \psram_noe1_pad/U0/NET1 , 
        \psram_noe1_pad/U0/NET2 , \psram_address_pad[22]/U0/NET1 , 
        \psram_address_pad[22]/U0/NET2 , \psram_ncs1_pad/U0/NET1 , 
        \psram_ncs1_pad/U0/NET2 , \adcConvComplete_pad/U0/NET1 , 
        \adcConvComplete_pad/U0/NET2 , \psram_data_pad[12]/U0/NET1 , 
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
        \incv_pad/U0/NET1 , \incv_pad/U0/NET2 , 
        \psram_address_pad[12]/U0/NET1 , 
        \psram_address_pad[12]/U0/NET2 , 
        \psram_address_pad[0]/U0/NET1 , \psram_address_pad[0]/U0/NET2 , 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GLMUXINT_GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign PLLEN_VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    AO1 \stonyman_0/counterWait_RNO[26]  (.A(
        \stonyman_0/counterWait_2_m_0[26] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[26] ), .Y(
        \stonyman_0/counterWait_80[26] ));
    OA1B \stonyman_0/state_i_RNO_9[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_6[0] ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a0_0[0] ), .C(
        \stonyman_0/N_252 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3[0] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_66  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL6INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL7INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL8INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_253 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 ));
    MX2 \stonyman_0/cachedValue_tile_I_1_RNI4R5L2  (.A(
        \stonyman_0/DOUT_TMP[7] ), .B(
        \stonyman_0/DIN_REG1_RNI4SC61[7] ), .S(
        \stonyman_0/DIN_REG1_RNI3NS51[7] ), .Y(
        \stonyman_0/cachedValue[7] ));
    DFN1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ));
    OR3 \psram_cr_0/cr_int_i0/noe0_5_0_o2  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ), .Y(
        \psram_cr_0/cr_int_i0/N_87 ));
    OR2B \stonyman_0/substate_RNIDLUI[4]  (.A(
        \stonyman_0/substate[4]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .Y(\stonyman_0/N_2330 ));
    AND3B \stonyman_0/counterWait_RNO_2[0]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_3 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/substate_RNIJ5BU44[7]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO_2[0]_net_1 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[12]  (.A(
        \psram_cr_0/data_to_cr[12] ), .B(N_31), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_255 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_74  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1CLKINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0CLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2CLKINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP9INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    MX2 \stonyman_0/startAdcCapture_RNO_0  (.A(adcStartCapture_c), .B(
        \stonyman_0/counterWait_1_sqmuxa_3 ), .S(
        \stonyman_0/substate_0_sqmuxa_5 ), .Y(\stonyman_0/N_765 ));
    IOPAD_BI \MSS_CORE2_0/MSS_MAC_0_MDIO  (.D(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_D ), .E(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_E ), .Y(
        \MSS_CORE2_0/MSS_MAC_0_MDIO_Y ), .PAD(MAC_MDIO));
    OR2 \stonyman_0/state_i_RNI1B9PI[0]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_4 ), .B(
        \stonyman_0/state_0_sqmuxa ), .Y(
        \stonyman_0/un1_state_0_sqmuxa ));
    DFN1 \psram_cr_0/ahb0/operation[3]  (.D(
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[3] ));
    NOR2A \stonyman_0/substate_i_0_RNI9COL[0]  (.A(
        \stonyman_0/substate_i[0] ), .B(\stonyman_0/N_316 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_0[0] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[12]  (.A(
        \psram_cr_0/cr_int_i0/N_168 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[12] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(\psram_cr_0/reg_addr[9] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_165 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(N_25), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_220 ));
    NOR3C \stonyman_0/resv_RNO_0  (.A(\stonyman_0/substate[2]_net_1 ), 
        .B(\stonyman_0/state[1]_net_1 ), .C(
        \stonyman_0/substate_RNIKP7U9[7]_net_1 ), .Y(
        \stonyman_0/resv_1_N_12 ));
    IOTRI_OB_EB \psram_address_pad[23]/U0/U1  (.D(
        \psram_address_c[23] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[23]/U0/NET1 ), .EOUT(
        \psram_address_pad[23]/U0/NET2 ));
    OR2B \psram_cr_0/cr_int_i0/ac_counter_RNIBQOS[0]  (.A(
        \psram_cr_0/dt_rw ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_67 ));
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
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(N_635), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_244 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I  (.D(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(N_634), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_243 ));
    AX1C \stonyman_0/un2_cachedValue_1_I_12  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/DWACT_FINC_E[0] ), 
        .C(\stonyman_0/N_2929_li ), .Y(\stonyman_0/I_12_0 ));
    OA1 \psram_cr_0/ahb0/hrdata_reg_RNO_3[1]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_8 ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_cnst_m_1[1] ));
    OR3 \stonyman_0/un5_counterWait_I_81  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[30] ), .C(
        \stonyman_0/DWACT_FDEC_E[21] ), .Y(\stonyman_0/N_5_2 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIL3UL[17]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[17] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[17]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[16]  (.A(
        \psram_cr_0/ahb0/N_227 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_73  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[18] ), .Y(\stonyman_0/N_7_0 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[15]  (.D(
        \psram_cr_0/cr_int_i0/N_50 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[15] ));
    NOR3B \stonyman_0/counterWait_80_10_m2_e_2  (.A(
        \stonyman_0/counterWait_80_10_m2_e_1_net_1 ), .B(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2_1[3] ), .C(
        \stonyman_0/N_2321 ), .Y(
        \stonyman_0/counterWait_80_10_m2_e_2_net_1 ));
    NOR3 \stonyman_0/substate_RNO[1]  (.A(
        \stonyman_0/substate_ns_i_6[1] ), .B(
        \stonyman_0/substate_ns_i_3[1] ), .C(
        \stonyman_0/substate_ns_i_5_0[1] ), .Y(
        \stonyman_0/substate_RNO[1]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[31]  (.D(
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[31]_net_1 ));
    OR3 \stonyman_0/substate_RNO[3]  (.A(\stonyman_0/N_2006 ), .B(
        \stonyman_0/substate_ns_0_3[3] ), .C(
        \stonyman_0/substate_ns_0_4[3] ), .Y(
        \stonyman_0/substate_ns[3] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIINTL[14]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ));
    AO1 \stonyman_0/counterWait_RNO_0[12]  (.A(\stonyman_0/I_35 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_80_0_iv_0[12] ), .Y(
        \stonyman_0/counterWait_80_0_iv_1[12] ));
    NOR3B \stonyman_0/substate_i_0_RNO_10[0]  (.A(
        \stonyman_0/N_1933_9 ), .B(\stonyman_0/N_1933_10 ), .C(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_1933 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(N_27), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_221 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[9]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[9] ));
    XNOR2 \stonyman_0/un5_counterWait_I_56  (.A(\stonyman_0/N_12 ), .B(
        \stonyman_0/counterWait[19]_net_1 ), .Y(\stonyman_0/I_56 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_271 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 ));
    OR3A \stonyman_0/state_RNO_11[7]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(
        \stonyman_0/counterWait[9]_net_1 ), .C(
        \stonyman_0/counterWait[12]_net_1 ), .Y(
        \stonyman_0/state_ns_0_10_tz_3[7] ));
    OR2 \stonyman_0/state_RNIGTH41[8]  (.A(
        \stonyman_0/substate_0_sqmuxa_4 ), .B(
        \stonyman_0/d_m3_0_a2_1_0 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_0 )
        );
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
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBU061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[14] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[14] ));
    NOR2 \stonyman_0/state_RNI0Q97[10]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(\stonyman_0/state[9]_net_1 ), 
        .Y(\stonyman_0/un43_i_0_a2_0 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(N_31), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_223 ));
    NOR3B \stonyman_0/state_i_RNO_23[0]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_3[0] ), .C(
        \stonyman_0/N_3739 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_4[0] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 )
        );
    IOTRI_OB_EB \psram_ncs0_pad/U0/U1  (.D(psram_ncs0_c_c_c), .E(
        PLLEN_VCC), .DOUT(\psram_ncs0_pad/U0/NET1 ), .EOUT(
        \psram_ncs0_pad/U0/NET2 ));
    OA1 \stonyman_0/substate_RNIUA3M[1]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(\stonyman_0/state[11]_net_1 ), 
        .C(\stonyman_0/substate[1]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_8_0 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_7  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0CTSnINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/GPI[31]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/UART0DSRnINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/GPO[31]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[1]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI0SSO[2]INT_NET ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[7]  (.D(
        \psram_cr_0/cr_int_i0/N_34 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[7] ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(N_29), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_254 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[4]  (.A(
        \psram_cr_0/data_from_cr[4] ), .B(
        \psram_cr_0/ahb0/data_out[4]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_263 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 ));
    OA1B \stonyman_0/counterWait_RNO_1[9]  (.A(
        \stonyman_0/counterWait_RNO_5[9]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_o2_1_0[9] ), .C(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_425 ));
    DFN1 \psram_cr_0/cr_int_i0/address[15]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[15]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[15] ));
    NOR3 \stonyman_0/cachedValue_tile_I_1_RNINBKOC  (.A(
        \stonyman_0/N_390 ), .B(\stonyman_0/I_1_RNIVEI82 ), .C(
        \stonyman_0/N_3741 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_3 ));
    DFN1 \psram_cr_0/ahb0/operation[25]  (.D(
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[25]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_16  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[1] )
        , .C(\stonyman_0/counterWait[5]_net_1 ), .Y(\stonyman_0/N_25 ));
    AND2 \adc081s101_0/un1_cntrWaitLeading_I_1  (.A(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitLeading15 ), .Y(
        \adc081s101_0/DWACT_ADD_CI_0_TMP[0] ));
    DFN1 \stonyman_0/counterWait[5]  (.D(
        \stonyman_0/counterWait_80[5] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[5]_net_1 ));
    NOR3B \stonyman_0/substate_RNO_4[16]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/state_i[0]_net_1 ), .C(adcConvComplete_c), .Y(
        \stonyman_0/substate_ns_0_0_a2_0_1[16] ));
    NOR3A \stonyman_0/substate_i_0_RNO_36[0]  (.A(
        \stonyman_0/substate_ns_0_a2_7_1[0] ), .B(
        \stonyman_0/N_1546_tz ), .C(\stonyman_0/N_2315 ), .Y(
        \stonyman_0/substate_ns_0_a2_7_3[0] ));
    NOR2A \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_RNI71OLP  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(\psram_cr_0/data_to_cr[14] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_170 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGI161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[19] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[19] ));
    OR3 \stonyman_0/state_i_RNO_11[0]  (.A(
        \stonyman_0/state_i_RNO_18[0]_net_1 ), .B(
        \stonyman_0/state_i_RNO_19[0]_net_1 ), .C(
        \stonyman_0/state_i_RNO_20[0]_net_1 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_1[0] ));
    NOR3B \stonyman_0/state_RNO_2[2]  (.A(\stonyman_0/un31lto0 ), .B(
        \stonyman_0/state[1]_net_1 ), .C(\stonyman_0/N_320 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_m2_0_a2_0_0[2] ));
    IOTRI_OB_EB \rs485_nre_pad/U0/U1  (.D(GLMUXINT_GND), .E(PLLEN_VCC), 
        .DOUT(\rs485_nre_pad/U0/NET1 ), .EOUT(\rs485_nre_pad/U0/NET2 ));
    NOR3A \stonyman_0/state_i_RNO_16[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_3_2_1[0] ), .B(
        \stonyman_0/N_3746 ), .C(\stonyman_0/state48_0_a2_0_o2_0 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a0_0[0] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[21]  (.A(
        \psram_cr_0/ahb0/N_232 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[26]  (.A(
        \psram_cr_0/ahb0/N_205 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[10]  (.D(
        \psram_cr_0/cr_int_i0/N_40 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[10] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNIF0GE[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa_0_a2_1_0 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[8]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[8] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[3]  (.A(
        \psram_cr_0/data_to_cr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_73 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[3] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[13]  (.A(
        \psram_cr_0/data_from_cr[13] ), .B(\psram_data_in[13] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_244 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[4] ));
    XNOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI4SC61[7]  (.A(
        \stonyman_0/DIN_REG1[7] ), .B(\stonyman_0/I_5_1 ), .Y(
        \stonyman_0/DIN_REG1_RNI4SC61[7] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[14] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[4]  (.A(
        \psram_cr_0/cr_int_i0/N_252 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 ));
    NOR2 \stonyman_0/state_i_RNI1B9PI_0[0]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_4 ), .B(
        \stonyman_0/state_0_sqmuxa ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_m1_e_0 ));
    DFN1E1 \adc081s101_0/bitsRead[3]  (.D(\adc081s101_0/N_37 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[3]_net_1 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/max_addr[31] ), .B(N_69), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_242 ));
    NOR2B \stonyman_0/substate_RNIDD3N[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(\stonyman_0/N_1546_tz ), 
        .Y(\stonyman_0/un1_counterWait_3_sqmuxa_0 ));
    NOR2 \stonyman_0/counterWait_RNI1169[27]  (.A(
        \stonyman_0/state_i[0]_net_1 ), .B(
        \stonyman_0/counterWait[27]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_o4_7_m3_e_0 ));
    OR3B \stonyman_0/substate_RNO_1[12]  (.A(\stonyman_0/N_2297 ), .B(
        \stonyman_0/state_RNIN1TN9[6]_net_1 ), .C(\stonyman_0/N_2436 ), 
        .Y(\stonyman_0/substate_ns_i_1[12] ));
    NOR2A \stonyman_0/cachedValue_tile_I_1_RNIVEI82  (.A(
        \stonyman_0/DOUT_TMP[0] ), .B(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/I_1_RNIVEI82 ));
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
    AO1A \adc081s101_0/conversionComplete_RNO  (.A(\adc081s101_0/N_49 )
        , .B(\adc081s101_0/conversionComplete_1_0_a3_0 ), .C(
        \adc081s101_0/N_104 ), .Y(
        \adc081s101_0/conversionComplete_RNO_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[14]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[14] ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNI3TRG3[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/N_95 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_8 ));
    XO1 \adc081s101_0/cntrWaitLeading_RNO[0]  (.A(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitLeading15 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/cntrWaitLeading_5[0] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[4]  (.A(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[4] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_173 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 ));
    NOR2B \stonyman_0/substate_RNILMUH[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/state[11]_net_1 ), .Y(\stonyman_0/N_625 ));
    OR3 \stonyman_0/un5_counterWait_I_66  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/counterWait[21]_net_1 ), .C(
        \stonyman_0/counterWait[22]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[33] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[7]  (.A(
        \psram_cr_0/ahb0/data_out[7]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_6_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[2] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9M061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[12] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[12] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[7]  (.A(
        \psram_cr_0/data_from_cr[7] ), .B(
        \psram_cr_0/ahb0/data_out[7]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_266 ));
    OA1B \stonyman_0/state_RNO_16[7]  (.A(\stonyman_0/N_172 ), .B(
        \stonyman_0/state_ns_0_3_tz_0[7] ), .C(\stonyman_0/N_144 ), .Y(
        \stonyman_0/state_ns_0_3[7] ));
    NOR3A \stonyman_0/substate_RNI4GVU1[9]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_1 ), .B(
        \stonyman_0/N_262_i_0_o2_0 ), .C(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_4 ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNIBSIM[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 ));
    OA1 \stonyman_0/substate_RNO_12[1]  (.A(\stonyman_0/un32lto2 ), .B(
        \stonyman_0/N_3514 ), .C(\stonyman_0/N_2288 ), .Y(
        \stonyman_0/N_2427 ));
    OR3 \stonyman_0/substate_RNO[16]  (.A(\stonyman_0/N_2402 ), .B(
        \stonyman_0/N_168 ), .C(\stonyman_0/N_169 ), .Y(
        \stonyman_0/substate_ns[16] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_19[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[17] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_41));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(N_637), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_214 ));
    AO1D \stonyman_0/state_RNO_14[7]  (.A(\stonyman_0/N_3320 ), .B(
        \stonyman_0/N_3297 ), .C(\stonyman_0/N_2277_i_1 ), .Y(
        \stonyman_0/state_ns_0_0[7] ));
    IOTRI_OB_EB \psram_address_pad[3]/U0/U1  (.D(\psram_address_c[3] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[3]/U0/NET1 ), .EOUT(
        \psram_address_pad[3]/U0/NET2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_67  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR2B \stonyman_0/state_RNO_0[10]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/N_499 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNIA52K3[4]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ));
    OR2A \psram_cr_0/cr_int_i0/noe0_5_0_o2_RNIK03A  (.A(
        \psram_cr_0/cr_int_i0/N_87 ), .B(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ), .Y(
        \psram_cr_0/cr_int_i0/N_347 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIBQ061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[23] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[23] ));
    NOR2A \stonyman_0/state_RNIMA2E[3]  (.A(\stonyman_0/N_1933_1 ), .B(
        \stonyman_0/state[3]_net_1 ), .Y(
        \stonyman_0/substate_tr13_3_10_0 ));
    NOR2 \stonyman_0/counterWait_RNO_0[2]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_7 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0_iv_2_m1_e_0 ));
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
    NOR3C \psram_cr_0/cr_int_i0/active_data_RNO_0  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \psram_cr_0.cr_int_i0.active_data ), .C(
        \psram_cr_0/cr_int_i0/N_77 ), .Y(\psram_cr_0/cr_int_i0/N_93 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[6]  (.A(
        \psram_cr_0/data_from_cr[6] ), .B(\psram_data_in[6] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_237 ));
    NOR3A \stonyman_0/substate_i_0_RNI5SQK_0[0]  (.A(
        \stonyman_0/substate_i[0] ), .B(
        \stonyman_0/substate[12]_net_1 ), .C(
        \stonyman_0/substate[13]_net_1 ), .Y(\stonyman_0/N_620 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXD_1  (.D(
        \MSS_CORE2_0/MACTXD_net_0[1] ), .E(PLLEN_VCC), .PAD(MAC_TXD[1])
        );
    OR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNIDFNH81[0]  (.A(
        \stonyman_0/DIN_REG1_RNIEC19J[0] ), .B(\stonyman_0/state21 ), 
        .Y(\stonyman_0/N_383 ));
    NOR2B \stonyman_0/counterWait_RNO_5[0]  (.A(
        \stonyman_0/counterWait_2_m_0[0] ), .B(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_1_a0_0[0] ));
    NOR2 \stonyman_0/substate_RNI4DK31[2]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(
        \stonyman_0/state_ns_0_0_0_o2_2_0[6] ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_0 ));
    NOR3C \psram_cr_0/ahb0/hrdata_reg_RNO_6[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/N_95 ), .Y(\psram_cr_0/ahb0/un1_haddr_reg_9 ));
    NOR2A \adc081s101_0/cntrWaitQuiet_RNILR0G[2]  (.A(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .B(\adc081s101_0/N_47 ), 
        .Y(\adc081s101_0/bitsRead_0_sqmuxa ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[8]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[8] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] ));
    AND2 \stonyman_0/un1_cachedPOINTER_3_I_1  (.A(
        \stonyman_0/un31lto0 ), .B(
        \stonyman_0/substate_RNIEEQIB[6]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_TMP[0] ));
    XNOR2 \stonyman_0/un5_counterWait_I_28  (.A(\stonyman_0/N_21 ), .B(
        \stonyman_0/counterWait[10]_net_1 ), .Y(\stonyman_0/I_28 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[20]  (.A(
        \psram_cr_0/ahb0/operation[20]_net_1 ), .B(N_47), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_199 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_181 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 ));
    AND3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI2BUP[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[3]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113_0_a2_0_0 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI01EA2[4]  (.A(
        \stonyman_0/DOUT_TMP[4] ), .B(\stonyman_0/DIN_REG1[4] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/N_2929_li ));
    DFN1 \psram_cr_0/ahb0/psram_addr[3]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[3] ));
    NOR3B \psram_cr_0/cr_int_i0/start_RNO  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\psram_cr_0/cr_int_i0/start_0_net_1 ), .C(
        \psram_cr_0/cr_int_i0/start_1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/start_RNO_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[11]  (.A(
        \psram_cr_0/reg_addr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_68 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIR870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[1] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[1] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAM061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[22] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[22] ));
    NOR2B \stonyman_0/counterWait_RNO_3[0]  (.A(
        \stonyman_0/counterWait_2_m_0[0] ), .B(
        \stonyman_0/resp_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_RNO_3[0]_net_1 ));
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
    NOR3B \stonyman_0/substate_RNI1BKT11[5]  (.A(\stonyman_0/N_384 ), 
        .B(\stonyman_0/I_13 ), .C(\stonyman_0/N_607 ), .Y(
        \stonyman_0/N_70 ));
    CLKSRC \MSS_CORE2_0/MSS_ADLIB_INST_RNI7863/U_CLKSRC  (.A(
        \MSS_CORE2_0/MSS_ADLIB_INST_M2FRESETn ), .Y(
        MSS_CORE2_0_M2F_RESET_N));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[20]  (.A(
        \psram_cr_0/cr_int_i0/N_268 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[13]  (.A(
        \stonyman_0/counterWait_2_m_0[13] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[13] ), .Y(
        \stonyman_0/counterWait_80[13] ));
    NOR2B \stonyman_0/cachedValue_tile_WADDR_REG1_RNI27MV1_0[2]  (.A(
        \stonyman_0/I_5_0 ), .B(\stonyman_0/I_5_1 ), .Y(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_33  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .PIN2(), .PIN3(), 
        .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[10]INT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[9]INT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[11]INT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[9]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[10]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/MSSHADDR[11]INT_NET ));
    DFN1 \psram_cr_0/ahb0/operation[14]  (.D(
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[14] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[8]  (.A(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[8] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_177 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[15]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[13] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] ));
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
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_260 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_22[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[8] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_23));
    XNOR2 \stonyman_0/un5_counterWait_I_5  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .Y(\stonyman_0/I_5 ));
    NOR2A \stonyman_0/substate_RNO_0[11]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(\stonyman_0/N_332 ), .Y(
        \stonyman_0/N_174 ));
    DFN1 \psram_cr_0/cr_int_i0/address[23]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[23] ));
    NOR3C \stonyman_0/substate_i_0_RNO_15[0]  (.A(
        \stonyman_0/substate_tr13_5_2 ), .B(
        \stonyman_0/substate_tr13_5_1 ), .C(\stonyman_0/N_1934_3 ), .Y(
        \stonyman_0/substate_tr13_5_4 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/operation[26]_net_1 ), .B(N_59), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_205 ));
    OA1C \stonyman_0/counterWait_RNO_8[4]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_a2_4_0[4] ), .C(
        \stonyman_0/N_194 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_0[4] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[10]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[10] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[10] ));
    NOR3 \stonyman_0/substate_RNO[6]  (.A(\stonyman_0/N_2388 ), .B(
        \stonyman_0/substate_ns_i_0[6] ), .C(\stonyman_0/N_2340 ), .Y(
        \stonyman_0/substate_RNO[6]_net_1 ));
    AO1 \stonyman_0/substate_RNIDFJP[14]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(
        \stonyman_0/counterWait_2_sqmuxa_4 ), .Y(
        \stonyman_0/un1_counterWait_2_sqmuxa_0 ));
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
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ));
    DFN1 \stonyman_0/state[8]  (.D(\stonyman_0/state_RNO[8]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[8]_net_1 ));
    NOR2A \stonyman_0/substate_RNO_2[16]  (.A(
        \stonyman_0/substate_ns_0_0_a2_0_2[16] ), .B(
        \stonyman_0/N_332 ), .Y(\stonyman_0/N_169 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[2]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[2] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[2] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[11]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[11] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[11] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_222 )
        );
    OR3A \stonyman_0/counterWait_RNO[0]  (.A(
        \stonyman_0/counterWait_80_0_iv_0_m2_0_a2_1 ), .B(
        \stonyman_0/counterWait_RNO_1[0]_net_1 ), .C(
        \stonyman_0/counterWait_RNO_2[0]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO[0]_net_1 ));
    OR2 \psram_cr_0/cr_int_i0/ac_counter_lb1_RNIJVME  (.A(
        \psram_cr_0/cr_int_i0/N_72 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ));
    OR3 \stonyman_0/state_i_RNO_4[0]  (.A(
        \stonyman_0/state_i_RNO_10[0]_net_1 ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_1[0] ), .C(
        \stonyman_0/N_594 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_4[0] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[3]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[3] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_214 )
        );
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 ));
    NOR3C \stonyman_0/counterWait_RNO_2[6]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_17 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[6] ));
    OA1B \stonyman_0/substate_RNO_2[2]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(
        \stonyman_0/substate_ns_0_a4_3_0[2] ), .C(\stonyman_0/N_2292 ), 
        .Y(\stonyman_0/substate_RNO_2[2]_net_1 ));
    NOR2 \stonyman_0/substate_i_0_RNI5COL[0]  (.A(\stonyman_0/N_549 ), 
        .B(\stonyman_0/substate_i[0] ), .Y(\stonyman_0/N_2383 ));
    OR3 \stonyman_0/state_RNIQ4IS3[7]  (.A(
        \stonyman_0/resp_1_sqmuxa_1 ), .B(\stonyman_0/N_2383 ), .C(
        \stonyman_0/substate_1_sqmuxa_7 ), .Y(
        \stonyman_0/substate_ns_0_0[5] ));
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
    OA1C \stonyman_0/substate_ns_0_i_a2_0_RNO[13]  (.A(
        \stonyman_0/state_i[0]_net_1 ), .B(\stonyman_0/N_109 ), .C(
        \stonyman_0/N_201 ), .Y(
        \stonyman_0/substate_ns_0_i_a2_0_0[13] ));
    NOR2B \stonyman_0/counterWait_RNO_1[1]  (.A(\stonyman_0/I_5 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .Y(\stonyman_0/N_436 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[12]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[12] ));
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
    OR2A \stonyman_0/counterWait_RNO_8[1]  (.A(
        \stonyman_0/counterWait_RNO_11[1]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_0[1] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1[1] ));
    OR2 \stonyman_0/un5_counterWait_I_44  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[9] )
        , .Y(\stonyman_0/DWACT_FDEC_E[10] ));
    NOR3C \stonyman_0/counterWait_RNO_2[8]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_23 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[8] ));
    NOR2A \stonyman_0/substate_tr13_0_0  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\stonyman_0/substate_tr13_0_0_net_1 ));
    NOR3 \stonyman_0/counterWait_RNO[4]  (.A(\stonyman_0/N_431 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_3[4] ), .C(
        \stonyman_0/counterWait_RNO_2[4]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO[4]_net_1 ));
    XNOR2 \stonyman_0/un5_counterWait_I_82  (.A(\stonyman_0/N_5_2 ), 
        .B(\stonyman_0/counterWait[26]_net_1 ), .Y(\stonyman_0/I_82 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_13[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[23] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_53));
    AO1A \stonyman_0/substate_RNIG6LC2[6]  (.A(
        \stonyman_0/led_2_c_1[2] ), .B(\stonyman_0/N_165 ), .C(
        \stonyman_0/N_187 ), .Y(\stonyman_0/N_112 ));
    OA1 \stonyman_0/substate_RNIL2U51[8]  (.A(
        \stonyman_0/substate[8]_net_1 ), .B(
        \stonyman_0/substate[6]_net_1 ), .C(\stonyman_0/N_1546_tz ), 
        .Y(\stonyman_0/substate_RNIL2U51[8]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[17]  (.A(
        \psram_cr_0/cr_int_i0/N_265 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 ));
    OR2 \stonyman_0/un5_counterWait_I_38  (.A(
        \stonyman_0/counterWait[12]_net_1 ), .B(
        \stonyman_0/counterWait[13]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[8] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_249 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[1]_net_1 ));
    NOR2A \stonyman_0/substate_ns_0_a2_9_RNO[0]  (.A(
        \stonyman_0/N_2441 ), .B(\stonyman_0/substate[15]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a2_9_0[0] ));
    IOTRI_OB_EB \psram_address_pad[12]/U0/U1  (.D(
        \psram_address_c[12] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[12]/U0/NET1 ), .EOUT(
        \psram_address_pad[12]/U0/NET2 ));
    NOR2B \stonyman_0/substate_RNI9TTN3[1]  (.A(
        \stonyman_0/d_m3_0_a2_1_0 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_0 ), .Y(
        \stonyman_0/d_m3_0_a2_1_1 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_5[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_69));
    OR3 \stonyman_0/substate_i_0_RNO_0[0]  (.A(
        \stonyman_0/substate_ns_17[0] ), .B(
        \stonyman_0/substate_ns_16[0] ), .C(
        \stonyman_0/substate_ns_18[0] ), .Y(
        \stonyman_0/substate_ns_21[0] ));
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
    NOR2A \stonyman_0/state_RNIGET9[4]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/state[4]_net_1 ), .Y(\stonyman_0/N_1933_1 ));
    OR2A \stonyman_0/substate_RNITP8R[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(\stonyman_0/N_2283_i_0 ), 
        .Y(\stonyman_0/N_6 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(N_39), .S(
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
    AND3C \stonyman_0/state_RNIM8HM9[7]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(\stonyman_0/N_386 ), .C(
        \stonyman_0/N_390 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_a2_2_0_tz[1] ));
    OA1A \stonyman_0/counterWait_RNIU4R6H1[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[9]_net_1 )
        , .C(\stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_828_a0_0 ));
    AO1D \stonyman_0/substate_RNO_0[8]  (.A(\stonyman_0/N_109 ), .B(
        \stonyman_0/substate[8]_net_1 ), .C(
        \stonyman_0/substate_ns_i_0[8] ), .Y(
        \stonyman_0/substate_ns_i_1[8] ));
    IOPAD_TRI \psram_address_pad[12]/U0/U0  (.D(
        \psram_address_pad[12]/U0/NET1 ), .E(
        \psram_address_pad[12]/U0/NET2 ), .PAD(psram_address[12]));
    MX2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl0lI ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[12]  (.A(
        \psram_cr_0/reg_addr[12] ), .B(\psram_cr_0/data_to_cr[12] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_168 ));
    NOR3 \stonyman_0/state_RNI4I6F1[7]  (.A(
        \stonyman_0/substate_0_sqmuxa_4 ), .B(
        \stonyman_0/state[7]_net_1 ), .C(\stonyman_0/N_2318 ), .Y(
        \stonyman_0/N_618 ));
    OA1 \stonyman_0/state_i_RNI0AH5H3[0]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/state_i_RNI0AH5H3[0]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[22]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[22] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[22] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_2[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[12] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_31));
    AXOI5 \stonyman_0/substate_RNO_15[3]  (.A(
        \stonyman_0/state[5]_net_1 ), .B(\stonyman_0/un31lto0 ), .C(
        \stonyman_0/state[2]_net_1 ), .Y(\stonyman_0/N_2317 ));
    OA1C \stonyman_0/state_i_RNIO1B39[0]  (.A(
        \stonyman_0/state_0_sqmuxa_m2_e_3 ), .B(
        \stonyman_0/N_138_i_i_i_o2_8 ), .C(
        \stonyman_0/state_i[0]_net_1 ), .Y(\stonyman_0/state_0_sqmuxa )
        );
    DFN1 \psram_cr_0/cr_int_i0/data_out[14]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[14]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[14] ));
    AO1 \stonyman_0/substate_RNO_6[1]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(\stonyman_0/N_2337 ), .C(
        \stonyman_0/substate_ns_i_a4_9_1[1] ), .Y(
        \stonyman_0/substate_ns_i_5_tz[1] ));
    AOI1B \stonyman_0/state_RNO_0[9]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_3_0[9] ), .B(
        \stonyman_0/N_623 ), .C(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_1[9] ), .Y(
        \stonyman_0/N_542 ));
    MX2 \stonyman_0/cachedValue_tile_I_1_RNIV0EA2  (.A(
        \stonyman_0/DOUT_TMP[3] ), .B(
        \stonyman_0/WADDR_REG1_RNI2F0T[2] ), .S(\stonyman_0/I_5_1 ), 
        .Y(\stonyman_0/I_1_RNIV0EA2 ));
    DFN1 \psram_cr_0/ahb0/operation[28]  (.D(
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[28]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[15]/U0/U1  (.D(
        \psram_address_c[15] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[15]/U0/NET1 ), .EOUT(
        \psram_address_pad[15]/U0/NET2 ));
    OR2B \stonyman_0/state_RNIRETN[11]  (.A(\stonyman_0/N_1933_9 ), .B(
        \stonyman_0/N_3514 ), .Y(\stonyman_0/N_165 ));
    DFN1 \stonyman_0/counterWait[29]  (.D(
        \stonyman_0/counterWait_80[29] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[29]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[21]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[21]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[21] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI5I8K[8]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ));
    OR2 \stonyman_0/counterWait_RNI1AKH[19]  (.A(
        \stonyman_0/counterWait[19]_net_1 ), .B(
        \stonyman_0/counterWait[18]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_a2_0_30_0_o4_i_o2_1[2] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[30]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[30] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[30] ));
    NOR2 \stonyman_0/substate_RNIH4HB_0[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .Y(\stonyman_0/N_619 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(N_640), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_185 ));
    AO1 \stonyman_0/state_i_RNO_3[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a1_2[0] ), .B(
        \stonyman_0/state30 ), .C(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3[0] ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_5[0] ));
    NOR3 \stonyman_0/substate_i_0_RNO[0]  (.A(
        \stonyman_0/substate_ns_21[0] ), .B(
        \stonyman_0/substate_ns_20[0] ), .C(
        \stonyman_0/substate_ns_22[0] ), .Y(
        \stonyman_0/substate_ns[0] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_210 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[31]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIU870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[4] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[4] ));
    OR3 \stonyman_0/un5_counterWait_I_75  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .C(
        \stonyman_0/counterWait[24]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[19] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[24]  (.A(
        \psram_cr_0/ahb0/N_235 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 ));
    OR2A \adc081s101_0/cntrWaitTrailing_RNO[0]  (.A(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_135 ));
    NOR2B \stonyman_0/counterWait_RNO_0[27]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[27]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[27] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[0]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[8] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[0] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] ));
    AO1B \stonyman_0/counterWait_RNO_0[1]  (.A(\stonyman_0/N_397 ), .B(
        \stonyman_0/N_312 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_157 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(N_634), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_179 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[5]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[5] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[5] ));
    IOPAD_TRI \psram_address_pad[15]/U0/U0  (.D(
        \psram_address_pad[15]/U0/NET1 ), .E(
        \psram_address_pad[15]/U0/NET2 ), .PAD(psram_address[15]));
    NOR2B \psram_cr_0/ahb0/operation_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_179 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[0]_net_1 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[6]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[6] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[6] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_12_sqmuxa_0_a2_2  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[8] ));
    AOI1B \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_0  (.A(
        \stonyman_0/counterWait_2_m_0[2] ), .B(
        \stonyman_0/resp_0_sqmuxa ), .C(
        \stonyman_0/counterWait_8_m_i[2] ), .Y(
        \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_0_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI1970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[7] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[7] ));
    AOI1 \stonyman_0/state_RNO[1]  (.A(
        \stonyman_0/state_ns_i_a2_0_0_0_a2_0_0[1] ), .B(
        \stonyman_0/N_629 ), .C(\stonyman_0/state_ns_i_a2_0_0_0_0[1] ), 
        .Y(\stonyman_0/state_RNO[1]_net_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[6]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNO[9]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_9_m2_0_a2_0 ), .B(
        \stonyman_0/N_425 ), .C(
        \stonyman_0/counterWait_RNO_2[9]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO[9]_net_1 ));
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
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[4]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[4] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[4] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_215 )
        );
    NOR3B \stonyman_0/substate_RNIIBJUG[1]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_5 ), .B(
        \stonyman_0/cachedValue[5] ), .C(\stonyman_0/N_3739 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_7 ));
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
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[13] ));
    DFN1 \adc081s101_0/cntrWaitLeading[1]  (.D(
        \adc081s101_0/cntrWaitLeading_5[1] ), .CLK(SCLK_c), .Q(
        \adc081s101_0/cntrWaitLeading[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_178 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 ));
    MX2 \stonyman_0/substate_RNO_0[9]  (.A(\stonyman_0/N_2330 ), .B(
        \stonyman_0/N_2304 ), .S(\stonyman_0/substate[9]_net_1 ), .Y(
        \stonyman_0/N_2342 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[2]  (.A(
        \psram_cr_0/cr_int_i0/N_158 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[2] ));
    OR3 \stonyman_0/substate_RNIBCC31[3]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(
        \stonyman_0/substate[3]_net_1 ), .Y(\stonyman_0/N_3732 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[1]  (.A(
        \psram_cr_0/data_to_cr[1] ), .B(\psram_cr_0/reg_addr[1] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_157 ));
    NOR2A \stonyman_0/substate_RNI8VHK[14]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(
        \stonyman_0/substate[1]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_0[9] ));
    NOR3B \stonyman_0/cachedPOINTER_RNIHJ061[2]  (.A(
        \stonyman_0/N_2424 ), .B(\stonyman_0/cachedPOINTER[2]_net_1 ), 
        .C(\stonyman_0/state[11]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_2_2_0[1] ));
    NOR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNIVPNA[3]  (.A(
        \stonyman_0/DIN_REG1[3] ), .B(\stonyman_0/N_5_1 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_1tt_m3_0 )
        );
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_17[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[19] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_45));
    OR3A \stonyman_0/counterWait_RNICL77A5[1]  (.A(
        \stonyman_0/counterWait[1]_net_1 ), .B(
        \stonyman_0/substate_i_0_RNIPT1NK1[0]_net_1 ), .C(
        \stonyman_0/DIN_REG1_RNIBUL4L3[0] ), .Y(\stonyman_0/N_312 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[19]  (.A(
        \psram_cr_0/ahb0/N_198 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[29]  (.A(
        \psram_cr_0/ahb0/N_240 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 ));
    IOPAD_TRI \psram_address_pad[19]/U0/U0  (.D(
        \psram_address_pad[19]/U0/NET1 ), .E(
        \psram_address_pad[19]/U0/NET2 ), .PAD(psram_address[19]));
    AO1 \stonyman_0/state_i_RNO_2[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_2_1[0] ), .B(
        \stonyman_0/N_641 ), .C(\stonyman_0/state_ns_i_0_a2_0_0_0[0] ), 
        .Y(\stonyman_0/state_ns_i_0_a2_0_0_1[0] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[3]  (.A(
        \psram_cr_0/cr_int_i0/N_159 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[3] ));
    NOR3B \stonyman_0/substate_RNI7R2F11[5]  (.A(\stonyman_0/N_384 ), 
        .B(\stonyman_0/DWACT_ADD_CI_0_partial_sum[0] ), .C(
        \stonyman_0/N_607 ), .Y(\stonyman_0/N_68 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 ));
    XNOR2 \stonyman_0/un5_counterWait_I_9  (.A(\stonyman_0/N_28_0 ), 
        .B(\stonyman_0/counterWait[3]_net_1 ), .Y(\stonyman_0/I_9 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_0  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[14]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_0_net_1 )
        );
    NOR3 \stonyman_0/counterWait_RNI7H4M4_0[0]  (.A(
        \stonyman_0/N_138_i_i_i_o2_7_2 ), .B(
        \stonyman_0/N_138_i_i_i_o2_7_3 ), .C(
        \stonyman_0/N_138_i_i_i_o2_6 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_3 ));
    IOPAD_TRI \psram_address_pad[3]/U0/U0  (.D(
        \psram_address_pad[3]/U0/NET1 ), .E(
        \psram_address_pad[3]/U0/NET2 ), .PAD(psram_address[3]));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(N_35), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_225 ));
    IOTRI_OB_EB \adcConvComplete_pad/U0/U1  (.D(adcConvComplete_c), .E(
        PLLEN_VCC), .DOUT(\adcConvComplete_pad/U0/NET1 ), .EOUT(
        \adcConvComplete_pad/U0/NET2 ));
    DFN1 \stonyman_0/cachedValue_tile_I_3  (.D(\stonyman_0/N_5_i ), 
        .CLK(SCLK_c), .Q(\stonyman_0/N_5_1 ));
    IOPAD_TRI \psram_address_pad[23]/U0/U0  (.D(
        \psram_address_pad[23]/U0/NET1 ), .E(
        \psram_address_pad[23]/U0/NET2 ), .PAD(psram_address[23]));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[19]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[19] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[19] ));
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
    OR2A \stonyman_0/substate_RNIEEQIB[6]  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\stonyman_0/substate_RNI76KFB[6]_net_1 ), .Y(
        \stonyman_0/substate_RNIEEQIB[6]_net_1 ));
    OR2A \stonyman_0/state_RNI3S379[9]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_2301 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[3]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[3] ));
    NOR3B \stonyman_0/counterWait_RNO_3[12]  (.A(\stonyman_0/I_35 ), 
        .B(\stonyman_0/N_194 ), .C(
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 ), .Y(
        \stonyman_0/counterWait_6_m[12] ));
    IOPAD_BI \psram_data_pad[14]/U0/U0  (.D(
        \psram_data_pad[14]/U0/NET1 ), .E(\psram_data_pad[14]/U0/NET2 )
        , .Y(\psram_data_pad[14]/U0/NET3 ), .PAD(psram_data[14]));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_25[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[5] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_639));
    NOR3C \stonyman_0/counterWait_RNO_2[29]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_92 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[29] ));
    NOR2B \stonyman_0/counterWait_RNO_0[22]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[22]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[22] ));
    OR2A \psram_cr_0/cr_int_i0/noe0_5_0_o2_0_0  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/noe0_5_0_o2_0 ));
    OR2 \stonyman_0/un5_counterWait_I_47  (.A(
        \stonyman_0/counterWait[15]_net_1 ), .B(
        \stonyman_0/counterWait[16]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[11] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[14]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[14] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[14] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[14] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[14] ));
    DFN1 \psram_cr_0/ahb0/operation[12]  (.D(
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[12] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(N_41), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_228 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(N_47), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_231 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_222 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 ));
    AND3 \stonyman_0/un2_cachedValue_1_I_19  (.A(
        \stonyman_0/DWACT_FINC_E[0] ), .B(\stonyman_0/DWACT_FINC_E[2] )
        , .C(\stonyman_0/cachedValue[6] ), .Y(\stonyman_0/N_2_0 ));
    OR3 \stonyman_0/counterWait_RNO[23]  (.A(
        \stonyman_0/counterWait_RNO_0[23]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_0_0[23] ), .C(
        \stonyman_0/N_11 ), .Y(\stonyman_0/counterWait_80[23] ));
    NOR2 \stonyman_0/counterWait_RNO_13[4]  (.A(
        \stonyman_0/substate[4]_net_1 ), .B(
        \stonyman_0/substate[9]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_a2_4_0[4] ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIV0EA2[3]  (.A(
        \stonyman_0/DOUT_TMP[3] ), .B(\stonyman_0/DIN_REG1[3] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_m5_i_0 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(N_51), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_233 ));
    IOPAD_BI \psram_data_pad[1]/U0/U0  (.D(\psram_data_pad[1]/U0/NET1 )
        , .E(\psram_data_pad[1]/U0/NET2 ), .Y(
        \psram_data_pad[1]/U0/NET3 ), .PAD(psram_data[1]));
    DFN1 \stonyman_0/counterWait[8]  (.D(
        \stonyman_0/counterWait_80[8] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[8]_net_1 ));
    NOR2A \psram_cr_0/ahb0/dt_req_RNO_0  (.A(\psram_cr_0/start_0_0 ), 
        .B(\psram_cr_0/dt_ack ), .Y(\psram_cr_0/ahb0/N_65_0 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_239 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[8]_net_1 ));
    NOR2A \stonyman_0/resv_RNO_4  (.A(\stonyman_0/state39_0_a2_0 ), .B(
        \stonyman_0/N_252 ), .Y(\stonyman_0/resv_RNO_4_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_2[17]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_49 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[17] ));
    NOR3A \adc081s101_0/bitsRead_RNO[3]  (.A(
        \adc081s101_0/bitsRead[2]_net_1 ), .B(\adc081s101_0/N_45 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_37 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[6]  (.A(\psram_cr_0/ahb0/N_249 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 ));
    OR3 \stonyman_0/state_RNO[8]  (.A(\stonyman_0/N_574 ), .B(
        \stonyman_0/N_576 ), .C(\stonyman_0/N_575 ), .Y(
        \stonyman_0/state_RNO[8]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[3]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[3] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[5]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[5] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] ));
    OR3 \stonyman_0/un5_counterWait_I_58  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[14] ), .Y(\stonyman_0/N_11_0 ));
    DFN1 \stonyman_0/cachedValue_tile_WADDR_REG1[0]  (.D(
        \stonyman_0/un31lto0 ), .CLK(SCLK_c), .Q(
        \stonyman_0/WADDR_REG1[0] ));
    AOI1B \stonyman_0/substate_ns_0_a4_1_0[0]  (.A(
        \stonyman_0/substate_ns_0_a2_9_0[0] ), .B(\stonyman_0/N_2415 ), 
        .C(\stonyman_0/N_171_i ), .Y(
        \stonyman_0/substate_ns_0_a4_1_0[0]_net_1 ));
    NOR2 \psram_cr_0/cr_int_i0/enable_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/start_net_1 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_97 ));
    IOPAD_BI \psram_data_pad[10]/U0/U0  (.D(
        \psram_data_pad[10]/U0/NET1 ), .E(\psram_data_pad[10]/U0/NET2 )
        , .Y(\psram_data_pad[10]/U0/NET3 ), .PAD(psram_data[10]));
    NOR3 \adc081s101_0/cs_RNIPVPO1_0  (.A(
        \adc081s101_0/cntrWaitTrailinglde_0_o2_0 ), .B(
        \adc081s101_0/cntrWaitTrailinglde_0_o2_1 ), .C(CS_c), .Y(
        \adc081s101_0/N_62_1 ));
    NOR2B \stonyman_0/substate_i_0_RNO_16[0]  (.A(\stonyman_0/N_2425 ), 
        .B(\stonyman_0/state[7]_net_1 ), .Y(
        \stonyman_0/substate_i_0_RNO_16[0]_net_1 ));
    NOR2B \stonyman_0/substate_RNO_0[10]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(\stonyman_0/N_2415 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_0[10] ));
    NOR3B \stonyman_0/counterWait_RNIRCJ6A[26]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_3 ), .B(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_2 ), .C(
        \stonyman_0/N_138_i_i_i_o2_8 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_5 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[24]  (.A(
        \psram_address_c[24] ), .B(
        \psram_cr_0/cr_int_i0/address_5[24] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_272 ));
    NOR3B \stonyman_0/state_RNO_0[1]  (.A(\stonyman_0/un31lto0 ), .B(
        \stonyman_0/state_i[0]_net_1 ), .C(\stonyman_0/N_320 ), .Y(
        \stonyman_0/state_ns_i_a2_0_0_0_a2_0_0[1] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[7]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[5] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[7] ));
    OR2 \stonyman_0/substate_RNIHRIK[16]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/substate[8]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_o2_2_0[9] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/operation[26]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[26] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIK1OR2[13]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[6] ));
    AND3B \stonyman_0/counterWait_80_10_m2_e_1  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(
        \stonyman_0/state[1]_net_1 ), .Y(
        \stonyman_0/counterWait_80_10_m2_e_1_net_1 ));
    IOTRI_OB_EB \led_pad[2]/U0/U1  (.D(\led_2_c[2] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[2]/U0/NET1 ), .EOUT(\led_pad[2]/U0/NET2 ));
    NOR3C \stonyman_0/state_RNIQLB1C[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_9_0 ), .Y(
        \stonyman_0/state_RNIQLB1C[6]_net_1 ));
    NOR3B \stonyman_0/counterWait_RNO_2[4]  (.A(\stonyman_0/N_3749 ), 
        .B(\stonyman_0/N_639 ), .C(
        \stonyman_0/substate_RNIJ5BU44[7]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO_2[4]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_93  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBININT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C0SMBUSNOINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNOINT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CALIBOUTINT_NET ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[12]  (.A(
        \psram_cr_0/data_from_cr[12] ), .B(\psram_data_in[12] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_243 ));
    OA1 \stonyman_0/counterWait_RNO_1[0]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_1_a0_0[0] ), .Y(
        \stonyman_0/counterWait_RNO_1[0]_net_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[16]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[16] ));
    OR3 \stonyman_0/un5_counterWait_I_18  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(
        \stonyman_0/counterWait[4]_net_1 ), .C(
        \stonyman_0/counterWait[5]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[2] ));
    OR3 \stonyman_0/substate_RNIIUDOP[7]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_6 ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_3_s ), .C(
        \stonyman_0/counterWait_0_sqmuxa_7 ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_4 ));
    AND3C \stonyman_0/substate_RNO_13[1]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(
        \stonyman_0/substate[12]_net_1 ), .C(\stonyman_0/N_2321 ), .Y(
        \stonyman_0/substate_ns_i_a4_1_1[1] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(N_639), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_216 ));
    AO1A \stonyman_0/substate_RNO_1[3]  (.A(\stonyman_0/state21 ), .B(
        \stonyman_0/substate_tr30_1_0 ), .C(
        \stonyman_0/substate_ns_0_2[3] ), .Y(
        \stonyman_0/substate_ns_0_3[3] ));
    AO1 \stonyman_0/substate_RNI8LQ0B[8]  (.A(\stonyman_0/N_6 ), .B(
        \stonyman_0/un1_state_7_i_0_tz ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_5_0 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[21]  (.A(
        \psram_cr_0/ahb0/operation[21]_net_1 ), .B(N_49), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_200 ));
    AXO2 \stonyman_0/substate_RNO_0[14]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[14]_net_1 ), .C(\stonyman_0/N_2301 ), 
        .Y(\stonyman_0/N_2344 ));
    OR2A \stonyman_0/state_RNIRR379[1]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_2292 ));
    NOR3C \stonyman_0/state_RNIRN7MG[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_14_1 ), .Y(
        \stonyman_0/state_RNIRN7MG[6]_net_1 ));
    OR3 \stonyman_0/substate_i_0_RNO_9[0]  (.A(\stonyman_0/N_2419 ), 
        .B(\stonyman_0/substate_ns_9[0] ), .C(
        \stonyman_0/substate_ns_10[0] ), .Y(
        \stonyman_0/substate_ns_13[0] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(N_35), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_193 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 )
        );
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNI5O7V9[2]  (.A(
        \stonyman_0/cachedValue[2] ), .B(\stonyman_0/cachedValue[5] ), 
        .C(\stonyman_0/N_209 ), .Y(\stonyman_0/state39_0_a2_3 ));
    NOR3C \psram_cr_0/cr_int_i0/op_counter_RNI00K5[0]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_115 ));
    AO1A \stonyman_0/resp_RNO_1  (.A(\stonyman_0/N_163 ), .B(resp_c), 
        .C(\stonyman_0/substate_ns_0_0[5] ), .Y(\stonyman_0/N_763 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[8]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[8] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_219 )
        );
    OR2B \stonyman_0/counterWait_RNO_3[1]  (.A(\stonyman_0/I_5 ), .B(
        \stonyman_0/N_300 ), .Y(\stonyman_0/N_397 ));
    DFN1 \psram_cr_0/cr_int_i0/address[22]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[22]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[22] ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_RNIHL3M6  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_176 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTII1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_127 ));
    OR2 \psram_cr_0/cr_int_i0/op_counter_lb1_RNI6OFH  (.A(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_72 ), .Y(
        \psram_cr_0/cr_int_i0/ac_countere ));
    AO1A \stonyman_0/state_RNO[5]  (.A(\stonyman_0/N_378 ), .B(
        \stonyman_0/state[4]_net_1 ), .C(\stonyman_0/N_603 ), .Y(
        \stonyman_0/N_646 ));
    MX2 \stonyman_0/counterWait_RNO_2[12]  (.A(
        \stonyman_0/counterWait_2[12] ), .B(\stonyman_0/I_35 ), .S(
        \stonyman_0/N_194 ), .Y(\stonyman_0/counterWait_8[12] ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIU0EA2[2]  (.A(
        \stonyman_0/DOUT_TMP[2] ), .B(\stonyman_0/DIN_REG1[2] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/cachedValue[2] ));
    DFN1 \stonyman_0/substate[12]  (.D(
        \stonyman_0/substate_RNO[12]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[12]_net_1 ));
    NOR3B \stonyman_0/cachedPOINTER_RNIL1DH1[2]  (.A(
        \stonyman_0/N_2424 ), .B(\stonyman_0/un31lto0 ), .C(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/N_2443 ));
    NOR2A \stonyman_0/substate_i_0_RNO_29[0]  (.A(\stonyman_0/N_2315 ), 
        .B(\stonyman_0/state_RNIN1TN9[6]_net_1 ), .Y(
        \stonyman_0/N_2405 ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXER  (.PAD(MAC_RXER), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXER_Y ));
    OA1B \stonyman_0/cachedPOINTER_RNI9NC61[1]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .C(
        \stonyman_0/substate_i[0] ), .Y(\stonyman_0/resp_1_sqmuxa ));
    MX2C \stonyman_0/counterWait_RNO_11[1]  (.A(
        \stonyman_0/counterWait_RNO_14[1]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0_0 ), 
        .S(\stonyman_0/counterWait_RNO_15[1]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO_11[1]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[17] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[17] ));
    NOR3 \stonyman_0/counterWait_RNITGDQ_0[26]  (.A(
        \stonyman_0/counterWait[25]_net_1 ), .B(
        \stonyman_0/counterWait[26]_net_1 ), .C(
        \stonyman_0/counterWait[27]_net_1 ), .Y(
        \stonyman_0/state_0_sqmuxa_m2_e_0 ));
    OR2 \stonyman_0/un5_counterWait_I_21  (.A(
        \stonyman_0/counterWait[6]_net_1 ), .B(
        \stonyman_0/counterWait[7]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[3] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_264 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_68  (.A(
        \stonyman_0/DWACT_FDEC_E[34] ), .B(
        \stonyman_0/DWACT_FDEC_E[2] ), .C(\stonyman_0/DWACT_FDEC_E[5] )
        , .Y(\stonyman_0/DWACT_FDEC_E[29] ));
    OA1A \stonyman_0/counterWait_RNO_1[10]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[10]_net_1 ), .C(
        \stonyman_0/counterWait_80_0_iv_0_0_tz[23] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_0[10] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[5]  (.A(\psram_cr_0/ahb0/N_248 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGE161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[28] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[28] ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[4]  (.A(
        \psram_cr_0/ahb0/data_out[4]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] ));
    NOR2A \stonyman_0/cachedPOINTER_RNI12AK[1]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .Y(\stonyman_0/N_2424 ));
    DFN1 \stonyman_0/counterWait[7]  (.D(
        \stonyman_0/counterWait_80[7] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[7]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_243 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 ));
    OR2 \stonyman_0/state_RNIFIOJ[11]  (.A(\stonyman_0/N_2284 ), .B(
        \stonyman_0/N_1546_tz ), .Y(\stonyman_0/N_109 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[23]  (.A(
        \psram_address_c[23] ), .B(
        \psram_cr_0/cr_int_i0/address_5[23] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_271 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_254 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 ));
    DFN1 \stonyman_0/counterWait[28]  (.D(
        \stonyman_0/counterWait_80[28] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[28]_net_1 ));
    OR2 \stonyman_0/substate_RNIN4HB[15]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/substate[15]_net_1 ), .Y(\stonyman_0/N_2307 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[11]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[3] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] ));
    OA1 \stonyman_0/substate_i_0_RNO_5[0]  (.A(
        \stonyman_0/substate[8]_net_1 ), .B(\stonyman_0/N_2297 ), .C(
        \stonyman_0/N_2434 ), .Y(\stonyman_0/substate_ns_18[0] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/operation[29]_net_1 ), .B(N_65), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_208 ));
    AO1A \stonyman_0/substate_RNO_2[7]  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/substate_ns_i_a4_0_0[7] ), .C(
        \stonyman_0/substate_ns_i_1[7] ), .Y(
        \stonyman_0/substate_ns_i_2[7] ));
    AO1 \stonyman_0/state_RNO[2]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_m2_0_a2_0[2] ), .B(
        \stonyman_0/N_383 ), .C(\stonyman_0/N_609 ), .Y(
        \stonyman_0/N_648 ));
    NOR3B \psram_cr_0/cr_int_i0/ac_counter_RNI1L5I2[0]  (.A(
        \psram_cr_0/cr_int_i0/N_67 ), .B(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .C(
        \psram_cr_0/cr_int_i0/N_76 ), .Y(\psram_cr_0/cr_int_i0/N_111 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[15]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[15] ));
    AO1 \adc081s101_0/cs_RNIIN853  (.A(\adc081s101_0/N_62_1 ), .B(
        \adc081s101_0/N_46 ), .C(\adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/cntrWaitTrailinge ));
    NOR2B \stonyman_0/state_RNO_4[8]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[8]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_0_i_0_a2_0[8] ));
    OA1B \adc081s101_0/conversionComplete_RNO_1  (.A(
        \adc081s101_0/N_42 ), .B(adcConvComplete_c), .C(
        \adc081s101_0/N_57 ), .Y(\adc081s101_0/N_104 ));
    DFN1 \stonyman_0/substate[3]  (.D(\stonyman_0/substate_ns[3] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[3]_net_1 ));
    OA1B \stonyman_0/state_RNIQMT51[8]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(\stonyman_0/state[7]_net_1 ), 
        .C(\stonyman_0/led_2_c_1[2] ), .Y(
        \stonyman_0/state_RNIQMT51[8]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_259 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[11]_net_1 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_98 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        );
    OR3A \psram_cr_0/ahb0/haddr_reg_RNI74PR6[4]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/ahb0/N_57 ), .C(
        \psram_cr_0/ahb0/N_56 ), .Y(\psram_cr_0/ahb0/N_18 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 ));
    AO1D \stonyman_0/substate_RNO_1[11]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(
        \stonyman_0/substate[6]_net_1 ), .C(\stonyman_0/N_2277_i_1 ), 
        .Y(\stonyman_0/substate_ns_i_0_0[11] ));
    AO1A \stonyman_0/substate_RNI9G6LA[6]  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/N_100_i_i_0_a2_0 ), .C(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\stonyman_0/N_384 ));
    AO1A \adc081s101_0/cs_RNO  (.A(\adc081s101_0/N_46 ), .B(
        \adc081s101_0/N_62_1 ), .C(\adc081s101_0/N_103 ), .Y(
        \adc081s101_0/cs_RNO_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[13]  (.D(
        \psram_cr_0/cr_int_i0/N_46 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[13] ));
    IOBI_IB_OB_EB \psram_data_pad[2]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[2]/U0/NET3 ), .DOUT(
        \psram_data_pad[2]/U0/NET1 ), .EOUT(
        \psram_data_pad[2]/U0/NET2 ), .Y(\psram_data_in[2] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3SQI4[7]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_96 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_110 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(N_635), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_212 ));
    OR2A \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/un1_CAHBLTI1OI  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.un1_CAHBLTI1OI ));
    OA1 \stonyman_0/inphi_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait_0_sqmuxa_7 ), .C(\stonyman_0/N_762 ), 
        .Y(\stonyman_0/inphi_RNO_net_1 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[1]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[0] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[1] ));
    AO1 \stonyman_0/counterWait_RNO_1[14]  (.A(\stonyman_0/I_40 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[14] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[14] ));
    NOR3 \psram_cr_0/cr_int_i0/op_counter_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_115 ), .B(\psram_cr_0/cr_int_i0/N_106 )
        , .C(\psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_63 ));
    OA1 \stonyman_0/state_RNIN0MF[4]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(
        \stonyman_0/state[4]_net_1 ), .Y(
        \stonyman_0/counterWait_2_sqmuxa_4 ));
    AO1 \stonyman_0/counterWait_RNO[6]  (.A(
        \stonyman_0/counterWait_2_m_0[6] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[6] ), .Y(
        \stonyman_0/counterWait_80[6] ));
    OA1 \stonyman_0/incp_RNO  (.A(\stonyman_0/N_384 ), .B(
        \stonyman_0/N_635 ), .C(\stonyman_0/N_760 ), .Y(
        \stonyman_0/N_28 ));
    IOPAD_TRI \led_pad[1]/U0/U0  (.D(\led_pad[1]/U0/NET1 ), .E(
        \led_pad[1]/U0/NET2 ), .PAD(led[1]));
    DFN1 \psram_cr_0/ahb0/operation[24]  (.D(
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[24]_net_1 ));
    DFN1 \stonyman_0/resv  (.D(\stonyman_0/resv_RNO_net_1 ), .CLK(
        SCLK_c), .Q(resv_c));
    OR2 \stonyman_0/state_RNO_19[7]  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(\stonyman_0/N_208 ), .Y(
        \stonyman_0/state_ns_0_10_tz_2[7] ));
    OR2 \stonyman_0/counterWait_RNITHJH[26]  (.A(
        \stonyman_0/counterWait[26]_net_1 ), .B(
        \stonyman_0/counterWait[25]_net_1 ), .Y(
        \stonyman_0/N_262_i_0_o2_0 ));
    NOR2A \stonyman_0/substate_RNO_5[2]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(
        \stonyman_0/state[8]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_3_0[2] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_16[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[20] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_47));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[15] ));
    OA1A \stonyman_0/counterWait_RNO_9[1]  (.A(
        \stonyman_0/substate_9_sqmuxa_5_s ), .B(\stonyman_0/N_194 ), 
        .C(\stonyman_0/I_5 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a1_0[1] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_8  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/cachedValue[2] ), .Y(\stonyman_0/N_6_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[2] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[21]  (.A(
        \psram_address_c[21] ), .B(
        \psram_cr_0/cr_int_i0/address_5[21] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_269 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_192 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_31  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(
        \stonyman_0/counterWait[9]_net_1 ), .C(
        \stonyman_0/counterWait[10]_net_1 ), .Y(\stonyman_0/N_20 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_RNIAQGQ  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWRITE), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTlO0I_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1ll ));
    IOPAD_TRI \led_pad[7]/U0/U0  (.D(\led_pad[7]/U0/NET1 ), .E(
        \led_pad[7]/U0/NET2 ), .PAD(led[7]));
    IOTRI_OB_EB \inphi_pad/U0/U1  (.D(inphi_c), .E(PLLEN_VCC), .DOUT(
        \inphi_pad/U0/NET1 ), .EOUT(\inphi_pad/U0/NET2 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[12]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[4] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[2]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[2]_net_1 )
        );
    NOR3B \stonyman_0/substate_RNO_6[2]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(
        \stonyman_0/state[7]_net_1 ), .C(\stonyman_0/state[1]_net_1 ), 
        .Y(\stonyman_0/substate_ns_0_a4_4_1[2] ));
    NOR3B \stonyman_0/substate_RNI8L9I2[10]  (.A(
        \stonyman_0/led_2_c_1[1] ), .B(
        \stonyman_0/un35_i_a2_1_a2_2_a2_1[1] ), .C(\stonyman_0/N_3732 )
        , .Y(\led_2_c[1] ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_CRSDV  (.PAD(MAC_CRSDV), .Y(
        \MSS_CORE2_0/MSS_MAC_0_CRSDV_Y ));
    IOPAD_TRI \psram_nbyte_en_pad[1]/U0/U0  (.D(
        \psram_nbyte_en_pad[1]/U0/NET1 ), .E(
        \psram_nbyte_en_pad[1]/U0/NET2 ), .PAD(psram_nbyte_en[1]));
    AO1 \stonyman_0/counterWait_RNO_1[13]  (.A(\stonyman_0/I_37 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[13] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[13] ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_97 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[7]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[7] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[7] ));
    AO1A \stonyman_0/substate_RNITGEO[15]  (.A(adcConvComplete_c), .B(
        \stonyman_0/substate[16]_net_1 ), .C(
        \stonyman_0/substate[15]_net_1 ), .Y(
        \stonyman_0/un1_substate_2 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[7]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[7] ));
    MX2B \stonyman_0/substate_i_0_RNO_8[0]  (.A(
        \stonyman_0/substate_i_0_RNO_16[0]_net_1 ), .B(
        \stonyman_0/N_252 ), .S(
        \stonyman_0/substate_i_0_RNO_17[0]_net_1 ), .Y(
        \stonyman_0/N_2406 ));
    OA1A \stonyman_0/counterWait_RNIP6UA2[9]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[9]_net_1 )
        , .C(\stonyman_0/resp_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_RNIP6UA2[9]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[8]  (.A(\psram_cr_0/ahb0/N_251 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[9]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[9] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_52  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[14]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[13]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[15]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[13]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[14]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[15]INT_NET ));
    OR2 \stonyman_0/state_RNI33QV1[7]  (.A(\stonyman_0/N_618 ), .B(
        \stonyman_0/N_638 ), .Y(\stonyman_0/N_323 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(N_43), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_229 ));
    AO1 \stonyman_0/substate_RNO_1[4]  (.A(
        \stonyman_0/substate_ns_0_a4_0_0[4] ), .B(
        \stonyman_0/state_RNIU93R9[6]_net_1 ), .C(\stonyman_0/N_2382 ), 
        .Y(\stonyman_0/substate_ns_0_0[4] ));
    NOR3A \psram_cr_0/ahb0/hrdata_reg_RNO_3[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/ahb0/N_87 ), .C(
        \psram_cr_0/ahb0/un1_haddr_reg_9 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] ));
    MSS_XTLOSC \MSS_CORE2_0/MSS_CCC_0/I_XTLOSC  (.XTL(MAINXIN), 
        .CLKOUT(\MSS_CORE2_0/MSS_CCC_0/N_CLKA_XTLOSC ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_244 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[13]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_225 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 ));
    NOR2B \inputConditioner_0/conditioner_RNO[4]  (.A(
        \inputConditioner_0/conditioner[3]_net_1 ), .B(CAPTURE_c), .Y(
        \inputConditioner_0/intermediate[3] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_35));
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
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[26]  (.A(
        \psram_cr_0/ahb0/max_addr[26] ), .B(N_59), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_237 ));
    OR2 \stonyman_0/counterWait_RNI5SIT1[23]  (.A(\stonyman_0/N_3718 ), 
        .B(\stonyman_0/N_3720 ), .Y(\stonyman_0/state_ns_0_9_tz_2[7] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[14]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[6] ), .Y(
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
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[10]  (.A(
        \psram_address_c[10] ), .B(
        \psram_cr_0/cr_int_i0/address_5[10] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_258 ));
    OR3A \adc081s101_0/cs_RNIPVPO1  (.A(CS_c), .B(
        \adc081s101_0/cntrWaitTrailinglde_0_o2_0 ), .C(
        \adc081s101_0/cntrWaitTrailinglde_0_o2_1 ), .Y(
        \adc081s101_0/N_49 ));
    AO1 \stonyman_0/state_i_RNO[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_0[0] ), .B(
        \stonyman_0/N_3710 ), .C(\stonyman_0/state_ns_i_0_a2_0_0_1[0] )
        , .Y(\stonyman_0/state_ns_i[0] ));
    AO1A \stonyman_0/substate_i_0_RNO_2[0]  (.A(\stonyman_0/N_322 ), 
        .B(\stonyman_0/substate_tr13_5_6 ), .C(\stonyman_0/N_2406 ), 
        .Y(\stonyman_0/substate_ns_22[0] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_62  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL0INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL2INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[22]  (.A(
        \psram_address_c[22] ), .B(
        \psram_cr_0/cr_int_i0/address_5[22] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_270 ));
    DFN1 \psram_cr_0/cr_int_i0/address[6]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[6] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIK1OR2_0[13]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[4] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[4] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[4]_net_1 ));
    IOTRI_OB_EB \led_pad[0]/U0/U1  (.D(\led_2_c[0] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[0]/U0/NET1 ), .EOUT(\led_pad[0]/U0/NET2 ));
    OR3 \stonyman_0/state_RNO_0[7]  (.A(\stonyman_0/N_3297 ), .B(
        \stonyman_0/N_3325 ), .C(\stonyman_0/N_3328 ), .Y(
        \stonyman_0/N_3289 ));
    IOPAD_TRI \psram_nwe_pad/U0/U0  (.D(\psram_nwe_pad/U0/NET1 ), .E(
        \psram_nwe_pad/U0/NET2 ), .PAD(psram_nwe));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIC2161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[15] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[15] ));
    DFN1 \stonyman_0/substate[10]  (.D(\stonyman_0/substate_ns[10] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[10]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[25]  (.A(
        \psram_cr_0/ahb0/max_addr[25] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[25] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[25] ));
    XOR2 \stonyman_0/cachedValue_tile_WADDR_REG1_RNI1L8I[1]  (.A(
        \stonyman_0/WADDR_REG1[1] ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .Y(\stonyman_0/I_4_1 ));
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
    NOR3C \stonyman_0/state_i_RNO_19[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_0[0] ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a2_1[0] ), .C(
        \stonyman_0/N_617 ), .Y(\stonyman_0/state_i_RNO_19[0]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_236 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 ));
    AO1 \stonyman_0/substate_RNO[5]  (.A(
        \stonyman_0/substate_ns_0_a4_1_0[5] ), .B(\stonyman_0/N_2300 ), 
        .C(\stonyman_0/substate_ns_0_0[5] ), .Y(
        \stonyman_0/substate_ns[5] ));
    IOPAD_TRI \psram_ncs0_pad/U0/U0  (.D(\psram_ncs0_pad/U0/NET1 ), .E(
        \psram_ncs0_pad/U0/NET2 ), .PAD(psram_ncs0));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[9]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_103 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[9] ));
    OR2A \stonyman_0/substate_RNIKP7U9[7]  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/N_6 ), .Y(\stonyman_0/substate_RNIKP7U9[7]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[19]  (.A(
        \psram_cr_0/ahb0/N_230 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 ));
    DFN1 \stonyman_0/counterWait[21]  (.D(
        \stonyman_0/counterWait_80[21] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[21]_net_1 ));
    XNOR2 \stonyman_0/un5_counterWait_I_40  (.A(\stonyman_0/N_17 ), .B(
        \stonyman_0/counterWait[14]_net_1 ), .Y(\stonyman_0/I_40 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[8] ));
    DFN1 \psram_cr_0/cr_int_i0/address[2]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[2] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_26_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_103 ));
    NOR3C \psram_cr_0/ahb0/hready_reg_RNIQ3IRN  (.A(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.un1_CAHBLTI1OI ), .B(
        \psram_cr_0/ahb0/hwrite_reg4_2 ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[11]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_103 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[11] ));
    DFN1 \inputConditioner_0/conditioner[4]  (.D(
        \inputConditioner_0/intermediate[3] ), .CLK(SCLK_c), .Q(
        \inputConditioner_0/conditioner[4]_net_1 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_4  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[7]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[6]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_4_net_1 )
        );
    AO1 \stonyman_0/counterWait_RNO_0[19]  (.A(\stonyman_0/I_56 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_80_0_iv_0[19] ), .Y(
        \stonyman_0/counterWait_80_0_iv_1[19] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[11]  (.A(
        \psram_cr_0/cr_int_i0/N_167 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[11] ));
    NOR2B \inputConditioner_0/conditioner_RNO[2]  (.A(
        \inputConditioner_0/conditioner[1]_net_1 ), .B(CAPTURE_c), .Y(
        \inputConditioner_0/intermediate[1] ));
    OR2A \stonyman_0/state_RNO_9[7]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(\stonyman_0/N_3297 ), .Y(
        \stonyman_0/state_tr25_32_0_i_0 ));
    DFN1 \psram_cr_0/ahb0/psram_addr_sel  (.D(
        \psram_cr_0/ahb0/psram_addr_sel_2_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/psram_addr_sel_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[10]  (.D(
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[10] ));
    DFN1 \stonyman_0/counterWait[19]  (.D(
        \stonyman_0/counterWait_80[19] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[19]_net_1 ));
    NOR2A \adc081s101_0/cs_RNITMS9  (.A(CS_c), .B(adcStartCapture_c), 
        .Y(\adc081s101_0/bitsRead_0_sqmuxa_1 ));
    NOR2 \stonyman_0/state_RNIEO98[3]  (.A(\stonyman_0/state[5]_net_1 )
        , .B(\stonyman_0/state[3]_net_1 ), .Y(
        \stonyman_0/un33_i_a2_0_a2_2[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[10]  (.A(
        \psram_cr_0/reg_addr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[10] ));
    DFN1 \psram_cr_0/ahb0/data_in[0]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[0] ));
    OR3A \stonyman_0/substate_RNO_20[1]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .C(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .Y(\stonyman_0/N_2288 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[13] ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXD_0  (.PAD(MAC_RXD[0]), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXD_0_Y ));
    AO1 \stonyman_0/counterWait_RNO_1[18]  (.A(\stonyman_0/I_53 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[18] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[18] ));
    DFN1 \stonyman_0/counterWait[9]  (.D(
        \stonyman_0/counterWait_RNO[9]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[9]_net_1 ));
    OR2 \psram_cr_0/cr_int_i0/op_counter_RNI14O3[3]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_68 ));
    AO1 \adc081s101_0/cntrWaitTrailing_RNO[2]  (.A(\adc081s101_0/N_40 )
        , .B(\adc081s101_0/cntrWaitTrailing[2]_net_1 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_26 ));
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
    OR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNIVHV9A[0]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_0 ), .B(
        \stonyman_0/N_209 ), .Y(\stonyman_0/N_252 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[2]  (.A(
        \psram_cr_0/max_addr[2] ), .B(N_636), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_213 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_183 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 ));
    OR2 \stonyman_0/substate_RNIHOC31[4]  (.A(\stonyman_0/N_2296 ), .B(
        \stonyman_0/substate[4]_net_1 ), .Y(\stonyman_0/N_2336 ));
    OA1B \stonyman_0/substate_RNO_2[1]  (.A(
        \stonyman_0/substate_ns_i_a4_1_2[1] ), .B(
        \stonyman_0/substate_ns_i_5_tz[1] ), .C(\stonyman_0/N_1978 ), 
        .Y(\stonyman_0/substate_ns_i_5_0[1] ));
    OAI1 \stonyman_0/state_RNIK93N[8]  (.A(\stonyman_0/state[7]_net_1 )
        , .B(\stonyman_0/state[8]_net_1 ), .C(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/d_m3_0_a2_1_0 )
        );
    DFN1 \psram_cr_0/cr_int_i0/active_data  (.D(
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.active_data ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 ));
    XA1B \adc081s101_0/bitsRead_RNO[1]  (.A(
        \adc081s101_0/bitsRead[0]_net_1 ), .B(
        \adc081s101_0/bitsRead[1]_net_1 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_33 ));
    DFN1 \stonyman_0/state_i[0]  (.D(\stonyman_0/state_ns_i[0] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state_i[0]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[7]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[7] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(N_55), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_235 ));
    NOR3A \stonyman_0/counterWait_RNO_7[4]  (.A(
        \stonyman_0/resp_0_sqmuxa ), .B(\stonyman_0/state_0_sqmuxa ), 
        .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/counterWait_RNO_7[4]_net_1 ));
    IOIN_IB \CAPTURE_pad/U0/U1  (.YIN(\CAPTURE_pad/U0/NET1 ), .Y(
        CAPTURE_c));
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
    OR3 \stonyman_0/un5_counterWait_I_22  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[3] ), .Y(\stonyman_0/N_23 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .B(
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
    DFN1E1 \adc081s101_0/bitsRead[2]  (.D(\adc081s101_0/N_35 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[2]_net_1 ));
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
    AO1C \stonyman_0/substate_RNO_14[1]  (.A(
        \stonyman_0/state_0_sqmuxa ), .B(\stonyman_0/N_2435 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2337 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[5]  (.A(
        \psram_address_c[5] ), .B(\psram_cr_0/cr_int_i0/address_5[5] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_253 ));
    IOTRI_OB_EB \psram_address_pad[6]/U0/U1  (.D(\psram_address_c[6] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[6]/U0/NET1 ), .EOUT(
        \psram_address_pad[6]/U0/NET2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_83  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[23]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[24]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[25]INT_NET ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIQ870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[0] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[0] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/max_addr[27] ), .B(N_61), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_238 ));
    NOR2B \stonyman_0/state_RNO_1[9]  (.A(\stonyman_0/state[8]_net_1 ), 
        .B(\stonyman_0/N_620 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_3_0[9] ));
    OR3 \stonyman_0/cachedPOINTER_RNIEFKB1[1]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .C(\stonyman_0/un31lto0 )
        , .Y(\stonyman_0/un32lto2 ));
    IOTRI_OB_EB \psram_ncs1_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\psram_ncs1_pad/U0/NET1 ), .EOUT(
        \psram_ncs1_pad/U0/NET2 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2I8K[5]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[5] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[5]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ));
    NOR2 \stonyman_0/substate_RNIFNIK[15]  (.A(
        \stonyman_0/substate[15]_net_1 ), .B(
        \stonyman_0/substate[7]_net_1 ), .Y(\stonyman_0/N_2206 ));
    NOR3 \stonyman_0/substate_i_0_RNO_51[0]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[3]_net_1 ), 
        .C(MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/substate_tr13_2_0 )
        );
    AO1 \stonyman_0/counterWait_RNO_0[7]  (.A(\stonyman_0/I_20 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_80_0_iv_0[7] ), .Y(
        \stonyman_0/counterWait_80_0_iv_1[7] ));
    NOR2B \psram_cr_0/cr_int_i0/start_1_RNO  (.A(
        \psram_cr_0/cr_int_i0/start_0_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_51  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[5] ), .Y(
        \stonyman_0/DWACT_FDEC_E[28] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[24]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[24] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[24] ));
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
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[5] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[22]  (.D(
        \psram_cr_0/ahb0/operation_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[22]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_out[3]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[3]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[7] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[25]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[25] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[25] ));
    OR2 \stonyman_0/state_RNO_23[7]  (.A(
        \stonyman_0/counterWait[28]_net_1 ), .B(\stonyman_0/N_3714 ), 
        .Y(\stonyman_0/state_ns_0_3_tz_0[7] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 ));
    OR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIRE96[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 ));
    NOR2 \stonyman_0/state_RNIBO98[3]  (.A(\stonyman_0/state[2]_net_1 )
        , .B(\stonyman_0/state[3]_net_1 ), .Y(
        \stonyman_0/un33_i_a2_0_a2_1[1] ));
    NOR3C \stonyman_0/state_RNI1EJ0M[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_20_0 ), .Y(
        \stonyman_0/state_RNI1EJ0M[6]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNIGEQC4_0[26]  (.A(
        \stonyman_0/state_0_sqmuxa_m2_e_1 ), .B(\stonyman_0/N_3715 ), 
        .C(\stonyman_0/state_ns_0_9_tz_2[7] ), .Y(
        \stonyman_0/state_0_sqmuxa_m2_e_3 ));
    IOTRI_OB_EB \psram_address_pad[11]/U0/U1  (.D(
        \psram_address_c[11] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[11]/U0/NET1 ), .EOUT(
        \psram_address_pad[11]/U0/NET2 ));
    DFN1E1 \adc081s101_0/bitsRead[0]  (.D(\adc081s101_0/N_67 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[0]_net_1 ));
    NOR2B \stonyman_0/substate_RNIG5AI2[12]  (.A(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2[2] ), .B(\stonyman_0/N_619 ), 
        .Y(\led_2_c[2] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_217 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_32 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI6BM0C[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m_i_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTOO0II ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ));
    OA1A \stonyman_0/substate_RNISPH31[1]  (.A(\stonyman_0/N_549 ), .B(
        \stonyman_0/N_1546_tz ), .C(\stonyman_0/substate[1]_net_1 ), 
        .Y(\stonyman_0/N_192 ));
    XNOR2 \stonyman_0/un5_counterWait_I_74  (.A(\stonyman_0/N_7_0 ), 
        .B(\stonyman_0/counterWait[24]_net_1 ), .Y(\stonyman_0/I_74 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIKVTL[16]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[16]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ));
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
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[8]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_103 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] ));
    XA1B \psram_cr_0/cr_int_i0/op_counter_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_61 ));
    NOR3 \stonyman_0/substate_RNIMM9H[10]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(
        \stonyman_0/substate[10]_net_1 ), .Y(\stonyman_0/N_2209 ));
    OR3 \stonyman_0/un5_counterWait_I_83  (.A(
        \stonyman_0/counterWait[24]_net_1 ), .B(
        \stonyman_0/counterWait[25]_net_1 ), .C(
        \stonyman_0/counterWait[26]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[22] ));
    IOPAD_TRI \psram_address_pad[11]/U0/U0  (.D(
        \psram_address_pad[11]/U0/NET1 ), .E(
        \psram_address_pad[11]/U0/NET2 ), .PAD(psram_address[11]));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_68 ), .B(\psram_cr_0/ahb0/N_70 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[11] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_12[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[24] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_55));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[12]  (.A(
        \psram_cr_0/ahb0/data_out[12]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[12] ));
    XNOR2 \stonyman_0/un5_counterWait_I_49  (.A(\stonyman_0/N_14 ), .B(
        \stonyman_0/counterWait[17]_net_1 ), .Y(\stonyman_0/I_49 ));
    XNOR2 \stonyman_0/un5_counterWait_I_32  (.A(\stonyman_0/N_20 ), .B(
        \stonyman_0/counterWait[11]_net_1 ), .Y(\stonyman_0/I_32 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[8]  (.A(
        \psram_cr_0/data_to_cr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[8] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[8] ));
    IOPAD_TRI \psram_address_pad[16]/U0/U0  (.D(
        \psram_address_pad[16]/U0/NET1 ), .E(
        \psram_address_pad[16]/U0/NET2 ), .PAD(psram_address[16]));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[2]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNIA52K3_3[2]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/hrdata_reg_6_sqmuxa ));
    IOTRI_OB_EB \psram_nbyte_en_pad[1]/U0/U1  (.D(psram_ncs0_c_c_c), 
        .E(PLLEN_VCC), .DOUT(\psram_nbyte_en_pad[1]/U0/NET1 ), .EOUT(
        \psram_nbyte_en_pad[1]/U0/NET2 ));
    NOR2A \stonyman_0/substate_RNO_16[1]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(\stonyman_0/N_2284 ), .Y(
        \stonyman_0/substate_ns_i_a4_7_0[1] ));
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
    NOR2A \stonyman_0/substate_RNIMK3O[5]  (.A(
        \stonyman_0/substate_i[0] ), .B(\stonyman_0/substate[5]_net_1 )
        , .Y(\stonyman_0/N_3328_2 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_253 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 ));
    NOR2 \stonyman_0/state_i_RNO_21[0]  (.A(
        \stonyman_0/state[3]_net_1 ), .B(\stonyman_0/state[8]_net_1 ), 
        .Y(\stonyman_0/state_ns_i_0_a2_0_0_a2_7_0[0] ));
    AO1 \stonyman_0/counterWait_RNO_1[15]  (.A(
        \stonyman_0/counterWait_8[15] ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[15] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[15] ));
    IOTRI_OB_EB \psram_address_pad[9]/U0/U1  (.D(\psram_address_c[9] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[9]/U0/NET1 ), .EOUT(
        \psram_address_pad[9]/U0/NET2 ));
    NOR3A \stonyman_0/counterWait_RNO_9[4]  (.A(
        \stonyman_0/un1_state_0_sqmuxa_1_3_0 ), .B(\stonyman_0/N_194 ), 
        .C(\stonyman_0/state_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_RNO_9[4]_net_1 ));
    AO1C \stonyman_0/state_i_RNO_26[0]  (.A(\stonyman_0/N_320 ), .B(
        \stonyman_0/un31lto0 ), .C(\stonyman_0/state[1]_net_1 ), .Y(
        \stonyman_0/N_391 ));
    AO1 \stonyman_0/counterWait_RNO_1[5]  (.A(\stonyman_0/I_14_0 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[5] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[5] ));
    DFN1 \psram_cr_0/cr_int_i0/address[14]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[14] ));
    DFN1 \stonyman_0/counterWait[20]  (.D(
        \stonyman_0/counterWait_80[20] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[20]_net_1 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[6]  (.A(
        \psram_cr_0/data_to_cr[6] ), .B(N_640), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_249 ));
    OR3 \stonyman_0/un5_counterWait_I_61  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[15] ), .Y(\stonyman_0/N_10 ));
    DFN1 \psram_cr_0/ahb0/operation[4]  (.D(
        \psram_cr_0/ahb0/operation_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[4] ));
    NOR2B \stonyman_0/state_RNIRGJG[1]  (.A(\stonyman_0/N_1934_6 ), .B(
        \stonyman_0/N_573 ), .Y(\stonyman_0/N_1933_9 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[13]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_101 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] ));
    AX1C \stonyman_0/un2_cachedValue_1_I_7  (.A(
        \stonyman_0/cachedValue[1] ), .B(\stonyman_0/cachedValue[0] ), 
        .C(\stonyman_0/cachedValue[2] ), .Y(\stonyman_0/I_7_0 ));
    NOR3A \stonyman_0/counterWait_RNO_3[9]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/resp_0_sqmuxa ), .C(\stonyman_0/I_26 ), .Y(
        \stonyman_0/counterWait_80_0_iv_itt_9_m3_0_a2_1 ));
    AOI1 \stonyman_0/substate_i_0_RNIPT1NK1[0]  (.A(
        \stonyman_0/resp_0_sqmuxa ), .B(MSS_CORE2_0_M2F_RESET_N), .C(
        \stonyman_0/state_i_RNIGGJNI1[0]_net_1 ), .Y(
        \stonyman_0/substate_i_0_RNIPT1NK1[0]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_262 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[14]_net_1 ));
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
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_170 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 ));
    DFN1E1 \adc081s101_0/cntrWaitTrailing[2]  (.D(\adc081s101_0/N_26 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitTrailinge ), .Q(
        \adc081s101_0/cntrWaitTrailing[2]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[14]  (.A(
        \psram_cr_0/data_from_cr[14] ), .B(
        \psram_cr_0/ahb0/data_out[14]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_273 ));
    DFN1 \psram_cr_0/ahb0/data_in[3]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[3] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[5]  (.A(
        \psram_cr_0/max_addr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[5] ));
    DFN1 \psram_cr_0/cr_int_i0/enable  (.D(\psram_cr_0/cr_int_i0/N_20 )
        , .CLK(FAB_CLK), .Q(\psram_cr_0/cr_int_i0/enable_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/address[4]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[4] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[11]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[11] ));
    DFN1 \stonyman_0/counterWait[22]  (.D(
        \stonyman_0/counterWait_80[22] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[22]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 ));
    XOR3 \adc081s101_0/un1_cntrWaitLeading_I_10  (.A(
        \adc081s101_0/cntrWaitLeading[1]_net_1 ), .B(
        \adc081s101_0/cntrWaitLeading15 ), .C(
        \adc081s101_0/DWACT_ADD_CI_0_TMP[0] ), .Y(\adc081s101_0/I_10 ));
    NOR3A \psram_cr_0/cr_int_i0/enable_RNO  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_98 ), .C(
        \psram_cr_0/cr_int_i0/N_97 ), .Y(\psram_cr_0/cr_int_i0/N_20 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[27]  (.A(
        \psram_cr_0/ahb0/N_238 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[27]_net_1 ));
    XOR2 \stonyman_0/un1_cachedPOINTER_3_I_9  (.A(
        \stonyman_0/un31lto0 ), .B(
        \stonyman_0/substate_RNIEEQIB[6]_net_1 ), .Y(
        \stonyman_0/DWACT_ADD_CI_0_partial_sum[0] ));
    NOR3A \adc081s101_0/cntrWaitQuiet_RNO[0]  (.A(\adc081s101_0/N_47 ), 
        .B(\adc081s101_0/N_49 ), .C(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .Y(\adc081s101_0/N_60 )
        );
    XA1C \adc081s101_0/bitsRead_RNO[2]  (.A(
        \adc081s101_0/bitsRead[2]_net_1 ), .B(\adc081s101_0/N_45 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_35 ));
    NOR2A \stonyman_0/substate_RNIQ53OH[2]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(\stonyman_0/N_263 ), .Y(
        \stonyman_0/N_622 ));
    DFN1 \inputConditioner_0/conditioner[1]  (.D(
        \inputConditioner_0/intermediate[0] ), .CLK(SCLK_c), .Q(
        \inputConditioner_0/conditioner[1]_net_1 ));
    DFN1 \stonyman_0/state[3]  (.D(\stonyman_0/N_647 ), .CLK(SCLK_c), 
        .Q(\stonyman_0/state[3]_net_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[0]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[0] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[2]  (.A(
        \psram_cr_0/data_from_cr[2] ), .B(\psram_data_in[2] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_233 ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_13  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_5_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_4_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_11_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_13_net_1 )
        );
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[12]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[12] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[12] ));
    OR3 \stonyman_0/state_RNO_10[7]  (.A(\stonyman_0/N_3297 ), .B(
        \stonyman_0/N_3332 ), .C(\stonyman_0/N_3334 ), .Y(
        \stonyman_0/N_3291 ));
    AO1A \psram_cr_0/ahb0/hready_reg_RNO_0  (.A(
        \psram_cr_0/ahb0/hwrite_reg4 ), .B(
        CoreAHBLite_0_AHBmslave5_HREADY), .C(
        \psram_cr_0/ahb0/fsm_net_1 ), .Y(\psram_cr_0/ahb0/N_167 ));
    NOR3B \stonyman_0/substate_RNO_3[3]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/state[5]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/substate_tr30_3_1 ));
    XA1 \stonyman_0/cachedValue_tile_DIN_REG1_RNI3NS51[7]  (.A(
        \stonyman_0/DOUT_TMP[7] ), .B(\stonyman_0/DIN_REG1[7] ), .C(
        \stonyman_0/DOUT_5_7_m5_0 ), .Y(
        \stonyman_0/DIN_REG1_RNI3NS51[7] ));
    NOR2B \stonyman_0/state_RNI20D42[1]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\led_2_c[3] ), .Y(
        \stonyman_0/counterWait_1_sqmuxa_6_0 ));
    IOPAD_TRI \inphi_pad/U0/U0  (.D(\inphi_pad/U0/NET1 ), .E(
        \inphi_pad/U0/NET2 ), .PAD(inphi));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I ));
    DFN1 \stonyman_0/counterWait[27]  (.D(
        \stonyman_0/counterWait_80[27] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[27]_net_1 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[5]  (.D(
        \stonyman_0/state_RNIRN7MG[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[5] ));
    IOBI_IB_OB_EB \psram_data_pad[7]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[7] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[7]/U0/NET3 ), .DOUT(
        \psram_data_pad[7]/U0/NET1 ), .EOUT(
        \psram_data_pad[7]/U0/NET2 ), .Y(\psram_data_in[7] ));
    NOR3A \stonyman_0/counterWait_RNO_4[9]  (.A(\stonyman_0/N_639 ), 
        .B(\stonyman_0/counterWait_RNIP6UA2[9]_net_1 ), .C(
        \stonyman_0/counterWait_RNINB7KH3[9]_net_1 ), .Y(
        \stonyman_0/N_427 ));
    IOTRI_OB_EB \led_pad[4]/U0/U1  (.D(\led_net_0_c[0] ), .E(PLLEN_VCC)
        , .DOUT(\led_pad[4]/U0/NET1 ), .EOUT(\led_pad[4]/U0/NET2 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_1[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[13] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_33));
    NOR2A \stonyman_0/substate_RNO[9]  (.A(
        \stonyman_0/state_RNIN1TN9[6]_net_1 ), .B(\stonyman_0/N_2342 ), 
        .Y(\stonyman_0/substate_RNO[9]_net_1 ));
    OR2A \psram_cr_0/ahb0/hready_reg_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/ahb0/N_167 ), .Y(
        \psram_cr_0/ahb0/hready_reg_RNO_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_267 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[6] ));
    OR3 \stonyman_0/un5_counterWait_I_91  (.A(
        \stonyman_0/DWACT_FDEC_E[24] ), .B(
        \stonyman_0/DWACT_FDEC_E[23] ), .C(
        \stonyman_0/DWACT_FDEC_E[25] ), .Y(\stonyman_0/N_2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_48  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[2]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[1]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[3]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[1]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[2]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[3]INT_NET ));
    OR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNIBR254  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTII1 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m_i_0 )
        );
    XOR2 \stonyman_0/substate_RNO_2[12]  (.A(\stonyman_0/N_2292 ), .B(
        \stonyman_0/substate[12]_net_1 ), .Y(\stonyman_0/N_2327_i ));
    AOI1A \stonyman_0/substate_ns_0_i[13]  (.A(\stonyman_0/N_2392 ), 
        .B(\stonyman_0/N_154 ), .C(\stonyman_0/N_167 ), .Y(
        \stonyman_0/N_30 ));
    DFN1 \stonyman_0/counterWait[18]  (.D(
        \stonyman_0/counterWait_80[18] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[18]_net_1 ));
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
    XNOR2 \stonyman_0/un5_counterWait_I_77  (.A(\stonyman_0/N_6_0 ), 
        .B(\stonyman_0/counterWait[25]_net_1 ), .Y(\stonyman_0/I_77 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_88  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[23]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[22]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[24]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[22]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[23]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[24]INT_NET ));
    NOR3A \stonyman_0/substate_i_0_RNO_7[0]  (.A(
        \stonyman_0/substate_tr13_5_4 ), .B(\stonyman_0/N_1546_tz ), 
        .C(\stonyman_0/N_194 ), .Y(\stonyman_0/substate_tr13_5_6 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[15]  (.A(
        \psram_cr_0/reg_addr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[15] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[30]  (.A(
        \psram_cr_0/ahb0/N_241 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[30]_net_1 ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIA52K3[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/N_87 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ));
    IOPAD_BI \psram_data_pad[5]/U0/U0  (.D(\psram_data_pad[5]/U0/NET1 )
        , .E(\psram_data_pad[5]/U0/NET2 ), .Y(
        \psram_data_pad[5]/U0/NET3 ), .PAD(psram_data[5]));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_233 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[2]_net_1 ));
    NOR3B \stonyman_0/substate_RNO_11[3]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(
        \stonyman_0/substate[1]_net_1 ), .C(\stonyman_0/un32lto2 ), .Y(
        \stonyman_0/N_2377 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[10]  (.A(
        \psram_cr_0/reg_addr[10] ), .B(N_27), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_189 ));
    NOR2 \adc081s101_0/bitsRead_RNO[0]  (.A(
        \adc081s101_0/bitsRead[0]_net_1 ), .B(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_67 ));
    OR2A \stonyman_0/counterWait_RNI8F0C[19]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[19]_net_1 ), .Y(
        \stonyman_0/counterWait_2[19] ));
    OA1 \stonyman_0/resp_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/un1_cachedPOINTER_1_sqmuxa_1 ), .C(
        \stonyman_0/N_763 ), .Y(\stonyman_0/resp_RNO_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[1]  (.A(
        \psram_cr_0/ahb0/data_out[1]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[1] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[1] ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(N_21), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_250 ));
    DFN1 \psram_cr_0/cr_int_i0/noe0  (.D(\psram_cr_0/cr_int_i0/N_100 ), 
        .CLK(FAB_CLK), .Q(psram_noe0_c));
    AND3B \stonyman_0/substate_RNI58BR2[11]  (.A(\stonyman_0/N_2318 ), 
        .B(\stonyman_0/N_204 ), .C(\stonyman_0/un35_i_a2_0_a2_1[0] ), 
        .Y(\led_2_c[0] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[7] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[7]_net_1 ));
    OR2 \stonyman_0/counterWait_RNIQDJH[14]  (.A(
        \stonyman_0/counterWait[14]_net_1 ), .B(
        \stonyman_0/counterWait[16]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_a2_0_29_0_a2_0_o2_0[2] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIVCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[9] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[9] ));
    NOR2 \stonyman_0/state_RNIFO98[1]  (.A(\stonyman_0/state[1]_net_1 )
        , .B(\stonyman_0/state[8]_net_1 ), .Y(\stonyman_0/N_508 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_70 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[3]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[3] ));
    IOPAD_TRI \psram_address_pad[6]/U0/U0  (.D(
        \psram_address_pad[6]/U0/NET1 ), .E(
        \psram_address_pad[6]/U0/NET2 ), .PAD(psram_address[6]));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[11]  (.A(
        \psram_cr_0/reg_addr[11] ), .B(\psram_cr_0/data_to_cr[11] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_167 ));
    NOR3A \stonyman_0/counterWait_RNIMGOH9[27]  (.A(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_3 ), .B(
        \stonyman_0/state_ns_0_9_tz_2[7] ), .C(
        \stonyman_0/N_138_i_i_i_o2_8 ), .Y(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_5 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[0]  (.D(
        \stonyman_0/DIN_REG1_RNIUBB23[0] ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[0] ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNI79GT2[4]  (.A(
        \psram_cr_0/ahb0/N_84 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa_0_a2_1_0 ), .C(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_87 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/max_addr[28] ), .B(N_63), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_239 ));
    NOR2 \stonyman_0/substate_RNIL4HB[15]  (.A(
        \stonyman_0/substate[15]_net_1 ), .B(
        \stonyman_0/substate[14]_net_1 ), .Y(\stonyman_0/led_2_c_1[1] )
        );
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[10]  (.A(
        \psram_cr_0/data_from_cr[10] ), .B(
        \psram_cr_0/ahb0/data_out[10]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_269 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[16]  (.A(\psram_cr_0/dt_rw ), 
        .B(N_39), .S(\psram_cr_0/ahb0/operation5 ), .Y(
        \psram_cr_0/ahb0/N_195 ));
    NOR3B \stonyman_0/state_i_RNO_12[0]  (.A(\stonyman_0/N_1933_9 ), 
        .B(\stonyman_0/state_ns_i_0_a2_0_0_a2_7_0[0] ), .C(
        \stonyman_0/N_378 ), .Y(\stonyman_0/N_594 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIK1OR2_0[12]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[2] ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[9]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[8] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[9] ));
    MX2 \psram_cr_0/ahb0/hwrite_reg_RNO_0  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        CoreAHBLite_0_AHBmslave5_HWRITE), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_168 ));
    AO1A \adc081s101_0/cntrWaitQuiet_RNO[2]  (.A(\adc081s101_0/N_49 ), 
        .B(\adc081s101_0/cntrWaitQuiet_n2_i_a3_0 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa ), .Y(\adc081s101_0/N_29_1 ));
    NOR2 \stonyman_0/state_RNO[9]  (.A(\stonyman_0/N_542 ), .B(
        \stonyman_0/N_641 ), .Y(\stonyman_0/state_RNO[9]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_52  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[10] ), .C(
        \stonyman_0/DWACT_FDEC_E[12] ), .Y(\stonyman_0/N_13_0 ));
    NOR2B \stonyman_0/state_RNIHEJR[10]  (.A(
        \stonyman_0/un1_substate_2 ), .B(\stonyman_0/state[10]_net_1 ), 
        .Y(\stonyman_0/substate_0_sqmuxa_5 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[14]  (.A(
        \psram_cr_0/data_from_cr[14] ), .B(\psram_data_in[14] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_245 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_15[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[21] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_49));
    IOTRI_OB_EB \psram_address_pad[8]/U0/U1  (.D(\psram_address_c[8] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[8]/U0/NET1 ), .EOUT(
        \psram_address_pad[8]/U0/NET2 ));
    NOR3B \stonyman_0/counterWait_RNO_3[7]  (.A(\stonyman_0/I_20 ), .B(
        \stonyman_0/N_194 ), .C(
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 ), .Y(
        \stonyman_0/counterWait_6_m[7] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[1] ));
    DFN1 \psram_cr_0/ahb0/data_in[7]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[7] ));
    OR3 \stonyman_0/state_RNIRQO34[8]  (.A(
        \stonyman_0/state_RNIQMT51[8]_net_1 ), .B(
        \stonyman_0/substate_RNIL2U51[8]_net_1 ), .C(
        \stonyman_0/substate_RNIC1TN1[8]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_1_sqmuxa_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNI17VP  (.A(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ));
    NOR2A \stonyman_0/substate_RNIJ5BU44[7]  (.A(
        \stonyman_0/un1_state_0_sqmuxa_1_3_m2_0 ), .B(
        \stonyman_0/state_i_RNI0AH5H3[0]_net_1 ), .Y(
        \stonyman_0/substate_RNIJ5BU44[7]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[12]  (.A(
        \psram_cr_0/cr_int_i0/N_223 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_44 ));
    OR3 \stonyman_0/substate_i_0_RNO_3[0]  (.A(
        \stonyman_0/substate_ns_13[0] ), .B(\stonyman_0/N_1933 ), .C(
        \stonyman_0/substate_ns_14[0]_net_1 ), .Y(
        \stonyman_0/substate_ns_17[0] ));
    DFN1 \stonyman_0/counterWait[1]  (.D(
        \stonyman_0/counterWait_80[1] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[1]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIGFTL[12]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[12] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[12]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_260 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[1]_net_1 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIV3N3[1]  (.A(
        \stonyman_0/DIN_REG1[4] ), .B(\stonyman_0/DIN_REG1[1] ), .Y(
        \stonyman_0/DIN_REG1_RNIV3N3[1] ));
    NOR2B \stonyman_0/counterWait_80_10_m2_e_2_RNIIV2SO  (.A(
        \stonyman_0/N_300 ), .B(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_15 ));
    OR3A \psram_cr_0/cr_int_i0/ac_counter_RNIKISD1[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_76 ));
    OA1C \adc081s101_0/cs_RNO_0  (.A(MSS_CORE2_0_M2F_RESET_N), .B(CS_c)
        , .C(\adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/N_103 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[18]  (.A(
        \psram_cr_0/ahb0/operation[18]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[18] ));
    DFN1 \psram_cr_0/ahb0/dt_req  (.D(
        \psram_cr_0/ahb0/dt_req_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/dt_req ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[10]  (.A(
        \psram_cr_0/max_addr[10] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[10] ));
    NOR2A \stonyman_0/substate_i_0_RNO_23[0]  (.A(\stonyman_0/N_2307 ), 
        .B(\stonyman_0/state[10]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a0_0[0] ));
    XNOR2 \stonyman_0/un5_counterWait_I_46  (.A(\stonyman_0/N_15_0 ), 
        .B(\stonyman_0/counterWait[16]_net_1 ), .Y(\stonyman_0/I_46 ));
    AX1B \stonyman_0/un5_counterWait_I_12  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(
        \stonyman_0/DWACT_FDEC_E[0] ), .C(
        \stonyman_0/counterWait[4]_net_1 ), .Y(\stonyman_0/I_12 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[12]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_101 ), .Y(
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
    IOBI_IB_OB_EB \psram_data_pad[8]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[8] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[8]/U0/NET3 ), .DOUT(
        \psram_data_pad[8]/U0/NET1 ), .EOUT(
        \psram_data_pad[8]/U0/NET2 ), .Y(\psram_data_in[8] ));
    NOR2B \stonyman_0/substate_RNIB81F1[6]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(\stonyman_0/N_332 ), .Y(
        \stonyman_0/N_100_i_i_0_a2_0 ));
    DFN1 \stonyman_0/substate[1]  (.D(
        \stonyman_0/substate_RNO[1]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[1]_net_1 ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[0] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_169 ));
    NOR3B \stonyman_0/counterWait_RNO_1[20]  (.A(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .B(\stonyman_0/N_3453 )
        , .C(\stonyman_0/N_194 ), .Y(\stonyman_0/N_3508 ));
    NOR3B \stonyman_0/counterWait_RNO_3[19]  (.A(\stonyman_0/I_56 ), 
        .B(\stonyman_0/N_194 ), .C(
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 ), .Y(
        \stonyman_0/counterWait_6_m[19] ));
    OR2 \stonyman_0/counterWait_RNI3AKH[29]  (.A(
        \stonyman_0/counterWait[29]_net_1 ), .B(
        \stonyman_0/counterWait[28]_net_1 ), .Y(
        \stonyman_0/N_138_i_i_i_o2_6_0 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_259 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 ));
    AOI1B \stonyman_0/cachedValue_tile_I_1_RNI184A4  (.A(
        \stonyman_0/DOUT_5_a0_0[3] ), .B(\stonyman_0/I_5_1 ), .C(
        \stonyman_0/DOUT_5_0[3] ), .Y(\stonyman_0/cachedValue[3] ));
    DFN1 \psram_cr_0/ahb0/data_out[6]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[6]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[1]_net_1 ));
    NOR2B \stonyman_0/counterWait_RNO_0[29]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[29]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[29] ));
    IOBI_IB_OB_EB \psram_data_pad[14]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[14] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[14]/U0/NET3 ), .DOUT(
        \psram_data_pad[14]/U0/NET1 ), .EOUT(
        \psram_data_pad[14]/U0/NET2 ), .Y(\psram_data_in[14] ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIT0EA2[1]  (.A(
        \stonyman_0/DOUT_TMP[1] ), .B(\stonyman_0/DIN_REG1[1] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/cachedValue[1] ));
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
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNI3TRG3_0[2]  (.A(
        \psram_cr_0/ahb0/N_97 ), .B(\psram_cr_0/ahb0/N_95 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ));
    NOR2 \stonyman_0/substate_RNIBBIK[4]  (.A(
        \stonyman_0/substate[4]_net_1 ), .B(
        \stonyman_0/substate[14]_net_1 ), .Y(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2_0[2] ));
    OA1B \stonyman_0/state_RNO_15[7]  (.A(\stonyman_0/N_3731 ), .B(
        \stonyman_0/state_ns_0_1_tz_2[7] ), .C(\stonyman_0/N_3297 ), 
        .Y(\stonyman_0/state_ns_0_1[7] ));
    OA1 \stonyman_0/substate_ns_14_RNO[0]  (.A(
        \stonyman_0/state[9]_net_1 ), .B(\stonyman_0/state[10]_net_1 ), 
        .C(\stonyman_0/N_2446 ), .Y(\stonyman_0/substate_ns_12[0] ));
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
    MX2 \stonyman_0/cachedValue_tile_I_1_RNI2R5L2  (.A(
        \stonyman_0/DOUT_TMP[6] ), .B(
        \stonyman_0/DIN_REG1_RNI3SC61[6] ), .S(
        \stonyman_0/DIN_REG1_RNI2NS51[6] ), .Y(
        \stonyman_0/cachedValue[6] ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI11EA2[5]  (.A(
        \stonyman_0/DOUT_TMP[5] ), .B(\stonyman_0/DIN_REG1[5] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/cachedValue[5] ));
    AOI1B \stonyman_0/state_RNO_2[9]  (.A(\stonyman_0/N_629 ), .B(
        \stonyman_0/state[8]_net_1 ), .C(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0[9] ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_1[9] ));
    NOR2 \stonyman_0/state_RNIEO98[1]  (.A(\stonyman_0/state[1]_net_1 )
        , .B(\stonyman_0/state[7]_net_1 ), .Y(\stonyman_0/N_1934_6 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/operation[30]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[30] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1  (
        .D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNO_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTII1 ));
    MX2 \stonyman_0/counterWait_RNO_12[1]  (.A(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0 ), .B(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0_0 ), 
        .S(\stonyman_0/counterWait_RNO_17[1]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_0[1] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[10]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[10] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[6]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[6] ));
    DFN1 \psram_cr_0/cr_int_i0/address[19]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[19] ));
    IOPAD_TRI \psram_address_pad[9]/U0/U0  (.D(
        \psram_address_pad[9]/U0/NET1 ), .E(
        \psram_address_pad[9]/U0/NET2 ), .PAD(psram_address[9]));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIJ4EJ[10]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_4 ));
    DFN1 \psram_cr_0/ahb0/operation[20]  (.D(
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[20]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[17]  (.A(
        \psram_cr_0/ahb0/N_196 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNI3TRG3[4]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1 ), .B(
        \psram_cr_0/ahb0/N_84 ), .Y(\psram_cr_0/ahb0/un1_haddr_reg_5 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[14] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[14]_net_1 ));
    DFN1 \stonyman_0/counterWait[11]  (.D(
        \stonyman_0/counterWait_80[11] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[11]_net_1 ));
    DFN1 \stonyman_0/counterWait[4]  (.D(
        \stonyman_0/counterWait_RNO[4]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[4]_net_1 ));
    IOTRI_OB_EB \incp_pad/U0/U1  (.D(incp_c), .E(PLLEN_VCC), .DOUT(
        \incp_pad/U0/NET1 ), .EOUT(\incp_pad/U0/NET2 ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_0 ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[2]  (.D(
        \psram_cr_0/cr_int_i0/N_63 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[8] ));
    XNOR2 \stonyman_0/un5_counterWait_I_62  (.A(\stonyman_0/N_10 ), .B(
        \stonyman_0/counterWait[21]_net_1 ), .Y(\stonyman_0/I_62 ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_2[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_97 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 ));
    AO1A \stonyman_0/state_i_RNIJG8R9[0]  (.A(\stonyman_0/N_165 ), .B(
        \stonyman_0/state_i[0]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_2300 ));
    NOR2B \stonyman_0/counterWait_RNO_0[6]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[6]_net_1 )
        , .Y(\stonyman_0/counterWait_2_m_0[6] ));
    OR3A \stonyman_0/substate_i_0_RNIHA5KE_0[0]  (.A(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_5 ), .B(
        \stonyman_0/N_3739 ), .C(\stonyman_0/state_ns_0_0_0_o2_2_0[6] )
        , .Y(\stonyman_0/N_3746 ));
    AO1 \stonyman_0/counterWait_RNO_1[24]  (.A(\stonyman_0/I_74 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[24] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[24] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_10  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[1] ), 
        .C(\stonyman_0/cachedValue[2] ), .Y(
        \stonyman_0/DWACT_FINC_E[0] ));
    NOR2B \stonyman_0/counterWait_RNO_11[4]  (.A(\stonyman_0/I_12 ), 
        .B(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_RNO_11[4]_net_1 ));
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
    OR3 \stonyman_0/un5_counterWait_I_85  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[30] ), .C(
        \stonyman_0/DWACT_FDEC_E[23] ), .Y(\stonyman_0/N_4 ));
    OR2A \psram_cr_0/cr_int_i0/nwe_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/cr_int_i0/N_227 ), .Y(
        \psram_cr_0/cr_int_i0/N_101 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_3_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[8]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[8] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[8] ));
    AND3C \psram_cr_0/cr_int_i0/op_counter_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_108 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_n3_i_0_net_1 ), .C(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/N_65 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[5]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[10] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_27));
    DFN1 \psram_cr_0/cr_int_i0/data_out[4]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[4]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[4] ));
    NOR3A \stonyman_0/state_RNO_0[6]  (.A(\stonyman_0/state[5]_net_1 ), 
        .B(\stonyman_0/N_322 ), .C(\stonyman_0/N_3746 ), .Y(
        \stonyman_0/N_541 ));
    AO1A \adc081s101_0/bitsRead_RNIBGBK1[3]  (.A(
        \adc081s101_0/un7lto1 ), .B(\adc081s101_0/dataout7_0_a3_0 ), 
        .C(\adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/bitsReade ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/operation[28]_net_1 ), .B(N_63), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_207 ));
    IOBI_IB_OB_EB \psram_data_pad[9]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[9] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[9]/U0/NET3 ), .DOUT(
        \psram_data_pad[9]/U0/NET1 ), .EOUT(
        \psram_data_pad[9]/U0/NET2 ), .Y(\psram_data_in[9] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ));
    NOR2B \stonyman_0/substate_RNIKRI21_0[8]  (.A(\stonyman_0/N_109 ), 
        .B(\stonyman_0/substate[8]_net_1 ), .Y(\stonyman_0/N_201 ));
    NOR2A \stonyman_0/state_i_RNO_0[0]  (.A(\stonyman_0/N_1934_3 ), .B(
        \stonyman_0/state[10]_net_1 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_0[0] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave5_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNI2GBM9[0]  (.A(
        \stonyman_0/DIN_REG1_RNI21EA2[6] ), .B(
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_0 ), .C(
        \stonyman_0/cachedValue[7] ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_2 ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIQNPI4[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_95 ));
    AO1A \psram_cr_0/ahb0/hrdata_reg_RNO_0[0]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_8 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_cnst_m_1[0] ), .C(
        \psram_cr_0/ahb0/data_out_m[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] ));
    NOR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNI2F0T[3]  (.A(
        \stonyman_0/I_5_0 ), .B(\stonyman_0/DIN_REG1[3] ), .Y(
        \stonyman_0/DOUT_5_a0_0[3] ));
    AO1A \stonyman_0/counterWait_RNO_6[9]  (.A(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_o2_0_a1_0[9] ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_1_0[9] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[23]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[23] ));
    NOR3B \stonyman_0/substate_RNO_4[4]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/state[11]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_2382 ));
    AO1 \stonyman_0/state_RNO[6]  (.A(
        \stonyman_0/counterPixelsCaptured_1_sqmuxa ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_541 ), .Y(
        \stonyman_0/state_ns[6] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[17]  (.A(
        \psram_cr_0/ahb0/operation[17]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[17] ));
    NOR3 \stonyman_0/substate_RNIFGC31[9]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(
        \stonyman_0/substate[9]_net_1 ), .C(
        \stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/un1_substate35_i_a2_1 ));
    OA1 \stonyman_0/un5_counterWait_m[2]  (.A(
        \stonyman_0/un1_state_0_sqmuxa ), .B(
        \stonyman_0/counterWait_80_0[2] ), .C(\stonyman_0/I_7 ), .Y(
        \stonyman_0/un5_counterWait_m[2]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO_1[16]  (.A(\stonyman_0/I_46 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[16] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[16] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_188 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[10]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[10]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[10] ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNITQ5L2[2]  (.A(
        \stonyman_0/state60_0_a2_0_o2_0_0_m11_0_a3_0_0 ), .B(
        \stonyman_0/state60_0_a2_0_o2_0_0_m11_0_a3_0 ), .S(
        \stonyman_0/WADDR_REG1_RNI27MV1[0] ), .Y(
        \stonyman_0/DIN_REG1_RNITQ5L2[2] ));
    OA1A \stonyman_0/counterWait_RNO_1[23]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[23]_net_1 ), .C(
        \stonyman_0/counterWait_80_0_iv_0_0_tz[23] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_0[23] ));
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
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[16]  (.A(
        \psram_address_c[16] ), .B(
        \psram_cr_0/cr_int_i0/address_5[16] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_264 ));
    IOTRI_OB_EB \resv_pad/U0/U1  (.D(resv_c), .E(PLLEN_VCC), .DOUT(
        \resv_pad/U0/NET1 ), .EOUT(\resv_pad/U0/NET2 ));
    IOPAD_BI \psram_data_pad[4]/U0/U0  (.D(\psram_data_pad[4]/U0/NET1 )
        , .E(\psram_data_pad[4]/U0/NET2 ), .Y(
        \psram_data_pad[4]/U0/NET3 ), .PAD(psram_data[4]));
    OR2 \stonyman_0/state_RNIDO98[4]  (.A(\stonyman_0/state[4]_net_1 ), 
        .B(\stonyman_0/state[3]_net_1 ), .Y(\stonyman_0/N_1546_tz ));
    NOR2A \stonyman_0/substate_RNO_3[4]  (.A(
        \stonyman_0/substate[4]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_0[4] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[7]  (.A(
        \psram_cr_0/cr_int_i0/N_163 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[7] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[13]  (.A(
        \psram_cr_0/cr_int_i0/N_169 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[13] ));
    NOR2B \stonyman_0/counterWait_RNO_3[2]  (.A(
        \stonyman_0/counterWait_2_m_0[2] ), .B(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_1_a0_0[2] ));
    NOR2B \stonyman_0/counterWait_RNO_16[4]  (.A(\stonyman_0/I_12 ), 
        .B(\stonyman_0/un1_state_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_RNO_16[4]_net_1 ));
    OR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNITRV8J[1]  (.A(
        \stonyman_0/state48_0_a2_0_o2_0 ), .B(\stonyman_0/N_252 ), .Y(
        \stonyman_0/N_322 ));
    XA1 \stonyman_0/cachedValue_tile_DIN_REG1_RNI2NS51[6]  (.A(
        \stonyman_0/DOUT_TMP[6] ), .B(\stonyman_0/DIN_REG1[6] ), .C(
        \stonyman_0/DOUT_5_7_m5_0 ), .Y(
        \stonyman_0/DIN_REG1_RNI2NS51[6] ));
    NOR3B \stonyman_0/substate_RNINUF44[10]  (.A(
        \stonyman_0/un1_substate35_i_a2_3 ), .B(\stonyman_0/N_2209 ), 
        .C(\stonyman_0/N_2318 ), .Y(\stonyman_0/N_2201 ));
    NOR2B \inputConditioner_0/conditioner_RNO[5]  (.A(
        \inputConditioner_0/conditioner[4]_net_1 ), .B(CAPTURE_c), .Y(
        \inputConditioner_0/intermediate[4] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_214 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[3]_net_1 ));
    OA1C \stonyman_0/state_RNIN1TN9[6]  (.A(
        \stonyman_0/substate_ns_i_o4_7_m3_e_4 ), .B(
        \stonyman_0/N_138_i_i_i_o2_8 ), .C(\stonyman_0/N_2277_i_1 ), 
        .Y(\stonyman_0/state_RNIN1TN9[6]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI3I8K[6]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[6] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[6]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ));
    OA1 \stonyman_0/substate_i_0_RNO_6[0]  (.A(\stonyman_0/N_2434 ), 
        .B(\stonyman_0/substate_ns_0_o2_7_0[0] ), .C(
        \stonyman_0/N_2296 ), .Y(\stonyman_0/N_2423 ));
    MX2 \stonyman_0/counterWait_RNO_2[19]  (.A(
        \stonyman_0/counterWait_2[19] ), .B(\stonyman_0/I_56 ), .S(
        \stonyman_0/N_194 ), .Y(\stonyman_0/counterWait_8[19] ));
    AO1 \stonyman_0/counterWait_RNO[11]  (.A(
        \stonyman_0/counterWait_2_m_0[11] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[11] ), .Y(
        \stonyman_0/counterWait_80[11] ));
    OA1C \stonyman_0/substate_RNI5O628[1]  (.A(
        \stonyman_0/d_m3_0_a2_1_1 ), .B(\stonyman_0/N_386 ), .C(
        \stonyman_0/d_m2_0_a2_0 ), .Y(
        \stonyman_0/substate_RNI5O628[1]_net_1 ));
    AOI1 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNO  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/N_123 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_176 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTII1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNO_net_1 )
        );
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[9]  (.A(
        \psram_cr_0/data_from_cr[9] ), .B(\psram_data_in[9] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_240 ));
    DFN1 \stonyman_0/counterWait[24]  (.D(
        \stonyman_0/counterWait_80[24] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[24]_net_1 ));
    XNOR2 \stonyman_0/un5_counterWait_I_92  (.A(\stonyman_0/N_2 ), .B(
        \stonyman_0/counterWait[29]_net_1 ), .Y(\stonyman_0/I_92 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI2970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[8] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[8] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_65  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/PUFABnINT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_9  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_3_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[10]_net_1 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_9_net_1 )
        );
    DFN1 \psram_cr_0/ahb0/data_out[5]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[5]_net_1 ));
    NOR2 \stonyman_0/cachedValue_tile_I_1_RNIQFOH  (.A(
        \stonyman_0/DOUT_TMP[1] ), .B(\stonyman_0/DOUT_TMP[4] ), .Y(
        \stonyman_0/I_1_RNIQFOH ));
    AO1 \stonyman_0/counterWait_RNO_1[11]  (.A(\stonyman_0/I_32 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[11] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[11] ));
    NOR3 \stonyman_0/state_RNIUOR5E[8]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_N_9 )
        , .B(\stonyman_0/d_m2_0_a2_0 ), .C(\stonyman_0/N_3741 ), .Y(
        \stonyman_0/state_RNIUOR5E[8]_net_1 ));
    IOPAD_TRI \psram_noe1_pad/U0/U0  (.D(\psram_noe1_pad/U0/NET1 ), .E(
        \psram_noe1_pad/U0/NET2 ), .PAD(psram_noe1));
    XA1C \psram_cr_0/cr_int_i0/ac_counter_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_69 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_56 ));
    AO1B \stonyman_0/substate_RNIKRI21[8]  (.A(
        \stonyman_0/un1_state_7_i_a4_0_1_0 ), .B(\stonyman_0/N_573 ), 
        .C(\stonyman_0/substate[8]_net_1 ), .Y(
        \stonyman_0/un1_state_7_i_0_tz ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[21]  (.A(
        \psram_cr_0/ahb0/N_200 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[21]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_8_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_98 ));
    NOR3A \stonyman_0/state_i_RNIGGJNI1[0]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_o2_3_4_m2_0_a2_m1_e_2 ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_4 ), .Y(
        \stonyman_0/state_i_RNIGGJNI1[0]_net_1 ));
    NOR3C \stonyman_0/state_RNI7GTM[3]  (.A(\stonyman_0/N_1934_4 ), .B(
        \stonyman_0/N_1816 ), .C(\stonyman_0/un33_i_a2_0_a2_1[1] ), .Y(
        \led_net_0_c[1] ));
    NOR3A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_0  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_2_0_a2_0_0 ), .B(
        \psram_cr_0/cr_int_i0/N_76 ), .C(\psram_cr_0/cr_int_i0/N_72 ), 
        .Y(\psram_cr_0/cr_int_i0/N_96 ));
    IOTRI_OB_EB \psram_address_pad[17]/U0/U1  (.D(
        \psram_address_c[17] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[17]/U0/NET1 ), .EOUT(
        \psram_address_pad[17]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_216 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[10] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[10] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_258 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIIJ631[13]  (.A(
        \stonyman_0/counterWait[13]_net_1 ), .B(
        \stonyman_0/counterWait[15]_net_1 ), .C(
        \stonyman_0/state_ns_i_a2_i_a2_0_29_0_a2_0_o2_0[2] ), .Y(
        \stonyman_0/N_3718 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[13] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] ));
    OA1A \stonyman_0/incv_RNO  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_3 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_764 ), .Y(
        \stonyman_0/incv_RNO_net_1 ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[5]  (.A(
        \psram_cr_0/ahb0/data_out[5]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[5]  (.A(
        \psram_cr_0/data_to_cr[5] ), .B(N_639), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_248 ));
    NOR3B \stonyman_0/substate_RNO_7[2]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(
        \stonyman_0/substate[1]_net_1 ), .C(\stonyman_0/un32lto2 ), .Y(
        \stonyman_0/N_2371 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[20]  (.A(
        \psram_cr_0/ahb0/operation[20]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[20] ));
    AO1 \stonyman_0/substate_i_0_RNO_1[0]  (.A(
        \stonyman_0/substate_tr30_0_0 ), .B(\stonyman_0/state39 ), .C(
        \stonyman_0/N_2423 ), .Y(\stonyman_0/substate_ns_20[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[23]  (.A(
        \psram_cr_0/ahb0/operation[23]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[23] ));
    DFN1 \stonyman_0/substate_i_0[0]  (.D(\stonyman_0/substate_ns[0] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate_i[0] ));
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
    DFN1 \stonyman_0/counterWait[23]  (.D(
        \stonyman_0/counterWait_80[23] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[23]_net_1 ));
    IOPAD_TRI \psram_address_pad[17]/U0/U0  (.D(
        \psram_address_pad[17]/U0/NET1 ), .E(
        \psram_address_pad[17]/U0/NET2 ), .PAD(psram_address[17]));
    AOI1 \stonyman_0/state_RNO_3[9]  (.A(\stonyman_0/state[9]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_587 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0[9] ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[13]  (.A(
        \psram_cr_0/data_to_cr[13] ), .B(N_33), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_256 ));
    DFN1 \psram_cr_0/ahb0/operation[11]  (.D(
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[11] ));
    DFN1E1 \adc081s101_0/cntrWaitQuiet[0]  (.D(\adc081s101_0/N_60 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitQuiete ), .Q(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ));
    NOR2A \stonyman_0/substate_i_0_RNO_21[0]  (.A(
        \stonyman_0/substate_ns_0_a2_7_1[0] ), .B(\stonyman_0/N_2315 ), 
        .Y(\stonyman_0/substate_ns_0_a2_10_2[0] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[4] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[17]  (.A(
        \psram_cr_0/ahb0/N_228 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[17]_net_1 ));
    NOR3B \stonyman_0/state_RNO_6[8]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(\stonyman_0/N_619 ), .C(
        \stonyman_0/N_3739 ), .Y(
        \stonyman_0/state_ns_i_a2_0_i_0_a2_5_8_m2_e_0 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[15]  (.A(
        \psram_cr_0/data_from_cr[15] ), .B(
        \psram_cr_0/ahb0/data_out[15]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_274 ));
    DFN1 \psram_cr_0/ahb0/data_out[13]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[13]_net_1 ));
    DFN1 \stonyman_0/state[1]  (.D(\stonyman_0/state_RNO[1]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[1]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_263 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 ));
    DFN1 \stonyman_0/substate[14]  (.D(
        \stonyman_0/substate_RNO[14]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[14]_net_1 ));
    OR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNIHE9761[5]  (.A(
        \stonyman_0/cachedValue[5] ), .B(\stonyman_0/state30 ), .C(
        \stonyman_0/N_3746 ), .Y(\stonyman_0/N_377 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIP6CD02[6]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .Y(
        \stonyman_0/DIN_REG1_RNIP6CD02[6] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[8] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 ));
    NOR2A \stonyman_0/substate_RNO_3[6]  (.A(\stonyman_0/N_508 ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_0_0[6] ));
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
    NOR2B \stonyman_0/state_RNO_1[8]  (.A(\stonyman_0/N_629 ), .B(
        \stonyman_0/state[7]_net_1 ), .Y(\stonyman_0/N_576 ));
    NOR2 \stonyman_0/state_RNILO98[8]  (.A(\stonyman_0/state[8]_net_1 )
        , .B(\stonyman_0/state[7]_net_1 ), .Y(\stonyman_0/N_590_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[8]  (.D(
        \psram_cr_0/cr_int_i0/N_36 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[8] ));
    IOPAD_TRI \psram_address_pad[8]/U0/U0  (.D(
        \psram_address_pad[8]/U0/NET1 ), .E(
        \psram_address_pad[8]/U0/NET2 ), .PAD(psram_address[8]));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_86  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[17]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[16]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[18]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[16]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[17]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[18]INT_NET ));
    XNOR2 \stonyman_0/un5_counterWait_I_70  (.A(\stonyman_0/N_8 ), .B(
        \stonyman_0/counterWait[23]_net_1 ), .Y(\stonyman_0/I_70 ));
    NOR3B \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_3[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_2[0]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .C(\stonyman_0/N_3739 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_3[0]_net_1 ));
    NOR3C \stonyman_0/resv_RNO_1  (.A(resv_c), .B(
        MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/resv_RNO_3_net_1 ), 
        .Y(\stonyman_0/resv_RNO_1_net_1 ));
    AO1 \stonyman_0/counterWait_RNO_1[28]  (.A(\stonyman_0/I_89 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[28] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[28] ));
    OR2B \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_0_RNO  (.A(
        \stonyman_0/counterWait_8[2] ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .Y(
        \stonyman_0/counterWait_8_m_i[2] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[19]  (.A(
        \psram_cr_0/ahb0/operation[19]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[19] ));
    NOR3 \stonyman_0/counterWait_RNO_17[1]  (.A(\stonyman_0/N_390 ), 
        .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_N_9 )
        , .C(\stonyman_0/N_3741 ), .Y(
        \stonyman_0/counterWait_RNO_17[1]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[26]  (.A(
        \psram_cr_0/ahb0/max_addr[26] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[26] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[26] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_193 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[14]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(\psram_cr_0/data_to_cr[0] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_156 ));
    IOPAD_IN \MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N  (.PAD(MSS_RESET_N), 
        .Y(\MSS_CORE2_0/MSS_RESET_0_MSS_RESET_N_Y ));
    NOR3C \stonyman_0/state_RNIQMPBE[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_12_0 ), .Y(
        \stonyman_0/state_RNIQMPBE[6]_net_1 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[11]  (.A(
        \psram_cr_0/reg_addr[11] ), .B(N_29), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_190 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI14N3[2]  (.A(
        \stonyman_0/DIN_REG1[5] ), .B(\stonyman_0/DIN_REG1[2] ), .Y(
        \stonyman_0/state60_0_a2_0_o2_0_0_m11_0_a3_0 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HSIZE[0] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOO0I[0]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[23]  (.A(
        \psram_cr_0/cr_int_i0/N_271 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[23]_net_1 ));
    OA1B \stonyman_0/substate_i_0_RNIKLJG[0]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[8]_net_1 ), 
        .C(\stonyman_0/substate_i[0] ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa ));
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
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[6]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[6] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIM7UL[18]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[18] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[18]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ));
    DFN1 \stonyman_0/counterWait[10]  (.D(
        \stonyman_0/counterWait_80[10] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[10]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[24] ));
    NOR3B \stonyman_0/substate_i_0_RNO_50[0]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\stonyman_0/N_2407_1 ), .C(
        \stonyman_0/counterWait[27]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_1 ));
    OA1 \stonyman_0/counterWait_RNO_3[4]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_i_1_a0_0[4] ), .Y(
        \stonyman_0/counterWait_RNO_3[4]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/nwe_RNO_0  (.A(psram_nwe_c), .B(
        \psram_cr_0/cr_int_i0/nwe_5 ), .S(\psram_cr_0/cr_int_i0/N_347 )
        , .Y(\psram_cr_0/cr_int_i0/N_227 ));
    NOR3 \stonyman_0/substate_RNO[12]  (.A(\stonyman_0/N_2398 ), .B(
        \stonyman_0/substate_ns_i_1[12] ), .C(\stonyman_0/N_2327_i ), 
        .Y(\stonyman_0/substate_RNO[12]_net_1 ));
    NOR2A \stonyman_0/substate_i_0_RNISJED[0]  (.A(
        \stonyman_0/state[5]_net_1 ), .B(\stonyman_0/substate_i[0] ), 
        .Y(\stonyman_0/substate_0_sqmuxa_4 ));
    NOR2B \stonyman_0/substate_RNI5HUI[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/counterWait_3_sqmuxa ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXEN  (.D(
        \MSS_CORE2_0/MSS_MAC_0_TXEN_D ), .E(PLLEN_VCC), .PAD(MAC_TXEN));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIV2M8L[0]  (.A(
        \stonyman_0/state21_2 ), .B(\stonyman_0/state30_0 ), .C(
        \stonyman_0/state21_4 ), .Y(\stonyman_0/state21 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[11]  (.D(
        \psram_cr_0/cr_int_i0/N_42 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[11] ));
    NOR2 \psram_cr_0/cr_int_i0/op_counter_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_countere ), .Y(
        \psram_cr_0/cr_int_i0/op_counter_n0 ));
    NOR3A \stonyman_0/substate_i_0_RNO_49[0]  (.A(\stonyman_0/N_2318 ), 
        .B(\stonyman_0/state_i[0]_net_1 ), .C(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\stonyman_0/N_2347 ));
    NOR2B \psram_cr_0/cr_int_i0/ac_counter_lb1_RNI2T2I  (.A(
        \psram_cr_0/cr_int_i0/N_110 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ));
    OR2 \stonyman_0/substate_RNI3BDC1[1]  (.A(\stonyman_0/N_2286 ), .B(
        \stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_2291 ));
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
    INV \clkgenerator_0/clkCameraSS_RNO  (.A(\clkgenerator_0/SCLK_i ), 
        .Y(\clkgenerator_0/SCLK_i_i ));
    NOR2 \psram_cr_0/cr_int_i0/ac_counter_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_102 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_64  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4ENINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3ENINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5ENINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/LVTTL3INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL4INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL5INT_NET ));
    NOR2 \stonyman_0/state_RNIPT97[1]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[1]_net_1 ), 
        .Y(\stonyman_0/un33_i_a2_0_a2_0[0] ));
    NOR3C \stonyman_0/substate_RNIV0P62[4]  (.A(\stonyman_0/N_2206 ), 
        .B(\stonyman_0/un35_i_a2_0_a2_0_a2_2_0[2] ), .C(
        \stonyman_0/led_2_c_1[2] ), .Y(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2[2] ));
    AND2 \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_2[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_0[0] ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_1[0] ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_2[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[22]  (.A(
        \psram_cr_0/ahb0/N_233 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 ));
    NOR2A \stonyman_0/substate_RNIHA5KE[2]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_3[9] ), .B(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_641 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_3[0]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_101 ));
    DFN1 \stonyman_0/cachedPOINTER[2]  (.D(\stonyman_0/N_72 ), .CLK(
        SCLK_c), .Q(\stonyman_0/cachedPOINTER[2]_net_1 ));
    DFN1 \stonyman_0/counterWait[12]  (.D(
        \stonyman_0/counterWait_80[12] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[12]_net_1 ));
    IOPAD_TRI \led_pad[2]/U0/U0  (.D(\led_pad[2]/U0/NET1 ), .E(
        \led_pad[2]/U0/NET2 ), .PAD(led[2]));
    NOR2A \stonyman_0/substate_RNO_3[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(\stonyman_0/N_2283_i_0 ), 
        .Y(\stonyman_0/substate_ns_i_a4_0_0[7] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_20[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[16] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_39));
    NOR3A \stonyman_0/state_RNO_4[7]  (.A(\stonyman_0/N_3328_2 ), .B(
        \stonyman_0/cachedValue[3] ), .C(\stonyman_0/cachedValue[5] ), 
        .Y(\stonyman_0/N_3328 ));
    IOPAD_TRI \rs485_nre_pad/U0/U0  (.D(\rs485_nre_pad/U0/NET1 ), .E(
        \rs485_nre_pad/U0/NET2 ), .PAD(rs485_nre));
    OR3 \stonyman_0/counterWait_RNITGDQ[26]  (.A(
        \stonyman_0/counterWait[25]_net_1 ), .B(
        \stonyman_0/counterWait[26]_net_1 ), .C(
        \stonyman_0/counterWait[27]_net_1 ), .Y(\stonyman_0/N_172 ));
    XNOR2 \stonyman_0/un5_counterWait_I_23  (.A(\stonyman_0/N_23 ), .B(
        \stonyman_0/counterWait[8]_net_1 ), .Y(\stonyman_0/I_23 ));
    NOR3A \stonyman_0/substate_RNIQA6H5[2]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_2[9] ), .B(
        \stonyman_0/N_3731 ), .C(
        \stonyman_0/state_ns_i_a2_i_i_0_o2_2_2[9] ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_3[9] ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[9]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[13]/U0/U1  (.D(
        \psram_address_c[13] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[13]/U0/NET1 ), .EOUT(
        \psram_address_pad[13]/U0/NET2 ));
    NOR3B \stonyman_0/substate_RNO_15[1]  (.A(\stonyman_0/N_2443 ), .B(
        \stonyman_0/N_573 ), .C(\stonyman_0/N_1546_tz ), .Y(
        \stonyman_0/substate_ns_i_a4_9_1[1] ));
    OR2 \stonyman_0/substate_RNIGL4M[2]  (.A(\stonyman_0/N_3297 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_144 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIV870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[5] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[5] ));
    NOR3A \stonyman_0/counterWait_RNO_16[1]  (.A(
        \stonyman_0/d_m3_0_a2_1_1 ), .B(\stonyman_0/N_386 ), .C(
        \stonyman_0/N_390 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[19]  (.A(
        \psram_cr_0/ahb0/operation[19]_net_1 ), .B(N_45), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_198 ));
    NOR3A \stonyman_0/state_RNO_21[7]  (.A(
        \stonyman_0/state_tr25_30_0_i_a2_1 ), .B(
        \stonyman_0/substate[8]_net_1 ), .C(
        \stonyman_0/substate[9]_net_1 ), .Y(\stonyman_0/N_3320 ));
    NOR2A \stonyman_0/counterWait_RNO_15[1]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_3_1 ), .B(
        \stonyman_0/N_3741 ), .Y(
        \stonyman_0/counterWait_RNO_15[1]_net_1 ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNIUBB23[0]  (.A(
        \stonyman_0/N_1816 ), .B(\stonyman_0/un43_i_0_a2_2 ), .C(
        \stonyman_0/cachedValue[0] ), .Y(
        \stonyman_0/DIN_REG1_RNIUBB23[0] ));
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
    DFN1 \stonyman_0/counterWait[17]  (.D(
        \stonyman_0/counterWait_80[17] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[17]_net_1 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[1]  (.D(
        \stonyman_0/state_RNIRCPC5[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[1] ));
    OR3 \stonyman_0/substate_RNIOGOU3[14]  (.A(\stonyman_0/N_3731 ), 
        .B(\stonyman_0/state_ns_i_a2_i_i_0_o2_2_2[9] ), .C(
        \stonyman_0/substate[14]_net_1 ), .Y(\stonyman_0/N_3737 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[10]  (.A(
        \psram_cr_0/ahb0/N_189 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[10]_net_1 ));
    IOPAD_TRI \psram_address_pad[13]/U0/U0  (.D(
        \psram_address_pad[13]/U0/NET1 ), .E(
        \psram_address_pad[13]/U0/NET2 ), .PAD(psram_address[13]));
    DFN1 \stonyman_0/cachedValue_tile_WADDR_REG1[1]  (.D(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/WADDR_REG1[1] ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[10]  (.A(
        \psram_cr_0/data_from_cr[10] ), .B(\psram_data_in[10] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_241 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[8]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[8] ));
    NOR2A \stonyman_0/substate_RNIG3L5M[2]  (.A(\stonyman_0/N_622 ), 
        .B(\stonyman_0/N_3739 ), .Y(\stonyman_0/N_623 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[0] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 ));
    OR2A \stonyman_0/counterWait_RNI4VVB[15]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[15]_net_1 ), .Y(
        \stonyman_0/counterWait_2[15] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[11]  (.A(
        \psram_cr_0/ahb0/data_out[11]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_69 ));
    IOTRI_OB_EB \psram_address_pad[20]/U0/U1  (.D(
        \psram_address_c[20] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[20]/U0/NET1 ), .EOUT(
        \psram_address_pad[20]/U0/NET2 ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNI3O7V9[1]  (.A(
        \stonyman_0/N_2929_li ), .B(\stonyman_0/cachedValue[1] ), .C(
        \stonyman_0/N_209 ), .Y(\stonyman_0/state30_3 ));
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
    DFN1 \inputConditioner_0/conditioner[5]  (.D(
        \inputConditioner_0/intermediate[4] ), .CLK(SCLK_c), .Q(
        \inputConditioner_0.conditioner[5] ));
    IOTRI_OB_EB \rs485_de_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\rs485_de_pad/U0/NET1 ), .EOUT(\rs485_de_pad/U0/NET2 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[10]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[9] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUTD01[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ));
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
    NOR2A \stonyman_0/state_RNIUIEL[5]  (.A(
        \stonyman_0/state[5]_net_1 ), .B(\stonyman_0/N_2209 ), .Y(
        \stonyman_0/counterWait_2_sqmuxa_5 ));
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
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_211 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[0]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[9]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[9] ));
    AND2 \psram_cr_0/cr_int_i0/op_counter_n3_i_a2_0  (.A(
        \psram_cr_0/cr_int_i0/op_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_115 ), .Y(\psram_cr_0/cr_int_i0/N_108 )
        );
    DFN1 \psram_cr_0/ahb0/psram_addr[31]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[31] ));
    AO1 \stonyman_0/counterWait_RNO[19]  (.A(
        \stonyman_0/counterWait_2[19] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_1[19] ), .Y(
        \stonyman_0/counterWait_80[19] ));
    DFN1 \psram_cr_0/ahb0/operation_sel  (.D(
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation_sel_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/op_counter_lb1_RNO  (.A(
        \psram_cr_0/cr_int_i0/N_110 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/op_counter_lb1_RNO_net_1 ));
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
    AO1 \stonyman_0/counterWait_RNO_1[25]  (.A(\stonyman_0/I_77 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[25] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[25] ));
    OR3 \adc081s101_0/cntrWaitQuiet_RNIO446[2]  (.A(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ), .C(
        \adc081s101_0/cntrWaitQuiet[2]_net_1 ), .Y(\adc081s101_0/N_47 )
        );
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_27_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_238 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[7]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[10]  (.A(
        \psram_cr_0/cr_int_i0/N_241 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[10]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[21]  (.A(
        \stonyman_0/counterWait_2_m_0[21] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[21] ), .Y(
        \stonyman_0/counterWait_80[21] ));
    OR2 \stonyman_0/resp_RNO_0  (.A(\stonyman_0/N_163 ), .B(
        \stonyman_0/substate_ns_0_0[5] ), .Y(
        \stonyman_0/un1_cachedPOINTER_1_sqmuxa_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[6]  (.D(
        \psram_cr_0/cr_int_i0/N_32 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[6] ));
    IOPAD_TRI \psram_nbyte_en_pad[0]/U0/U0  (.D(
        \psram_nbyte_en_pad[0]/U0/NET1 ), .E(
        \psram_nbyte_en_pad[0]/U0/NET2 ), .PAD(psram_nbyte_en[0]));
    OR3 \stonyman_0/un5_counterWait_I_79  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .C(
        \stonyman_0/DWACT_FDEC_E[20] ), .Y(
        \stonyman_0/DWACT_FDEC_E[21] ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_20  (.A(\stonyman_0/N_2_0 ), 
        .B(\stonyman_0/cachedValue[7] ), .Y(\stonyman_0/I_20_0 ));
    DFN1 \psram_cr_0/ahb0/data_out[7]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[7]_net_1 ));
    MX2 \stonyman_0/substate_RNO_2[11]  (.A(\stonyman_0/N_2302 ), .B(
        \stonyman_0/N_194 ), .S(\stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/N_2341 ));
    NOR3A \stonyman_0/state_RNI2HJG[4]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/state[5]_net_1 ), .C(\stonyman_0/state[4]_net_1 ), 
        .Y(\led_net_0_c[2] ));
    OR3 \stonyman_0/un5_counterWait_I_33  (.A(
        \stonyman_0/counterWait[9]_net_1 ), .B(
        \stonyman_0/counterWait[10]_net_1 ), .C(
        \stonyman_0/counterWait[11]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[7] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_2[31]  (.A(
        \psram_cr_0/ahb0/max_addr[31] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_64 ));
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
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[8]  (.A(
        \psram_cr_0/cr_int_i0/N_164 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[8] ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[4]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[4] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[4] ));
    OR2 \stonyman_0/substate_RNID4HB[10]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .Y(\stonyman_0/N_2321 ));
    AO1A \stonyman_0/substate_i_0_RNO_4[0]  (.A(\stonyman_0/N_2410 ), 
        .B(\stonyman_0/substate_ns_0_a4_1_1[0] ), .C(
        \stonyman_0/substate_i_0_RNO_13[0]_net_1 ), .Y(
        \stonyman_0/substate_ns_16[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[9] ));
    OR3 \stonyman_0/counterWait_RNO[10]  (.A(
        \stonyman_0/counterWait_RNO_0[10]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_0_0[10] ), .C(
        \stonyman_0/N_13 ), .Y(\stonyman_0/counterWait_80[10] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_47  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[31]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHADDR[30]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[0]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[0]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSINT[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/WDINTINT_NET ));
    OR3 \stonyman_0/counterWait_RNIGEQC4[26]  (.A(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0_0[3] ), .B(
        \stonyman_0/N_172 ), .C(\stonyman_0/state_ns_0_9_tz_2[7] ), .Y(
        \stonyman_0/N_3726 ));
    NOR2A \stonyman_0/substate_ns_14_RNO_0[0]  (.A(\stonyman_0/N_2291 )
        , .B(\stonyman_0/state_RNIU93R9[6]_net_1 ), .Y(
        \stonyman_0/N_2446 ));
    XA1A \stonyman_0/cachedValue_tile_WADDR_REG1_RNI0T4R[1]  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/WADDR_REG1[1] ), .C(\stonyman_0/N_5_1 ), .Y(
        \stonyman_0/state60_0_a2_0_o2_0_0_m4_0 ));
    IOTRI_OB_EB \psram_noe0_pad/U0/U1  (.D(psram_noe0_c), .E(PLLEN_VCC)
        , .DOUT(\psram_noe0_pad/U0/NET1 ), .EOUT(
        \psram_noe0_pad/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_261 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 ));
    IOTRI_OB_EB \psram_address_pad[24]/U0/U1  (.D(
        \psram_address_c[24] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[24]/U0/NET1 ), .EOUT(
        \psram_address_pad[24]/U0/NET2 ));
    NOR3A \stonyman_0/state_i_RNO_17[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_3[0]_net_1 ), .B(
        \stonyman_0/N_3741 ), .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_5[0] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[15]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[15] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[15] ));
    NOR3A \psram_cr_0/ahb0/haddr_reg_RNIA52K3_2[2]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_87  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[20]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[19]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[21]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[19]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[20]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[21]INT_NET ));
    IOBI_IB_OB_EB \psram_data_pad[12]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[12] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[12]/U0/NET3 ), .DOUT(
        \psram_data_pad[12]/U0/NET1 ), .EOUT(
        \psram_data_pad[12]/U0/NET2 ), .Y(\psram_data_in[12] ));
    AO1D \stonyman_0/startAdcCapture_RNO  (.A(
        \stonyman_0/substate_0_sqmuxa_5 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .C(\stonyman_0/N_765 ), .Y(
        \stonyman_0/startAdcCapture_RNO_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_3_0[0] )
        );
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
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[21] ));
    OR3 \stonyman_0/un5_counterWait_I_48  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(
        \stonyman_0/DWACT_FDEC_E[10] ), .C(
        \stonyman_0/DWACT_FDEC_E[11] ), .Y(\stonyman_0/N_14 ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIGAD01[6]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_3 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[6]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[9]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_6 ));
    OR3 \stonyman_0/substate_RNO[2]  (.A(\stonyman_0/N_2369 ), .B(
        \stonyman_0/substate_ns_0_1[2] ), .C(
        \stonyman_0/substate_RNO_2[2]_net_1 ), .Y(
        \stonyman_0/substate_ns[2] ));
    NOR2 \stonyman_0/state_RNO_24[7]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .Y(
        \stonyman_0/state_tr25_30_0_i_a2_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[15] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[15] ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[2]  (.D(
        \psram_cr_0/cr_int_i0/N_56 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ));
    NOR3B \psram_cr_0/ahb0/data_in_sel_RNI52031  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/data_in_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(\psram_cr_0/ahb0/data_in7 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(\psram_cr_0/data_to_cr[13] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_169 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/operation[25]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[25] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_258 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 ));
    IOPAD_TRI \resv_pad/U0/U0  (.D(\resv_pad/U0/NET1 ), .E(
        \resv_pad/U0/NET2 ), .PAD(resv));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[28]  (.A(
        \psram_cr_0/ahb0/N_239 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 ));
    NOR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNIV1SK4_0[2]  (.A(
        \stonyman_0/cachedValue[5] ), .B(\stonyman_0/cachedValue[2] ), 
        .Y(\stonyman_0/state30_0 ));
    OR2A \adc081s101_0/cntrWaitQuiet_RNIS37J[2]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\adc081s101_0/bitsRead_0_sqmuxa ), 
        .Y(\adc081s101_0/N_42 ));
    OR2A \stonyman_0/substate_RNO_1[7]  (.A(\stonyman_0/N_263 ), .B(
        \stonyman_0/N_590_1 ), .Y(\stonyman_0/N_2338 ));
    DFN1 \psram_cr_0/cr_int_i0/address[16]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[16]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[16] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[11]  (.A(
        \psram_cr_0/max_addr[11] ), .B(N_29), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_222 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[2]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIUCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[8] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[8] ));
    XNOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNI3SC61[6]  (.A(
        \stonyman_0/DIN_REG1[6] ), .B(\stonyman_0/I_5_1 ), .Y(
        \stonyman_0/DIN_REG1_RNI3SC61[6] ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(N_638), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_247 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[4]  (.A(
        \psram_cr_0/data_from_cr[4] ), .B(\psram_data_in[4] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_235 ));
    NOR3A \stonyman_0/state_i_RNO_10[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_5[0] ), .B(
        \stonyman_0/N_194 ), .C(\stonyman_0/N_252 ), .Y(
        \stonyman_0/state_i_RNO_10[0]_net_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_176 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[7]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIMCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[0] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[0] ));
    DFN1 \psram_cr_0/ahb0/data_out[2]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[2]_net_1 ));
    NOR3 \stonyman_0/state_RNI0JU2U[8]  (.A(\stonyman_0/N_390 ), .B(
        \stonyman_0/substate_RNI5O628[1]_net_1 ), .C(
        \stonyman_0/state_RNIUOR5E[8]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ));
    AO1 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNILGMFA  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_176 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_m_i_0 )
        , .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m_i_1 ));
    NOR2B \stonyman_0/substate_i_0_RNO_24[0]  (.A(
        \stonyman_0/N_1934_4 ), .B(\stonyman_0/N_1934_6 ), .Y(
        \stonyman_0/substate_tr13_5_2 ));
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
    NOR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIT5VC[7]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_1 ));
    OR2 \stonyman_0/substate_RNI8AKT[5]  (.A(
        \stonyman_0/substate[9]_net_1 ), .B(
        \stonyman_0/substate[5]_net_1 ), .Y(\stonyman_0/N_204 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[22] ));
    NOR3A \stonyman_0/substate_RNO[8]  (.A(
        \stonyman_0/state_RNIN1TN9[6]_net_1 ), .B(
        \stonyman_0/substate_ns_i_1[8] ), .C(\stonyman_0/N_2392 ), .Y(
        \stonyman_0/substate_RNO[8]_net_1 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(N_640), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_217 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_266 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[7]_net_1 ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_13_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_12_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_174 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_176 ));
    MX2A \stonyman_0/substate_RNO_0[15]  (.A(\stonyman_0/N_2328 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .S(\stonyman_0/substate[15]_net_1 ), 
        .Y(\stonyman_0/N_2343 ));
    NOR2B \stonyman_0/state_RNO_1[2]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_m2_0_a2_0_0[2] ), .B(
        \stonyman_0/N_629 ), .Y(\stonyman_0/N_609 ));
    DFN1 \stonyman_0/substate[6]  (.D(
        \stonyman_0/substate_RNO[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[6]_net_1 ));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_a5_3_0[0] )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_2[0] )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[0] )
        );
    NOR2A \stonyman_0/substate_RNIBRH5A[8]  (.A(\stonyman_0/N_201 ), 
        .B(\stonyman_0/N_194 ), .Y(\stonyman_0/N_2392 ));
    OR3A \stonyman_0/substate_i_0_RNO_22[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_2286 ), .C(
        \stonyman_0/N_2336 ), .Y(
        \stonyman_0/substate_ns_0_o2_3_2_1[0] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(N_37), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_226 ));
    AO1A \stonyman_0/state_RNO[4]  (.A(\stonyman_0/N_377 ), .B(
        \stonyman_0/state[3]_net_1 ), .C(\stonyman_0/N_601 ), .Y(
        \stonyman_0/N_83 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[5]  (.A(
        \psram_cr_0/data_from_cr[5] ), .B(\psram_data_in[5] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_236 ));
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
    NOR3 \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB  (.A(
        \stonyman_0/un1_counterWait_1_sqmuxa_1 ), .B(
        \stonyman_0/un1_counterWait_4_sqmuxa ), .C(
        \stonyman_0/counterWait_80_10_m2_e_2_RNIJDPN6_net_1 ), .Y(
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_240 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[9]_net_1 ));
    DFN1 \psram_cr_0/ahb0/data_in[2]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[2] ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_9_sqmuxa_0_a2_1_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[5] ));
    NOR2B \stonyman_0/substate_i_0_RNIHA5KE[0]  (.A(\stonyman_0/N_617 )
        , .B(\stonyman_0/substate_i[0] ), .Y(\stonyman_0/N_629 ));
    IOTRI_OB_EB \SCLK_pad/U0/U1  (.D(SCLK_c), .E(PLLEN_VCC), .DOUT(
        \SCLK_pad/U0/NET1 ), .EOUT(\SCLK_pad/U0/NET2 ));
    OR3A \stonyman_0/counterWait_RNO[1]  (.A(\stonyman_0/N_157 ), .B(
        \stonyman_0/N_436 ), .C(\stonyman_0/N_435 ), .Y(
        \stonyman_0/counterWait_80[1] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_80  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[14]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[15]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[16]INT_NET ));
    OA1 \stonyman_0/substate_RNO_5[1]  (.A(\stonyman_0/substate_i[0] ), 
        .B(\stonyman_0/N_2427 ), .C(
        \stonyman_0/substate_ns_i_a4_1_1[1] ), .Y(
        \stonyman_0/substate_ns_i_a4_1_2[1] ));
    NOR3B \stonyman_0/cachedValue_tile_WADDR_REG1_RNI27MV1[0]  (.A(
        \stonyman_0/WADDR_REG1_RNIVK8I_0[0] ), .B(
        \stonyman_0/state60_0_a2_0_o2_0_0_m4_0 ), .C(
        \stonyman_0/I_4_2 ), .Y(\stonyman_0/WADDR_REG1_RNI27MV1[0] ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[1]  (.D(
        \psram_cr_0/cr_int_i0/N_61 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ));
    XA1C \adc081s101_0/cntrWaitTrailing_RNO[1]  (.A(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ), .C(
        \adc081s101_0/bitsRead_0_sqmuxa_1 ), .Y(\adc081s101_0/N_136 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[4]  (.A(
        \psram_cr_0/ahb0/N_173 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 ));
    AO1B \stonyman_0/counterWait_RNO[2]  (.A(
        \stonyman_0/counterWait_80_0_iv_2_m1_e_0 ), .B(
        \stonyman_0/substate_RNIJ5BU44[7]_net_1 ), .C(
        \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_2 ), .Y(
        \stonyman_0/counterWait_RNO[2]_net_1 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[1]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[1] ));
    IOTRI_OB_EB \Phy_RMII_CLK_pad/U0/U1  (.D(Phy_RMII_CLK_c), .E(
        PLLEN_VCC), .DOUT(\Phy_RMII_CLK_pad/U0/NET1 ), .EOUT(
        \Phy_RMII_CLK_pad/U0/NET2 ));
    IOPAD_TRI \led_pad[0]/U0/U0  (.D(\led_pad[0]/U0/NET1 ), .E(
        \led_pad[0]/U0/NET2 ), .PAD(led[0]));
    NOR3B \stonyman_0/counterWait_RNO_7[1]  (.A(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_2[1] ), .B(
        \stonyman_0/counterWait_80_0_iv_0_a2_2_0[1] ), .C(
        \stonyman_0/N_209 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_4[1] ));
    NOR3B \stonyman_0/substate_RNIKBM9A[5]  (.A(\stonyman_0/N_165 ), 
        .B(\stonyman_0/substate[5]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_163 ));
    OR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIU90V8[1]  (.A(
        \stonyman_0/N_2929_li ), .B(\stonyman_0/cachedValue[1] ), .C(
        \stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/state48_0_a2_0_o2_0 ));
    NOR2B \stonyman_0/counterWait_RNO_2[20]  (.A(\stonyman_0/I_59 ), 
        .B(\stonyman_0/un1_state_0_sqmuxa ), .Y(\stonyman_0/N_3510 ));
    OR2 \stonyman_0/substate_RNIU1JT[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_2318 ));
    DFN1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ));
    AO1 \stonyman_0/substate_RNO_1[1]  (.A(\stonyman_0/N_2292 ), .B(
        \stonyman_0/substate[12]_net_1 ), .C(
        \stonyman_0/substate_ns_i_2[1] ), .Y(
        \stonyman_0/substate_ns_i_3[1] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[16] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[2]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[2] ));
    NOR2A \adc081s101_0/cs_RNI68BN  (.A(\adc081s101_0/un7lto1 ), .B(
        CS_c), .Y(\adc081s101_0/cntrWaitLeading15 ));
    IOTRI_OB_EB \led_pad[5]/U0/U1  (.D(\led_net_0_c[1] ), .E(PLLEN_VCC)
        , .DOUT(\led_pad[5]/U0/NET1 ), .EOUT(\led_pad[5]/U0/NET2 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[7]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_180 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 ));
    AO1C \stonyman_0/substate_RNO_1[8]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/substate[8]_net_1 ), .C(\stonyman_0/N_2286 ), 
        .Y(\stonyman_0/substate_ns_i_0[8] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_218 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_34 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_220 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[9]_net_1 ));
    NOR2 \adc081s101_0/conversionComplete_RNO_2  (.A(
        \adc081s101_0/N_46 ), .B(\adc081s101_0/N_49 ), .Y(
        \adc081s101_0/N_57 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[28]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[28] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[28] ));
    DFN1 \stonyman_0/substate[2]  (.D(\stonyman_0/substate_ns[2] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[2]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[7]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[7] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[7] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[7] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_12  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_1_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_0_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_9_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_12_net_1 )
        );
    DFN1 \psram_cr_0/ahb0/hwrite_reg  (.D(
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ));
    OR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIGELF4[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[5]_net_1 )
        , .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_96 ));
    NOR3B \stonyman_0/substate_RNITIRAE[12]  (.A(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_5 ), .B(
        \stonyman_0/state_ns_i_a2_0_0_0_a2_2_0[1] ), .C(
        \stonyman_0/N_3739 ), .Y(\stonyman_0/N_617 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_185 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[6]_net_1 ));
    DFN1E1 \psram_cr_0/cr_int_i0/ac_counter[3]  (.D(
        \psram_cr_0/cr_int_i0/N_58 ), .CLK(FAB_CLK), .E(
        \psram_cr_0/cr_int_i0/ac_countere ), .Q(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ));
    NOR3A \stonyman_0/substate_i_0_RNO_39[0]  (.A(\stonyman_0/N_2286 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_2283_i_0 ), .Y(
        \stonyman_0/N_2353 ));
    DFN1 \stonyman_0/state[10]  (.D(\stonyman_0/state_ns[10] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state[10]_net_1 ));
    NOR3A \stonyman_0/state_RNI947R8[1]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_6_0 ), .B(\led_2_c[2] ), .C(
        \stonyman_0/N_2201 ), .Y(\stonyman_0/counterWait_1_sqmuxa_6 ));
    XNOR2 \stonyman_0/un5_counterWait_I_53  (.A(\stonyman_0/N_13_0 ), 
        .B(\stonyman_0/counterWait[18]_net_1 ), .Y(\stonyman_0/I_53 ));
    DFN1 \psram_cr_0/ahb0/fsm  (.D(\psram_cr_0/ahb0/fsm_0_sqmuxa_1 ), 
        .CLK(FAB_CLK), .Q(\psram_cr_0/ahb0/fsm_net_1 ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTII1_RNO_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/N_123 ));
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
    DFN1 \stonyman_0/counterWait[14]  (.D(
        \stonyman_0/counterWait_80[14] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[14]_net_1 ));
    IOPAD_TRI \psram_noe0_pad/U0/U0  (.D(\psram_noe0_pad/U0/NET1 ), .E(
        \psram_noe0_pad/U0/NET2 ), .PAD(psram_noe0));
    DFN1 \psram_cr_0/ahb0/data_out[12]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[12]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_2[24]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_74 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[24] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[29]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[29] ));
    NOR3B \stonyman_0/state_RNI5ESC9[2]  (.A(
        \stonyman_0/state[2]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/substate_tr30_1_0 ));
    OR3 \stonyman_0/substate_RNIJR9K6[7]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_1 ), .B(
        \stonyman_0/un1_counterWait_4_sqmuxa ), .C(
        \stonyman_0/un1_counterWait_1_sqmuxa_1 ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_3_s ));
    DFN1 \stonyman_0/startAdcCapture  (.D(
        \stonyman_0/startAdcCapture_RNO_net_1 ), .CLK(SCLK_c), .Q(
        adcStartCapture_c));
    NOR3A \stonyman_0/substate_RNO_3[1]  (.A(\stonyman_0/N_590_1 ), .B(
        \stonyman_0/substate_RNO_8[1]_net_1 ), .C(\stonyman_0/N_1976 ), 
        .Y(\stonyman_0/substate_ns_i_8_1[1] ));
    NOR2 \stonyman_0/cachedValue_tile_I_1_RNIQFOH_0  (.A(
        \stonyman_0/DOUT_TMP[5] ), .B(\stonyman_0/DOUT_TMP[2] ), .Y(
        \stonyman_0/state60_0_a2_0_o2_0_0_m11_0_a3_0_0 ));
    AO1 \stonyman_0/counterWait_RNO[29]  (.A(
        \stonyman_0/counterWait_2_m_0[29] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[29] ), .Y(
        \stonyman_0/counterWait_80[29] ));
    NOR3B \psram_cr_0/ahb0/operation_sel_RNIIIQ01  (.A(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .B(
        \psram_cr_0/ahb0/operation_sel_net_1 ), .C(
        \psram_cr_0/ahb0/busy_net_1 ), .Y(\psram_cr_0/ahb0/operation5 )
        );
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_74 ));
    DFN1 \psram_cr_0/cr_int_i0/address[24]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[24] ));
    OR3 \stonyman_0/un5_counterWait_I_76  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[19] ), .Y(\stonyman_0/N_6_0 ));
    OA1 \psram_cr_0/ahb0/busy_RNO  (.A(\psram_cr_0/dt_ack ), .B(
        \psram_cr_0/dt_req ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/N_24 ));
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
    OR3 \stonyman_0/un5_counterWait_I_84  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .C(
        \stonyman_0/DWACT_FDEC_E[22] ), .Y(
        \stonyman_0/DWACT_FDEC_E[23] ));
    OR3 \stonyman_0/un5_counterWait_I_13  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(
        \stonyman_0/counterWait[3]_net_1 ), .C(
        \stonyman_0/counterWait[4]_net_1 ), .Y(\stonyman_0/N_26 ));
    NOR2A \psram_cr_0/ahb0/hwrite_reg_RNI4TVH  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hwrite_reg_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[5]  (.A(
        \psram_cr_0/cr_int_i0/N_216 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_30 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[9]  (.A(
        \psram_cr_0/reg_addr[9] ), .B(N_25), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_188 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[14]  (.A(
        \psram_cr_0/data_to_cr[14] ), .B(N_35), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_257 ));
    MX2C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIOH0SB[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI1_m_i_1 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[2]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[2] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[2] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_213 )
        );
    DFN1 \psram_cr_0/ahb0/psram_addr[4]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[4] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIHJTL[13]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[13] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[13]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[7]  (.A(
        \psram_cr_0/ahb0/N_186 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 ));
    NOR2 \stonyman_0/substate_i_0_RNO_28[0]  (.A(\stonyman_0/N_165 ), 
        .B(\stonyman_0/substate_i[0] ), .Y(\stonyman_0/N_2408 ));
    IOPAD_BI \psram_data_pad[15]/U0/U0  (.D(
        \psram_data_pad[15]/U0/NET1 ), .E(\psram_data_pad[15]/U0/NET2 )
        , .Y(\psram_data_pad[15]/U0/NET3 ), .PAD(psram_data[15]));
    NOR3A \stonyman_0/resv_RNO_2  (.A(
        \stonyman_0/substate_RNIKP7U9[7]_net_1 ), .B(
        \stonyman_0/d_m3_0_a2_1_0 ), .C(\stonyman_0/resv_RNO_4_net_1 ), 
        .Y(\stonyman_0/resv_1_N_13 ));
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
    DFN1 \stonyman_0/counterWait[13]  (.D(
        \stonyman_0/counterWait_80[13] ), .CLK(SCLK_c), .Q(
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
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[2]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[2] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[2] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[2] ));
    OR3 \stonyman_0/state_RNI94T12[1]  (.A(
        \stonyman_0/un1_counterWait_2_sqmuxa_2 ), .B(
        \stonyman_0/counterWait_2_sqmuxa_3 ), .C(
        \stonyman_0/un1_counterWait_2_sqmuxa_5 ), .Y(
        \stonyman_0/un1_counterWait_2_sqmuxa_3 ));
    DFN1 \psram_cr_0/ahb0/data_out[8]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[8]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_0[3]  (.A(
        \stonyman_0/un1_state_0_sqmuxa_1_1 ), .B(\stonyman_0/I_9 ), .C(
        \stonyman_0/N_194 ), .Y(\stonyman_0/counterWait_6_m[3] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[6]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[6]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ));
    OA1 \stonyman_0/counterWait_RNO_2[23]  (.A(
        \stonyman_0/un1_state_0_sqmuxa ), .B(\stonyman_0/N_15 ), .C(
        \stonyman_0/I_70 ), .Y(\stonyman_0/N_11 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[14]  (.A(
        \psram_cr_0/cr_int_i0/N_225 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_48 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(N_634), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_211 ));
    AO1 \stonyman_0/counterWait_RNO[20]  (.A(\stonyman_0/N_3453 ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0_1[20] ), .Y(
        \stonyman_0/counterWait_80[20] ));
    OR3 \stonyman_0/substate_i_0_RNO_27[0]  (.A(\stonyman_0/N_2407 ), 
        .B(\stonyman_0/substate_ns_4[0] ), .C(
        \stonyman_0/substate_ns_5[0] ), .Y(
        \stonyman_0/substate_ns_7[0] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[12]  (.A(
        \psram_cr_0/max_addr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[12] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_217 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[6]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNO_5[9]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_o2_0_a1_0[9] ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .Y(
        \stonyman_0/counterWait_RNO_5[9]_net_1 ));
    IOPAD_TRI \Phy_RMII_CLK_pad/U0/U0  (.D(\Phy_RMII_CLK_pad/U0/NET1 ), 
        .E(\Phy_RMII_CLK_pad/U0/NET2 ), .PAD(Phy_RMII_CLK));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_MDC  (.D(
        \MSS_CORE2_0/MSS_MAC_0_MDC_D ), .E(PLLEN_VCC), .PAD(MAC_MDC));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIEO4D1[4]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .C(
        \psram_cr_0/ahb0/N_97 ), .Y(
        \psram_cr_0/ahb0/un1_haddr_reg_5_0_a2_1 ));
    OR2 \stonyman_0/substate_RNIHMHSH[7]  (.A(
        \stonyman_0/un1_counterWait_4_sqmuxa ), .B(
        \stonyman_0/un1_state_0_sqmuxa_1_1 ), .Y(
        \stonyman_0/un1_state_0_sqmuxa_1_3_0 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[15]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_101 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] ));
    NOR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIF5VC[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[1]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[0]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113_0_a2_0_0 )
        );
    MX2B \psram_cr_0/ahb0/operation_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/operation[27]_net_1 ), .B(N_61), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_206 ));
    NOR2 \stonyman_0/state_RNI0U97[11]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[8]_net_1 ), 
        .Y(\stonyman_0/N_3514 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[2] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[2]_net_1 ));
    OR2 \stonyman_0/un5_counterWait_I_63  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/counterWait[21]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[16] ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/N_234 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[3]_net_1 ));
    DFN1 \stonyman_0/state[11]  (.D(\stonyman_0/state_RNO[11]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[11]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[27]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[27] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[27] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(N_638), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_183 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[8]  (.A(
        \psram_cr_0/data_to_cr[8] ), .B(N_23), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_251 ));
    MX2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIS0EA2_0[0]  (.A(
        \stonyman_0/DOUT_TMP[0] ), .B(\stonyman_0/DIN_REG1[0] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/cachedValue[0] ));
    IOPAD_BI \psram_data_pad[2]/U0/U0  (.D(\psram_data_pad[2]/U0/NET1 )
        , .E(\psram_data_pad[2]/U0/NET2 ), .Y(
        \psram_data_pad[2]/U0/NET3 ), .PAD(psram_data[2]));
    NOR2A \stonyman_0/counterWait_RNO_14[4]  (.A(\stonyman_0/N_2330 ), 
        .B(\stonyman_0/N_422 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_a2_2_0[4] ));
    IOPAD_BI \psram_data_pad[13]/U0/U0  (.D(
        \psram_data_pad[13]/U0/NET1 ), .E(\psram_data_pad[13]/U0/NET2 )
        , .Y(\psram_data_pad[13]/U0/NET3 ), .PAD(psram_data[13]));
    AO1 \stonyman_0/counterWait_RNO_1[26]  (.A(\stonyman_0/I_82 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[26] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[26] ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNI3SHM[0]  (.A(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 ));
    NOR2B \stonyman_0/substate_i_0_RNI258S1[0]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa ), .B(
        \stonyman_0/un32lto2 ), .Y(\stonyman_0/resp_1_sqmuxa_1 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_169 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[17]  (.A(
        \stonyman_0/counterWait_2_m_0[17] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[17] ), .Y(
        \stonyman_0/counterWait_80[17] ));
    NOR2A \stonyman_0/substate_RNI5UJT[5]  (.A(
        \stonyman_0/substate[5]_net_1 ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(
        \stonyman_0/cachedPOINTER_23_0_i_i_a2_i_a2_0 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIT8IK6[0]  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/cachedValue[0] ), 
        .Y(\stonyman_0/state30_0_0 ));
    AX1B \stonyman_0/un5_counterWait_I_35  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[6] )
        , .C(\stonyman_0/counterWait[12]_net_1 ), .Y(\stonyman_0/I_35 )
        );
    OR2B \stonyman_0/state_RNIH4B7[7]  (.A(\stonyman_0/state[7]_net_1 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_3297 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[29]  (.A(
        \psram_cr_0/ahb0/max_addr[29] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[29] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[29] ));
    NOR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNIMTFQC[0]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_0 ), .B(
        \stonyman_0/N_390 ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_1 ));
    IOTRI_OB_EB \resp_pad/U0/U1  (.D(resp_c), .E(PLLEN_VCC), .DOUT(
        \resp_pad/U0/NET1 ), .EOUT(\resp_pad/U0/NET2 ));
    IOTRI_OB_EB \psram_address_pad[1]/U0/U1  (.D(\psram_address_c[1] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[1]/U0/NET1 ), .EOUT(
        \psram_address_pad[1]/U0/NET2 ));
    IOTRI_OB_EB \adcStartCapture_pad/U0/U1  (.D(adcStartCapture_c), .E(
        PLLEN_VCC), .DOUT(\adcStartCapture_pad/U0/NET1 ), .EOUT(
        \adcStartCapture_pad/U0/NET2 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_232 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[1]_net_1 ));
    DFN1 \adc081s101_0/conversionComplete  (.D(
        \adc081s101_0/conversionComplete_RNO_net_1 ), .CLK(SCLK_c), .Q(
        adcConvComplete_c));
    IOBI_IB_OB_EB \psram_data_pad[3]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[3] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[3]/U0/NET3 ), .DOUT(
        \psram_data_pad[3]/U0/NET1 ), .EOUT(
        \psram_data_pad[3]/U0/NET2 ), .Y(\psram_data_in[3] ));
    OR3 \stonyman_0/state_RNO_12[7]  (.A(
        \stonyman_0/counterWait[4]_net_1 ), .B(
        \stonyman_0/counterWait[3]_net_1 ), .C(
        \stonyman_0/state_ns_0_10_tz_2[7] ), .Y(
        \stonyman_0/state_ns_0_10_tz_4[7] ));
    OR2A \psram_cr_0/cr_int_i0/nbyte_en_1_RNO[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\psram_cr_0/cr_int_i0/N_230 ), .Y(
        \psram_cr_0/cr_int_i0/N_99 ));
    OR2A \stonyman_0/counterWait_RNI0BVB[20]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[20]_net_1 ), .Y(\stonyman_0/N_3453 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8I061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[11] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[11] ));
    DFN1 \psram_cr_0/ahb0/data_out[9]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[9]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNO_5[4]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_a2_2_2[4] ), .B(
        \stonyman_0/counterWait_RNO_11[4]_net_1 ), .C(
        \stonyman_0/counterWait_RNO_12[4]_net_1 ), .Y(
        \stonyman_0/N_430 ));
    AO1 \stonyman_0/counterWait_RNO_1[21]  (.A(\stonyman_0/I_62 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[21] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[21] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[9]  (.D(
        \psram_cr_0/cr_int_i0/N_38 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[9] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/operation[31]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_62 ));
    NOR3B \stonyman_0/substate_RNIMOIU1[1]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(
        \stonyman_0/state[7]_net_1 ), .C(\stonyman_0/N_2442 ), .Y(
        \stonyman_0/N_189 ));
    IOTRI_OB_EB \led_pad[6]/U0/U1  (.D(\led_net_0_c[2] ), .E(PLLEN_VCC)
        , .DOUT(\led_pad[6]/U0/NET1 ), .EOUT(\led_pad[6]/U0/NET2 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[3]  (.D(
        \stonyman_0/state_RNIQLB1C[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[3] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[16]  (.A(
        \psram_cr_0/ahb0/N_195 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIT1SK4[1]  (.A(
        \stonyman_0/cachedValue[1] ), .B(\stonyman_0/N_2929_li ), .Y(
        \stonyman_0/state21_2 ));
    NOR2A \stonyman_0/substate_RNO_14[3]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(
        \stonyman_0/state[6]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_0_0[3] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[7]  (.A(
        \psram_cr_0/cr_int_i0/N_255 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[7]_net_1 ));
    AO1A \stonyman_0/substate_i_0_RNO_20[0]  (.A(
        \stonyman_0/state_RNIU93R9[6]_net_1 ), .B(
        \stonyman_0/substate_ns_0_a4_0[0] ), .C(\stonyman_0/N_2352 ), 
        .Y(\stonyman_0/substate_ns_10[0] ));
    DFN1 \psram_cr_0/cr_int_i0/dt_ack  (.D(\psram_cr_0/cr_int_i0/N_22 )
        , .CLK(FAB_CLK), .Q(\psram_cr_0/dt_ack ));
    IOPAD_TRI \psram_address_pad[20]/U0/U0  (.D(
        \psram_address_pad[20]/U0/NET1 ), .E(
        \psram_address_pad[20]/U0/NET2 ), .PAD(psram_address[20]));
    DFN1 \psram_cr_0/ahb0/psram_addr[28]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[28]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[28] ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNIRQ3A41[0]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_2 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_3 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_a4_N_8 ), .Y(
        \stonyman_0/DIN_REG1_RNIRQ3A41[0] ));
    IOTRI_OB_EB \led_pad[3]/U0/U1  (.D(\led_2_c[3] ), .E(PLLEN_VCC), 
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
    NOR2B \psram_cr_0/ahb0/operation_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_184 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 ));
    AO1B \stonyman_0/substate_RNI8ASA4[1]  (.A(\stonyman_0/N_316 ), .B(
        \stonyman_0/N_2318 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_0 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_2 )
        );
    OA1A \stonyman_0/state_RNIU93R9[6]  (.A(
        \stonyman_0/substate_ns_i_o4_7_m3_e_4 ), .B(
        \stonyman_0/N_138_i_i_i_o2_8 ), .C(\stonyman_0/N_2415 ), .Y(
        \stonyman_0/state_RNIU93R9[6]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_22_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ));
    NOR3A \stonyman_0/state_i_RNO_15[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_4[0] ), .B(
        \stonyman_0/N_3741 ), .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_6[0] ));
    NOR3C \stonyman_0/counterWait_RNO_2[28]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_89 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[28] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[5]  (.A(
        \psram_cr_0/data_to_cr[5] ), .B(\psram_cr_0/reg_addr[5] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_161 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI3970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[9] ));
    XOR2 \stonyman_0/un1_cachedPOINTER_3_I_13  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/DWACT_ADD_CI_0_TMP[0] ), .Y(\stonyman_0/I_13 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_91  (.PIN4(FAB_CLK), .PIN5(
        GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), .PIN3(), 
        .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/SYNCCLKFDBKINT_NET ), 
        .PIN5INT(), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[31]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[31]INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    AO1 \stonyman_0/counterWait_RNO_1[17]  (.A(\stonyman_0/I_49 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[17] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[17] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(N_637), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_182 ));
    OR2 \stonyman_0/un5_counterWait_I_87  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[30] ), .Y(
        \stonyman_0/DWACT_FDEC_E[24] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[20]  (.A(
        \psram_address_c[20] ), .B(
        \psram_cr_0/cr_int_i0/address_5[20] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_268 ));
    NOR2A \stonyman_0/substate_i_0_RNI258S1_0[0]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa ), .B(
        \stonyman_0/un32lto2 ), .Y(\stonyman_0/resp_0_sqmuxa ));
    DFN1 \psram_cr_0/ahb0/data_in[4]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[4] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_72 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_1  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_1_net_1 )
        );
    NOR3 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_RNIJE4GB  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_127 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 ), .Y(N_71));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[0]  (.A(
        \psram_cr_0/data_from_cr[0] ), .B(\psram_data_in[0] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_231 ));
    OR3A \stonyman_0/cachedValue_tile_DIN_REG1_RNIE65T11[2]  (.A(
        \stonyman_0/DIN_REG1_RNIEC19J[0] ), .B(
        \stonyman_0/state_ns_i_a2_i_i_o2_0_0[4] ), .C(
        \stonyman_0/N_3745 ), .Y(\stonyman_0/N_378 ));
    OR2 \stonyman_0/counterWait_RNIE1QK1[22]  (.A(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .B(
        \stonyman_0/N_3715 ), .Y(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0_0[3] ));
    IOPAD_IN \MSS_CORE2_0/MSS_UART_0_RXD  (.PAD(UART_0_RXD), .Y(
        \MSS_CORE2_0/MSS_UART_0_RXD_Y ));
    OR2A \psram_cr_0/cr_int_i0/op_counter_n3_i_0  (.A(
        \psram_cr_0/cr_int_i0/N_68 ), .B(\psram_cr_0/cr_int_i0/N_107 ), 
        .Y(\psram_cr_0/cr_int_i0/op_counter_n3_i_0_net_1 ));
    IOPAD_TRI \adcConvComplete_pad/U0/U0  (.D(
        \adcConvComplete_pad/U0/NET1 ), .E(
        \adcConvComplete_pad/U0/NET2 ), .PAD(adcConvComplete));
    NOR3B \stonyman_0/substate_RNO_10[1]  (.A(\stonyman_0/N_2290 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(\stonyman_0/N_320 ), .Y(
        \stonyman_0/N_2362 ));
    AX1B \stonyman_0/un5_counterWait_I_7  (.A(
        \stonyman_0/counterWait[1]_net_1 ), .B(
        \stonyman_0/counterWait[0]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(\stonyman_0/I_7 ));
    NOR2A \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I_RNI4RIP3  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_174 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_175 ));
    AO1 \stonyman_0/substate_RNO_1[2]  (.A(
        \stonyman_0/substate_ns_0_a4_0[2] ), .B(
        \stonyman_0/state_RNIU93R9[6]_net_1 ), .C(
        \stonyman_0/substate_ns_0_0[2] ), .Y(
        \stonyman_0/substate_ns_0_1[2] ));
    DFN1 \psram_cr_0/ahb0/operation[17]  (.D(
        \psram_cr_0/ahb0/operation_RNO[17]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[17]_net_1 ));
    OR2 \stonyman_0/counterWait_RNILLIH[22]  (.A(
        \stonyman_0/counterWait[22]_net_1 ), .B(
        \stonyman_0/counterWait[12]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ));
    OR3 \stonyman_0/counterWait_RNI7CF21[5]  (.A(
        \stonyman_0/counterWait[7]_net_1 ), .B(
        \stonyman_0/counterWait[5]_net_1 ), .C(
        \stonyman_0/counterWait[6]_net_1 ), .Y(\stonyman_0/N_3716 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[18]  (.A(
        \psram_cr_0/ahb0/N_229 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 ));
    AO1B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI7ED6D[2]  
        (.A(CoreAHBLite_0_AHBmslave5_HREADY), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ));
    OR3 \stonyman_0/un5_counterWait_I_41  (.A(
        \stonyman_0/counterWait[12]_net_1 ), .B(
        \stonyman_0/counterWait[13]_net_1 ), .C(
        \stonyman_0/counterWait[14]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[9] ));
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
    OR2 \stonyman_0/cachedValue_tile_I_1_RNIVEI82_0  (.A(
        \stonyman_0/DOUT_TMP[3] ), .B(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/DOUT_5_0[3] ));
    NOR2B \stonyman_0/substate_RNO_0[2]  (.A(\stonyman_0/N_2443 ), .B(
        \stonyman_0/N_2436 ), .Y(\stonyman_0/N_2369 ));
    NOR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNIEC19J[0]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_7 ), .B(
        \stonyman_0/cachedValue[0] ), .Y(
        \stonyman_0/DIN_REG1_RNIEC19J[0] ));
    DFN1 \psram_cr_0/cr_int_i0/op_counter[0]  (.D(
        \psram_cr_0/cr_int_i0/op_counter_n0 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ));
    NOR2 \stonyman_0/state_RNICO8B9[8]  (.A(\stonyman_0/N_590_1 ), .B(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_2436 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[6]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[6]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[6] ));
    IOPAD_TRI \psram_address_pad[24]/U0/U0  (.D(
        \psram_address_pad[24]/U0/NET1 ), .E(
        \psram_address_pad[24]/U0/NET2 ), .PAD(psram_address[24]));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[9]  (.A(
        \psram_cr_0/cr_int_i0/N_220 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_38 ));
    DFN1 \psram_cr_0/ahb0/operation[8]  (.D(
        \psram_cr_0/ahb0/operation_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[8] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/max_addr[30] ), .B(N_67), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_241 ));
    NOR3A \stonyman_0/substate_RNIUUPI3[2]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_0 ), .B(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .C(
        \stonyman_0/state_ns_0_9_tz_2[7] ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_3 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[22]  (.A(
        \psram_cr_0/ahb0/operation[22]_net_1 ), .B(N_51), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_201 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIFE161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[18] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[18] ));
    DFN1 \adc081s101_0/cntrWaitLeading[0]  (.D(
        \adc081s101_0/cntrWaitLeading_5[0] ), .CLK(SCLK_c), .Q(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNID2161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[25] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[25] ));
    IOPAD_TRI \led_pad[4]/U0/U0  (.D(\led_pad[4]/U0/NET1 ), .E(
        \led_pad[4]/U0/NET2 ), .PAD(led[4]));
    DFN1 \psram_cr_0/ahb0/operation[13]  (.D(
        \psram_cr_0/ahb0/operation_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[13] ));
    NOR3B \stonyman_0/state_i_RNO_5[0]  (.A(\stonyman_0/N_638 ), .B(
        \stonyman_0/N_508 ), .C(\stonyman_0/N_383 ), .Y(
        \stonyman_0/N_592 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[15]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[15] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_226 )
        );
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(\psram_cr_0/reg_addr[7] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_163 ));
    OR2B \stonyman_0/substate_RNO_1[9]  (.A(\stonyman_0/N_2301 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2304 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[15]  (.A(
        \psram_cr_0/cr_int_i0/N_226 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_50 ));
    NOR2B \stonyman_0/substate_RNO_13[3]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/N_2443 ), .Y(
        \stonyman_0/substate_ns_0_a4_3_0[3] ));
    OR2 \adc081s101_0/cntrWaitTrailing_RNI4SDS[2]  (.A(
        \adc081s101_0/N_40 ), .B(
        \adc081s101_0/cntrWaitTrailing[2]_net_1 ), .Y(
        \adc081s101_0/N_46 ));
    OR2 \stonyman_0/state_RNI87701[4]  (.A(\stonyman_0/N_165 ), .B(
        \stonyman_0/N_1546_tz ), .Y(\stonyman_0/N_332 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[4]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[0]  (.A(
        \psram_cr_0/data_to_cr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] ));
    NOR2B \stonyman_0/state_RNI4HILU[2]  (.A(
        \stonyman_0/substate_tr30_1_0 ), .B(\stonyman_0/state21 ), .Y(
        \stonyman_0/N_1976 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNINTNH3  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_100 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ));
    NOR3C \stonyman_0/substate_i_0_RNO_43[0]  (.A(
        \stonyman_0/N_1933_10 ), .B(\stonyman_0/state_i[0]_net_1 ), .C(
        \stonyman_0/N_1933_9 ), .Y(\stonyman_0/N_1932 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[12]  (.A(
        \psram_cr_0/ahb0/N_191 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[12]_net_1 ));
    OA1 \stonyman_0/substate_RNO_2[4]  (.A(\stonyman_0/N_622 ), .B(
        \stonyman_0/N_2425 ), .C(\stonyman_0/state[8]_net_1 ), .Y(
        \stonyman_0/N_2379 ));
    AO1 \stonyman_0/counterWait_RNO_1[12]  (.A(
        \stonyman_0/counterWait_8[12] ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[12] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[12] ));
    NOR3A \stonyman_0/cachedPOINTER_RNIEFKB1_0[1]  (.A(
        \stonyman_0/un31lto0 ), .B(\stonyman_0/cachedPOINTER[2]_net_1 )
        , .C(\stonyman_0/cachedPOINTER[1]_net_1 ), .Y(
        \stonyman_0/N_2442 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[3]  (.A(
        \psram_cr_0/ahb0/data_out[3]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_73 ));
    OR2 \stonyman_0/substate_RNICNIK[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/substate[12]_net_1 ), .Y(\stonyman_0/N_2297 ));
    NOR3A \stonyman_0/cachedValue_tile_DIN_REG1_RNIBUL4L3[0]  (.A(
        \stonyman_0/state_i_RNIGGJNI1[0]_net_1 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/DIN_REG1_RNIRQ3A41[0] ), .Y(
        \stonyman_0/DIN_REG1_RNIBUL4L3[0] ));
    OR2A \stonyman_0/counterWait_RNI1JVB[12]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[12]_net_1 ), .Y(
        \stonyman_0/counterWait_2[12] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_10  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/VRONINT_NET ), 
        .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/RXEVINT_NET ), .PIN6INT(), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RTSnINT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DTRnINT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/TXEVINT_NET ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_1[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_0[0] )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_101 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_2[0] )
        );
    DFN1 \psram_cr_0/cr_int_i0/start_0  (.D(\psram_cr_0/start_0_0 ), 
        .CLK(FAB_CLK), .Q(\psram_cr_0/cr_int_i0/start_0_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[11]  (.A(
        \psram_cr_0/data_to_cr[11] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_69 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[11] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[21]  (.A(
        \psram_cr_0/max_addr[21] ), .B(N_49), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_232 ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[5]  (.A(
        \psram_cr_0/ahb0/N_174 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[8] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[8]_net_1 ));
    NOR3A \stonyman_0/substate_RNO_3[16]  (.A(
        \stonyman_0/substate_ns_0_0_a2_0_1[16] ), .B(
        \stonyman_0/state[9]_net_1 ), .C(\stonyman_0/state[6]_net_1 ), 
        .Y(\stonyman_0/substate_ns_0_0_a2_0_2[16] ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNIV2M8L[1]  (.A(
        \stonyman_0/state30_0_0 ), .B(\stonyman_0/state30_0 ), .C(
        \stonyman_0/state30_3 ), .Y(\stonyman_0/state30 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[8]  (.A(
        \psram_cr_0/cr_int_i0/N_219 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_36 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[4]  (.A(
        \psram_address_c[4] ), .B(\psram_cr_0/cr_int_i0/address_5[4] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_252 ));
    MX2 \stonyman_0/incp_RNO_0  (.A(incp_c), .B(
        \stonyman_0/un1_substate_8_sqmuxa ), .S(\stonyman_0/N_3581 ), 
        .Y(\stonyman_0/N_760 ));
    NOR2A \stonyman_0/counterWait_RNI0MDE9[0]  (.A(
        \stonyman_0/substate_ns_i_a2_6_m3_e_4 ), .B(
        \stonyman_0/N_138_i_i_i_o2_8 ), .Y(\stonyman_0/N_2437 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[29]  (.A(
        \psram_cr_0/ahb0/N_208 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 ));
    NOR3B \stonyman_0/substate_RNISG575[15]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_7_0 ), .B(
        \stonyman_0/N_619 ), .C(\stonyman_0/N_3737 ), .Y(
        \stonyman_0/N_614 ));
    OA1 \stonyman_0/counterWait_RNO_0[10]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_0_a0_0[10] ), .Y(
        \stonyman_0/counterWait_RNO_0[10]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[21]  (.A(
        \psram_cr_0/ahb0/operation[21]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[21] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIJRTL[15]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[15] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[15]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[12] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[12]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[14] ));
    OR2A \stonyman_0/substate_RNO_1[15]  (.A(
        \stonyman_0/substate[14]_net_1 ), .B(\stonyman_0/N_2301 ), .Y(
        \stonyman_0/N_2328 ));
    NOR2B \stonyman_0/counterWait_RNIG1ME[2]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[2]_net_1 )
        , .Y(\stonyman_0/counterWait_2_m_0[2] ));
    OR2 \stonyman_0/counterWait_RNIHIVM[2]  (.A(
        \stonyman_0/counterWait[2]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .Y(\stonyman_0/N_3714 ));
    IOTRI_OB_EB \psram_address_pad[18]/U0/U1  (.D(
        \psram_address_c[18] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[18]/U0/NET1 ), .EOUT(
        \psram_address_pad[18]/U0/NET2 ));
    OR2A \stonyman_0/counterWait_RNI7UJH9[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/N_2437 ), .Y(
        \stonyman_0/N_2302 ));
    NOR2A \stonyman_0/counterWait_RNIU7569[26]  (.A(\stonyman_0/N_194 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2434 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[9] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[9] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[5]  (.A(
        \psram_cr_0/cr_int_i0/N_161 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[5] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI97SJ1[7]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_0 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_4 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_7 ));
    OR3 \stonyman_0/un5_counterWait_I_55  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/counterWait[18]_net_1 ), .Y(\stonyman_0/N_12 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[3]  (.A(\psram_cr_0/ahb0/N_246 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[3]_net_1 ));
    DFN1 \stonyman_0/state[5]  (.D(\stonyman_0/N_646 ), .CLK(SCLK_c), 
        .Q(\stonyman_0/state[5]_net_1 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]  (
        .D(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[19] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[19]_net_1 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/max_addr[25] ), .B(N_57), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_236 ));
    NOR3B \stonyman_0/substate_RNISQ5C21[5]  (.A(\stonyman_0/N_384 ), 
        .B(\stonyman_0/I_14 ), .C(\stonyman_0/N_607 ), .Y(
        \stonyman_0/N_72 ));
    NOR3C \stonyman_0/counterWait_RNO_2[25]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_77 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[25] ));
    NOR3C \stonyman_0/state_RNO_0[4]  (.A(\stonyman_0/state[4]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_378 ), .Y(
        \stonyman_0/N_601 ));
    XNOR2 \stonyman_0/cachedValue_tile_WADDR_REG1_RNIVK8I_0[0]  (.A(
        \stonyman_0/WADDR_REG1[0] ), .B(\stonyman_0/un31lto0 ), .Y(
        \stonyman_0/WADDR_REG1_RNIVK8I_0[0] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[3]  (.A(
        \psram_cr_0/data_from_cr[3] ), .B(
        \psram_cr_0/ahb0/data_out[3]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_262 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_224 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/N_46 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_4[1]  (.A(
        \psram_cr_0/reg_addr[1] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
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
    IOPAD_TRI \psram_address_pad[18]/U0/U0  (.D(
        \psram_address_pad[18]/U0/NET1 ), .E(
        \psram_address_pad[18]/U0/NET2 ), .PAD(psram_address[18]));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[9]  (.A(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[9] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_178 ));
    AND3C \stonyman_0/state_i_RNO_6[0]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(
        \stonyman_0/counterPixelsCaptured_1_sqmuxa ), .C(
        \stonyman_0/N_332 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_2_1[0] ));
    OR3 \stonyman_0/substate_RNIV2DP1[3]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_3 ), .B(
        \stonyman_0/counterWait_3_sqmuxa ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_1 ));
    OR3 \stonyman_0/resv_RNO  (.A(\stonyman_0/resv_1_N_12 ), .B(
        \stonyman_0/resv_RNO_1_net_1 ), .C(\stonyman_0/resv_1_N_13 ), 
        .Y(\stonyman_0/resv_RNO_net_1 ));
    NOR2B \stonyman_0/counterWait_RNO_0[14]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[14]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[14] ));
    NOR2 \psram_cr_0/ahb0/haddr_reg_RNI3SHM[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_97 ));
    OR2 \stonyman_0/un5_counterWait_I_15  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(
        \stonyman_0/counterWait[4]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[1] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[16]  (.A(
        \psram_cr_0/max_addr[16] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_59_0 ));
    NOR3B \stonyman_0/state_i_RNO_8[0]  (.A(
        \stonyman_0/cachedValue[5] ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a1_1[0] ), .C(
        \stonyman_0/N_3746 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a1_2[0] ));
    NOR3A \stonyman_0/substate_i_0_RNO_25[0]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/state[2]_net_1 ), .C(\stonyman_0/state[8]_net_1 ), 
        .Y(\stonyman_0/substate_tr13_5_1 ));
    AO1 \stonyman_0/counterWait_RNO[27]  (.A(
        \stonyman_0/counterWait_2_m_0[27] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[27] ), .Y(
        \stonyman_0/counterWait_80[27] ));
    OA1 \stonyman_0/state_RNO_0[5]  (.A(\stonyman_0/N_322 ), .B(
        \stonyman_0/N_3746 ), .C(
        \stonyman_0/state_ns_i_a2_i_0_i_a2_0[5] ), .Y(
        \stonyman_0/N_603 ));
    XA1A \stonyman_0/cachedValue_tile_WADDR_REG1_RNI2T4R[2]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(
        \stonyman_0/WADDR_REG1[2] ), .C(\stonyman_0/N_5_1 ), .Y(
        \stonyman_0/I_5_0 ));
    NOR2A \stonyman_0/state_RNO_4[9]  (.A(\stonyman_0/state[11]_net_1 )
        , .B(\stonyman_0/N_3746 ), .Y(\stonyman_0/N_587 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[1]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[1] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[1] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_212 )
        );
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_3  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[9]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[8]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_3_net_1 )
        );
    MX2B \psram_cr_0/ahb0/operation_RNO_0[18]  (.A(
        \psram_cr_0/ahb0/operation[18]_net_1 ), .B(N_43), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_197 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[24]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[24]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[24] ));
    AOI1B \stonyman_0/cachedValue_tile_DIN_REG1_RNISJNM4[0]  (.A(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .B(
        \stonyman_0/DIN_REG1[0] ), .C(
        \stonyman_0/DIN_REG1_RNITQ5L2[2] ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_4_m4_e_0 ));
    NOR2B \stonyman_0/counterWait_RNIE1ME[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[0]_net_1 )
        , .Y(\stonyman_0/counterWait_2_m_0[0] ));
    OA1A \stonyman_0/substate_RNI99UL9[9]  (.A(
        \stonyman_0/state_0_sqmuxa_m2_e_3 ), .B(
        \stonyman_0/N_138_i_i_i_o2_8 ), .C(
        \stonyman_0/counterWait_1_sqmuxa_4_m3_0_a2_0 ), .Y(
        \stonyman_0/counterWait_1_sqmuxa_4 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[16]  (.A(\psram_cr_0/dt_rw ), 
        .B(\psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_59_0 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[16] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNITMUB9[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[0] ), .Y(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ));
    DFN1 \stonyman_0/substate[8]  (.D(
        \stonyman_0/substate_RNO[8]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[8]_net_1 ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNI3VTUB[0]  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/state21_0 ), .C(
        \stonyman_0/cachedValue[0] ), .Y(\stonyman_0/state21_4 ));
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
        \stonyman_0/state_RNIQMPBE[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[4] ));
    IOPAD_TRI \psram_address_pad[1]/U0/U0  (.D(
        \psram_address_pad[1]/U0/NET1 ), .E(
        \psram_address_pad[1]/U0/NET2 ), .PAD(psram_address[1]));
    XOR2 \stonyman_0/un2_cachedValue_1_I_14  (.A(\stonyman_0/N_4_0 ), 
        .B(\stonyman_0/cachedValue[5] ), .Y(\stonyman_0/I_14_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[8]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[8]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[31]  (.A(
        \psram_cr_0/ahb0/N_242 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[31]_net_1 ));
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_11  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_7_net_1 )
        , .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[2]_net_1 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[3]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_11_net_1 )
        );
    DFN1E1 \adc081s101_0/cntrWaitQuiet[2]  (.D(\adc081s101_0/N_29_1 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitQuiete ), .Q(
        \adc081s101_0/cntrWaitQuiet[2]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_49  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[5]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[4]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[6]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[4]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[5]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[6]INT_NET ));
    DFN1 \psram_cr_0/ahb0/operation[1]  (.D(
        \psram_cr_0/ahb0/operation_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[1] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_82  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[20]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[21]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[22]INT_NET ));
    OR3 \stonyman_0/substate_i_0_RNO_19[0]  (.A(
        \stonyman_0/substate_ns_7[0] ), .B(\stonyman_0/N_2408 ), .C(
        \stonyman_0/N_2405 ), .Y(\stonyman_0/substate_ns_9[0] ));
    DFN1 \psram_cr_0/ahb0/data_out[0]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[0]_net_1 ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[6]  (.A(
        \psram_cr_0/ahb0/data_out[6]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[6] ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[6]  (.D(
        \stonyman_0/state_RNITIDBJ[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[6] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_10[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[26] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_59));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_89  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[26]INT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[25]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHWDATA[27]INT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[25]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[26]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/FABHRDATA[27]INT_NET ));
    IOPAD_TRI \resp_pad/U0/U0  (.D(\resp_pad/U0/NET1 ), .E(
        \resp_pad/U0/NET2 ), .PAD(resp));
    NOR2B \stonyman_0/counterWait_RNO_0[13]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[13]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[13] ));
    DFN1 \clkgenerator_0/clkCameraSS  (.D(\clkgenerator_0/SCLK_i_i ), 
        .CLK(FAB_CLK), .Q(\clkgenerator_0/SCLK_i ));
    AO1A \adc081s101_0/cntrWaitQuiet_RNID85I2[2]  (.A(
        \adc081s101_0/N_49 ), .B(\adc081s101_0/N_47 ), .C(
        \adc081s101_0/N_42 ), .Y(\adc081s101_0/cntrWaitQuiete ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAQ061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[13] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[13] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_3_sqmuxa_0_a2_1  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ));
    DFN1 \psram_cr_0/cr_int_i0/address[8]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[8]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[8] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[10]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[2] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[10] ));
    NOR2A \stonyman_0/un5_counterWait_m[0]  (.A(
        \stonyman_0/un1_state_0_sqmuxa ), .B(
        \stonyman_0/counterWait[0]_net_1 ), .Y(
        \stonyman_0/un5_counterWait_m[0]_net_1 ));
    OR3 \stonyman_0/counterWait_RNO_1[4]  (.A(
        \stonyman_0/counterWait_RNO_3[4]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_1[4] ), .C(
        \stonyman_0/N_430 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_3[4] ));
    NOR2A \stonyman_0/substate_RNO_19[1]  (.A(\stonyman_0/N_2407_1 ), 
        .B(\stonyman_0/N_320 ), .Y(\stonyman_0/N_2364 ));
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
    AO1 \stonyman_0/substate_RNO_4[2]  (.A(
        \stonyman_0/substate_ns_0_a4_4_1[2] ), .B(\stonyman_0/N_2442 ), 
        .C(\stonyman_0/N_2371 ), .Y(\stonyman_0/substate_ns_0_0[2] ));
    XA1B \psram_cr_0/cr_int_i0/ac_counter_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_54 ));
    XNOR2 \stonyman_0/un5_counterWait_I_65  (.A(\stonyman_0/N_9 ), .B(
        \stonyman_0/counterWait[22]_net_1 ), .Y(\stonyman_0/I_65 ));
    DFN1 \psram_cr_0/ahb0/data_in[13]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[13] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_219 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[8]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNO_18[1]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_0 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_m5_i_0 ), 
        .C(\stonyman_0/N_390 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_3_1 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[20]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[20] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[3]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[3] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[3] ));
    CLKSRC \stonyman_0/counterWait_RNINVU29_0[26]/U_CLKSRC  (.A(
        \stonyman_0/counterWait_RNINVU29[26]_net_1 ), .Y(
        \stonyman_0/N_194 ));
    AO1 \stonyman_0/counterWait_RNO[14]  (.A(
        \stonyman_0/counterWait_2_m_0[14] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[14] ), .Y(
        \stonyman_0/counterWait_80[14] ));
    DFN1 \stonyman_0/state[2]  (.D(\stonyman_0/N_648 ), .CLK(SCLK_c), 
        .Q(\stonyman_0/state[2]_net_1 ));
    IOTRI_OB_EB \CS_pad/U0/U1  (.D(CS_c), .E(PLLEN_VCC), .DOUT(
        \CS_pad/U0/NET1 ), .EOUT(\CS_pad/U0/NET2 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[3] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[3] ));
    OA1C \stonyman_0/counterWait_RNO_0[9]  (.A(
        \stonyman_0/counterWait_80_0_iv_itt_9_m3_0_a2_1 ), .B(
        \stonyman_0/state_i_RNI0AH5H3[0]_net_1 ), .C(
        \stonyman_0/N_427 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_9_m2_0_a2_0 ));
    OR2B \stonyman_0/cachedPOINTER_RNILV2T[1]  (.A(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/N_320 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[3]  (.A(
        \psram_cr_0/data_from_cr[3] ), .B(\psram_data_in[3] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_234 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[3]  (.A(
        \psram_cr_0/reg_addr[3] ), .B(\psram_cr_0/data_to_cr[3] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_159 ));
    DFN1 \stonyman_0/state[7]  (.D(\stonyman_0/state_ns[7] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state[7]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[3]  (.A(\psram_cr_0/ahb0/N_72 )
        , .B(\psram_cr_0/ahb0/N_74 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0_0[3] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[3] ));
    NOR2A \stonyman_0/state_RNI68ON[6]  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\stonyman_0/N_2277_i_1 ), .Y(\stonyman_0/N_2415 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(N_636), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_181 ));
    NOR2 \stonyman_0/state_RNIHKEC[5]  (.A(\stonyman_0/N_161 ), .B(
        \stonyman_0/state[5]_net_1 ), .Y(\stonyman_0/N_549 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[17]  (.A(
        \psram_address_c[17] ), .B(
        \psram_cr_0/cr_int_i0/address_5[17] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_265 ));
    NOR2B \stonyman_0/state_RNIJJHA1[7]  (.A(
        \stonyman_0/resp_1_sqmuxa ), .B(\stonyman_0/state[7]_net_1 ), 
        .Y(\stonyman_0/substate_1_sqmuxa_7 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[3]  (.A(
        \psram_address_c[3] ), .B(\psram_cr_0/cr_int_i0/address_5[3] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_251 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_213 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[2]_net_1 ));
    OR2 \stonyman_0/un5_counterWait_I_78  (.A(
        \stonyman_0/counterWait[24]_net_1 ), .B(
        \stonyman_0/counterWait[25]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[20] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_182 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[3]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[0]  (.A(
        \psram_cr_0/max_addr[0] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[0] ));
    OA1B \stonyman_0/substate_RNIJRRS[15]  (.A(
        \stonyman_0/state[1]_net_1 ), .B(\stonyman_0/N_612 ), .C(
        \stonyman_0/substate[15]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_7_0 ));
    DFN1 \psram_cr_0/cr_int_i0/address[10]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[10]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[10] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[13]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[13] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[13] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[13] ));
    AO1 \stonyman_0/substate_i_0_RNO_41[0]  (.A(
        \stonyman_0/substate_tr13_2_1 ), .B(\stonyman_0/N_573 ), .C(
        \stonyman_0/N_2351 ), .Y(\stonyman_0/substate_ns_2[0] ));
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
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[12]  (.A(
        \psram_cr_0/reg_addr[12] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[12] ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[2]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[2] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[2] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[0]  (.A(\psram_cr_0/ahb0/N_243 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[0]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[13] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[13]_net_1 ));
    DFN1 \stonyman_0/substate[7]  (.D(
        \stonyman_0/substate_RNO[7]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[7]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[1]  (.A(\psram_cr_0/ahb0/N_244 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[1]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_42  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(\stonyman_0/DWACT_FDEC_E[7] )
        , .C(\stonyman_0/DWACT_FDEC_E[9] ), .Y(\stonyman_0/N_16 ));
    NOR3A \stonyman_0/cachedValue_tile_DIN_REG1_RNI1NPK7[6]  (.A(
        \stonyman_0/DIN_REG1_RNI21EA2[6] ), .B(
        \stonyman_0/cachedValue[7] ), .C(\stonyman_0/N_3741 ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_2 ));
    IOTRI_OB_EB \psram_address_pad[5]/U0/U1  (.D(\psram_address_c[5] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[5]/U0/NET1 ), .EOUT(
        \psram_address_pad[5]/U0/NET2 ));
    DFN1 \inputConditioner_0/conditioner[3]  (.D(
        \inputConditioner_0/intermediate[2] ), .CLK(SCLK_c), .Q(
        \inputConditioner_0/conditioner[3]_net_1 ));
    IOPAD_TRI \MSS_CORE2_0/MSS_MAC_0_TXD_0  (.D(
        \MSS_CORE2_0/MACTXD_net_0[0] ), .E(PLLEN_VCC), .PAD(MAC_TXD[0])
        );
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[2] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_171 ));
    AO1 \stonyman_0/substate_RNID2T51[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/state[5]_net_1 ), .C(
        \stonyman_0/counterWait_3_sqmuxa ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_0_0 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIQCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[4] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[4] ));
    OR3 \stonyman_0/substate_RNI4IJL2[16]  (.A(\stonyman_0/N_204 ), .B(
        \stonyman_0/state_ns_i_a2_i_i_0_o2_2_0[9] ), .C(
        \stonyman_0/N_3732 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_o2_2_2[9] ));
    DFN1 \psram_cr_0/cr_int_i0/start  (.D(
        \psram_cr_0/cr_int_i0/start_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/start_net_1 ));
    MX2 \stonyman_0/incv_RNO_0  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa ), .B(incv_c), .S(
        \stonyman_0/un1_counterWait_3_sqmuxa_3 ), .Y(
        \stonyman_0/N_764 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[12] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ));
    NOR2A \stonyman_0/state_RNI0JEL[8]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(\stonyman_0/N_2204 ), .Y(
        \stonyman_0/counterWait_2_sqmuxa_7 ));
    NOR3 \stonyman_0/state_RNI2QEB[4]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[3]_net_1 ), 
        .C(\stonyman_0/state[4]_net_1 ), .Y(
        \stonyman_0/un1_state_7_i_a4_0_1_0 ));
    NOR3A \stonyman_0/counterWait_RNIJ8CC1[27]  (.A(
        \stonyman_0/substate_ns_i_o4_7_m3_e_0 ), .B(
        \stonyman_0/N_262_i_0_o2_0 ), .C(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .Y(
        \stonyman_0/substate_ns_i_o4_7_m3_e_2 ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNIA52K3_1[2]  (.A(
        \psram_cr_0/ahb0/N_87 ), .B(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ));
    IOPAD_BI \psram_data_pad[7]/U0/U0  (.D(\psram_data_pad[7]/U0/NET1 )
        , .E(\psram_data_pad[7]/U0/NET2 ), .Y(
        \psram_data_pad[7]/U0/NET3 ), .PAD(psram_data[7]));
    NOR2B \stonyman_0/substate_RNI12AK[12]  (.A(\stonyman_0/un31lto0 ), 
        .B(\stonyman_0/substate[12]_net_1 ), .Y(\stonyman_0/N_2407_1 ));
    NOR2A \stonyman_0/state_RNIUB1T[6]  (.A(\stonyman_0/N_2435 ), .B(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .Y(
        \stonyman_0/substate_ns_i_a2_6_m3_e_1 ));
    OR3 \stonyman_0/un5_counterWait_I_80  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[9] )
        , .C(\stonyman_0/DWACT_FDEC_E[12] ), .Y(
        \stonyman_0/DWACT_FDEC_E[30] ));
    NOR3 \psram_cr_0/cr_int_i0/op_counter_RNI28G7_0[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ));
    OR3 \stonyman_0/counterWait_RNI65VD1[3]  (.A(
        \stonyman_0/counterWait[4]_net_1 ), .B(
        \stonyman_0/counterWait[3]_net_1 ), .C(\stonyman_0/N_3714 ), 
        .Y(\stonyman_0/N_138_i_i_i_o2_7_3 ));
    NOR2B \stonyman_0/counterWait_RNO_0[18]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[18]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[18] ));
    NOR3B \stonyman_0/cachedValue_tile_DIN_REG1_RNIPJDA21[6]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_1 ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_2 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_a4_N_8 ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ));
    DFN1 \psram_cr_0/ahb0/operation[5]  (.D(
        \psram_cr_0/ahb0/operation_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[5] ));
    NOR2 \stonyman_0/state_i_RNISADI21[0]  (.A(\stonyman_0/N_300 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .Y(\stonyman_0/N_639 ));
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
    NOR3A \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_2_RNO[0]  (.A(
        \stonyman_0/N_619 ), .B(\stonyman_0/N_161 ), .C(
        \stonyman_0/state[11]_net_1 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a0_1[0] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_81  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[17]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[18]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[19]INT_NET ));
    NOR3B \stonyman_0/substate_RNIU3802[9]  (.A(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2_1[3] ), .B(
        \stonyman_0/N_619 ), .C(\stonyman_0/N_2321 ), .Y(\led_2_c[3] ));
    OR2 \stonyman_0/substate_RNI5UJT[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/substate[8]_net_1 ), .Y(\stonyman_0/N_2286 ));
    NOR3C \stonyman_0/counterWait_RNO_3[20]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_59 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/N_3506 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[23]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[23] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[23] ));
    IOTRI_OB_EB \psram_address_pad[22]/U0/U1  (.D(
        \psram_address_c[22] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[22]/U0/NET1 ), .EOUT(
        \psram_address_pad[22]/U0/NET2 ));
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
    NOR3A \stonyman_0/substate_RNI0R591[9]  (.A(
        \stonyman_0/led_2_c_1[1] ), .B(\stonyman_0/substate[8]_net_1 ), 
        .C(\stonyman_0/substate[9]_net_1 ), .Y(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2_1[3] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[9]  (.A(\psram_cr_0/ahb0/N_252 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[9]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIJ8CQ[23]  (.A(
        \stonyman_0/counterWait[24]_net_1 ), .B(
        \stonyman_0/counterWait[23]_net_1 ), .C(
        \stonyman_0/counterWait[21]_net_1 ), .Y(\stonyman_0/N_3720 ));
    OR3B \stonyman_0/substate_RNO_4[7]  (.A(\stonyman_0/N_2289 ), .B(
        \stonyman_0/state_RNIN1TN9[6]_net_1 ), .C(\stonyman_0/N_2391 ), 
        .Y(\stonyman_0/substate_ns_i_1[7] ));
    OR2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO  (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_net_1 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIO0I_RNO_net_1 ));
    IOPAD_TRI \rs485_de_pad/U0/U0  (.D(\rs485_de_pad/U0/NET1 ), .E(
        \rs485_de_pad/U0/NET2 ), .PAD(rs485_de));
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
    IOTRI_OB_EB \psram_nwe_pad/U0/U1  (.D(psram_nwe_c), .E(PLLEN_VCC), 
        .DOUT(\psram_nwe_pad/U0/NET1 ), .EOUT(\psram_nwe_pad/U0/NET2 ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[2]  (.D(
        \stonyman_0/state_RNIPD7N7[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[2] ));
    DFN1 \stonyman_0/cachedPOINTER[1]  (.D(\stonyman_0/N_70 ), .CLK(
        SCLK_c), .Q(\stonyman_0/cachedPOINTER[1]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_out_RNO[11]  (.A(
        \psram_cr_0/cr_int_i0/N_242 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[11]_net_1 ));
    NOR3B \stonyman_0/substate_RNO_9[3]  (.A(\stonyman_0/N_2290 ), .B(
        \stonyman_0/substate_ns_0_a4_0_0[3] ), .C(\stonyman_0/N_320 ), 
        .Y(\stonyman_0/substate_ns_0_a4_0_2[3] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[23]  (.A(
        \psram_cr_0/ahb0/N_202 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 ));
    OR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIRK99H[1]  (.A(
        \stonyman_0/N_3745 ), .B(\stonyman_0/N_252 ), .Y(
        \stonyman_0/N_263 ));
    IOTRI_OB_EB \psram_address_pad[2]/U0/U1  (.D(\psram_address_c[2] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[2]/U0/NET1 ), .EOUT(
        \psram_address_pad[2]/U0/NET2 ));
    IOPAD_IN \CAPTURE_pad/U0/U0  (.PAD(CAPTURE), .Y(
        \CAPTURE_pad/U0/NET1 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_7  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[1]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[0]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_7_net_1 )
        );
    DFN1 \psram_cr_0/ahb0/psram_addr[0]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[0] ));
    NOR2A \stonyman_0/substate_i_0_RNI9DEV1[0]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/resp_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_3_4_m2_0_a2_m1_e_0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[1]  (.A(
        \psram_cr_0/max_addr[1] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[1] ));
    OR3 \stonyman_0/counterWait_RNI7H4M4[0]  (.A(
        \stonyman_0/N_138_i_i_i_o2_7_2 ), .B(
        \stonyman_0/N_138_i_i_i_o2_7_3 ), .C(
        \stonyman_0/N_138_i_i_i_o2_6 ), .Y(
        \stonyman_0/N_138_i_i_i_o2_8 ));
    NOR3A \stonyman_0/substate_i_0_RNO_33[0]  (.A(
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_5 ), .B(
        \stonyman_0/state_ns_0_9_tz_2[7] ), .C(
        \stonyman_0/N_138_i_i_i_o2_8 ), .Y(\stonyman_0/N_2407 ));
    OR3 \stonyman_0/un5_counterWait_I_24  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[3] ), .Y(
        \stonyman_0/DWACT_FDEC_E[4] ));
    NOR2A \stonyman_0/substate_RNO_5[6]  (.A(\stonyman_0/N_2294 ), .B(
        \stonyman_0/un32lto2 ), .Y(\stonyman_0/substate_ns_i_a4_1[6] ));
    DFN1 \psram_cr_0/ahb0/operation[2]  (.D(
        \psram_cr_0/ahb0/operation_RNO[2]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[2] ));
    NOR3B \stonyman_0/substate_RNII8PR[9]  (.A(
        \stonyman_0/substate[9]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(
        \stonyman_0/counterWait[27]_net_1 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_1 ));
    DFN1 \stonyman_0/resp  (.D(\stonyman_0/resp_RNO_net_1 ), .CLK(
        SCLK_c), .Q(resp_c));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_7_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[23]  (.A(
        \psram_cr_0/ahb0/operation[23]_net_1 ), .B(N_53), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_202 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[4]  (.A(
        \psram_cr_0/reg_addr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[4] ));
    NOR2B \stonyman_0/state_RNIFIJF[10]  (.A(
        \stonyman_0/un43_i_0_a2_0 ), .B(\stonyman_0/N_508 ), .Y(
        \stonyman_0/un43_i_0_a2_2 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[9]  (.A(
        \psram_cr_0/data_from_cr[9] ), .B(
        \psram_cr_0/ahb0/data_out[9]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_268 ));
    OR2 \adc081s101_0/cntrWaitTrailing_RNINEUI[1]  (.A(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ), .B(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ), .Y(
        \adc081s101_0/N_40 ));
    OR2 \stonyman_0/substate_RNIGVIK[9]  (.A(
        \stonyman_0/substate[9]_net_1 ), .B(
        \stonyman_0/substate[14]_net_1 ), .Y(\stonyman_0/N_2296 ));
    NOR2B \inputConditioner_0/conditioner_RNO[1]  (.A(
        \inputConditioner_0/conditioner[0]_net_1 ), .B(CAPTURE_c), .Y(
        \inputConditioner_0/intermediate[0] ));
    NOR3A \adc081s101_0/cntrWaitQuiet_RNO[1]  (.A(\adc081s101_0/N_47 ), 
        .B(\adc081s101_0/N_49 ), .C(\adc081s101_0/N_52_i ), .Y(
        \adc081s101_0/N_139 ));
    IOPAD_BI \psram_data_pad[11]/U0/U0  (.D(
        \psram_data_pad[11]/U0/NET1 ), .E(\psram_data_pad[11]/U0/NET2 )
        , .Y(\psram_data_pad[11]/U0/NET3 ), .PAD(psram_data[11]));
    NOR3B \stonyman_0/substate_i_0_RNO_26[0]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .C(\stonyman_0/N_3741 ), .Y(
        \stonyman_0/substate_ns_0_a2_4_0_m4_0_a2_1 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[25]  (.A(
        \psram_cr_0/ahb0/operation[25]_net_1 ), .B(N_57), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_204 ));
    NOR3C \stonyman_0/state_RNITETN[1]  (.A(
        \stonyman_0/un33_i_a2_0_a2_1[0] ), .B(
        \stonyman_0/un33_i_a2_0_a2_0[0] ), .C(
        \stonyman_0/un33_i_a2_0_a2_2[0] ), .Y(\led_net_0_c[0] ));
    NOR3A \stonyman_0/counterWait_80_10_m2_e_2_RNIJDPN6  (.A(
        \stonyman_0/counterWait_80_10_m2_e_2_net_1 ), .B(
        \stonyman_0/un35_i_a2_0_a2_0_a2_2[2] ), .C(\stonyman_0/N_2201 )
        , .Y(\stonyman_0/counterWait_80_10_m2_e_2_RNIJDPN6_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[19]  (.D(
        \psram_cr_0/ahb0/operation_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[19]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNITCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[7] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[7] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_24[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[6] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_640));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[3]  (.A(
        \psram_cr_0/max_addr[3] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[3] ));
    NOR3C \stonyman_0/state_RNIRCPC5[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_5_0_0 ), .Y(
        \stonyman_0/state_RNIRCPC5[6]_net_1 ));
    NOR2B \stonyman_0/cachedValue_tile_WADDR_REG1_RNI27MV1[2]  (.A(
        \stonyman_0/I_5_1 ), .B(\stonyman_0/DOUT_5_7_m5_0 ), .Y(
        \stonyman_0/WADDR_REG1_RNI27MV1[2] ));
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
    NOR2B \stonyman_0/substate_RNO_0[16]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/state_RNIU93R9[6]_net_1 ), .Y(\stonyman_0/N_2402 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_95  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNIINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1BCLKINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBUSNIINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[6]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[7]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/I2C1SMBALERTNOINT_NET ));
    NOR3B \stonyman_0/counterWait_RNI4DBO7[0]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_3 ), .B(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_4 ), .C(
        \stonyman_0/N_3715 ), .Y(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_6 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(\psram_cr_0/data_to_cr[2] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_158 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[18]  (.A(
        \psram_address_c[18] ), .B(
        \psram_cr_0/cr_int_i0/address_5[18] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_266 ));
    OA1 \adc081s101_0/cntrWaitQuiet_RNO_0[2]  (.A(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ), .C(
        \adc081s101_0/cntrWaitQuiet[2]_net_1 ), .Y(
        \adc081s101_0/cntrWaitQuiet_n2_i_a3_0 ));
    OR3 \stonyman_0/un5_counterWait_m_RNO[2]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_6 ), .B(
        \stonyman_0/un1_counterWait_1_sqmuxa_1 ), .C(
        \stonyman_0/un1_counterWait_4_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0[2] ));
    NOR3A \stonyman_0/counterWait_RNO_10[4]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_a2_2_0[4] ), .B(
        \stonyman_0/counterWait_RNO_15[4]_net_1 ), .C(
        \stonyman_0/counterWait_RNO_16[4]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_a2_2_2[4] ));
    DFN1 \stonyman_0/inphi  (.D(\stonyman_0/inphi_RNO_net_1 ), .CLK(
        SCLK_c), .Q(inphi_c));
    IOPAD_BI \psram_data_pad[8]/U0/U0  (.D(\psram_data_pad[8]/U0/NET1 )
        , .E(\psram_data_pad[8]/U0/NET2 ), .Y(
        \psram_data_pad[8]/U0/NET3 ), .PAD(psram_data[8]));
    OA1A \stonyman_0/counterWait_RNO_3[23]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[23]_net_1 ), .C(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_a0_0[23] ));
    DFN1 \stonyman_0/substate[11]  (.D(
        \stonyman_0/substate_RNO[11]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[11]_net_1 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[4]  (.A(
        \psram_cr_0/max_addr[4] ), .B(N_638), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_215 ));
    DFN1 \psram_cr_0/ahb0/operation[27]  (.D(
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[27]_net_1 ));
    NOR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIK1AAP[5]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .B(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HTRANS[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTl1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI14 ));
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
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI8E061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[20] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[20] ));
    DFN1 \psram_cr_0/ahb0/data_in[8]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[8]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[8] ));
    OR2 \stonyman_0/substate_RNIB8C31[12]  (.A(\stonyman_0/N_2289 ), 
        .B(\stonyman_0/substate[12]_net_1 ), .Y(\stonyman_0/N_2315 ));
    NOR3C \stonyman_0/counterWait_RNO_2[26]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_82 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[26] ));
    IOPAD_IN \MSS_CORE2_0/MSS_MAC_0_RXD_1  (.PAD(MAC_RXD[1]), .Y(
        \MSS_CORE2_0/MSS_MAC_0_RXD_1_Y ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1ll ), .CLK(FAB_CLK), .CLR(
        MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIIIl_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[2]  (.A(
        \psram_cr_0/reg_addr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[2] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9I061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[21] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[21] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_6[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[30] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_67));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[4] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[18]  (.A(
        \psram_cr_0/cr_int_i0/N_266 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_257 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[14]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIPB731[20]  (.A(
        \stonyman_0/counterWait[20]_net_1 ), .B(
        \stonyman_0/counterWait[17]_net_1 ), .C(
        \stonyman_0/state_ns_i_a2_i_a2_0_30_0_o4_i_o2_1[2] ), .Y(
        \stonyman_0/N_3715 ));
    OR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns_o3[0]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_94 ));
    NOR2 \stonyman_0/state_RNIBSMO[9]  (.A(\stonyman_0/state[9]_net_1 )
        , .B(\stonyman_0/counterPixelsCaptured_1_sqmuxa ), .Y(
        \stonyman_0/N_1934_3 ));
    AO1 \stonyman_0/counterWait_RNO_0[15]  (.A(\stonyman_0/I_43 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_80_0_iv_0[15] ), .Y(
        \stonyman_0/counterWait_80_0_iv_1[15] ));
    OR2A \psram_cr_0/cr_int_i0/enable_RNIDN3J2  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_111 ), .Y(\psram_cr_0/cr_int_i0/N_348 )
        );
    DFN1 \psram_cr_0/cr_int_i0/nbyte_en_1[0]  (.D(
        \psram_cr_0/cr_int_i0/N_99 ), .CLK(FAB_CLK), .Q(
        psram_ncs0_c_c_c));
    NOR3B \stonyman_0/substate_RNINCGOA[5]  (.A(\stonyman_0/N_165 ), 
        .B(\stonyman_0/cachedPOINTER_23_0_i_i_a2_i_a2_0 ), .C(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_607 ));
    DFN1 \psram_cr_0/ahb0/operation[23]  (.D(
        \psram_cr_0/ahb0/operation_RNO[23]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[23]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[24]  (.A(
        \stonyman_0/counterWait_2_m_0[24] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[24] ), .Y(
        \stonyman_0/counterWait_80[24] ));
    XNOR2 \stonyman_0/un5_counterWait_I_89  (.A(\stonyman_0/N_3 ), .B(
        \stonyman_0/counterWait[28]_net_1 ), .Y(\stonyman_0/I_89 ));
    NOR2B \stonyman_0/substate_RNO_0[4]  (.A(\stonyman_0/N_2436 ), .B(
        \stonyman_0/substate[7]_net_1 ), .Y(\stonyman_0/N_2381 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[18]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[18] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[18] ));
    AND3B \stonyman_0/state_i_RNO_27[0]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/N_161 ), .C(
        \stonyman_0/state_i[0]_net_1 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_1[0] ));
    DFN1 \stonyman_0/substate[16]  (.D(\stonyman_0/substate_ns[16] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[16]_net_1 ));
    DFN1 \stonyman_0/incv  (.D(\stonyman_0/incv_RNO_net_1 ), .CLK(
        SCLK_c), .Q(incv_c));
    AX1C \stonyman_0/un1_cachedPOINTER_3_I_14  (.A(
        \stonyman_0/DWACT_ADD_CI_0_TMP[0] ), .B(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .C(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/I_14 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI7E061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[10] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[10] ));
    OR2 \stonyman_0/substate_RNI3MJT[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_2289 ));
    OA1 \stonyman_0/counterWait_RNO_2[2]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_1_a0_0[2] ), .Y(
        \stonyman_0/counterWait_RNO_2[2]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_2[21]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_62 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[21] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[15]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[15]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[15] ));
    IOTRI_OB_EB \incv_pad/U0/U1  (.D(incv_c), .E(PLLEN_VCC), .DOUT(
        \incv_pad/U0/NET1 ), .EOUT(\incv_pad/U0/NET2 ));
    NOR3B \stonyman_0/state_RNIP49O4[6]  (.A(
        \stonyman_0/substate_ns_i_a2_6_m3_e_2 ), .B(
        \stonyman_0/substate_ns_i_a2_6_m3_e_1 ), .C(
        \stonyman_0/state_ns_0_9_tz_2[7] ), .Y(
        \stonyman_0/substate_ns_i_a2_6_m3_e_4 ));
    OA1A \stonyman_0/counterWait_RNO_3[10]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[10]_net_1 ), .C(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_a0_0[10] ));
    OR3 \stonyman_0/counterWait_RNO_0[20]  (.A(\stonyman_0/N_3508 ), 
        .B(\stonyman_0/N_3510 ), .C(\stonyman_0/N_3506 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_1[20] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_7[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[29] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_65));
    MX2 \stonyman_0/substate_RNO_22[1]  (.A(
        \stonyman_0/state[5]_net_1 ), .B(\stonyman_0/state[2]_net_1 ), 
        .S(\stonyman_0/un31lto0 ), .Y(\stonyman_0/N_2298 ));
    NOR3A \stonyman_0/state_i_RNIAONOK[0]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_o2_3_4_m2_0_a2_m1_e_0 ), .B(
        \stonyman_0/counterWait_1_sqmuxa_4 ), .C(
        \stonyman_0/state_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_3_4_m2_0_a2_m1_e_2 ));
    OR2 \stonyman_0/state_RNO_20[7]  (.A(
        \stonyman_0/counterWait[22]_net_1 ), .B(
        \stonyman_0/counterWait[8]_net_1 ), .Y(
        \stonyman_0/state_ns_0_9_tz_0[7] ));
    DFN1 \stonyman_0/counterWait[25]  (.D(
        \stonyman_0/counterWait_80[25] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[25]_net_1 ));
    NOR3A \stonyman_0/state_RNO_5[8]  (.A(
        \stonyman_0/state_ns_i_a2_0_i_0_a2_5_8_m2_e_0 ), .B(
        \stonyman_0/N_3741 ), .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/state_ns_i_a2_0_i_0_a2_5_8_m2_e_2 ));
    XO1 \psram_cr_0/cr_int_i0/op_counter_RNI28G7_1[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(\psram_cr_0/cr_int_i0/N_77 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[7]  (.A(\psram_cr_0/ahb0/N_250 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[7]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIFA161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[27] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[27] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[14]  (.A(
        \psram_cr_0/reg_addr[14] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[14] ));
    NOR2 \stonyman_0/state_i_RNO_18[0]  (.A(\stonyman_0/N_332 ), .B(
        \stonyman_0/state_0_sqmuxa ), .Y(
        \stonyman_0/state_i_RNO_18[0]_net_1 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_21[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[9] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_25));
    AND3B \stonyman_0/state_i_RNO_14[0]  (.A(
        \stonyman_0/state[4]_net_1 ), .B(\stonyman_0/state[8]_net_1 ), 
        .C(\stonyman_0/N_1933_9 ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_3_0_a1_1[0] ));
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
    NOR2B \psram_cr_0/ahb0/operation_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_sel_2_sqmuxa ));
    OA1A \stonyman_0/state_i_RNO_7[0]  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/state_i[0]_net_1 ), .C(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\stonyman_0/state_ns_i_0_a2_0_0_0[0] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI0970A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[6] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[6] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIAI061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[31] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] ));
    OR2 \stonyman_0/substate_ns_0_o4_6_i_a2[0]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .Y(\stonyman_0/N_171_i ));
    XA1C \psram_cr_0/cr_int_i0/ac_counter_RNO[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[3]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_82 ), .C(
        \psram_cr_0/cr_int_i0/un1_clr_i_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_58 ));
    DFN1 \psram_cr_0/cr_int_i0/address[18]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[18]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[18] ));
    OAI1 \psram_cr_0/ahb0/haddr_reg_RNID2U47[2]  (.A(
        \psram_cr_0/ahb0/un1_haddr_reg_5 ), .B(
        \psram_cr_0/ahb0/un1_haddr_reg_6 ), .C(MSS_CORE2_0_M2F_RESET_N)
        , .Y(\psram_cr_0/ahb0/N_111 ));
    NOR2 \stonyman_0/state_RNIA68V9[9]  (.A(
        \stonyman_0/state_RNIU93R9[6]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .Y(\stonyman_0/N_2440 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[20]  (.A(
        \psram_cr_0/ahb0/N_231 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[20]_net_1 ));
    OR2A \psram_cr_0/cr_int_i0/noe0_RNO  (.A(MSS_CORE2_0_M2F_RESET_N), 
        .B(\psram_cr_0/cr_int_i0/N_229 ), .Y(
        \psram_cr_0/cr_int_i0/N_100 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[9]  (.A(
        \psram_cr_0/data_to_cr[9] ), .B(N_25), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_252 ));
    DFN1 \stonyman_0/cachedValue_tile_WADDR_REG1[2]  (.D(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/WADDR_REG1[2] ));
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
        .B(\adc081s101_0/bitsRead_0_sqmuxa ), .Y(
        \adc081s101_0/cntrWaitLeading_5[1] ));
    AO1 \stonyman_0/counterWait_RNO[18]  (.A(
        \stonyman_0/counterWait_2_m_0[18] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[18] ), .Y(
        \stonyman_0/counterWait_80[18] ));
    IOPAD_TRI \psram_address_pad[5]/U0/U0  (.D(
        \psram_address_pad[5]/U0/NET1 ), .E(
        \psram_address_pad[5]/U0/NET2 ), .PAD(psram_address[5]));
    DFN1 \inputConditioner_0/conditioner[2]  (.D(
        \inputConditioner_0/intermediate[1] ), .CLK(SCLK_c), .Q(
        \inputConditioner_0/conditioner[2]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO[1]  (.A(
        \psram_cr_0/cr_int_i0/N_212 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 ));
    NOR3A \stonyman_0/state_i_RNO_20[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_3_2_1[0] ), .B(
        \stonyman_0/N_3746 ), .C(\stonyman_0/state[5]_net_1 ), .Y(
        \stonyman_0/state_i_RNO_20[0]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIHFJV1[0]  (.A(
        \stonyman_0/N_138_i_i_i_o2_6_0 ), .B(
        \stonyman_0/counterWait[0]_net_1 ), .C(\stonyman_0/N_3716 ), 
        .Y(\stonyman_0/N_138_i_i_i_o2_6 ));
    OR3 \stonyman_0/un5_counterWait_I_27  (.A(
        \stonyman_0/DWACT_FDEC_E[4] ), .B(
        \stonyman_0/counterWait[8]_net_1 ), .C(
        \stonyman_0/counterWait[9]_net_1 ), .Y(\stonyman_0/N_21 ));
    IOPAD_TRI \SCLK_pad/U0/U0  (.D(\SCLK_pad/U0/NET1 ), .E(
        \SCLK_pad/U0/NET2 ), .PAD(SCLK));
    NOR2B \stonyman_0/counterWait_RNO_0[24]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[24]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[24] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[8]  (.A(
        \psram_cr_0/data_from_cr[8] ), .B(
        \psram_cr_0/ahb0/data_out[8]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_267 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(N_45), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_230 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[10]  (.A(
        \psram_cr_0/cr_int_i0/N_166 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[10] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_3[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[11] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_29));
    NOR3A \stonyman_0/counterWait_RNIHG6D4[27]  (.A(
        \stonyman_0/substate_ns_i_o4_7_m3_e_2 ), .B(
        \stonyman_0/N_3715 ), .C(\stonyman_0/state_ns_0_9_tz_2[7] ), 
        .Y(\stonyman_0/substate_ns_i_o4_7_m3_e_4 ));
    DFN1 \psram_cr_0/ahb0/data_in[6]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[6]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[6] ));
    AO1 \stonyman_0/substate_RNO[10]  (.A(
        \stonyman_0/substate_ns_0_a4_0_0[10] ), .B(\stonyman_0/N_2300 )
        , .C(\stonyman_0/N_163 ), .Y(\stonyman_0/substate_ns[10] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[8]  (.A(
        \psram_cr_0/ahb0/N_177 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[8]_net_1 ));
    MX2C \stonyman_0/cachedValue_tile_DIN_REG1_RNIS0EA2[0]  (.A(
        \stonyman_0/DOUT_TMP[0] ), .B(\stonyman_0/DIN_REG1[0] ), .S(
        \stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/DIN_REG1_RNIS0EA2[0] ));
    NOR3A \stonyman_0/substate_i_0_RNO_44[0]  (.A(
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_1 ), .B(
        \stonyman_0/N_262_i_0_o2_0 ), .C(\stonyman_0/N_3715 ), .Y(
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_4 ));
    NOR3A \stonyman_0/state_RNO_18[7]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(
        \stonyman_0/substate[12]_net_1 ), .C(\stonyman_0/N_209 ), .Y(
        \stonyman_0/N_3334 ));
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
    NOR2B \stonyman_0/state_i_RNILPL9[0]  (.A(
        \stonyman_0/state_i[0]_net_1 ), .B(\stonyman_0/substate_i[0] ), 
        .Y(\stonyman_0/N_2441 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[13]  (.A(
        \psram_cr_0/cr_int_i0/N_261 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hwrite_reg_RNO  (.A(\psram_cr_0/ahb0/N_168 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/hwrite_reg_RNO_net_1 ));
    OA1 \stonyman_0/state_RNO_1[1]  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/state_i[0]_net_1 ), .C(
        \stonyman_0/state_ns_i_a2_0_0_0_0_tz[1] ), .Y(
        \stonyman_0/state_ns_i_a2_0_0_0_0[1] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[26]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[26] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[26] ));
    OA1 \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_0_RNO_0  (.A(
        \stonyman_0/N_138_i_i_i_o2_8 ), .B(\stonyman_0/N_3726 ), .C(
        \stonyman_0/I_7 ), .Y(\stonyman_0/counterWait_8[2] ));
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNIA52K3_0[2]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \psram_cr_0/ahb0/N_87 ), .C(
        \psram_cr_0/ahb0/haddr_reg[2]_net_1 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ));
    AO1 \stonyman_0/counterWait_RNO[7]  (.A(
        \stonyman_0/counterWait_2[7] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_1[7] ), .Y(
        \stonyman_0/counterWait_80[7] ));
    OR2A \stonyman_0/substate_RNIMUS8A[4]  (.A(\stonyman_0/N_2330 ), 
        .B(\stonyman_0/N_422 ), .Y(\stonyman_0/counterWait_0_sqmuxa_7 )
        );
    AO1 \stonyman_0/counterWait_RNO_1[27]  (.A(\stonyman_0/I_86 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[27] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[27] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[0]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[0] ));
    NOR2B \stonyman_0/state_RNO_1[5]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[5]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_0_i_a2_0[5] ));
    OR3 \stonyman_0/substate_i_0_RNO_42[0]  (.A(\stonyman_0/N_2418 ), 
        .B(\stonyman_0/N_2355 ), .C(\stonyman_0/N_2347 ), .Y(
        \stonyman_0/substate_ns_1[0] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[15]  (.A(
        \psram_cr_0/cr_int_i0/N_171 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[15] ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_2_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[17] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[16] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ));
    NOR2A \stonyman_0/substate_i_0_RNO_31[0]  (.A(\stonyman_0/N_2291 ), 
        .B(\stonyman_0/state_RNIN1TN9[6]_net_1 ), .Y(
        \stonyman_0/N_2352 ));
    NOR3A \stonyman_0/counterWait_RNO_6[4]  (.A(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .B(
        \stonyman_0/N_194 ), .C(\stonyman_0/state_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_1_a0_0[4] ));
    DFN1 \psram_cr_0/ahb0/data_out[14]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[14]_net_1 ));
    IOBI_IB_OB_EB \psram_data_pad[15]/U0/U1  (.D(
        \psram_cr_0.cr_int_i0.data_reg[15] ), .E(
        \psram_cr_0.cr_int_i0.active_data ), .YIN(
        \psram_data_pad[15]/U0/NET3 ), .DOUT(
        \psram_data_pad[15]/U0/NET1 ), .EOUT(
        \psram_data_pad[15]/U0/NET2 ), .Y(\psram_data_in[15] ));
    DFN1 \stonyman_0/substate[5]  (.D(\stonyman_0/substate_ns[5] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[5]_net_1 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_28[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[2] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_636));
    AO1 \stonyman_0/substate_RNO_7[1]  (.A(\stonyman_0/state30 ), .B(
        \stonyman_0/substate_tr30_2_0 ), .C(\stonyman_0/N_1976 ), .Y(
        \stonyman_0/N_1978 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[1]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[1] ));
    OA1 \stonyman_0/counterWait_RNO_0[23]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_0_a0_0[23] ), .Y(
        \stonyman_0/counterWait_RNO_0[23]_net_1 ));
    OR2B \stonyman_0/substate_ns_0_i_a2_RNO[13]  (.A(
        \stonyman_0/N_2415 ), .B(\stonyman_0/substate[13]_net_1 ), .Y(
        \stonyman_0/N_154 ));
    NOR2 \stonyman_0/counterWait_RNIMSKT1_0[26]  (.A(
        \stonyman_0/N_3715 ), .B(\stonyman_0/N_172 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_o2_1_4_m6_e_2 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[17]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[17] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[17] ));
    AO1 \stonyman_0/substate_ns_14[0]  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/substate_tr13_0_0_net_1 ), .C(
        \stonyman_0/substate_ns_12[0] ), .Y(
        \stonyman_0/substate_ns_14[0]_net_1 ));
    NOR2B \stonyman_0/substate_RNO_0[5]  (.A(
        \stonyman_0/substate[5]_net_1 ), .B(\stonyman_0/N_2415 ), .Y(
        \stonyman_0/substate_ns_0_a4_1_0[5] ));
    DFN1 \psram_cr_0/ahb0/data_in[15]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[15] ));
    OR2 \stonyman_0/substate_RNIMTHD4[1]  (.A(\stonyman_0/N_3737 ), .B(
        \stonyman_0/substate[1]_net_1 ), .Y(\stonyman_0/N_3739 ));
    OR2A \stonyman_0/state_RNI2QEB[11]  (.A(\stonyman_0/N_573 ), .B(
        \stonyman_0/state[11]_net_1 ), .Y(\stonyman_0/N_2284 ));
    OA1B \stonyman_0/state_RNI3FJP[1]  (.A(\stonyman_0/state[7]_net_1 )
        , .B(\stonyman_0/state[1]_net_1 ), .C(\stonyman_0/N_2204 ), .Y(
        \stonyman_0/un1_counterWait_2_sqmuxa_2 ));
    DFN1 \psram_cr_0/cr_int_i0/address[5]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[5] ));
    OA1 \stonyman_0/counterWait_RNO_2[10]  (.A(
        \stonyman_0/un1_state_0_sqmuxa ), .B(\stonyman_0/N_15 ), .C(
        \stonyman_0/I_28 ), .Y(\stonyman_0/N_13 ));
    OR2A \stonyman_0/counterWait_80_10_m2_e_2_RNIRV3PF  (.A(
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .Y(\stonyman_0/N_300 ));
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
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRS7E3[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_163 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_6 ), 
        .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_7 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_174 ));
    NOR2B \stonyman_0/substate_RNO_12[3]  (.A(
        \stonyman_0/substate_ns_i_a4_2_2_0[1] ), .B(
        \stonyman_0/N_2317 ), .Y(\stonyman_0/substate_ns_0_a4_1[3] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[11] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[11]_net_1 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[15] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[15]_net_1 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[15]  (.A(
        \psram_cr_0/data_to_cr[15] ), .B(N_37), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_258 ));
    NOR3B \stonyman_0/substate_RNO_0[6]  (.A(\stonyman_0/N_2294 ), .B(
        \stonyman_0/substate_ns_i_a4_0_0[6] ), .C(\stonyman_0/N_109 ), 
        .Y(\stonyman_0/N_2388 ));
    OA1A \stonyman_0/cachedValue_tile_DIN_REG1_RNI2V3RD[3]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_0 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_m5_i_0 ), 
        .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_N_9 )
        , .Y(\stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_a4_N_8 ));
    NOR2B \stonyman_0/substate_RNO_3[2]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(\stonyman_0/N_2283_i_0 ), 
        .Y(\stonyman_0/substate_ns_0_a4_0[2] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIEA161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[17] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[17] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_9  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1RInINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DSRnINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/UART1DCDnINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[1]INT_NET ), 
        .PIN2INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[2]INT_NET ), 
        .PIN3INT(\MSS_CORE2_0/MSS_ADLIB_INST/SPI1SSO[3]INT_NET ));
    XNOR2 \stonyman_0/un5_counterWait_I_37  (.A(\stonyman_0/N_18 ), .B(
        \stonyman_0/counterWait[13]_net_1 ), .Y(\stonyman_0/I_37 ));
    OR3 \stonyman_0/cachedValue_tile_I_1_RNIMDTT8  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_1 )
        , .B(\stonyman_0/I_1_RNIV0EA2 ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_2 )
        , .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_N_9 )
        );
    DFN1 \stonyman_0/substate[4]  (.D(\stonyman_0/substate_ns[4] ), 
        .CLK(SCLK_c), .Q(\stonyman_0/substate[4]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNISCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[6] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[6] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_16  (.A(
        \stonyman_0/DWACT_FINC_E[0] ), .B(\stonyman_0/DWACT_FINC_E[1] )
        , .C(\stonyman_0/cachedValue[5] ), .Y(\stonyman_0/N_3_0 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[7]  (.A(
        \psram_cr_0/reg_addr[7] ), .B(N_21), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_186 ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNIL4N32[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_0 ), .C(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_1_2 ), .Y(
        \psram_cr_0/ahb0/N_84 ));
    DFN1 \stonyman_0/counterWait[26]  (.D(
        \stonyman_0/counterWait_80[26] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[26]_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_71  (.A(
        \stonyman_0/counterWait[21]_net_1 ), .B(
        \stonyman_0/counterWait[22]_net_1 ), .C(
        \stonyman_0/counterWait[23]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[17] ));
    OR3 \stonyman_0/state_RNILKEC[4]  (.A(\stonyman_0/state[3]_net_1 ), 
        .B(\stonyman_0/state[4]_net_1 ), .C(
        \stonyman_0/state[5]_net_1 ), .Y(\stonyman_0/N_316 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIRCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[5] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[5] ));
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
    NOR3A \stonyman_0/counterWait_RNO_10[1]  (.A(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_0[1] ), .B(
        \stonyman_0/N_3741 ), .C(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_2[1] ));
    NOR2 \stonyman_0/state_RNIDO98[2]  (.A(\stonyman_0/state[2]_net_1 )
        , .B(\stonyman_0/state[5]_net_1 ), .Y(\stonyman_0/N_573 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[5]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[5] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[5] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[5] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[5] ));
    NOR2A \stonyman_0/counterWait_RNIMSKT1[26]  (.A(
        \stonyman_0/state_0_sqmuxa_m2_e_0 ), .B(\stonyman_0/N_3715 ), 
        .Y(\stonyman_0/substate_ns_i_a2_6_m3_e_2 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[15]  (.A(
        \psram_address_c[15] ), .B(
        \psram_cr_0/cr_int_i0/address_5[15] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_263 ));
    AO1 \stonyman_0/counterWait_RNO_1[22]  (.A(\stonyman_0/I_65 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[22] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[22] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[30]  (.A(
        \psram_cr_0/ahb0/max_addr[30] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[30] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[30] ));
    OR3 \stonyman_0/state_RNO_25[7]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(
        \stonyman_0/substate[16]_net_1 ), .C(
        \stonyman_0/substate[14]_net_1 ), .Y(
        \stonyman_0/state_ns_0_1_tz_1[7] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[22]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[22]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[22] ));
    NOR3C \stonyman_0/state_RNITIDBJ[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_17_0 ), .Y(
        \stonyman_0/state_RNITIDBJ[6]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[7]  (.D(
        \psram_cr_0/ahb0/operation_RNO[7]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[7] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[19]  (.A(
        \psram_cr_0/max_addr[19] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[19] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[19] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_13  (.A(
        \stonyman_0/DWACT_FINC_E[0] ), .B(\stonyman_0/cachedValue[3] ), 
        .C(\stonyman_0/N_2929_li ), .Y(\stonyman_0/N_4_0 ));
    AO1 \stonyman_0/state_RNO[10]  (.A(\stonyman_0/N_641 ), .B(
        \stonyman_0/state[9]_net_1 ), .C(\stonyman_0/N_499 ), .Y(
        \stonyman_0/state_ns[10] ));
    OR3 \stonyman_0/un5_counterWait_I_54  (.A(
        \stonyman_0/DWACT_FDEC_E[7] ), .B(\stonyman_0/DWACT_FDEC_E[9] )
        , .C(\stonyman_0/DWACT_FDEC_E[12] ), .Y(
        \stonyman_0/DWACT_FDEC_E[13] ));
    OA1 \stonyman_0/counterWait_RNO_12[4]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_i_a2_a0_1[4] ), .Y(
        \stonyman_0/counterWait_RNO_12[4]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_2[14]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_40 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[14] ));
    NOR3C \stonyman_0/state_RNO[11]  (.A(\stonyman_0/state[11]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_3746 ), .Y(
        \stonyman_0/state_RNO[11]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_6[1]  (.A(\stonyman_0/N_300 ), 
        .B(\stonyman_0/counterWait_80_0_iv_0_a2_2_0[1] ), .C(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a1_0[1] ), .Y(
        \stonyman_0/counterWait_RNO_6[1]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[12]  (.A(
        \stonyman_0/counterWait_2[12] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_1[12] ), .Y(
        \stonyman_0/counterWait_80[12] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[9]  (.A(
        \psram_cr_0/cr_int_i0/N_165 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[9] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(N_639), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_184 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[17]  (.A(
        \psram_cr_0/max_addr[17] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[17] ));
    NOR2A \stonyman_0/state_RNIDGOI2_0[8]  (.A(\stonyman_0/N_323 ), .B(
        \stonyman_0/substate_9_sqmuxa_5_s ), .Y(
        \stonyman_0/d_m2_0_a2_0 ));
    NOR2B \stonyman_0/counterWait_RNO_13[1]  (.A(\stonyman_0/I_5 ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_0 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_0[1] ));
    NOR2 \stonyman_0/state_RNO_17[7]  (.A(
        \stonyman_0/counterWait[29]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_3332 ));
    OR3B \stonyman_0/substate_i_0_RNI5SQK[0]  (.A(
        \stonyman_0/substate_i[0] ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(
        \stonyman_0/substate[12]_net_1 ), .Y(
        \stonyman_0/state_ns_0_0_0_o2_2_0[6] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_214 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[3]_net_1 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIVH8K[2]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[2] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[2]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI0ll[2] ));
    AO1 \stonyman_0/substate_RNO_1[6]  (.A(
        \stonyman_0/substate_ns_i_a4_2[6] ), .B(
        \stonyman_0/substate_ns_i_a4_1[6] ), .C(
        \stonyman_0/N_2277_i_1 ), .Y(\stonyman_0/substate_ns_i_0[6] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[3]  (.A(
        \psram_cr_0/ahb0/haddr_reg[3]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[3] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_172 ));
    XNOR2 \stonyman_0/un5_counterWait_I_14  (.A(\stonyman_0/N_26 ), .B(
        \stonyman_0/counterWait[5]_net_1 ), .Y(\stonyman_0/I_14_0 ));
    NOR2 \stonyman_0/substate_RNO_5[7]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N), 
        .Y(\stonyman_0/N_2391 ));
    NOR2A \stonyman_0/substate_ns_0_i_a2_0[13]  (.A(
        \stonyman_0/substate_ns_0_i_a2_0_0[13] ), .B(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_167 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[28]  (.A(
        \psram_cr_0/ahb0/max_addr[28] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[28] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[28] ));
    NOR3B \stonyman_0/substate_i_0_RNO_48[0]  (.A(adcConvComplete_c), 
        .B(\stonyman_0/substate[16]_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2355 ));
    XNOR2 \stonyman_0/un5_counterWait_I_86  (.A(\stonyman_0/N_4 ), .B(
        \stonyman_0/counterWait[27]_net_1 ), .Y(\stonyman_0/I_86 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[20]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[20] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[20] ));
    DFN1 \psram_cr_0/cr_int_i0/address[0]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[0] ));
    NOR3B \stonyman_0/substate_RNI6SQL[16]  (.A(
        \stonyman_0/substate[16]_net_1 ), .B(
        \stonyman_0/state[10]_net_1 ), .C(adcConvComplete_c), .Y(
        \stonyman_0/counterWait_1_sqmuxa_3 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_270 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 ));
    NOR2B \stonyman_0/counterWait_RNO_0[28]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[28]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[28] ));
    IOTRI_OB_EB \psram_address_pad[0]/U0/U1  (.D(\psram_address_c[0] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[0]/U0/NET1 ), .EOUT(
        \psram_address_pad[0]/U0/NET2 ));
    NOR3C \stonyman_0/counterWait_RNO_2[13]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_37 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[13] ));
    IOPAD_TRI \led_pad[5]/U0/U0  (.D(\led_pad[5]/U0/NET1 ), .E(
        \led_pad[5]/U0/NET2 ), .PAD(led[5]));
    OA1C \stonyman_0/substate_RNILJQ03[1]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(\stonyman_0/N_2442 ), .C(
        \stonyman_0/resp_1_sqmuxa ), .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_0 ));
    NOR2B \stonyman_0/substate_RNO_0[3]  (.A(
        \stonyman_0/substate_tr30_3_1 ), .B(\stonyman_0/N_322 ), .Y(
        \stonyman_0/N_2006 ));
    DFN1E1 \adc081s101_0/cntrWaitTrailing[1]  (.D(\adc081s101_0/N_136 )
        , .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitTrailinge ), .Q(
        \adc081s101_0/cntrWaitTrailing[1]_net_1 ));
    NOR3B \stonyman_0/substate_i_0_RNO_47[0]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(\stonyman_0/N_508 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2418 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[19]  (.A(
        \psram_cr_0/cr_int_i0/N_267 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[19]_net_1 ));
    DFN1E1 \adc081s101_0/cntrWaitQuiet[1]  (.D(\adc081s101_0/N_139 ), 
        .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitQuiete ), .Q(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[0]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[0]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[0]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[7]  (.A(
        \psram_cr_0/data_to_cr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[7] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[7] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[23]  (.A(
        \psram_cr_0/ahb0/N_234 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[23]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_9_sqmuxa_0_a2_2  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ));
    NOR3C \stonyman_0/state_RNIVVHK[6]  (.A(CAPTURE_c), .B(
        \inputConditioner_0.conditioner[5] ), .C(
        \stonyman_0/state[6]_net_1 ), .Y(
        \stonyman_0/counterPixelsCaptured_1_sqmuxa ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[6]  (.A(
        \psram_cr_0/ahb0/haddr_reg[6]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[6] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_175 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[7] ));
    DFN1 \psram_cr_0/ahb0/data_out[4]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[4]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[4]_net_1 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[0]  (.A(
        \psram_cr_0/ahb0/N_211 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[0]_net_1 ));
    OR2A \stonyman_0/state_RNIOBPF1[7]  (.A(
        \stonyman_0/state[7]_net_1 ), .B(\stonyman_0/N_2442 ), .Y(
        \stonyman_0/N_2294 ));
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
    OR3A \stonyman_0/counterWait_RNIFL77A5[4]  (.A(
        \stonyman_0/counterWait[4]_net_1 ), .B(
        \stonyman_0/substate_i_0_RNIPT1NK1[0]_net_1 ), .C(
        \stonyman_0/DIN_REG1_RNIBUL4L3[0] ), .Y(\stonyman_0/N_3749 ));
    IOPAD_TRI \psram_address_pad[22]/U0/U0  (.D(
        \psram_address_pad[22]/U0/NET1 ), .E(
        \psram_address_pad[22]/U0/NET2 ), .PAD(psram_address[22]));
    AO1A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[3]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[3]_net_1 )
        , .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[3] )
        );
    OR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_37));
    OR2A \stonyman_0/counterWait_RNIL1ME[7]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[7]_net_1 )
        , .Y(\stonyman_0/counterWait_2[7] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[4]  (.A(
        \psram_cr_0/data_to_cr[4] ), .B(\psram_cr_0/reg_addr[4] ), .S(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_160 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(N_33), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_224 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[9]  (.A(
        \psram_cr_0/ahb0/N_268 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[9]_net_1 ));
    NOR2A \stonyman_0/counterWait_RNO_14[1]  (.A(
        \stonyman_0/d_m2_0_a2_0 ), .B(\stonyman_0/N_390 ), .Y(
        \stonyman_0/counterWait_RNO_14[1]_net_1 ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNIK1OR2[12]  
        (.A(\CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_84 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[3] ));
    NOR3C \stonyman_0/state_RNO_0[3]  (.A(\stonyman_0/state[3]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\stonyman_0/N_377 ), .Y(
        \stonyman_0/N_605 ));
    XOR2 \adc081s101_0/cntrWaitQuiet_RNO_0[1]  (.A(
        \adc081s101_0/cntrWaitQuiet[1]_net_1 ), .B(
        \adc081s101_0/cntrWaitQuiet[0]_net_1 ), .Y(
        \adc081s101_0/N_52_i ));
    IOPAD_BI \psram_data_pad[6]/U0/U0  (.D(\psram_data_pad[6]/U0/NET1 )
        , .E(\psram_data_pad[6]/U0/NET2 ), .Y(
        \psram_data_pad[6]/U0/NET3 ), .PAD(psram_data[6]));
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
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[5]  (.A(
        \psram_cr_0/reg_addr[5] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[5] ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[31]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[31] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[31] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[17]  (.A(
        \psram_cr_0/ahb0/operation[17]_net_1 ), .B(N_41), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_196 ));
    NOR2A \stonyman_0/state_RNO_3[7]  (.A(\stonyman_0/N_3328_2 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_3325 ));
    NOR2 \stonyman_0/state_RNI9V96[10]  (.A(
        \stonyman_0/state[10]_net_1 ), .B(\stonyman_0/state[11]_net_1 )
        , .Y(\stonyman_0/N_1934_4 ));
    NOR3B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[3]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_1[3] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[3] ));
    OR3 \stonyman_0/un5_counterWait_I_64  (.A(
        \stonyman_0/DWACT_FDEC_E[28] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[16] ), .Y(\stonyman_0/N_9 ));
    DFN1 \stonyman_0/incp  (.D(\stonyman_0/N_28 ), .CLK(SCLK_c), .Q(
        incp_c));
    OAI1 \stonyman_0/state_RNO_2[7]  (.A(\stonyman_0/N_3331 ), .B(
        \stonyman_0/state_tr25_32_0_i_0 ), .C(\stonyman_0/N_3291 ), .Y(
        \stonyman_0/state_ns_0_6[7] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_85  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[29]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[30]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[31]INT_NET ));
    NOR3 \stonyman_0/substate_RNO[11]  (.A(\stonyman_0/N_174 ), .B(
        \stonyman_0/substate_ns_i_0_0[11] ), .C(\stonyman_0/N_2341 ), 
        .Y(\stonyman_0/substate_RNO[11]_net_1 ));
    NOR3A \stonyman_0/counterWait_RNO_2[1]  (.A(\stonyman_0/N_411 ), 
        .B(\stonyman_0/resp_1_sqmuxa_1 ), .C(\stonyman_0/N_310 ), .Y(
        \stonyman_0/N_435 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[14]  (.A(
        \psram_address_c[14] ), .B(
        \psram_cr_0/cr_int_i0/address_5[14] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_262 ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_9  (.A(\stonyman_0/N_6_1 ), 
        .B(\stonyman_0/cachedValue[3] ), .Y(\stonyman_0/I_9_0 ));
    AO1 \stonyman_0/counterWait_RNO[28]  (.A(
        \stonyman_0/counterWait_2_m_0[28] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[28] ), .Y(
        \stonyman_0/counterWait_80[28] ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[6]  (.A(
        \psram_cr_0/cr_int_i0/N_162 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[6] ));
    NOR3A \stonyman_0/state_RNIB59SA[9]  (.A(\stonyman_0/N_1934_3 ), 
        .B(\stonyman_0/state_0_sqmuxa ), .C(\stonyman_0/N_332 ), .Y(
        \stonyman_0/N_2401 ));
    NOR3A \stonyman_0/counterWait_RNO_1[2]  (.A(
        \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_0_net_1 ), .B(
        \stonyman_0/un5_counterWait_m[2]_net_1 ), .C(
        \stonyman_0/counterWait_RNO_2[2]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_2_m2_0_a2_2 ));
    OA1 \stonyman_0/substate_i_0_RNO_13[0]  (.A(\stonyman_0/N_2401 ), 
        .B(\stonyman_0/substate_ns_0_o2_3_2_1[0] ), .C(
        \stonyman_0/substate_ns_0_a0_0[0] ), .Y(
        \stonyman_0/substate_i_0_RNO_13[0]_net_1 ));
    MX2 \stonyman_0/counterWait_RNO_2[7]  (.A(
        \stonyman_0/counterWait_2[7] ), .B(\stonyman_0/I_20 ), .S(
        \stonyman_0/N_194 ), .Y(\stonyman_0/counterWait_8[7] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_72  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD1DINT_NET )
        , .PIN5INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD0DINT_NET ), 
        .PIN6INT(\MSS_CORE2_0/MSS_ADLIB_INST/FABSDD2DINT_NET ), 
        .PIN1INT(\MSS_CORE2_0/MSS_ADLIB_INST/CMP3INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP4INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP5INT_NET ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[2]  (.A(
        \psram_address_c[2] ), .B(\psram_cr_0/cr_int_i0/address_5[2] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_250 ));
    NOR2B \stonyman_0/counterWait_RNO_0[16]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[16]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[16] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_79  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[11]INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[12]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[13]INT_NET ));
    AO1 \stonyman_0/counterWait_RNO_1[6]  (.A(\stonyman_0/I_17 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[6] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[6] ));
    NOR2B \stonyman_0/counterWait_RNO_0[8]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[8]_net_1 )
        , .Y(\stonyman_0/counterWait_2_m_0[8] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[8]  (.A(
        \psram_cr_0/ahb0/data_out[8]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[8] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_256 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[13]_net_1 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[3]  (.A(
        \psram_cr_0/data_to_cr[3] ), .B(N_637), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_246 ));
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
    AOI1B \stonyman_0/state_RNO_0[8]  (.A(\stonyman_0/N_3707 ), .B(
        \stonyman_0/substate_i[0] ), .C(
        \stonyman_0/state_ns_i_a2_0_i_0_a2_0[8] ), .Y(
        \stonyman_0/N_574 ));
    NOR2 \adc081s101_0/bitsRead_RNIFISH[3]  (.A(
        \adc081s101_0/bitsRead[3]_net_1 ), .B(CS_c), .Y(
        \adc081s101_0/dataout7_0_a3_0 ));
    AO1A \stonyman_0/state_RNO_3[8]  (.A(\stonyman_0/N_252 ), .B(
        \stonyman_0/state_ns_i_a2_0_i_0_a2_5_8_m2_e_2 ), .C(
        \stonyman_0/N_617 ), .Y(\stonyman_0/N_3707 ));
    NOR2B \stonyman_0/state_RNI0OJE[10]  (.A(
        \stonyman_0/un43_i_0_a2_0 ), .B(\stonyman_0/N_3514 ), .Y(
        \led_net_0_c[3] ));
    AOI1B \stonyman_0/substate_RNO_0[1]  (.A(\stonyman_0/state30 ), .B(
        \stonyman_0/substate_tr30_2_0 ), .C(
        \stonyman_0/substate_ns_i_8_1[1] ), .Y(
        \stonyman_0/substate_ns_i_6[1] ));
    AO1 \stonyman_0/counterWait_RNO_1[19]  (.A(
        \stonyman_0/counterWait_8[19] ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[19] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[19] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIHI161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[29] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[29] ));
    AO1A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO  (.A(
        \psram_cr_0/cr_int_i0/ac_countere ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_96 ), .Y(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_RNO_net_1 ));
    NOR2B \stonyman_0/substate_RNO_1[16]  (.A(
        \stonyman_0/substate[15]_net_1 ), .B(
        \stonyman_0/state[10]_net_1 ), .Y(\stonyman_0/N_168 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[6]  (.A(
        \psram_cr_0/reg_addr[6] ), .B(\psram_cr_0/data_to_cr[6] ), .S(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_162 ));
    OR3 \stonyman_0/counterWait_RNO_4[4]  (.A(
        \stonyman_0/counterWait_RNO_7[4]_net_1 ), .B(
        \stonyman_0/counterWait_80_0_iv_i_0[4] ), .C(
        \stonyman_0/counterWait_RNO_9[4]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_1[4] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[22]  (.A(
        \psram_cr_0/ahb0/operation[22]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[22] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_30_sqmuxa_0_a2_0  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[18] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[19] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_101 ));
    NOR3B \stonyman_0/substate_i_0_RNO_40[0]  (.A(\stonyman_0/N_2289 ), 
        .B(\stonyman_0/N_2283_i_0 ), .C(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/N_2430 ));
    OR2 \stonyman_0/un5_counterWait_I_57  (.A(
        \stonyman_0/counterWait[18]_net_1 ), .B(
        \stonyman_0/counterWait[19]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[14] ));
    NOR3C \stonyman_0/state_i_RNO_25[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_1[0] ), .B(
        \stonyman_0/N_619 ), .C(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_0[0] ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_4_a1_3[0] ));
    NOR2B \stonyman_0/counterWait_RNO_0[11]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[11]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[11] ));
    NOR2B \psram_cr_0/cr_int_i0/start_0_0  (.A(\psram_cr_0/dt_req ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/start_0_0 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIPSEJ[14]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[14]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_0 ));
    NOR3C \stonyman_0/counterWait_RNO_2[18]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_53 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[18] ));
    OR2B \psram_cr_0/ahb0/dt_req_RNIPGR1  (.A(\psram_cr_0/dt_req ), .B(
        \psram_cr_0/dt_ack ), .Y(\psram_cr_0/ahb0/N_4 ));
    OR3 \stonyman_0/state_i_RNO_1[0]  (.A(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_5[0] ), .B(
        \stonyman_0/state_ns_i_0_a2_0_0_o2_4[0] ), .C(
        \stonyman_0/N_592 ), .Y(\stonyman_0/N_3710 ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[2]  (.A(\psram_cr_0/ahb0/N_245 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[2]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[29]  (.D(
        \psram_cr_0/ahb0/operation_RNO[29]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[29]_net_1 ));
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
    NOR2B \stonyman_0/counterWait_RNO_0[5]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(\stonyman_0/counterWait[5]_net_1 )
        , .Y(\stonyman_0/counterWait_2_m_0[5] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[5]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[5] ));
    DFN1 \psram_cr_0/ahb0/data_out[11]  (.D(
        \psram_cr_0/ahb0/data_out_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_out[11]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_2[5]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_14_0 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[5] ));
    DFN1 \psram_cr_0/ahb0/busy  (.D(\psram_cr_0/ahb0/N_24 ), .CLK(
        FAB_CLK), .Q(\psram_cr_0/ahb0/busy_net_1 ));
    NOR3A \stonyman_0/counterWait_RNIA31U2[27]  (.A(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_1 ), .B(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .C(
        \stonyman_0/N_3715 ), .Y(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_3 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[18]  (.A(
        \psram_cr_0/max_addr[18] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[18] ));
    NOR3B \stonyman_0/counterWait_RNO_3[15]  (.A(\stonyman_0/I_43 ), 
        .B(\stonyman_0/N_194 ), .C(
        \stonyman_0/counterWait_80_10_m2_e_2_RNI76MIB_net_1 ), .Y(
        \stonyman_0/counterWait_6_m[15] ));
    AO1 \stonyman_0/counterWait_RNO[5]  (.A(
        \stonyman_0/counterWait_2_m_0[5] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[5] ), .Y(
        \stonyman_0/counterWait_80[5] ));
    XNOR2 \stonyman_0/un5_counterWait_I_17  (.A(\stonyman_0/N_25 ), .B(
        \stonyman_0/counterWait[6]_net_1 ), .Y(\stonyman_0/I_17 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[1]  (.A(
        \psram_cr_0/ahb0/N_212 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[1]_net_1 ));
    NOR2B \stonyman_0/counterWait_RNO_0[25]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[25]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[25] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[25]  (.A(
        \psram_cr_0/ahb0/N_204 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[25]_net_1 ));
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
    XNOR2 \stonyman_0/un5_counterWait_I_20  (.A(\stonyman_0/N_24 ), .B(
        \stonyman_0/counterWait[7]_net_1 ), .Y(\stonyman_0/I_20 ));
    OR2 \stonyman_0/substate_i_0_RNO_34[0]  (.A(\stonyman_0/N_2353 ), 
        .B(\stonyman_0/N_2430 ), .Y(\stonyman_0/substate_ns_4[0] ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[10]  (.A(
        \psram_cr_0/reg_addr[10] ), .B(\psram_cr_0/data_to_cr[10] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
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
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIE6161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[26] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[26] ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[6]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[6] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[6] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[6] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[6] ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_5  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[5]_net_1 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[4]_net_1 )
        , .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0Il/CAHBLTOI1_i_a2_0_5_net_1 )
        );
    NOR2B \psram_cr_0/ahb0/data_out_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_265 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[6]_net_1 ));
    OR3 \stonyman_0/state_RNIBLG42[5]  (.A(
        \stonyman_0/un1_counterWait_2_sqmuxa_0 ), .B(
        \stonyman_0/counterWait_2_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_2_sqmuxa_5 ), .Y(
        \stonyman_0/un1_counterWait_2_sqmuxa_4 ));
    RAM512X18 \stonyman_0/cachedValue_tile_I_1  (.RADDR8(GLMUXINT_GND), 
        .RADDR7(GLMUXINT_GND), .RADDR6(GLMUXINT_GND), .RADDR5(
        GLMUXINT_GND), .RADDR4(GLMUXINT_GND), .RADDR3(GLMUXINT_GND), 
        .RADDR2(\stonyman_0/N_72 ), .RADDR1(\stonyman_0/N_70 ), 
        .RADDR0(\stonyman_0/N_68 ), .WADDR8(GLMUXINT_GND), .WADDR7(
        GLMUXINT_GND), .WADDR6(GLMUXINT_GND), .WADDR5(GLMUXINT_GND), 
        .WADDR4(GLMUXINT_GND), .WADDR3(GLMUXINT_GND), .WADDR2(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .WADDR1(
        \stonyman_0/cachedPOINTER[1]_net_1 ), .WADDR0(
        \stonyman_0/un31lto0 ), .WD17(GLMUXINT_GND), .WD16(
        GLMUXINT_GND), .WD15(GLMUXINT_GND), .WD14(GLMUXINT_GND), .WD13(
        GLMUXINT_GND), .WD12(GLMUXINT_GND), .WD11(GLMUXINT_GND), .WD10(
        GLMUXINT_GND), .WD9(GLMUXINT_GND), .WD8(GLMUXINT_GND), .WD7(
        \stonyman_0/state_RNI1EJ0M[6]_net_1 ), .WD6(
        \stonyman_0/state_RNITIDBJ[6]_net_1 ), .WD5(
        \stonyman_0/state_RNIRN7MG[6]_net_1 ), .WD4(
        \stonyman_0/state_RNIQMPBE[6]_net_1 ), .WD3(
        \stonyman_0/state_RNIQLB1C[6]_net_1 ), .WD2(
        \stonyman_0/state_RNIPD7N7[6]_net_1 ), .WD1(
        \stonyman_0/state_RNIRCPC5[6]_net_1 ), .WD0(
        \stonyman_0/DIN_REG1_RNIUBB23[0] ), .RW0(PLLEN_VCC), .RW1(
        GLMUXINT_GND), .WW0(PLLEN_VCC), .WW1(GLMUXINT_GND), .PIPE(
        GLMUXINT_GND), .REN(GLMUXINT_GND), .WEN(\stonyman_0/N_5_0 ), 
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
    NOR2 \stonyman_0/substate_RNI5UJT_0[5]  (.A(
        \stonyman_0/substate[5]_net_1 ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(\stonyman_0/led_2_c_1[2] ));
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
    OR3 \stonyman_0/un5_counterWait_I_8  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(\stonyman_0/N_28_0 ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[5]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[5]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0/data_from_cr[5] ));
    NOR2B \stonyman_0/substate_RNII9VI[9]  (.A(
        \stonyman_0/substate[9]_net_1 ), .B(
        \stonyman_0/state[9]_net_1 ), .Y(
        \stonyman_0/counterWait_1_sqmuxa_4_m3_0_a2_0 ));
    OR2 \stonyman_0/un5_counterWait_I_72  (.A(
        \stonyman_0/DWACT_FDEC_E[15] ), .B(
        \stonyman_0/DWACT_FDEC_E[17] ), .Y(
        \stonyman_0/DWACT_FDEC_E[18] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[26]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[26] ));
    NOR3A \stonyman_0/counterWait_RNO_2[9]  (.A(
        \stonyman_0/counterWait_80_0_iv_i_0 ), .B(
        \stonyman_0/counterWait_RNO_8[9]_net_1 ), .C(
        \stonyman_0/counterWait_RNINB7KH3[9]_net_1 ), .Y(
        \stonyman_0/counterWait_RNO_2[9]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_2[15]  (.A(
        \psram_cr_0/reg_addr[15] ), .B(\psram_cr_0/data_to_cr[15] ), 
        .S(\psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_171 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[27]  (.A(
        \psram_cr_0/ahb0/N_206 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[27]_net_1 ));
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
    NOR3B \stonyman_0/counterWait_RNO_0[4]  (.A(\stonyman_0/N_3749 ), 
        .B(\stonyman_0/N_310 ), .C(\stonyman_0/I_12 ), .Y(
        \stonyman_0/N_431 ));
    NOR3 \stonyman_0/counterWait_RNO_0[0]  (.A(
        \stonyman_0/un5_counterWait_m[0]_net_1 ), .B(
        \stonyman_0/counterWait_RNO_3[0]_net_1 ), .C(
        \stonyman_0/counterWait_6_m[0] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_m2_0_a2_1 ));
    AND3B \stonyman_0/substate_RNO_4[6]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(\stonyman_0/N_1546_tz ), 
        .C(\stonyman_0/N_549 ), .Y(\stonyman_0/substate_ns_i_a4_2[6] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I[13]_net_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[20] ));
    XNOR2 \stonyman_0/un5_counterWait_I_43  (.A(\stonyman_0/N_16 ), .B(
        \stonyman_0/counterWait[15]_net_1 ), .Y(\stonyman_0/I_43 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[12]  (.A(
        \psram_cr_0/reg_addr[12] ), .B(N_31), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_191 ));
    NOR2B \stonyman_0/cachedValue_tile_DIN_REG1_RNIPRJV4[0]  (.A(
        \stonyman_0/DIN_REG1_RNIS0EA2[0] ), .B(
        \stonyman_0/DIN_REG1_RNITQ5L2[2] ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_0 ));
    IOPAD_TRI \led_pad[6]/U0/U0  (.D(\led_pad[6]/U0/NET1 ), .E(
        \led_pad[6]/U0/NET2 ), .PAD(led[6]));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_172 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[3]_net_1 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[9]  (.A(
        \psram_address_c[9] ), .B(\psram_cr_0/cr_int_i0/address_5[9] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_257 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_71  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP0INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP1INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/CMP2INT_NET ));
    DFN1 \psram_cr_0/cr_int_i0/address[13]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[13]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[13] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_30[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[0] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_634));
    DFN1 \psram_cr_0/ahb0/psram_addr[19]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[19]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[19] ));
    AO1 \stonyman_0/counterWait_RNO[22]  (.A(
        \stonyman_0/counterWait_2_m_0[22] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[22] ), .Y(
        \stonyman_0/counterWait_80[22] ));
    OR3 \stonyman_0/state_RNID8GPI[7]  (.A(
        \stonyman_0/counterWait_80_0_iv_0_a2_2_0_tz[1] ), .B(
        \stonyman_0/N_138_i_i_i_o2_8 ), .C(\stonyman_0/N_3726 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_a2_2_0[1] ));
    IOPAD_TRI \led_pad[3]/U0/U0  (.D(\led_pad[3]/U0/NET1 ), .E(
        \led_pad[3]/U0/NET2 ), .PAD(led[3]));
    OR3 \stonyman_0/un5_counterWait_I_67  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[34] ));
    OR2A \adc081s101_0/bitsRead_RNIUGUP[3]  (.A(
        \adc081s101_0/bitsRead[3]_net_1 ), .B(
        \adc081s101_0/bitsRead[1]_net_1 ), .Y(
        \adc081s101_0/cntrWaitTrailinglde_0_o2_0 ));
    NOR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIS2AV6_0[1]  (.A(
        \stonyman_0/N_3741 ), .B(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/state39_0_a2_0 ));
    OR3 \stonyman_0/state_RNI2QEB[2]  (.A(\stonyman_0/state[11]_net_1 )
        , .B(\stonyman_0/state[2]_net_1 ), .C(
        \stonyman_0/state[5]_net_1 ), .Y(\stonyman_0/N_1548_tz ));
    NOR2B \stonyman_0/substate_RNICQN12[1]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_8_0 ), .B(
        \stonyman_0/un32lto2 ), .Y(\stonyman_0/N_190 ));
    IOTRI_OB_EB \psram_address_pad[21]/U0/U1  (.D(
        \psram_address_c[21] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[21]/U0/NET1 ), .EOUT(
        \psram_address_pad[21]/U0/NET2 ));
    NOR2 \stonyman_0/cachedValue_tile_I_1_RNI6MBA5_0  (.A(
        \stonyman_0/cachedValue[6] ), .B(\stonyman_0/cachedValue[7] ), 
        .Y(\stonyman_0/state21_0 ));
    XOR2 \stonyman_0/cachedValue_tile_WADDR_REG1_RNI3L8I[2]  (.A(
        \stonyman_0/WADDR_REG1[2] ), .B(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .Y(\stonyman_0/I_4_2 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_63  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC15GOODINT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/VCC33GOODINT_NET ), .PIN3INT(
        GLMUXINT_GND));
    NOR3A \stonyman_0/substate_RNIVR301[11]  (.A(\stonyman_0/N_2206 ), 
        .B(\stonyman_0/substate[13]_net_1 ), .C(
        \stonyman_0/substate[11]_net_1 ), .Y(
        \stonyman_0/un35_i_a2_0_a2_1[0] ));
    IOPAD_TRI \CS_pad/U0/U0  (.D(\CS_pad/U0/NET1 ), .E(
        \CS_pad/U0/NET2 ), .PAD(CS));
    AO1 \stonyman_0/counterWait_RNO_1[7]  (.A(
        \stonyman_0/counterWait_8[7] ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[7] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[7] ));
    NOR3C \psram_cr_0/ahb0/haddr_reg_RNI4MIN3[9]  (.A(
        \psram_cr_0/ahb0/N_97 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0_1 ), .C(
        \psram_cr_0/ahb0/N_84 ), .Y(\psram_cr_0/ahb0/N_57 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[11]  (.A(
        \psram_address_c[11] ), .B(
        \psram_cr_0/cr_int_i0/address_5[11] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_259 ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_RNI8BOQ  (.A(
        MSS_CORE2_0_MSS_MASTER_AHB_LITE_HLOCK), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl1lI_net_1 ), .S(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ));
    OR3 \stonyman_0/state_RNO_13[7]  (.A(\stonyman_0/N_3716 ), .B(
        \stonyman_0/state_ns_0_9_tz_0[7] ), .C(
        \stonyman_0/state_ns_0_9_tz_2[7] ), .Y(
        \stonyman_0/state_ns_0_9_tz_3[7] ));
    AO1 \stonyman_0/counterWait_RNO[15]  (.A(
        \stonyman_0/counterWait_2[15] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_1[15] ), .Y(
        \stonyman_0/counterWait_80[15] ));
    OA1A \stonyman_0/substate_RNIC1TN1[8]  (.A(
        \stonyman_0/led_2_c_1[2] ), .B(\stonyman_0/substate[8]_net_1 ), 
        .C(\stonyman_0/N_1548_tz ), .Y(
        \stonyman_0/substate_RNIC1TN1[8]_net_1 ));
    NOR3 \stonyman_0/counterWait_RNIS1791[27]  (.A(
        \stonyman_0/substate[2]_net_1 ), .B(
        \stonyman_0/counterWait[27]_net_1 ), .C(
        \stonyman_0/N_262_i_0_o2_0 ), .Y(
        \stonyman_0/state_ns_0_0_0_o2_3_6_m4_e_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNI9E061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[30] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[30] ));
    NOR3A \stonyman_0/state_i_RNI735OG1[0]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_m1_e_0 ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_6_5_4 ), .Y(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ));
    DFN1 \stonyman_0/counterWait[15]  (.D(
        \stonyman_0/counterWait_80[15] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[15]_net_1 ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/max_addr[29] ), .B(N_65), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_240 ));
    NOR3A \stonyman_0/substate_RNO_17[1]  (.A(
        \stonyman_0/substate_ns_i_a4_2_2_0[1] ), .B(
        \stonyman_0/N_2298 ), .C(\stonyman_0/N_1546_tz ), .Y(
        \stonyman_0/substate_ns_i_a4_2_2[1] ));
    OR3 \stonyman_0/un5_counterWait_I_30  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/DWACT_FDEC_E[5] ), .Y(
        \stonyman_0/DWACT_FDEC_E[6] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI0I8K[3]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[3] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[3]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ));
    AOI1 \stonyman_0/substate_RNO[7]  (.A(
        \stonyman_0/substate_ns_i_a4_0[7] ), .B(\stonyman_0/N_2338 ), 
        .C(\stonyman_0/substate_ns_i_2[7] ), .Y(
        \stonyman_0/substate_RNO[7]_net_1 ));
    AO1A \stonyman_0/incp_RNO_1  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/N_100_i_i_0_a2_0 ), .C(\stonyman_0/N_635 ), .Y(
        \stonyman_0/N_3581 ));
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
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_29[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[1] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_635));
    DFN1 \psram_cr_0/cr_int_i0/address[17]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[17]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[17] ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_226 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[15]_net_1 ));
    NOR2A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_4[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[0]_net_1 )
        , .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_99 ));
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
    XA1C \stonyman_0/cachedValue_tile_WADDR_REG1_RNI0AH41[0]  (.A(
        \stonyman_0/WADDR_REG1[0] ), .B(\stonyman_0/un31lto0 ), .C(
        \stonyman_0/I_4_1 ), .Y(\stonyman_0/I_5_1 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[14]  (.D(
        \psram_cr_0/cr_int_i0/N_48 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[14] ));
    NOR3 \stonyman_0/substate_RNILM9H[10]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(
        \stonyman_0/substate[10]_net_1 ), .C(
        \stonyman_0/substate[12]_net_1 ), .Y(\stonyman_0/N_2204 ));
    DFN1 \psram_cr_0/ahb0/operation[16]  (.D(
        \psram_cr_0/ahb0/operation_RNO[16]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/dt_rw ));
    NOR3C \stonyman_0/substate_i_0_RNO_11[0]  (.A(\stonyman_0/N_2415 ), 
        .B(\stonyman_0/substate_i[0] ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_2410 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNINCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[1] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[1] ));
    MX2 \psram_cr_0/ahb0/haddr_reg_RNO_0[7]  (.A(
        \psram_cr_0/ahb0/haddr_reg[7]_net_1 ), .B(
        \CoreAHBLite_0_AHBmslave5_HADDR[7] ), .S(
        \psram_cr_0/ahb0/fsm_0_sqmuxa ), .Y(\psram_cr_0/ahb0/N_176 ));
    MX2 \stonyman_0/counterWait_RNO_2[15]  (.A(
        \stonyman_0/counterWait_2[15] ), .B(\stonyman_0/I_43 ), .S(
        \stonyman_0/N_194 ), .Y(\stonyman_0/counterWait_8[15] ));
    IOPAD_TRI \psram_address_pad[4]/U0/U0  (.D(
        \psram_address_pad[4]/U0/NET1 ), .E(
        \psram_address_pad[4]/U0/NET2 ), .PAD(psram_address[4]));
    OR2 \adc081s101_0/bitsRead_RNIS8UP[2]  (.A(
        \adc081s101_0/bitsRead[2]_net_1 ), .B(
        \adc081s101_0/bitsRead[0]_net_1 ), .Y(
        \adc081s101_0/cntrWaitTrailinglde_0_o2_1 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[0]  (.A(
        \psram_cr_0/cr_int_i0/N_248 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[0]_net_1 ));
    DFN1E1 \adc081s101_0/cntrWaitTrailing[0]  (.D(\adc081s101_0/N_135 )
        , .CLK(SCLK_c), .E(\adc081s101_0/cntrWaitTrailinge ), .Q(
        \adc081s101_0/cntrWaitTrailing[0]_net_1 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[10]  (.A(
        \psram_cr_0/ahb0/data_out[10]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_5_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[10] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[25]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[25]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/max_addr[25] ));
    AO1B \psram_cr_0/ahb0/hrdata_reg_RNO_0[13]  (.A(
        \psram_cr_0/ahb0/data_out[13]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_111 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[13] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[20]  (.A(
        \psram_cr_0/max_addr[20] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[20] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[20] ));
    NOR2A \stonyman_0/substate_RNI1EMI5[6]  (.A(
        \stonyman_0/un1_substate_8_sqmuxa ), .B(
        \stonyman_0/substate[6]_net_1 ), .Y(\stonyman_0/N_635 ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[1]  (.D(
        \psram_cr_0/cr_int_i0/data_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_cr_0.cr_int_i0.data_reg[1] ));
    OR3 \stonyman_0/substate_RNIUCS35[1]  (.A(\stonyman_0/N_190 ), .B(
        \stonyman_0/N_189 ), .C(\stonyman_0/N_192 ), .Y(
        \stonyman_0/un1_substate_8_sqmuxa ));
    IOTRI_OB_EB \psram_address_pad[10]/U0/U1  (.D(
        \psram_address_c[10] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[10]/U0/NET1 ), .EOUT(
        \psram_address_pad[10]/U0/NET2 ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[12]  (.A(
        \psram_address_c[12] ), .B(
        \psram_cr_0/cr_int_i0/address_5[12] ), .S(
        \psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_260 ));
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
    NOR3B \psram_cr_0/ahb0/hready_reg_RNI983D2  (.A(
        \psram_cr_0/ahb0/hwrite_reg4_0 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTl0ll[0] ), .Y(
        \psram_cr_0/ahb0/hwrite_reg4_2 ));
    NOR3A \stonyman_0/substate_i_0_RNO_38[0]  (.A(
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_4 ), .B(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .C(
        \stonyman_0/N_320 ), .Y(
        \stonyman_0/substate_ns_0_a2_5_0_m4_e_5 ));
    OR3 \stonyman_0/state_RNO_7[7]  (.A(\stonyman_0/state_ns_0_0[7] ), 
        .B(\stonyman_0/state_ns_0_1[7] ), .C(
        \stonyman_0/state_ns_0_3[7] ), .Y(
        \stonyman_0/state_ns_0_3_0[7] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[6]  (.A(
        \psram_cr_0/cr_int_i0/N_254 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[6]_net_1 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[30]  (.A(
        \psram_cr_0/ahb0/operation[30]_net_1 ), .B(N_67), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_209 ));
    NOR2B \stonyman_0/substate_i_0_RNO_45[0]  (.A(
        \stonyman_0/N_1933_1 ), .B(\stonyman_0/substate_tr13_2_0 ), .Y(
        \stonyman_0/substate_tr13_2_1 ));
    NOR3 \stonyman_0/state_RNIVGJG[5]  (.A(\stonyman_0/state[7]_net_1 )
        , .B(\stonyman_0/state[5]_net_1 ), .C(\stonyman_0/N_1546_tz ), 
        .Y(\stonyman_0/N_638 ));
    NOR3C \stonyman_0/substate_RNI36JL2[9]  (.A(
        \stonyman_0/un1_substate35_i_a2_1 ), .B(\stonyman_0/N_2206 ), 
        .C(\stonyman_0/led_2_c_1[2] ), .Y(
        \stonyman_0/un1_substate35_i_a2_3 ));
    MX2 \psram_cr_0/cr_int_i0/noe0_RNO_0  (.A(psram_noe0_c), .B(
        \psram_cr_0/cr_int_i0/noe0_5 ), .S(
        \psram_cr_0/cr_int_i0/N_347 ), .Y(\psram_cr_0/cr_int_i0/N_229 )
        );
    NOR3C \stonyman_0/state_RNO_2[8]  (.A(\stonyman_0/N_620 ), .B(
        \stonyman_0/state[7]_net_1 ), .C(\stonyman_0/N_623 ), .Y(
        \stonyman_0/N_575 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[1]  (.A(
        \psram_cr_0/data_from_cr[1] ), .B(
        \psram_cr_0/ahb0/data_out[1]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_260 ));
    NOR2B \stonyman_0/substate_RNIGP3N[6]  (.A(\stonyman_0/N_1546_tz ), 
        .B(\stonyman_0/substate[6]_net_1 ), .Y(\stonyman_0/N_187 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[13]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[13] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[13] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNI7HF6A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1ll ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        CoreAHBLite_0_AHBmslave5_HWRITE));
    OR3 \stonyman_0/un5_counterWait_I_29  (.A(
        \stonyman_0/counterWait[6]_net_1 ), .B(
        \stonyman_0/counterWait[7]_net_1 ), .C(
        \stonyman_0/counterWait[8]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[5] ));
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
    OR2 \stonyman_0/substate_i_0_RNO_37[0]  (.A(
        \stonyman_0/substate[10]_net_1 ), .B(
        \stonyman_0/substate[5]_net_1 ), .Y(\stonyman_0/N_2329 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[6]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[6] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[6] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[28]  (.A(
        \psram_cr_0/ahb0/operation[28]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[28] ));
    OR3A \stonyman_0/counterWait_RNO_4[1]  (.A(\stonyman_0/N_312 ), .B(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_2[1] ), .C(
        \stonyman_0/counterWait_RNO_6[1]_net_1 ), .Y(
        \stonyman_0/N_411 ));
    MX2 \psram_cr_0/cr_int_i0/data_out_RNO_0[11]  (.A(
        \psram_cr_0/data_from_cr[11] ), .B(\psram_data_in[11] ), .S(
        \psram_cr_0/cr_int_i0/data_out_0_sqmuxa ), .Y(
        \psram_cr_0/cr_int_i0/N_242 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[24]  (.A(
        \psram_cr_0/max_addr[24] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/N_61_0 ));
    AO1A \stonyman_0/substate_RNO_2[3]  (.A(\stonyman_0/state39 ), .B(
        \stonyman_0/substate_tr30_0_0 ), .C(\stonyman_0/N_2005 ), .Y(
        \stonyman_0/substate_ns_0_4[3] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[8]  (.A(
        \psram_cr_0/max_addr[8] ), .B(N_23), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_219 ));
    NOR2 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIJ4EJ[11]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[12]_net_1 ), 
        .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[11]_net_1 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOOII_0_i_a2_1_3 ));
    NOR3C \psram_cr_0/cr_int_i0/dt_ack_RNO  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/cr_int_i0/N_22 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[4]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[4] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[4] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[4] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[4] ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_2[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[2] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[2] ));
    OR2 \stonyman_0/state_RNIKPD64[1]  (.A(
        \stonyman_0/un1_counterWait_2_sqmuxa_4 ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa_3 ), .Y(
        \stonyman_0/un1_counterWait_2_sqmuxa ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[22]  (.A(
        \psram_cr_0/max_addr[22] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .C(
        \psram_cr_0/ahb0/operation_m[22] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[22] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI2AQ52[12]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[12] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[13] ), .C(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[7] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[11]  (.A(
        \psram_cr_0/data_from_cr[11] ), .B(
        \psram_cr_0/ahb0/data_out[11]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_270 ));
    NOR2 \stonyman_0/substate_RNIJRPOJ[7]  (.A(
        \stonyman_0/resp_0_sqmuxa ), .B(
        \stonyman_0/un1_state_0_sqmuxa_1_3_0 ), .Y(
        \stonyman_0/un1_state_0_sqmuxa_1_3_m2_0 ));
    DFN1 \psram_cr_0/ahb0/operation[9]  (.D(
        \psram_cr_0/ahb0/operation_RNO[9]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[9] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[18]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[18] ));
    NOR3B \stonyman_0/state_RNIL28H1[3]  (.A(
        \stonyman_0/substate_tr13_3_10_0 ), .B(\led_net_0_c[3] ), .C(
        \stonyman_0/counterPixelsCaptured_1_sqmuxa ), .Y(
        \stonyman_0/N_1933_10 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[0]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[0] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[0] ));
    IOTRI_OB_EB \psram_address_pad[14]/U0/U1  (.D(
        \psram_address_c[14] ), .E(PLLEN_VCC), .DOUT(
        \psram_address_pad[14]/U0/NET1 ), .EOUT(
        \psram_address_pad[14]/U0/NET2 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[24]  (.A(
        \psram_cr_0/ahb0/N_203 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[24]_net_1 ));
    NOR2A \stonyman_0/substate_RNO_10[3]  (.A(
        \stonyman_0/substate[3]_net_1 ), .B(\stonyman_0/N_109 ), .Y(
        \stonyman_0/substate_ns_0_a4_1_0[3] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[1]  (.A(
        \psram_address_c[1] ), .B(\psram_cr_0/cr_int_i0/address_5[1] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_249 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[13]  (.A(
        \psram_cr_0/ahb0/N_224 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[13]_net_1 ));
    OR3 \psram_cr_0/ahb0/hrdata_reg_RNO[0]  (.A(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[0] ), .B(
        \psram_cr_0/ahb0/psram_addr_m[0] ), .C(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_1[0] ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[0] ));
    DFN1 \psram_cr_0/cr_int_i0/address[20]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[20]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[20] ));
    AND2 \stonyman_0/un2_cachedValue_1_I_15  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/N_2929_li ), .Y(
        \stonyman_0/DWACT_FINC_E[1] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[15]  (.A(
        \psram_cr_0/max_addr[15] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[15] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_23[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[7] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_21));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[3]  (.A(
        \psram_cr_0/ahb0/N_262 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[3]_net_1 ));
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE1  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN5(), .PIN2INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/EXTFB_INT ), .PIN3INT(), 
        .PIN4INT(), .PIN1INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/LOCK_INT )
        , .PIN5INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLA_INT ));
    DFN1 \stonyman_0/counterWait[16]  (.D(
        \stonyman_0/counterWait_80[16] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[16]_net_1 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[5]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[5]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNIOCR51[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[2] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[2] ));
    OA1 \stonyman_0/un5_counterWait_m[3]  (.A(
        \stonyman_0/un1_state_0_sqmuxa ), .B(
        \stonyman_0/un1_counterWait_4_sqmuxa ), .C(\stonyman_0/I_9 ), 
        .Y(\stonyman_0/un5_counterWait_m[3]_net_1 ));
    AO1A \stonyman_0/cachedValue_tile_I_1_RNIF2J82  (.A(
        \stonyman_0/I_5_0 ), .B(\stonyman_0/DOUT_TMP[3] ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_0 )
        , .Y(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_3_m5_i_1 )
        );
    NOR3B \psram_cr_0/ahb0/haddr_reg_RNIS5013[4]  (.A(
        \psram_cr_0/ahb0/N_84 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_0_sqmuxa_i_a2_0 ), .C(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_56 ));
    NOR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNIVHV9A_0[0]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_5_m4_e_0 ), .B(
        \stonyman_0/N_209 ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_0tt_1_m3_0_a3_0_0 ));
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
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_14[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[22] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_51));
    DFN1 \psram_cr_0/cr_int_i0/address[9]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[9]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[9] ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[8] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[8]_net_1 ));
    NOR3C \stonyman_0/counterWait_RNO_2[27]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_86 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[27] ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_58  (.PIN4(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTIlO0l.CAHBLTlOII_iv ), .PIN5(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[31] ), .PIN6(N_71), 
        .PIN1(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[31] ), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHREADYINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRDATA[31]INT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHRESPINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/MSSHWDATA[31]INT_NET ), .PIN2INT(
        GLMUXINT_GND), .PIN3INT(GLMUXINT_GND));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]  (
        .D(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[15] )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[15]_net_1 ));
    DFN1 \stonyman_0/state[4]  (.D(\stonyman_0/N_83 ), .CLK(SCLK_c), 
        .Q(\stonyman_0/state[4]_net_1 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[1]  (.A(
        \psram_cr_0/reg_addr[1] ), .B(N_635), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_180 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[13]  (.A(
        \psram_cr_0/data_from_cr[13] ), .B(
        \psram_cr_0/ahb0/data_out[13]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_272 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNIT870A[6]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[3] ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTI1O0l.CAHBLTI1Il6 ), .Y(
        \CoreAHBLite_0_AHBmslave5_HADDR[3] ));
    OR2B \stonyman_0/state_RNO_2[1]  (.A(\stonyman_0/state[1]_net_1 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \stonyman_0/state_ns_i_a2_0_0_0_0_tz[1] ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[4]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[4]_net_1 )
        );
    AO1A \stonyman_0/state_RNO[3]  (.A(\stonyman_0/N_383 ), .B(
        \stonyman_0/state[2]_net_1 ), .C(\stonyman_0/N_605 ), .Y(
        \stonyman_0/N_647 ));
    OA1A \stonyman_0/counterWait_RNO_8[9]  (.A(MSS_CORE2_0_M2F_RESET_N)
        , .B(\stonyman_0/counterWait[9]_net_1 ), .C(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .Y(
        \stonyman_0/counterWait_RNO_8[9]_net_1 ));
    DFN1C0 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]  
        (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[7]_net_1 )
        , .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI[7]_net_1 )
        );
    NOR2 \stonyman_0/counterWait_RNO_7[9]  (.A(\stonyman_0/I_26 ), .B(
        \stonyman_0/counterWait_RNIP6UA2[9]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_0 ));
    OR3 \stonyman_0/un5_counterWait_I_39  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(\stonyman_0/DWACT_FDEC_E[7] )
        , .C(\stonyman_0/DWACT_FDEC_E[8] ), .Y(\stonyman_0/N_17 ));
    MSS_CCC_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE0  (.PIN2(
        GLMUXINT_GND), .PIN3(GLMUXINT_GND), .PIN4(GLMUXINT_GND), .PIN1(
        ), .PIN2INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDIN_INT ), 
        .PIN3INT(\MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SCLK_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SSHIFT_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SDOUT_INT ));
    OR3 \stonyman_0/substate_RNO_4[1]  (.A(
        \stonyman_0/substate_ns_i_0[1] ), .B(\stonyman_0/N_2362 ), .C(
        \stonyman_0/N_2358 ), .Y(\stonyman_0/substate_ns_i_2[1] ));
    NOR3C \stonyman_0/counterWait_RNO_1[3]  (.A(
        \stonyman_0/counterWait[3]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .C(\stonyman_0/un1_counterWait_3_sqmuxa_7 ), .Y(
        \stonyman_0/counterWait_2_m[3] ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO_0[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO01 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_92 ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTO1lII ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 ));
    DFN1 \psram_cr_0/ahb0/haddr_reg[1]  (.D(
        \psram_cr_0/ahb0/haddr_reg_RNO[1]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/haddr_reg[1]_net_1 ));
    DFN1 \stonyman_0/state[6]  (.D(\stonyman_0/state_ns[6] ), .CLK(
        SCLK_c), .Q(\stonyman_0/state[6]_net_1 ));
    AOI1B \stonyman_0/substate_i_0_RNO_30[0]  (.A(
        \stonyman_0/substate_ns_0_a2_7_3[0] ), .B(\stonyman_0/N_2437 ), 
        .C(\stonyman_0/N_2329 ), .Y(\stonyman_0/substate_ns_0_a4_0[0] )
        );
    AO1 \stonyman_0/state_RNIFAGN1[4]  (.A(\stonyman_0/N_316 ), .B(
        \stonyman_0/N_2318 ), .C(\stonyman_0/substate_0_sqmuxa_4 ), .Y(
        \stonyman_0/N_386 ));
    NOR2A \stonyman_0/counterWait_RNII60C1[26]  (.A(
        \stonyman_0/state_0_sqmuxa_m2_e_0 ), .B(
        \stonyman_0/state_ns_i_a2_i_a2_0_38_0_a2_0_o2_0[3] ), .Y(
        \stonyman_0/state_0_sqmuxa_m2_e_1 ));
    OR3 \stonyman_0/un5_counterWait_I_88  (.A(
        \stonyman_0/DWACT_FDEC_E[24] ), .B(
        \stonyman_0/DWACT_FDEC_E[23] ), .C(
        \stonyman_0/counterWait[27]_net_1 ), .Y(\stonyman_0/N_3 ));
    DFN1 \stonyman_0/counterWait[0]  (.D(
        \stonyman_0/counterWait_RNO[0]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[0]_net_1 ));
    OR2 \stonyman_0/counterWait_RNINVU29[26]  (.A(
        \stonyman_0/N_138_i_i_i_o2_8 ), .B(\stonyman_0/N_3726 ), .Y(
        \stonyman_0/counterWait_RNINVU29[26]_net_1 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_68  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10ENINT_NET ), .PIN5INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9ENINT_NET ), .PIN6INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11ENINT_NET ), .PIN1INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL9INT_NET ), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL10INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/LVTTL11INT_NET ));
    NOR3A \stonyman_0/state_RNO_8[7]  (.A(\stonyman_0/state21_2 ), .B(
        \stonyman_0/cachedValue[0] ), .C(\stonyman_0/cachedValue[2] ), 
        .Y(\stonyman_0/N_3331 ));
    MX2C \stonyman_0/cachedValue_tile_DIN_REG1_RNIRQ5L2[1]  (.A(
        \stonyman_0/I_1_RNIQFOH ), .B(\stonyman_0/DIN_REG1_RNIV3N3[1] )
        , .S(\stonyman_0/N_3620_i_0_o2_N_8_i_0_li ), .Y(
        \stonyman_0/N_3741 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNIJSHG[1]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(CoreAHBLite_0_AHBmslave5_HREADY), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTOO0II ));
    AOI1B \stonyman_0/state_RNIVVHK_0[6]  (.A(
        \inputConditioner_0.conditioner[5] ), .B(CAPTURE_c), .C(
        \stonyman_0/state[6]_net_1 ), .Y(\stonyman_0/N_2277_i_1 ));
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
    OR3 \stonyman_0/un5_counterWait_I_50  (.A(
        \stonyman_0/counterWait[15]_net_1 ), .B(
        \stonyman_0/counterWait[16]_net_1 ), .C(
        \stonyman_0/counterWait[17]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[12] ));
    DFN1 \psram_cr_0/ahb0/operation[15]  (.D(
        \psram_cr_0/ahb0/operation_RNO[15]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/reg_addr[15] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[23]  (.A(
        \psram_cr_0/max_addr[23] ), .B(N_53), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_234 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[2]  (.A(
        \psram_cr_0/cr_int_i0/N_250 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[2]_net_1 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[27]  (.A(
        \psram_cr_0/ahb0/operation[27]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[27] ));
    NOR2B \stonyman_0/substate_RNO_11[1]  (.A(\stonyman_0/N_2321 ), .B(
        \stonyman_0/N_194 ), .Y(\stonyman_0/N_2358 ));
    IOPAD_BI \psram_data_pad[3]/U0/U0  (.D(\psram_data_pad[3]/U0/NET1 )
        , .E(\psram_data_pad[3]/U0/NET2 ), .Y(
        \psram_data_pad[3]/U0/NET3 ), .PAD(psram_data[3]));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[24]  (.A(
        \psram_cr_0/ahb0/operation[24]_net_1 ), .B(N_55), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_203 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[9]  (.A(
        \psram_cr_0/max_addr[9] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[9] ));
    MX2 \psram_cr_0/cr_int_i0/address_RNO_0[6]  (.A(
        \psram_address_c[6] ), .B(\psram_cr_0/cr_int_i0/address_5[6] ), 
        .S(\psram_cr_0/cr_int_i0/un1_op_counter_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_254 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[14]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_101 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[14] ));
    AO1 \stonyman_0/substate_RNO_7[3]  (.A(
        \stonyman_0/substate_ns_0_a4_1_0[3] ), .B(
        \stonyman_0/state_RNIU93R9[6]_net_1 ), .C(\stonyman_0/N_2377 ), 
        .Y(\stonyman_0/substate_ns_0_0[3] ));
    NOR2A \stonyman_0/state_RNI4DUI[2]  (.A(
        \stonyman_0/state[2]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(\stonyman_0/N_612 ));
    NOR2A \adc081s101_0/conversionComplete_RNO_0  (.A(
        adcStartCapture_c), .B(adcConvComplete_c), .Y(
        \adc081s101_0/conversionComplete_1_0_a3_0 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[26]  (.A(
        \psram_cr_0/ahb0/N_237 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[26]_net_1 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[11]  (.A(
        \psram_cr_0/ahb0/N_190 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[11]_net_1 ));
    AO1 \psram_cr_0/ahb0/dt_req_RNO  (.A(\psram_cr_0/ahb0/operation5 ), 
        .B(MSS_CORE2_0_M2F_RESET_N), .C(\psram_cr_0/ahb0/N_65_0 ), .Y(
        \psram_cr_0/ahb0/dt_req_RNO_net_1 ));
    IOTRI_OB_EB \psram_address_pad[7]/U0/U1  (.D(\psram_address_c[7] ), 
        .E(PLLEN_VCC), .DOUT(\psram_address_pad[7]/U0/NET1 ), .EOUT(
        \psram_address_pad[7]/U0/NET2 ));
    NOR3C \stonyman_0/state_RNIPD7N7[6]  (.A(\stonyman_0/N_1816 ), .B(
        \stonyman_0/un43_i_0_a2_2 ), .C(\stonyman_0/I_7_0 ), .Y(
        \stonyman_0/state_RNIPD7N7[6]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO_1[8]  (.A(\stonyman_0/I_23 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[8] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[8] ));
    IOTRI_OB_EB \led_pad[1]/U0/U1  (.D(\led_2_c[1] ), .E(PLLEN_VCC), 
        .DOUT(\led_pad[1]/U0/NET1 ), .EOUT(\led_pad[1]/U0/NET2 ));
    OA1 \stonyman_0/state_RNIM0MF[3]  (.A(
        \stonyman_0/substate[13]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(
        \stonyman_0/state[3]_net_1 ), .Y(
        \stonyman_0/counterWait_2_sqmuxa_3 ));
    NOR2 \stonyman_0/substate_RNO_0[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/state[1]_net_1 ), .Y(
        \stonyman_0/substate_ns_i_a4_0[7] ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[20]  (.A(
        \psram_cr_0/ahb0/N_199 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[20]_net_1 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_9[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[27] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_61));
    NOR2B \stonyman_0/counterWait_RNO_0[26]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[26]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[26] ));
    DFN1 \stonyman_0/cachedValue_tile_DIN_REG1[7]  (.D(
        \stonyman_0/state_RNI1EJ0M[6]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/DIN_REG1[7] ));
    DFN1 \psram_cr_0/cr_int_i0/data_out[12]  (.D(
        \psram_cr_0/cr_int_i0/data_out_RNO_0[12]_net_1 ), .CLK(FAB_CLK)
        , .Q(\psram_cr_0/data_from_cr[12] ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTOO0l[1] ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        CoreAHBLite_0_AHBmslave5_HREADY), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[8]  (.A(
        \stonyman_0/counterWait_2_m_0[8] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[8] ), .Y(
        \stonyman_0/counterWait_80[8] ));
    NOR2A \psram_cr_0/cr_int_i0/ac_counter_lb1_RNI1AOS2  (.A(
        \psram_cr_0/cr_int_i0/N_111 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_1_sqmuxa ));
    OR3 \stonyman_0/un5_counterWait_I_10  (.A(
        \stonyman_0/counterWait[0]_net_1 ), .B(
        \stonyman_0/counterWait[1]_net_1 ), .C(
        \stonyman_0/counterWait[2]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[0] ));
    OR3 \stonyman_0/counterWait_RNO[3]  (.A(
        \stonyman_0/un5_counterWait_m[3]_net_1 ), .B(
        \stonyman_0/counterWait_6_m[3] ), .C(
        \stonyman_0/counterWait_2_m[3] ), .Y(
        \stonyman_0/counterWait_80[3] ));
    OR3A \stonyman_0/state_i_RNIKGKNN4[0]  (.A(
        \stonyman_0/un1_state_0_sqmuxa_1_3_m2_0 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/state_i_RNI0AH5H3[0]_net_1 ), .Y(
        \stonyman_0/N_310 ));
    DFN1E1C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]  (.D(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[1] ), .CLK(FAB_CLK), 
        .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1lI ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[1]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[25]  (.A(
        \stonyman_0/counterWait_2_m_0[25] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[25] ), .Y(
        \stonyman_0/counterWait_80[25] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[7] ));
    NOR3C \stonyman_0/counterWait_RNO_2[22]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_65 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[22] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_11[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[25] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_57));
    DFN1 \stonyman_0/cachedPOINTER[0]  (.D(\stonyman_0/N_68 ), .CLK(
        SCLK_c), .Q(\stonyman_0/un31lto0 ));
    OR3 \stonyman_0/substate_RNIACC31[4]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(
        \stonyman_0/substate[10]_net_1 ), .C(
        \stonyman_0/substate[4]_net_1 ), .Y(\stonyman_0/N_3731 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO[24]  (.A(
        \psram_cr_0/ahb0/operation[24]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .C(
        \psram_cr_0/ahb0/N_61_0 ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17[24] ));
    OR3A \psram_cr_0/cr_int_i0/nwe_RNO_1  (.A(
        \psram_cr_0/cr_int_i0/N_67 ), .B(\psram_cr_0/cr_int_i0/N_76 ), 
        .C(\psram_cr_0/cr_int_i0/N_87 ), .Y(
        \psram_cr_0/cr_int_i0/nwe_5 ));
    OA1B \stonyman_0/state_RNO_5[7]  (.A(
        \stonyman_0/state_ns_0_10_tz_3[7] ), .B(
        \stonyman_0/state_ns_0_10_tz_4[7] ), .C(\stonyman_0/N_144 ), 
        .Y(\stonyman_0/state_ns_0_10[7] ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[14]  (.A(
        \psram_cr_0/max_addr[14] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[14] ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_27[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[3] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_637));
    DFN1 \psram_cr_0/cr_int_i0/start_1  (.D(
        \psram_cr_0/cr_int_i0/start_1_RNO_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/cr_int_i0/start_1_net_1 ));
    IOTRI_OB_EB \led_pad[7]/U0/U1  (.D(\led_net_0_c[3] ), .E(PLLEN_VCC)
        , .DOUT(\led_pad[7]/U0/NET1 ), .EOUT(\led_pad[7]/U0/NET2 ));
    NOR3 \stonyman_0/substate_RNI84C31[10]  (.A(
        \stonyman_0/substate[6]_net_1 ), .B(
        \stonyman_0/substate[10]_net_1 ), .C(
        \stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/un35_i_a2_1_a2_2_a2_1[1] ));
    OA1B \stonyman_0/state_RNO_6[7]  (.A(\stonyman_0/N_3715 ), .B(
        \stonyman_0/state_ns_0_9_tz_3[7] ), .C(\stonyman_0/N_144 ), .Y(
        \stonyman_0/state_ns_0_9[7] ));
    MX2A \stonyman_0/substate_RNO_2[6]  (.A(
        \stonyman_0/substate[1]_net_1 ), .B(\stonyman_0/N_2302 ), .S(
        \stonyman_0/substate[6]_net_1 ), .Y(\stonyman_0/N_2340 ));
    DFN1 \psram_cr_0/ahb0/data_in[11]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[11]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[11] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[12]  (.D(
        \psram_cr_0/cr_int_i0/N_44 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[12] ));
    NOR3B \psram_cr_0/cr_int_i0/enable_RNO_0  (.A(
        \psram_cr_0/cr_int_i0/ac_counter_lb1_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter_lb1_net_1 ), .C(
        \psram_cr_0/cr_int_i0/start_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_98 ));
    NOR3B \stonyman_0/substate_RNO[14]  (.A(
        \stonyman_0/state_RNIN1TN9[6]_net_1 ), .B(\stonyman_0/N_2296 ), 
        .C(\stonyman_0/N_2344 ), .Y(
        \stonyman_0/substate_RNO[14]_net_1 ));
    IOIN_IB \CLK50_pad/U0/U1  (.YIN(\CLK50_pad/U0/NET1 ), .Y(CLK50_c));
    OR2 \adc081s101_0/cntrWaitLeading_RNI72EI[1]  (.A(
        \adc081s101_0/cntrWaitLeading[0]_net_1 ), .B(
        \adc081s101_0/cntrWaitLeading[1]_net_1 ), .Y(
        \adc081s101_0/un7lto1 ));
    NOR3B \stonyman_0/substate_RNI76KFB[6]  (.A(
        \stonyman_0/state_0_sqmuxa_m2_e_3 ), .B(\stonyman_0/N_112 ), 
        .C(\stonyman_0/N_138_i_i_i_o2_8 ), .Y(
        \stonyman_0/substate_RNI76KFB[6]_net_1 ));
    AO1 \stonyman_0/counterWait_RNO[16]  (.A(
        \stonyman_0/counterWait_2_m_0[16] ), .B(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ), .C(
        \stonyman_0/counterWait_80_0_iv_0[16] ), .Y(
        \stonyman_0/counterWait_80[16] ));
    NOR2B \stonyman_0/counterWait_RNO_0[21]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[21]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[21] ));
    MX2 \psram_cr_0/cr_int_i0/nbyte_en_1_RNO_0[0]  (.A(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ), .B(psram_ncs0_c_c_c), 
        .S(\psram_cr_0/cr_int_i0/N_77 ), .Y(
        \psram_cr_0/cr_int_i0/N_230 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[29]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[29] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[29] ));
    OR3 \stonyman_0/state_RNO_1[7]  (.A(\stonyman_0/state_ns_0_10[7] ), 
        .B(\stonyman_0/state_ns_0_9[7] ), .C(
        \stonyman_0/state_ns_0_3_0[7] ), .Y(
        \stonyman_0/state_ns_0_4[7] ));
    OR2 \stonyman_0/cachedValue_tile_DIN_REG1_RNIS2AV6[1]  (.A(
        \stonyman_0/N_3741 ), .B(\stonyman_0/cachedValue[3] ), .Y(
        \stonyman_0/N_3745 ));
    OR3 \stonyman_0/un5_counterWait_I_45  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(
        \stonyman_0/DWACT_FDEC_E[10] ), .C(
        \stonyman_0/counterWait[15]_net_1 ), .Y(\stonyman_0/N_15_0 ));
    OR2 \stonyman_0/counterWait_RNIH9IH[11]  (.A(
        \stonyman_0/counterWait[10]_net_1 ), .B(
        \stonyman_0/counterWait[11]_net_1 ), .Y(\stonyman_0/N_208 ));
    XA1A \stonyman_0/cachedValue_tile_WADDR_REG1_RNI2F0T[2]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(
        \stonyman_0/WADDR_REG1[2] ), .C(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_0_m5_0_a2_0_1tt_m3_0 )
        , .Y(\stonyman_0/WADDR_REG1_RNI2F0T[2] ));
    OR3 \stonyman_0/substate_RNIT1SQ7[15]  (.A(\stonyman_0/N_625 ), .B(
        \stonyman_0/N_190 ), .C(\stonyman_0/N_614 ), .Y(
        \stonyman_0/N_390 ));
    NOR2A \stonyman_0/substate_RNO_0[12]  (.A(\stonyman_0/N_2292 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2398 ));
    DFN1 \psram_cr_0/cr_int_i0/address[12]  (.D(
        \psram_cr_0/cr_int_i0/address_RNO[12]_net_1 ), .CLK(FAB_CLK), 
        .Q(\psram_address_c[12] ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[15]  (.A(
        \psram_cr_0/ahb0/N_274 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[15]_net_1 ));
    DFN1E1 \adc081s101_0/bitsRead[1]  (.D(\adc081s101_0/N_33 ), .CLK(
        SCLK_c), .E(\adc081s101_0/bitsReade ), .Q(
        \adc081s101_0/bitsRead[1]_net_1 ));
    NOR3B \stonyman_0/state_RNI6ESC9[3]  (.A(
        \stonyman_0/state[3]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/substate_tr30_2_0 ));
    NOR2B \stonyman_0/state_RNIDGOI2[8]  (.A(
        \stonyman_0/substate_9_sqmuxa_5_s ), .B(\stonyman_0/N_323 ), 
        .Y(\stonyman_0/un1_counterWait_0_sqmuxa_2_i_a2_m4_0_a2_0 ));
    DFN1 \stonyman_0/counterWait[6]  (.D(
        \stonyman_0/counterWait_80[6] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[6]_net_1 ));
    OR3 \stonyman_0/state_RNIOOD5H[1]  (.A(
        \stonyman_0/counterWait_1_sqmuxa_6 ), .B(
        \stonyman_0/un1_counterWait_1_sqmuxa_1 ), .C(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .Y(
        \stonyman_0/un1_state_0_sqmuxa_1_1 ));
    NOR2B \stonyman_0/state_RNO_0[2]  (.A(MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/state[2]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_m2_0_a2_0[2] ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[12]  (.A(
        \psram_cr_0/data_from_cr[12] ), .B(
        \psram_cr_0/ahb0/data_out[12]_net_1 ), .S(
        \psram_cr_0/ahb0/N_4 ), .Y(\psram_cr_0/ahb0/N_271 ));
    NOR2B \psram_cr_0/ahb0/operation_RNO[28]  (.A(
        \psram_cr_0/ahb0/N_207 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/operation_RNO[28]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_out_RNO[14]  (.A(
        \psram_cr_0/ahb0/N_273 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_out_RNO[14]_net_1 ));
    NOR2B \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO10I_RNO[13]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTIOlI_0[9] ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[13] ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0[13] ));
    OR3 \stonyman_0/un5_counterWait_I_60  (.A(
        \stonyman_0/counterWait[18]_net_1 ), .B(
        \stonyman_0/counterWait[19]_net_1 ), .C(
        \stonyman_0/counterWait[20]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[15] ));
    XA1A \stonyman_0/cachedValue_tile_WADDR_REG1_RNI2T4R_0[2]  (.A(
        \stonyman_0/cachedPOINTER[2]_net_1 ), .B(
        \stonyman_0/WADDR_REG1[2] ), .C(\stonyman_0/N_5_1 ), .Y(
        \stonyman_0/DOUT_5_7_m5_0 ));
    DFN1 \stonyman_0/counterWait[2]  (.D(
        \stonyman_0/counterWait_RNO[2]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[2]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[4]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[4] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[4] ));
    DFN1 \adc081s101_0/cs  (.D(\adc081s101_0/cs_RNO_net_1 ), .CLK(
        SCLK_c), .Q(CS_c));
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
    OR2A \stonyman_0/cachedValue_tile_DIN_REG1_RNI4NPK7[2]  (.A(
        \stonyman_0/cachedValue[2] ), .B(\stonyman_0/N_209 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_o2_0_0[4] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_3[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[8] ));
    NOR3A \psram_cr_0/ahb0/haddr_reg_RNI01AQ2[4]  (.A(
        \psram_cr_0/ahb0/N_84 ), .B(
        \psram_cr_0/ahb0/haddr_reg[4]_net_1 ), .C(
        \psram_cr_0/ahb0/haddr_reg[9]_net_1 ), .Y(
        \psram_cr_0/ahb0/N_95 ));
    AX1B \stonyman_0/un5_counterWait_I_26  (.A(
        \stonyman_0/counterWait[8]_net_1 ), .B(
        \stonyman_0/DWACT_FDEC_E[4] ), .C(
        \stonyman_0/counterWait[9]_net_1 ), .Y(\stonyman_0/I_26 ));
    NOR2 \stonyman_0/state_RNIJO98[6]  (.A(\stonyman_0/state[6]_net_1 )
        , .B(\stonyman_0/state[7]_net_1 ), .Y(\stonyman_0/N_1816 ));
    MX2 \stonyman_0/state_RNI68RM[4]  (.A(\stonyman_0/state[3]_net_1 ), 
        .B(\stonyman_0/state[4]_net_1 ), .S(\stonyman_0/un31lto0 ), .Y(
        \stonyman_0/N_2290 ));
    AO1 \psram_cr_0/ahb0/hrdata_reg_RNO_0[15]  (.A(
        \psram_cr_0/ahb0/data_out[15]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_2_sqmuxa ), .C(
        \psram_cr_0/ahb0/hrdata_reg_6_sqmuxa ), .Y(
        \psram_cr_0/ahb0/hrdata_reg_17_iv_0[15] ));
    DFN1 \stonyman_0/state[9]  (.D(\stonyman_0/state_RNO[9]_net_1 ), 
        .CLK(SCLK_c), .Q(\stonyman_0/state[9]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[16]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[16] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[16] ));
    DFN1 \psram_cr_0/cr_int_i0/data_reg[5]  (.D(
        \psram_cr_0/cr_int_i0/N_30 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0.cr_int_i0.data_reg[5] ));
    NOR2A \stonyman_0/substate_RNIH4HB[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_0_0_0_a2_2_0[1] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[13]  (.A(
        \psram_cr_0/reg_addr[13] ), .B(N_33), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_192 ));
    NOR2B \psram_cr_0/cr_int_i0/data_reg_RNO_1[14]  (.A(
        \psram_cr_0/cr_int_i0/N_170 ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/data_reg_6[14] ));
    OR2 \stonyman_0/substate_i_0_RNO_14[0]  (.A(
        \stonyman_0/N_2277_i_1 ), .B(\stonyman_0/N_2440 ), .Y(
        \stonyman_0/substate_ns_0_o2_7_0[0] ));
    NOR3B \stonyman_0/substate_i_0_RNO_46[0]  (.A(
        \stonyman_0/state[6]_net_1 ), .B(\stonyman_0/N_2291 ), .C(
        MSS_CORE2_0_M2F_RESET_N), .Y(\stonyman_0/N_2351 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[6]  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[6] ), 
        .CLK(FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I[6]_net_1 ));
    NOR2B \psram_cr_0/ahb0/data_in_sel_RNO  (.A(
        \psram_cr_0/ahb0/fsm_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_1_sqmuxa ), .Y(
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_18[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[18] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_43));
    NOR2A \stonyman_0/substate_RNIVHN89[12]  (.A(
        \stonyman_0/substate[12]_net_1 ), .B(\stonyman_0/N_194 ), .Y(
        \stonyman_0/N_2425 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_0[29]  (.A(
        \psram_cr_0/ahb0/operation[29]_net_1 ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[29] ));
    OR3 \stonyman_0/substate_RNO_4[3]  (.A(\stonyman_0/N_2375 ), .B(
        \stonyman_0/substate_ns_0_0[3] ), .C(
        \stonyman_0/substate_RNO_8[3]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_2[3] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[15]  (.A(
        \psram_cr_0/reg_addr[15] ), .B(N_37), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_194 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[2]  (.A(
        \psram_cr_0/data_to_cr[2] ), .B(N_636), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_245 ));
    IOTRI_OB_EB \psram_noe1_pad/U0/U1  (.D(PLLEN_VCC), .E(PLLEN_VCC), 
        .DOUT(\psram_noe1_pad/U0/NET1 ), .EOUT(
        \psram_noe1_pad/U0/NET2 ));
    DFN1 \psram_cr_0/ahb0/psram_addr[14]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[14]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[14] ));
    MX2 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI_RNI6I8K[9]  
        (.A(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HADDR[9] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1lI[9]_net_1 ), 
        .S(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOI0I_net_1 ), 
        .Y(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI0ll[9] ));
    MX2B \psram_cr_0/ahb0/psram_addr_RNO_0[7]  (.A(
        \psram_cr_0/max_addr[7] ), .B(N_21), .S(
        \psram_cr_0/ahb0/psram_addr5 ), .Y(\psram_cr_0/ahb0/N_218 ));
    OA1 \stonyman_0/counterWait_RNINB7KH3[9]  (.A(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_N_9 ), .B(
        \stonyman_0/un1_counterWait_0_sqmuxa_2_i_m8_0_0 ), .C(
        \stonyman_0/counterWait_80_0_iv_i_828_a0_0 ), .Y(
        \stonyman_0/counterWait_RNINB7KH3[9]_net_1 ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[8]  (.A(
        \psram_cr_0/reg_addr[8] ), .B(N_23), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_187 ));
    MX2A \stonyman_0/substate_RNIQ1HKC[8]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa ), .B(\stonyman_0/N_194 ), 
        .S(\stonyman_0/N_201 ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_3 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_8[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[28] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_63));
    AOI1B \stonyman_0/substate_i_0_RNO_12[0]  (.A(
        \stonyman_0/substate_ns_0_a2_10_2[0] ), .B(\stonyman_0/N_2437 )
        , .C(\stonyman_0/substate_ns_0_a4_1_0[0]_net_1 ), .Y(
        \stonyman_0/substate_ns_0_a4_1_1[0] ));
    OR3 \stonyman_0/substate_RNIF6VE2[3]  (.A(
        \stonyman_0/un1_counterWait_3_sqmuxa_0 ), .B(
        \stonyman_0/N_625 ), .C(
        \stonyman_0/un1_counterWait_3_sqmuxa_0_0 ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa ));
    OR3A \stonyman_0/state_RNO[7]  (.A(\stonyman_0/N_3289 ), .B(
        \stonyman_0/state_ns_0_4[7] ), .C(\stonyman_0/state_ns_0_6[7] )
        , .Y(\stonyman_0/state_ns[7] ));
    NOR2A \stonyman_0/substate_RNO[15]  (.A(\stonyman_0/N_2343 ), .B(
        \stonyman_0/N_2401 ), .Y(\stonyman_0/substate_RNO[15]_net_1 ));
    AO1A \stonyman_0/substate_i_0_RNIDUK5F[0]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/un1_counterWait_2_sqmuxa ), .C(
        \stonyman_0/resp_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_0_tz[23] ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_5[0]  (.A(
        \psram_cr_0/reg_addr[0] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_4_sqmuxa ), .Y(
        \psram_cr_0/ahb0/operation_m[0] ));
    NOR3B \stonyman_0/state_RNI7ESC9[4]  (.A(
        \stonyman_0/state[4]_net_1 ), .B(
        \stonyman_0/substate[13]_net_1 ), .C(\stonyman_0/N_194 ), .Y(
        \stonyman_0/substate_tr30_0_0 ));
    DFN1 \stonyman_0/substate[13]  (.D(\stonyman_0/N_30 ), .CLK(SCLK_c)
        , .Q(\stonyman_0/substate[13]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[1]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[1] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[1] ));
    NOR3C \stonyman_0/counterWait_RNO_2[16]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_46 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[16] ));
    NOR3C \stonyman_0/counterWait_RNO_15[4]  (.A(
        \stonyman_0/counterWait[4]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .C(\stonyman_0/resp_0_sqmuxa ), .Y(
        \stonyman_0/counterWait_RNO_15[4]_net_1 ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNID6161[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[16] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[16] ));
    OR2A \psram_cr_0/cr_int_i0/enable_RNIEAE8  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_110 ), .Y(
        \psram_cr_0/cr_int_i0/un1_op_counter18 ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[10]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_103 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_99 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[10] ));
    XOR2 \stonyman_0/un2_cachedValue_1_I_5  (.A(
        \stonyman_0/cachedValue[0] ), .B(\stonyman_0/cachedValue[1] ), 
        .Y(\stonyman_0/I_5_0_0 ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO_1[13]  (.A(
        \psram_cr_0/max_addr[13] ), .B(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/address_5[13] ));
    XNOR2 \stonyman_0/un5_counterWait_I_59  (.A(\stonyman_0/N_11_0 ), 
        .B(\stonyman_0/counterWait[20]_net_1 ), .Y(\stonyman_0/I_59 ));
    OR2B \psram_cr_0/cr_int_i0/ac_counter_RNILLIU[1]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/ac_counter[0]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_69 ));
    NOR2B \psram_cr_0/ahb0/hrdata_reg_RNO_1[6]  (.A(
        \psram_cr_0/max_addr[6] ), .B(
        \psram_cr_0/ahb0/hrdata_reg_3_sqmuxa ), .Y(
        \psram_cr_0/ahb0/psram_addr_m[6] ));
    INV \stonyman_0/cachedValue_tile_I_3_RNO  (.A(\stonyman_0/N_5_0 ), 
        .Y(\stonyman_0/N_5_i ));
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
    AO1 \stonyman_0/counterWait_RNO_5[1]  (.A(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1_a0_4[1] ), .B(
        \stonyman_0/N_300 ), .C(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_1[1] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0_o2_0_2[1] ));
    OR2 \stonyman_0/un5_counterWait_I_90  (.A(
        \stonyman_0/counterWait[27]_net_1 ), .B(
        \stonyman_0/counterWait[28]_net_1 ), .Y(
        \stonyman_0/DWACT_FDEC_E[25] ));
    OA1B \stonyman_0/substate_RNO_8[3]  (.A(
        \stonyman_0/substate_ns_0_a4_1[3] ), .B(
        \stonyman_0/substate_ns_0_a4_3_0[3] ), .C(\stonyman_0/N_194 ), 
        .Y(\stonyman_0/substate_RNO_8[3]_net_1 ));
    OR3 \stonyman_0/substate_i_0_RNO_35[0]  (.A(
        \stonyman_0/substate_ns_2[0] ), .B(
        \stonyman_0/substate_ns_1[0] ), .C(\stonyman_0/N_1932 ), .Y(
        \stonyman_0/substate_ns_5[0] ));
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
    NOR2B \stonyman_0/state_RNIADUI[8]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(
        \stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/substate_9_sqmuxa_5_s ));
    NOR2 \stonyman_0/substate_i_0_RNIMUL26[0]  (.A(
        \stonyman_0/resp_0_sqmuxa ), .B(
        \stonyman_0/un1_counterWait_2_sqmuxa ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_o2_0_a1_0[9] ));
    NOR3C \stonyman_0/counterWait_RNO_2[11]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/I_32 ), .C(\stonyman_0/N_300 ), .Y(
        \stonyman_0/counterWait_6_m[11] ));
    DFN1 \psram_cr_0/ahb0/data_in[12]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[12]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[12] ));
    MX2B \psram_cr_0/ahb0/operation_RNO_0[31]  (.A(
        \psram_cr_0/ahb0/operation[31]_net_1 ), .B(N_69), .S(
        \psram_cr_0/ahb0/operation5 ), .Y(\psram_cr_0/ahb0/N_210 ));
    OR3 \stonyman_0/un5_counterWait_I_19  (.A(
        \stonyman_0/DWACT_FDEC_E[0] ), .B(\stonyman_0/DWACT_FDEC_E[2] )
        , .C(\stonyman_0/counterWait[6]_net_1 ), .Y(\stonyman_0/N_24 ));
    OR3 \stonyman_0/un5_counterWait_I_36  (.A(
        \stonyman_0/DWACT_FDEC_E[6] ), .B(\stonyman_0/DWACT_FDEC_E[7] )
        , .C(\stonyman_0/counterWait[12]_net_1 ), .Y(\stonyman_0/N_18 )
        );
    NOR3A 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_4_sqmuxa_0_a2_2  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_2[0] ));
    NOR3 \stonyman_0/state_RNI9MEB[6]  (.A(\stonyman_0/state[9]_net_1 )
        , .B(\stonyman_0/state[6]_net_1 ), .C(
        \stonyman_0/state[10]_net_1 ), .Y(\stonyman_0/N_2435 ));
    MSS_IF \MSS_CORE2_0/MSS_ADLIB_INST/U_75  (.PIN4(GLMUXINT_GND), 
        .PIN5(GLMUXINT_GND), .PIN6(GLMUXINT_GND), .PIN1(), .PIN2(), 
        .PIN3(), .PIN4INT(), .PIN5INT(), .PIN6INT(), .PIN1INT(
        GLMUXINT_GND), .PIN2INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[0]INT_NET ), .PIN3INT(
        \MSS_CORE2_0/MSS_ADLIB_INST/ACEFLAGS[1]INT_NET ));
    NOR2B \psram_cr_0/cr_int_i0/address_RNO[24]  (.A(
        \psram_cr_0/cr_int_i0/N_272 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/cr_int_i0/address_RNO[24]_net_1 ));
    NOR3C 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO0Il/CAHBLTIO0_17_sqmuxa_0_a2_1  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_81 ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[15] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI0ll[14] ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTOl0I_1[13] ));
    NOR2B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNICU061[5]  
        (.A(\CoreAHBLite_0_AHBmslave5_HRDATA[24] ), .B(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTllIl113 ), .Y(
        \MSS_CORE2_0_MSS_MASTER_AHB_LITE_HRDATA[24] ));
    NOR3A \stonyman_0/state_i_RNO_24[0]  (.A(\stonyman_0/N_391 ), .B(
        \stonyman_0/state[11]_net_1 ), .C(\stonyman_0/state[2]_net_1 ), 
        .Y(\stonyman_0/state_ns_i_0_a2_0_0_a2_4_a2_1[0] ));
    MX2 \stonyman_0/inphi_RNO_0  (.A(inphi_c), .B(
        \stonyman_0/substate[4]_net_1 ), .S(
        \stonyman_0/counterWait_0_sqmuxa_7 ), .Y(\stonyman_0/N_762 ));
    AO1A \stonyman_0/substate_i_0_RNI2FP1J3[0]  (.A(
        \stonyman_0/DIN_REG1_RNIP6CD02[6] ), .B(
        \stonyman_0/state_i_RNI735OG1[0]_net_1 ), .C(
        \stonyman_0/resp_0_sqmuxa ), .Y(
        \stonyman_0/un1_counterWait_3_sqmuxa_7 ));
    OR3 \stonyman_0/state_RNO_22[7]  (.A(
        \stonyman_0/substate[7]_net_1 ), .B(
        \stonyman_0/substate[11]_net_1 ), .C(
        \stonyman_0/state_ns_0_1_tz_1[7] ), .Y(
        \stonyman_0/state_ns_0_1_tz_2[7] ));
    DFN1 \psram_cr_0/ahb0/psram_addr[21]  (.D(
        \psram_cr_0/ahb0/psram_addr_RNO[21]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/max_addr[21] ));
    NOR2A \stonyman_0/counterWait_RNI99UL9[23]  (.A(
        \stonyman_0/counterWait_0_sqmuxa_7_0_a2_0_m4_e_6 ), .B(
        \stonyman_0/state_ns_0_9_tz_2[7] ), .Y(\stonyman_0/N_422 ));
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
    NOR3B \stonyman_0/substate_RNICC6O1[2]  (.A(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_0[9] ), .B(
        \stonyman_0/N_620 ), .C(\stonyman_0/substate[2]_net_1 ), .Y(
        \stonyman_0/state_ns_i_a2_i_i_0_a2_0_2[9] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[7]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_79 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_104 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[7] ));
    OR2B \psram_cr_0/cr_int_i0/enable_RNIJA44  (.A(
        \psram_cr_0/cr_int_i0/enable_net_1 ), .B(
        MSS_CORE2_0_M2F_RESET_N), .Y(\psram_cr_0/cr_int_i0/N_72 ));
    AOI1 \psram_cr_0/cr_int_i0/op_counter_RNO_0[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[0]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .Y(
        \psram_cr_0/cr_int_i0/N_106 ));
    NOR3C \stonyman_0/cachedValue_tile_DIN_REG1_RNITRV8J[0]  (.A(
        \stonyman_0/state39_0_a2_0 ), .B(\stonyman_0/cachedValue[0] ), 
        .C(\stonyman_0/state39_0_a2_3 ), .Y(\stonyman_0/state39 ));
    NOR3B \psram_cr_0/cr_int_i0/op_counter_RNI28G7[2]  (.A(
        \psram_cr_0/cr_int_i0/op_counter[1]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/op_counter[2]_net_1 ), .C(
        \psram_cr_0/cr_int_i0/N_68 ), .Y(\psram_cr_0/cr_int_i0/N_110 ));
    OA1B \stonyman_0/state_RNIGKJO[2]  (.A(
        \stonyman_0/state[11]_net_1 ), .B(\stonyman_0/state[2]_net_1 ), 
        .C(\stonyman_0/N_2209 ), .Y(
        \stonyman_0/un1_counterWait_2_sqmuxa_5 ));
    MX2B \psram_cr_0/ahb0/data_in_RNO_0[10]  (.A(
        \psram_cr_0/data_to_cr[10] ), .B(N_27), .S(
        \psram_cr_0/ahb0/data_in7 ), .Y(\psram_cr_0/ahb0/N_253 ));
    AO1 \stonyman_0/counterWait_RNO_1[29]  (.A(\stonyman_0/I_92 ), .B(
        \stonyman_0/un1_state_0_sqmuxa ), .C(
        \stonyman_0/counterWait_6_m[29] ), .Y(
        \stonyman_0/counterWait_80_0_iv_0[29] ));
    IOPAD_TRI \adcStartCapture_pad/U0/U0  (.D(
        \adcStartCapture_pad/U0/NET1 ), .E(
        \adcStartCapture_pad/U0/NET2 ), .PAD(adcStartCapture));
    NOR3B \stonyman_0/counterWait_RNO_4[0]  (.A(\stonyman_0/N_194 ), 
        .B(\stonyman_0/N_300 ), .C(\stonyman_0/counterWait[0]_net_1 ), 
        .Y(\stonyman_0/counterWait_6_m[0] ));
    NOR3A \stonyman_0/substate_RNO_6[3]  (.A(
        \stonyman_0/substate_ns_0_a4_0_2[3] ), .B(\stonyman_0/N_2284 ), 
        .C(\stonyman_0/N_194 ), .Y(\stonyman_0/N_2375 ));
    DFN1 \stonyman_0/substate[9]  (.D(
        \stonyman_0/substate_RNO[9]_net_1 ), .CLK(SCLK_c), .Q(
        \stonyman_0/substate[9]_net_1 ));
    NOR3 \stonyman_0/state_RNIPKEC[1]  (.A(\stonyman_0/state[7]_net_1 )
        , .B(\stonyman_0/state[8]_net_1 ), .C(
        \stonyman_0/state[1]_net_1 ), .Y(\stonyman_0/N_2283_i_0 ));
    DFN1 \psram_cr_0/ahb0/operation[18]  (.D(
        \psram_cr_0/ahb0/operation_RNO[18]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[18]_net_1 ));
    DFN1 \psram_cr_0/ahb0/operation[26]  (.D(
        \psram_cr_0/ahb0/operation_RNO[26]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/operation[26]_net_1 ));
    DFN1E1 \psram_cr_0/ahb0/hrdata_reg[10]  (.D(
        \psram_cr_0/ahb0/hrdata_reg_17[10] ), .CLK(FAB_CLK), .E(
        \psram_cr_0/ahb0/N_18 ), .Q(
        \CoreAHBLite_0_AHBmslave5_HRDATA[10] ));
    DFN1 \stonyman_0/counterWait[3]  (.D(
        \stonyman_0/counterWait_80[3] ), .CLK(SCLK_c), .Q(
        \stonyman_0/counterWait[3]_net_1 ));
    OR2 \stonyman_0/cachedValue_tile_I_1_RNI6MBA5  (.A(
        \stonyman_0/cachedValue[6] ), .B(\stonyman_0/cachedValue[7] ), 
        .Y(\stonyman_0/N_209 ));
    MX2 \psram_cr_0/cr_int_i0/data_reg_RNO_0[6]  (.A(
        \psram_cr_0.cr_int_i0.data_reg[6] ), .B(
        \psram_cr_0/cr_int_i0/data_reg_6[6] ), .S(
        \psram_cr_0/cr_int_i0/N_348 ), .Y(\psram_cr_0/cr_int_i0/N_217 )
        );
    NOR2A \stonyman_0/substate_RNO_18[1]  (.A(
        \stonyman_0/substate[11]_net_1 ), .B(\stonyman_0/N_109 ), .Y(
        \stonyman_0/substate_ns_i_a4_8_0[1] ));
    MX2C \stonyman_0/cachedValue_tile_DIN_REG1_RNI21EA2[6]  (.A(
        \stonyman_0/DOUT_TMP[6] ), .B(\stonyman_0/DIN_REG1[6] ), .S(
        \stonyman_0/WADDR_REG1_RNI27MV1[2] ), .Y(
        \stonyman_0/DIN_REG1_RNI21EA2[6] ));
    DFN1 \inputConditioner_0/conditioner[0]  (.D(CAPTURE_c), .CLK(
        SCLK_c), .Q(\inputConditioner_0/conditioner[0]_net_1 ));
    NOR2A \psram_cr_0/ahb0/fsm_RNIHEQUN  (.A(
        \psram_cr_0/ahb0/hwrite_reg4 ), .B(\psram_cr_0/ahb0/fsm_net_1 )
        , .Y(\psram_cr_0/ahb0/fsm_0_sqmuxa ));
    OR2 \stonyman_0/resv_RNO_3  (.A(\stonyman_0/N_194 ), .B(
        \stonyman_0/N_6 ), .Y(\stonyman_0/resv_RNO_3_net_1 ));
    OR3 \stonyman_0/un5_counterWait_I_69  (.A(
        \stonyman_0/DWACT_FDEC_E[29] ), .B(
        \stonyman_0/DWACT_FDEC_E[13] ), .C(
        \stonyman_0/DWACT_FDEC_E[33] ), .Y(\stonyman_0/N_8 ));
    NOR2B \psram_cr_0/ahb0/psram_addr_RNO[2]  (.A(
        \psram_cr_0/ahb0/N_213 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/psram_addr_RNO[2]_net_1 ));
    OR3 \stonyman_0/counterWait_RNIGSH81[8]  (.A(
        \stonyman_0/counterWait[8]_net_1 ), .B(
        \stonyman_0/counterWait[9]_net_1 ), .C(\stonyman_0/N_208 ), .Y(
        \stonyman_0/N_138_i_i_i_o2_7_2 ));
    NOR3A \stonyman_0/state_i_RNITMJO1[0]  (.A(\stonyman_0/N_2441 ), 
        .B(\stonyman_0/N_2307 ), .C(\stonyman_0/N_2336 ), .Y(
        \stonyman_0/substate_ns_0_a2_7_1[0] ));
    NOR2B \psram_cr_0/ahb0/haddr_reg_RNO[6]  (.A(
        \psram_cr_0/ahb0/N_175 ), .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/haddr_reg_RNO[6]_net_1 ));
    NOR2B \stonyman_0/substate_i_0_RNO_18[0]  (.A(\stonyman_0/N_2440 ), 
        .B(\stonyman_0/substate[4]_net_1 ), .Y(\stonyman_0/N_2419 ));
    DFN1 \psram_cr_0/ahb0/data_in_sel  (.D(
        \psram_cr_0/ahb0/data_in_sel_1_sqmuxa ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/ahb0/data_in_sel_net_1 ));
    OR3 \stonyman_0/substate_RNO[4]  (.A(\stonyman_0/N_2381 ), .B(
        \stonyman_0/substate_ns_0_0[4] ), .C(\stonyman_0/N_2379 ), .Y(
        \stonyman_0/substate_ns[4] ));
    NOR3C \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTl00I_RNO[0]  (
        .A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_102 ), .B(
        \CoreAHBLite_0.CAHBLTO1I0l.CAHBLTO1ll ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/N_80 ), .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/un1_CAHBLTIlO0l[0] ));
    NOR2B \psram_cr_0/ahb0/data_in_RNO[4]  (.A(\psram_cr_0/ahb0/N_247 )
        , .B(MSS_CORE2_0_M2F_RESET_N), .Y(
        \psram_cr_0/ahb0/data_in_RNO[4]_net_1 ));
    AO1 \psram_cr_0/cr_int_i0/active_data_RNO  (.A(
        \psram_cr_0/cr_int_i0/N_111 ), .B(MSS_CORE2_0_M2F_RESET_N), .C(
        \psram_cr_0/cr_int_i0/N_93 ), .Y(
        \psram_cr_0/cr_int_i0/active_data_RNO_net_1 ));
    IOPAD_TRI \psram_address_pad[7]/U0/U0  (.D(
        \psram_address_pad[7]/U0/NET1 ), .E(
        \psram_address_pad[7]/U0/NET2 ), .PAD(psram_address[7]));
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
    MSS_CCC_GL_IF \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/U_TILE3  (.PIN2(
        GLMUXINT_GND), .PIN3(CLK50_c), .PIN4(GLMUXINT_GND), .PIN1(), 
        .PIN5(Phy_RMII_CLK_c), .PIN2INT(), .PIN3INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/CLKC_INT ), .PIN4INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/SUPDATE_INT ), .PIN1INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/YC_INT ), .PIN5INT(
        \MSS_CORE2_0/MSS_CCC_0/I_MSSCCC/GLC_INT ));
    NOR3A \stonyman_0/substate_i_0_RNO_17[0]  (.A(
        \stonyman_0/substate_ns_0_a2_4_0_m4_0_a2_1 ), .B(
        \stonyman_0/cachedValue[3] ), .C(\stonyman_0/N_2425 ), .Y(
        \stonyman_0/substate_i_0_RNO_17[0]_net_1 ));
    MX2 \psram_cr_0/ahb0/data_out_RNO_0[0]  (.A(
        \psram_cr_0/data_from_cr[0] ), .B(
        \psram_cr_0/ahb0/data_out[0]_net_1 ), .S(\psram_cr_0/ahb0/N_4 )
        , .Y(\psram_cr_0/ahb0/N_259 ));
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
    AO1 \stonyman_0/substate_RNO_9[1]  (.A(\stonyman_0/N_2277_i_1 ), 
        .B(\stonyman_0/substate[1]_net_1 ), .C(\stonyman_0/N_2364 ), 
        .Y(\stonyman_0/substate_ns_i_0[1] ));
    OR3 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_RNO[5]  
        (.A(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_108 ), 
        .B(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_109 ), 
        .C(\CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/N_107 ), 
        .Y(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTlI0l/CAHBLTllOI_ns[5] )
        );
    OR2 \stonyman_0/state_RNI9O98[2]  (.A(\stonyman_0/state[2]_net_1 ), 
        .B(\stonyman_0/state[1]_net_1 ), .Y(\stonyman_0/N_161 ));
    DFN1E0C0 \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI10I  (.D(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTO1O0I ), .CLK(
        FAB_CLK), .CLR(MSS_CORE2_0_M2F_RESET_N), .E(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIIlI_iv ), .Q(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTIlO0l/CAHBLTI1O0I ));
    DFN1 \psram_cr_0/ahb0/data_in[5]  (.D(
        \psram_cr_0/ahb0/data_in_RNO[5]_net_1 ), .CLK(FAB_CLK), .Q(
        \psram_cr_0/data_to_cr[5] ));
    AND3 \stonyman_0/un2_cachedValue_1_I_18  (.A(
        \stonyman_0/cachedValue[3] ), .B(\stonyman_0/N_2929_li ), .C(
        \stonyman_0/cachedValue[5] ), .Y(\stonyman_0/DWACT_FINC_E[2] ));
    NOR3A \stonyman_0/state_RNIB9TO[2]  (.A(\stonyman_0/N_590_1 ), .B(
        \stonyman_0/N_161 ), .C(\stonyman_0/N_1546_tz ), .Y(
        \stonyman_0/state_ns_i_0_a2_0_0_a2_3_2_1[0] ));
    NOR2B \stonyman_0/counterWait_RNO_0[17]  (.A(
        MSS_CORE2_0_M2F_RESET_N), .B(
        \stonyman_0/counterWait[17]_net_1 ), .Y(
        \stonyman_0/counterWait_2_m_0[17] ));
    OA1 \stonyman_0/substate_RNIPT3N[7]  (.A(
        \stonyman_0/state[8]_net_1 ), .B(\stonyman_0/state[7]_net_1 ), 
        .C(\stonyman_0/substate[7]_net_1 ), .Y(
        \stonyman_0/un1_counterWait_4_sqmuxa ));
    NOR2A \stonyman_0/substate_RNO_5[3]  (.A(
        \stonyman_0/substate_tr30_2_0 ), .B(\stonyman_0/state30 ), .Y(
        \stonyman_0/N_2005 ));
    OR3B 
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l_RNI2RHC_26[0]  
        (.A(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[1]_net_1 ), 
        .B(\MSS_CORE2_0_MSS_MASTER_AHB_LITE_HWDATA[4] ), .C(
        \CoreAHBLite_0/CAHBLTO1I0l/CAHBLTI1O0l/CAHBLTIO0l[0]_net_1 ), 
        .Y(N_638));
    OR2A \psram_cr_0/cr_int_i0/ac_counter_RNO_0[3]  (.A(
        \psram_cr_0/cr_int_i0/ac_counter[2]_net_1 ), .B(
        \psram_cr_0/cr_int_i0/N_69 ), .Y(\psram_cr_0/cr_int_i0/N_82 ));
    NOR2B \inputConditioner_0/conditioner_RNO[3]  (.A(
        \inputConditioner_0/conditioner[2]_net_1 ), .B(CAPTURE_c), .Y(
        \inputConditioner_0/intermediate[2] ));
    NOR3 \stonyman_0/substate_RNO_8[1]  (.A(
        \stonyman_0/substate_ns_i_a4_7_0[1] ), .B(
        \stonyman_0/substate_ns_i_a4_2_2[1] ), .C(
        \stonyman_0/substate_ns_i_a4_8_0[1] ), .Y(
        \stonyman_0/substate_RNO_8[1]_net_1 ));
    NOR2 \stonyman_0/state_RNIMO98[9]  (.A(\stonyman_0/state[7]_net_1 )
        , .B(\stonyman_0/state[9]_net_1 ), .Y(
        \stonyman_0/un33_i_a2_0_a2_1[0] ));
    NOR3C \stonyman_0/counterWait_RNO_17[4]  (.A(
        \stonyman_0/counterWait[4]_net_1 ), .B(MSS_CORE2_0_M2F_RESET_N)
        , .C(\stonyman_0/state_i_RNI735OG1[0]_net_1 ), .Y(
        \stonyman_0/counterWait_80_0_iv_i_a2_a0_1[4] ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
