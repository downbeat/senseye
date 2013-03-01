library verilog;
use verilog.vl_types.all;
entity MSS_BFM_AHB2APB is
    generic(
        TPD             : real    := 1.000000e-001;
        T0              : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi0);
        T2              : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi1);
        T345            : vl_logic_vector(2 downto 0) := (Hi1, Hi1, Hi0);
        TR0             : vl_logic_vector(2 downto 0) := (Hi1, Hi1, Hi1);
        WAIT1           : vl_logic_vector(2 downto 0) := (Hi0, Hi0, Hi1);
        WAIT2           : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi0);
        WAIT3           : vl_logic_vector(2 downto 0) := (Hi0, Hi1, Hi1);
        WAIT4           : vl_logic_vector(2 downto 0) := (Hi1, Hi0, Hi0);
        idle            : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        waitone         : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        waittwo         : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        waitthree       : vl_logic_vector(1 downto 0) := (Hi1, Hi1)
    );
    port(
        HCLK            : in     vl_logic;
        HRESETN         : in     vl_logic;
        HSEL            : in     vl_logic;
        HWRITE          : in     vl_logic;
        HADDR           : in     vl_logic_vector(31 downto 0);
        HWDATA          : in     vl_logic_vector(31 downto 0);
        HRDATA          : out    vl_logic_vector(31 downto 0);
        HREADYIN        : in     vl_logic;
        HREADYOUT       : out    vl_logic;
        HTRANS          : in     vl_logic_vector(1 downto 0);
        HSIZE           : in     vl_logic_vector(2 downto 0);
        HBURST          : in     vl_logic_vector(2 downto 0);
        HMASTLOCK       : in     vl_logic;
        HPROT           : in     vl_logic_vector(3 downto 0);
        HRESP           : out    vl_logic;
        PSEL            : out    vl_logic_vector(15 downto 0);
        PADDR           : out    vl_logic_vector(31 downto 0);
        PWRITE          : out    vl_logic;
        PENABLE         : out    vl_logic;
        PWDATA          : out    vl_logic_vector(31 downto 0);
        PRDATA          : in     vl_logic_vector(31 downto 0);
        PREADY          : in     vl_logic;
        PSLVERR         : in     vl_logic;
        PCLK_DIV        : in     vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TPD : constant is 2;
    attribute mti_svvh_generic_type of T0 : constant is 2;
    attribute mti_svvh_generic_type of T2 : constant is 2;
    attribute mti_svvh_generic_type of T345 : constant is 2;
    attribute mti_svvh_generic_type of TR0 : constant is 2;
    attribute mti_svvh_generic_type of WAIT1 : constant is 2;
    attribute mti_svvh_generic_type of WAIT2 : constant is 2;
    attribute mti_svvh_generic_type of WAIT3 : constant is 2;
    attribute mti_svvh_generic_type of WAIT4 : constant is 2;
    attribute mti_svvh_generic_type of idle : constant is 2;
    attribute mti_svvh_generic_type of waitone : constant is 2;
    attribute mti_svvh_generic_type of waittwo : constant is 2;
    attribute mti_svvh_generic_type of waitthree : constant is 2;
end MSS_BFM_AHB2APB;
