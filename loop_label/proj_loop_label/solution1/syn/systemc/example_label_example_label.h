// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.0
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _example_label_example_label_HH_
#define _example_label_example_label_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct example_label_example_label : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<32> > A_Addr_A;
    sc_out< sc_logic > A_EN_A;
    sc_out< sc_lv<4> > A_WEN_A;
    sc_out< sc_lv<32> > A_Din_A;
    sc_in< sc_lv<32> > A_Dout_A;
    sc_out< sc_logic > A_Clk_A;
    sc_out< sc_logic > A_Rst_A;
    sc_out< sc_lv<32> > B_Addr_A;
    sc_out< sc_logic > B_EN_A;
    sc_out< sc_lv<4> > B_WEN_A;
    sc_out< sc_lv<32> > B_Din_A;
    sc_in< sc_lv<32> > B_Dout_A;
    sc_out< sc_logic > B_Clk_A;
    sc_out< sc_logic > B_Rst_A;


    // Module declarations
    example_label_example_label(sc_module_name name);
    SC_HAS_PROCESS(example_label_example_label);

    ~example_label_example_label();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<6> > i_reg_70;
    sc_signal< sc_lv<1> > icmp_ln78_fu_81_p2;
    sc_signal< sc_lv<1> > icmp_ln78_reg_105;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<6> > add_ln78_fu_87_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln79_fu_93_p1;
    sc_signal< sc_lv<64> > zext_ln79_reg_114;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > A_Addr_A_orig;
    sc_signal< sc_lv<32> > B_Addr_A_orig;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_fsm_state1;
    static const sc_lv<3> ap_ST_fsm_pp0_stage0;
    static const sc_lv<3> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<6> ap_const_lv6_32;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<32> ap_const_lv32_5;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_Addr_A();
    void thread_A_Addr_A_orig();
    void thread_A_Clk_A();
    void thread_A_Din_A();
    void thread_A_EN_A();
    void thread_A_Rst_A();
    void thread_A_WEN_A();
    void thread_B_Addr_A();
    void thread_B_Addr_A_orig();
    void thread_B_Clk_A();
    void thread_B_Din_A();
    void thread_B_EN_A();
    void thread_B_Rst_A();
    void thread_B_WEN_A();
    void thread_add_ln78_fu_87_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_icmp_ln78_fu_81_p2();
    void thread_zext_ln79_fu_93_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
