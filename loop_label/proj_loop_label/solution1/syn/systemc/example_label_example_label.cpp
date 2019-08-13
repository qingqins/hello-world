// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.0
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "example_label_example_label.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic example_label_example_label::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic example_label_example_label::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> example_label_example_label::ap_ST_fsm_state1 = "1";
const sc_lv<3> example_label_example_label::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> example_label_example_label::ap_ST_fsm_state4 = "100";
const sc_lv<32> example_label_example_label::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool example_label_example_label::ap_const_boolean_1 = true;
const sc_lv<32> example_label_example_label::ap_const_lv32_1 = "1";
const bool example_label_example_label::ap_const_boolean_0 = false;
const sc_lv<1> example_label_example_label::ap_const_lv1_0 = "0";
const sc_lv<1> example_label_example_label::ap_const_lv1_1 = "1";
const sc_lv<6> example_label_example_label::ap_const_lv6_0 = "000000";
const sc_lv<32> example_label_example_label::ap_const_lv32_2 = "10";
const sc_lv<4> example_label_example_label::ap_const_lv4_0 = "0000";
const sc_lv<4> example_label_example_label::ap_const_lv4_F = "1111";
const sc_lv<6> example_label_example_label::ap_const_lv6_32 = "110010";
const sc_lv<6> example_label_example_label::ap_const_lv6_1 = "1";
const sc_lv<32> example_label_example_label::ap_const_lv32_5 = "101";

example_label_example_label::example_label_example_label(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_A_Addr_A);
    sensitive << ( A_Addr_A_orig );

    SC_METHOD(thread_A_Addr_A_orig);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( zext_ln79_fu_93_p1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_A_Clk_A);
    sensitive << ( ap_clk );

    SC_METHOD(thread_A_Din_A);

    SC_METHOD(thread_A_EN_A);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_A_Rst_A);
    sensitive << ( ap_rst );

    SC_METHOD(thread_A_WEN_A);

    SC_METHOD(thread_B_Addr_A);
    sensitive << ( B_Addr_A_orig );

    SC_METHOD(thread_B_Addr_A_orig);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( zext_ln79_reg_114 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_B_Clk_A);
    sensitive << ( ap_clk );

    SC_METHOD(thread_B_Din_A);
    sensitive << ( A_Dout_A );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );

    SC_METHOD(thread_B_EN_A);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_B_Rst_A);
    sensitive << ( ap_rst );

    SC_METHOD(thread_B_WEN_A);
    sensitive << ( icmp_ln78_reg_105 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_add_ln78_fu_87_p2);
    sensitive << ( i_reg_70 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( icmp_ln78_fu_81_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_icmp_ln78_fu_81_p2);
    sensitive << ( i_reg_70 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_zext_ln79_fu_93_p1);
    sensitive << ( i_reg_70 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln78_fu_81_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "example_label_example_label_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, A_Addr_A, "(port)A_Addr_A");
    sc_trace(mVcdFile, A_EN_A, "(port)A_EN_A");
    sc_trace(mVcdFile, A_WEN_A, "(port)A_WEN_A");
    sc_trace(mVcdFile, A_Din_A, "(port)A_Din_A");
    sc_trace(mVcdFile, A_Dout_A, "(port)A_Dout_A");
    sc_trace(mVcdFile, A_Clk_A, "(port)A_Clk_A");
    sc_trace(mVcdFile, A_Rst_A, "(port)A_Rst_A");
    sc_trace(mVcdFile, B_Addr_A, "(port)B_Addr_A");
    sc_trace(mVcdFile, B_EN_A, "(port)B_EN_A");
    sc_trace(mVcdFile, B_WEN_A, "(port)B_WEN_A");
    sc_trace(mVcdFile, B_Din_A, "(port)B_Din_A");
    sc_trace(mVcdFile, B_Dout_A, "(port)B_Dout_A");
    sc_trace(mVcdFile, B_Clk_A, "(port)B_Clk_A");
    sc_trace(mVcdFile, B_Rst_A, "(port)B_Rst_A");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_reg_70, "i_reg_70");
    sc_trace(mVcdFile, icmp_ln78_fu_81_p2, "icmp_ln78_fu_81_p2");
    sc_trace(mVcdFile, icmp_ln78_reg_105, "icmp_ln78_reg_105");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, add_ln78_fu_87_p2, "add_ln78_fu_87_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, zext_ln79_fu_93_p1, "zext_ln79_fu_93_p1");
    sc_trace(mVcdFile, zext_ln79_reg_114, "zext_ln79_reg_114");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, A_Addr_A_orig, "A_Addr_A_orig");
    sc_trace(mVcdFile, B_Addr_A_orig, "B_Addr_A_orig");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
    mHdltvinHandle.open("example_label_example_label.hdltvin.dat");
    mHdltvoutHandle.open("example_label_example_label.hdltvout.dat");
}

