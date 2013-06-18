quietly set ACTELLIBNAME smartfusion
quietly set PROJECT_DIR "Z:/russ/private/research/senseye/git/sw/smartfusion/impl/libero/insight"
source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";source "${PROJECT_DIR}/simulation/CompileDssBfm.tcl";

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   vlib postsynth
}
vmap postsynth postsynth
vmap smartfusion "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap proasic3 "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap  "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap MSS_BFM_LIB "../component/Actel/SmartFusionMSS/MSS/2.5.106/mti/user_verilog/MSS_BFM_LIB"
vcom -work MSS_BFM_LIB -force_refresh
vlog -work MSS_BFM_LIB -force_refresh
vmap COREAPB3_LIB "../component/Actel/DirectCore/CoreAPB3/3.0.103/mti/user_vlog/COREAPB3_LIB"
vcom -work COREAPB3_LIB -force_refresh
vlog -work COREAPB3_LIB -force_refresh
vmap COREAHBLITE_LIB "../component/Actel/DirectCore/CoreAHBLite/3.1.102/mti/user_vlog/COREAHBLITE_LIB"
vcom -work COREAHBLITE_LIB -force_refresh
vlog -work COREAHBLITE_LIB -force_refresh

vlog  -work postsynth "${PROJECT_DIR}/synthesis/TOPLEVEL.v"
vlog "+incdir+${PROJECT_DIR}/component/work/TOPLEVEL"  -work postsynth "${PROJECT_DIR}/component/work/TOPLEVEL/testbench.v"

vsim -L smartfusion -L postsynth -L MSS_BFM_LIB -L COREAPB3_LIB -L COREAHBLITE_LIB  -t 1ps postsynth.testbench
add wave /testbench/*
run 1000ns
