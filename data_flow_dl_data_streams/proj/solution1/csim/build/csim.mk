# ==============================================================
# Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

__USE_CLANG__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../example_test.cpp ../../../../example.cpp

TARGET := csim.exe

AUTOPILOT_ROOT := /proj/xbuilds/2019.2_0801_1/installs/lin64/Scout/HEAD
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /proj/xbuilds/2019.2_0801_1/installs/lin64/Vivado/HEAD/tps/lnx64/gcc-6.2.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9-csynth/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_TOOL}/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
IFLAG += -Wno-unknown-pragmas 
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += 
TOOLCHAIN += 
CCFLAG += -gcc-toolchain /proj/xbuilds/2019.2_0801_1/installs/lin64/Vivado/HEAD/tps/lnx64/gcc-6.2.0
LFLAG += -gcc-toolchain /proj/xbuilds/2019.2_0801_1/installs/lin64/Vivado/HEAD/tps/lnx64/gcc-6.2.0
CCFLAG += -fno-exceptions
LFLAG += -fno-exceptions
CCFLAG += -fprofile-instr-generate="code-%m.profraw"
LFLAG += -fprofile-instr-generate="code-%m.profraw"
CCFLAG += -Wno-c++11-narrowing
CCFLAG += -Werror=uninitialized
CCFLAG += -std=c++11
LFLAG += -std=c++11



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/example_test.o: ../../../../example_test.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../example_test.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/example_test.d

$(ObjDir)/example.o: ../../../../example.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../example.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CXX) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/example.d

profile_all: *.profraw
	${AP_CLANG_PATH}/llvm-profdata merge -output=code.profdata $<
	${CXX} ${lang_opt} -gcc-toolchain /proj/xbuilds/2019.2_0801_1/installs/lin64/Vivado/HEAD/tps/lnx64/gcc-6.2.0 -fno-exceptions -fprofile-instr-use=code.profdata -S -emit-llvm  $(IFLAG) $(DFLAG) ${HLS_SOURCES}
	${MKDIR} /proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/proj/solution1/.autopilot/db/dot
	${CP} *.ll /proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/proj/solution1/.autopilot/db/dot
	${CD} /proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/proj/solution1/.autopilot/db/dot ; \
	${AP_CLANG_PATH}/llvm-as example_test.ll -o example_test.bc -f; \
	${AP_CLANG_PATH}/llvm-as example.ll -o example.bc -f; \
	${AP_CLANG_PATH}/llvm-link -o example_link.bc example_test.bc example.bc  -f; \
	${AP_CLANG_PATH}/llvm-dis example_link.bc -o example_link.ll -f; \
	${AP_CLANG_PATH}/opt -dot-callgraph-hls -cfg-hier-userfilelist "/proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/example_test.cpp /proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/example.cpp" -csim-top-function-name=example example_link.ll -o example_link_fid.bc; \
	${AP_CLANG_PATH}/llvm-dis example_link_fid.bc -o example_link_fid.ll -f; \
	${AP_CLANG_PATH}/opt -dot-cfg-hier-only -cfg-hier-userfilelist "/proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/example_test.cpp /proj/autoesl/qingqing/Testcases/hls/UnitSuite/Features/Deadlock/data_flow_dl_data_streams/example.cpp" -cfg-hier-type csim example_link_fid.ll -o /dev/null; \