example_label_example_label::~example_label_example_label() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
}

void example_label_example_label::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
         esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_70 = ap_const_lv6_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
                esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
                esl_seteq<1,1,1>(icmp_ln78_fu_81_p2.read(), ap_const_lv1_0))) {
        i_reg_70 = add_ln78_fu_87_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln78_reg_105 = icmp_ln78_fu_81_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln78_fu_81_p2.read(), ap_const_lv1_0))) {
        zext_ln79_reg_114 = zext_ln79_fu_93_p1.read();
    }
}

void example_label_example_label::thread_A_Addr_A() {
    A_Addr_A = (!ap_const_lv32_2.is_01())? sc_lv<32>(): A_Addr_A_orig.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void example_label_example_label::thread_A_Addr_A_orig() {
    A_Addr_A_orig =  (sc_lv<32>) (zext_ln79_fu_93_p1.read());
}

void example_label_example_label::thread_A_Clk_A() {
    A_Clk_A = ap_clk.read()? SC_LOGIC_1 : SC_LOGIC_0;
}

void example_label_example_label::thread_A_Din_A() {
    A_Din_A = ap_const_lv32_0;
}

void example_label_example_label::thread_A_EN_A() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()))) {
        A_EN_A = ap_const_logic_1;
    } else {
        A_EN_A = ap_const_logic_0;
    }
}

void example_label_example_label::thread_A_Rst_A() {
    A_Rst_A = ap_rst.read();
}

void example_label_example_label::thread_A_WEN_A() {
    A_WEN_A = ap_const_lv4_0;
}

void example_label_example_label::thread_B_Addr_A() {
    B_Addr_A = (!ap_const_lv32_2.is_01())? sc_lv<32>(): B_Addr_A_orig.read() << (unsigned short)ap_const_lv32_2.to_uint();
}

void example_label_example_label::thread_B_Addr_A_orig() {
    B_Addr_A_orig =  (sc_lv<32>) (zext_ln79_reg_114.read());
}

void example_label_example_label::thread_B_Clk_A() {
    B_Clk_A = ap_clk.read()? SC_LOGIC_1 : SC_LOGIC_0;
}

void example_label_example_label::thread_B_Din_A() {
    B_Din_A = (!A_Dout_A.read().is_01() || !ap_const_lv32_5.is_01())? sc_lv<32>(): (sc_biguint<32>(A_Dout_A.read()) + sc_biguint<32>(ap_const_lv32_5));
}

void example_label_example_label::thread_B_EN_A() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        B_EN_A = ap_const_logic_1;
    } else {
        B_EN_A = ap_const_logic_0;
    }
}

void example_label_example_label::thread_B_Rst_A() {
    B_Rst_A = ap_rst.read();
}

void example_label_example_label::thread_B_WEN_A() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln78_reg_105.read(), ap_const_lv1_0))) {
        B_WEN_A = ap_const_lv4_F;
    } else {
        B_WEN_A = ap_const_lv4_0;
    }
}

void example_label_example_label::thread_add_ln78_fu_87_p2() {
    add_ln78_fu_87_p2 = (!i_reg_70.read().is_01() || !ap_const_lv6_1.is_01())? sc_lv<6>(): (sc_biguint<6>(i_reg_70.read()) + sc_biguint<6>(ap_const_lv6_1));
}

void example_label_example_label::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void example_label_example_label::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void example_label_example_label::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[2];
}

void example_label_example_label::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example_label_example_label::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example_label_example_label::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example_label_example_label::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example_label_example_label::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void example_label_example_label::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(icmp_ln78_fu_81_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void example_label_example_label::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void example_label_example_label::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void example_label_example_label::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void example_label_example_label::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void example_label_example_label::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void example_label_example_label::thread_icmp_ln78_fu_81_p2() {
    icmp_ln78_fu_81_p2 = (!i_reg_70.read().is_01() || !ap_const_lv6_32.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_70.read() == ap_const_lv6_32);
}

void example_label_example_label::thread_zext_ln79_fu_93_p1() {
    zext_ln79_fu_93_p1 = esl_zext<64,6>(i_reg_70.read());
}

void example_label_example_label::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln78_fu_81_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln78_fu_81_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

void example_label_example_label::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Addr_A\" :  \"" << A_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_EN_A\" :  \"" << A_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_WEN_A\" :  \"" << A_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Din_A\" :  \"" << A_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"A_Dout_A\" :  \"" << A_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Clk_A\" :  \"" << A_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"A_Rst_A\" :  \"" << A_Rst_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Addr_A\" :  \"" << B_Addr_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_EN_A\" :  \"" << B_EN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_WEN_A\" :  \"" << B_WEN_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Din_A\" :  \"" << B_Din_A.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"B_Dout_A\" :  \"" << B_Dout_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Clk_A\" :  \"" << B_Clk_A.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"B_Rst_A\" :  \"" << B_Rst_A.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

