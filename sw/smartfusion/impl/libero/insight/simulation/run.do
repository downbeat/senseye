quietly set ACTELLIBNAME smartfusion
quietly set PROJECT_DIR "Z:/russ/private/research/insight/git/sw/smartfusion/impl/libero/insight"
source "${PROJECT_DIR}/simulation/bfmtovec_compile.tcl";source "${PROJECT_DIR}/simulation/CompileDssBfm.tcl";

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   vlib presynth
}
vmap presynth presynth
vmap smartfusion "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap proasic3 "C:/Microsemi/Libero_v10.1/Designer/lib/modelsim/precompiled/vlog/smartfusion"
vmap MSS_BFM_LIB "../component/Actel/SmartFusionMSS/MSS/2.5.106/mti/user_verilog/MSS_BFM_LIB"
vcom -work MSS_BFM_LIB -force_refresh
vlog -work MSS_BFM_LIB -force_refresh
vmap COREAPB3_LIB "../component/Actel/DirectCore/CoreAPB3/3.0.103/mti/user_vlog/COREAPB3_LIB"
vcom -work COREAPB3_LIB -force_refresh
vlog -work COREAPB3_LIB -force_refresh
vmap COREAHBLITE_LIB "../component/Actel/DirectCore/CoreAHBLite/3.1.102/mti/user_vlog/COREAHBLITE_LIB"
vcom -work COREAHBLITE_LIB -force_refresh
vlog -work COREAHBLITE_LIB -force_refresh

vlog  -work presynth "${PROJECT_DIR}/hdl/adc081s101.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/clkgenerator.v"
vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/COREAHBTOAPB3/2.0.116/rtl/vlog/core_obfuscated/ahbtoapbsm.v"
vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/COREAHBTOAPB3/2.0.116/rtl/vlog/core_obfuscated/penablescheduler.v"
vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/COREAHBTOAPB3/2.0.116/rtl/vlog/core_obfuscated/apbaddrdata.v"
vlog  -work presynth "${PROJECT_DIR}/component/Actel/DirectCore/COREAHBTOAPB3/2.0.116/rtl/vlog/core_obfuscated/coreahbtoapb3.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/counter.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/fifo_32bit_apb3.v"
vlog  -work presynth "${PROJECT_DIR}/smartgen/FIFO_PIXEL/FIFO_PIXEL.v"
vlog  -work presynth "${PROJECT_DIR}/smartgen/FIFO_TEST_COUNTER/FIFO_TEST_COUNTER.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/inputConditioner.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/MSS_CORE2/MSS_CCC_0/MSS_CORE2_tmp_MSS_CCC_0_MSS_CCC.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/MSS_CORE2/MSS_CORE2.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/ahb.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/cr_int.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/psram_cr.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/stonyman.v"
vlog  -work presynth "${PROJECT_DIR}/hdl/stonyman_apb3.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_addrdec.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_defaultslavesm.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_masterstage.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_slavearbiter.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_slavestage.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_initcfg_awrap.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_initcfg.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite_matrix2x16.v"
vlog  -work COREAHBLITE_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAHBLite/3.1.102/rtl/vlog/core_obfuscated/coreahblite.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/3.0.103/rtl/vlog/core_obfuscated/coreapb3_muxptob3.v"
vlog  -work COREAPB3_LIB "${PROJECT_DIR}/component/Actel/DirectCore/CoreAPB3/3.0.103/rtl/vlog/core_obfuscated/coreapb3.v"
vlog  -work presynth "${PROJECT_DIR}/component/work/TOPLEVEL/TOPLEVEL.v"
vlog "+incdir+${PROJECT_DIR}/component/work/TOPLEVEL"  -work presynth "${PROJECT_DIR}/component/work/TOPLEVEL/testbench.v"

vsim -L smartfusion -L presynth -L MSS_BFM_LIB -L COREAPB3_LIB -L COREAHBLITE_LIB  -t 1ps presynth.testbench
add wave /testbench/*
run 1000ns
