library verilog;
use verilog.vl_types.all;
entity SINGLE_PORT_RAM is
    generic(
        DEPTH           : integer := 9;
        WIDTH           : integer := 16
    );
    port(
        CLK             : in     vl_logic;
        WEN             : in     vl_logic;
        ADDR            : in     vl_logic_vector;
        WD              : in     vl_logic_vector;
        RD              : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEPTH : constant is 1;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end SINGLE_PORT_RAM;
