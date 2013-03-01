library verilog;
use verilog.vl_types.all;
entity MSS_APB_IP is
    generic(
        ACT_CONFIG      : integer := 0;
        ACT_FCLK        : integer := 0;
        ACT_DIE         : string  := "";
        ACT_PKG         : string  := "";
        VECTFILE        : string  := "test.vec"
    );
    port(
        MSSPADDR        : out    vl_logic_vector(19 downto 0);
        MSSPWDATA       : out    vl_logic_vector(31 downto 0);
        MSSPWRITE       : out    vl_logic;
        MSSPSEL         : out    vl_logic;
        MSSPENABLE      : out    vl_logic;
        MSSPRDATA       : in     vl_logic_vector(31 downto 0);
        MSSPREADY       : in     vl_logic;
        MSSPSLVERR      : in     vl_logic;
        FABPADDR        : in     vl_logic_vector(31 downto 0);
        FABPWDATA       : in     vl_logic_vector(31 downto 0);
        FABPWRITE       : in     vl_logic;
        FABPSEL         : in     vl_logic;
        FABPENABLE      : in     vl_logic;
        FABPRDATA       : out    vl_logic_vector(31 downto 0);
        FABPREADY       : out    vl_logic;
        FABPSLVERR      : out    vl_logic;
        SYNCCLKFDBK     : in     vl_logic;
        CALIBOUT        : out    vl_logic;
        CALIBIN         : in     vl_logic;
        FABINT          : in     vl_logic;
        MSSINT          : out    vl_logic_vector(7 downto 0);
        WDINT           : out    vl_logic;
        F2MRESETn       : in     vl_logic;
        DMAREADY        : in     vl_logic_vector(1 downto 0);
        RXEV            : in     vl_logic;
        VRON            : in     vl_logic;
        M2FRESETn       : out    vl_logic;
        DEEPSLEEP       : out    vl_logic;
        SLEEP           : out    vl_logic;
        TXEV            : out    vl_logic;
        UART0CTSn       : in     vl_logic;
        UART0DSRn       : in     vl_logic;
        UART0RIn        : in     vl_logic;
        UART0DCDn       : in     vl_logic;
        UART0RTSn       : out    vl_logic;
        UART0DTRn       : out    vl_logic;
        UART1CTSn       : in     vl_logic;
        UART1DSRn       : in     vl_logic;
        UART1RIn        : in     vl_logic;
        UART1DCDn       : in     vl_logic;
        UART1RTSn       : out    vl_logic;
        UART1DTRn       : out    vl_logic;
        I2C0SMBUSNI     : in     vl_logic;
        I2C0SMBALERTNI  : in     vl_logic;
        I2C0BCLK        : in     vl_logic;
        I2C0SMBUSNO     : out    vl_logic;
        I2C0SMBALERTNO  : out    vl_logic;
        I2C1SMBUSNI     : in     vl_logic;
        I2C1SMBALERTNI  : in     vl_logic;
        I2C1BCLK        : in     vl_logic;
        I2C1SMBUSNO     : out    vl_logic;
        I2C1SMBALERTNO  : out    vl_logic;
        MACM2FTXD       : out    vl_logic_vector(1 downto 0);
        MACF2MRXD       : in     vl_logic_vector(1 downto 0);
        MACM2FTXEN      : out    vl_logic;
        MACF2MCRSDV     : in     vl_logic;
        MACF2MRXER      : in     vl_logic;
        MACF2MMDI       : in     vl_logic;
        MACM2FMDO       : out    vl_logic;
        MACM2FMDEN      : out    vl_logic;
        MACM2FMDC       : out    vl_logic;
        FABSDD0D        : in     vl_logic;
        FABSDD1D        : in     vl_logic;
        FABSDD2D        : in     vl_logic;
        FABSDD0CLK      : in     vl_logic;
        FABSDD1CLK      : in     vl_logic;
        FABSDD2CLK      : in     vl_logic;
        FABACETRIG      : in     vl_logic;
        ACEFLAGS        : out    vl_logic_vector(31 downto 0);
        CMP0            : out    vl_logic;
        CMP1            : out    vl_logic;
        CMP2            : out    vl_logic;
        CMP3            : out    vl_logic;
        CMP4            : out    vl_logic;
        CMP5            : out    vl_logic;
        CMP6            : out    vl_logic;
        CMP7            : out    vl_logic;
        CMP8            : out    vl_logic;
        CMP9            : out    vl_logic;
        CMP10           : out    vl_logic;
        CMP11           : out    vl_logic;
        LVTTL0EN        : in     vl_logic;
        LVTTL1EN        : in     vl_logic;
        LVTTL2EN        : in     vl_logic;
        LVTTL3EN        : in     vl_logic;
        LVTTL4EN        : in     vl_logic;
        LVTTL5EN        : in     vl_logic;
        LVTTL6EN        : in     vl_logic;
        LVTTL7EN        : in     vl_logic;
        LVTTL8EN        : in     vl_logic;
        LVTTL9EN        : in     vl_logic;
        LVTTL10EN       : in     vl_logic;
        LVTTL11EN       : in     vl_logic;
        LVTTL0          : out    vl_logic;
        LVTTL1          : out    vl_logic;
        LVTTL2          : out    vl_logic;
        LVTTL3          : out    vl_logic;
        LVTTL4          : out    vl_logic;
        LVTTL5          : out    vl_logic;
        LVTTL6          : out    vl_logic;
        LVTTL7          : out    vl_logic;
        LVTTL8          : out    vl_logic;
        LVTTL9          : out    vl_logic;
        LVTTL10         : out    vl_logic;
        LVTTL11         : out    vl_logic;
        PUFABn          : out    vl_logic;
        VCC15GOOD       : out    vl_logic;
        VCC33GOOD       : out    vl_logic;
        FCLK            : in     vl_logic;
        MACCLKCCC       : in     vl_logic;
        RCOSC           : in     vl_logic;
        MACCLK          : in     vl_logic;
        PLLLOCK         : in     vl_logic;
        MSSRESETn       : in     vl_logic;
        GPI             : in     vl_logic_vector(31 downto 0);
        GPO             : out    vl_logic_vector(31 downto 0);
        GPOE            : out    vl_logic_vector(31 downto 0);
        SPI0DO          : out    vl_logic;
        SPI0DOE         : out    vl_logic;
        SPI0DI          : in     vl_logic;
        SPI0CLKI        : in     vl_logic;
        SPI0CLKO        : out    vl_logic;
        SPI0MODE        : out    vl_logic;
        SPI0SSI         : in     vl_logic;
        SPI0SSO         : out    vl_logic_vector(7 downto 0);
        UART0TXD        : out    vl_logic;
        UART0RXD        : in     vl_logic;
        I2C0SDAI        : in     vl_logic;
        I2C0SDAO        : out    vl_logic;
        I2C0SCLI        : in     vl_logic;
        I2C0SCLO        : out    vl_logic;
        SPI1DO          : out    vl_logic;
        SPI1DOE         : out    vl_logic;
        SPI1DI          : in     vl_logic;
        SPI1CLKI        : in     vl_logic;
        SPI1CLKO        : out    vl_logic;
        SPI1MODE        : out    vl_logic;
        SPI1SSI         : in     vl_logic;
        SPI1SSO         : out    vl_logic_vector(7 downto 0);
        UART1TXD        : out    vl_logic;
        UART1RXD        : in     vl_logic;
        I2C1SDAI        : in     vl_logic;
        I2C1SDAO        : out    vl_logic;
        I2C1SCLI        : in     vl_logic;
        I2C1SCLO        : out    vl_logic;
        MACTXD          : out    vl_logic_vector(1 downto 0);
        MACRXD          : in     vl_logic_vector(1 downto 0);
        MACTXEN         : out    vl_logic;
        MACCRSDV        : in     vl_logic;
        MACRXER         : in     vl_logic;
        MACMDI          : in     vl_logic;
        MACMDO          : out    vl_logic;
        MACMDEN         : out    vl_logic;
        MACMDC          : out    vl_logic;
        EMCCLK          : out    vl_logic;
        EMCCLKRTN       : in     vl_logic;
        EMCRDB          : in     vl_logic_vector(15 downto 0);
        EMCAB           : out    vl_logic_vector(25 downto 0);
        EMCWDB          : out    vl_logic_vector(15 downto 0);
        EMCRWn          : out    vl_logic;
        EMCCS0n         : out    vl_logic;
        EMCCS1n         : out    vl_logic;
        EMCOEN0n        : out    vl_logic;
        EMCOEN1n        : out    vl_logic;
        EMCBYTEN        : out    vl_logic_vector(1 downto 0);
        EMCDBOE         : out    vl_logic;
        ADC0            : in     vl_logic;
        ADC1            : in     vl_logic;
        ADC2            : in     vl_logic;
        ADC3            : in     vl_logic;
        ADC4            : in     vl_logic;
        ADC5            : in     vl_logic;
        ADC6            : in     vl_logic;
        ADC7            : in     vl_logic;
        ADC8            : in     vl_logic;
        ADC9            : in     vl_logic;
        ADC10           : in     vl_logic;
        ADC11           : in     vl_logic;
        SDD0            : out    vl_logic;
        SDD1            : out    vl_logic;
        SDD2            : out    vl_logic;
        ABPS0           : in     vl_logic;
        ABPS1           : in     vl_logic;
        ABPS2           : in     vl_logic;
        ABPS3           : in     vl_logic;
        ABPS4           : in     vl_logic;
        ABPS5           : in     vl_logic;
        ABPS6           : in     vl_logic;
        ABPS7           : in     vl_logic;
        ABPS8           : in     vl_logic;
        ABPS9           : in     vl_logic;
        ABPS10          : in     vl_logic;
        ABPS11          : in     vl_logic;
        TM0             : in     vl_logic;
        TM1             : in     vl_logic;
        TM2             : in     vl_logic;
        TM3             : in     vl_logic;
        TM4             : in     vl_logic;
        TM5             : in     vl_logic;
        CM0             : in     vl_logic;
        CM1             : in     vl_logic;
        CM2             : in     vl_logic;
        CM3             : in     vl_logic;
        CM4             : in     vl_logic;
        CM5             : in     vl_logic;
        GNDTM0          : in     vl_logic;
        GNDTM1          : in     vl_logic;
        GNDTM2          : in     vl_logic;
        VAREF0          : in     vl_logic;
        VAREF1          : in     vl_logic;
        VAREF2          : in     vl_logic;
        VAREFOUT        : out    vl_logic;
        GNDVAREF        : in     vl_logic;
        PUn             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ACT_CONFIG : constant is 1;
    attribute mti_svvh_generic_type of ACT_FCLK : constant is 1;
    attribute mti_svvh_generic_type of ACT_DIE : constant is 1;
    attribute mti_svvh_generic_type of ACT_PKG : constant is 1;
    attribute mti_svvh_generic_type of VECTFILE : constant is 1;
end MSS_APB_IP;
