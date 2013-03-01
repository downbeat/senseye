library verilog;
use verilog.vl_types.all;
entity dp512x32 is
    generic(
        word_width      : integer := 32;
        word_depth      : integer := 512;
        nb_address      : integer := 9;
        MEMORYFILE      : string  := ""
    );
    port(
        AA              : in     vl_logic_vector;
        DIA             : in     vl_logic_vector;
        DOA             : out    vl_logic_vector;
        WIBA            : in     vl_logic_vector;
        CLKA            : in     vl_logic;
        CSBA            : in     vl_logic;
        RWBA            : in     vl_logic;
        AB              : in     vl_logic_vector;
        DIB             : in     vl_logic_vector;
        DOB             : out    vl_logic_vector;
        WIBB            : in     vl_logic_vector;
        CLKB            : in     vl_logic;
        CSBB            : in     vl_logic;
        RWBB            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of word_width : constant is 1;
    attribute mti_svvh_generic_type of word_depth : constant is 1;
    attribute mti_svvh_generic_type of nb_address : constant is 1;
    attribute mti_svvh_generic_type of MEMORYFILE : constant is 1;
end dp512x32;
