library verilog;
use verilog.vl_types.all;
entity F2DSS_ACE_PPE_XFER_DINMUX is
    port(
        PPE_CTRL        : in     vl_logic_vector(31 downto 0);
        PPE_PC_ETC      : in     vl_logic_vector(31 downto 0);
        PPE_SCRATCH     : in     vl_logic_vector(31 downto 0);
        PPE_SF          : in     vl_logic_vector(31 downto 0);
        ALU_CTRL        : in     vl_logic_vector(31 downto 0);
        ALU_STATUS      : in     vl_logic_vector(31 downto 0);
        ALU_A           : in     vl_logic_vector(31 downto 0);
        ALU_B           : in     vl_logic_vector(31 downto 0);
        ALU_C           : in     vl_logic_vector(31 downto 0);
        PPE_FPTR        : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS0      : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS1      : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS2      : in     vl_logic_vector(31 downto 0);
        PPE_FLAGS3      : in     vl_logic_vector(31 downto 0);
        PPE_SFFLAGS     : in     vl_logic_vector(31 downto 0);
        ADC0_FIFO_CTRL  : in     vl_logic_vector(31 downto 0);
        ADC0_FIFO_STATUS: in     vl_logic_vector(31 downto 0);
        ADC0_FIFO_DATA  : in     vl_logic_vector(31 downto 0);
        ADC1_FIFO_CTRL  : in     vl_logic_vector(31 downto 0);
        ADC1_FIFO_STATUS: in     vl_logic_vector(31 downto 0);
        ADC1_FIFO_DATA  : in     vl_logic_vector(31 downto 0);
        ADC2_FIFO_CTRL  : in     vl_logic_vector(31 downto 0);
        ADC2_FIFO_STATUS: in     vl_logic_vector(31 downto 0);
        ADC2_FIFO_DATA  : in     vl_logic_vector(31 downto 0);
        CURRENT_ADC_RESULT: in     vl_logic_vector(11 downto 0);
        PPE2SSE_PRDATA_rdhold: in     vl_logic_vector(15 downto 0);
        RAM_DO_A        : in     vl_logic_vector(31 downto 0);
        RAM_DO_B        : in     vl_logic_vector(31 downto 0);
        move_from_PPE_CTRL: in     vl_logic;
        move_from_PC_ETC: in     vl_logic;
        move_from_SF    : in     vl_logic;
        move_from_SCRATCH: in     vl_logic;
        move_from_ALU_CTRL: in     vl_logic;
        move_from_ALU_STATUS: in     vl_logic;
        move_from_A     : in     vl_logic;
        move_from_B     : in     vl_logic;
        move_from_C     : in     vl_logic;
        move_from_PPE_FPTR: in     vl_logic;
        move_from_PPE_FLAGS0: in     vl_logic;
        move_from_PPE_FLAGS1: in     vl_logic;
        move_from_PPE_FLAGS2: in     vl_logic;
        move_from_PPE_FLAGS3: in     vl_logic;
        move_from_PPE_SFFLAGS: in     vl_logic;
        move_from_ADC0_FIFO_CTRL: in     vl_logic;
        move_from_ADC0_FIFO_STATUS: in     vl_logic;
        move_from_ADC0_FIFO_DATA: in     vl_logic;
        move_from_ADC1_FIFO_CTRL: in     vl_logic;
        move_from_ADC1_FIFO_STATUS: in     vl_logic;
        move_from_ADC1_FIFO_DATA: in     vl_logic;
        move_from_ADC2_FIFO_CTRL: in     vl_logic;
        move_from_ADC2_FIFO_STATUS: in     vl_logic;
        move_from_ADC2_FIFO_DATA: in     vl_logic;
        move_from_ADC_RESULT_LSB: in     vl_logic;
        move_from_ADC_RESULT_MSB: in     vl_logic;
        move_from_PPE2SSE_PRDATA: in     vl_logic;
        move_from_RAM_DO_A_31_0: in     vl_logic;
        move_from_RAM_DO_A_23_0_LSB: in     vl_logic;
        move_from_RAM_DO_A_23_0_MSB: in     vl_logic;
        move_from_RAM_DO_A_15_0_MSB: in     vl_logic;
        move_from_RAM_DO_B_31_0: in     vl_logic;
        xfer_din_mux    : out    vl_logic_vector(31 downto 0);
        xfer_din_mux_not_from_RAM: out    vl_logic_vector(31 downto 0);
        xfer_din_mux_from_RAM: out    vl_logic_vector(31 downto 0)
    );
end F2DSS_ACE_PPE_XFER_DINMUX;