// ==============================================================
// Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x0 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read)
//       bit 4  - ap_continue (Read/Write/SC)
//       bit 7  - auto_restart (Read/Write)
//       others - reserved
// 0x4 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x8 : IP Interrupt Enable Register (Read/Write)
//       bit 0  - Channel 0 (ap_done)
//       bit 1  - Channel 1 (ap_ready)
//       others - reserved
// 0xc : IP Interrupt Status Register (Read/TOW)
//       bit 0  - Channel 0 (ap_done)
//       bit 1  - Channel 1 (ap_ready)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL 0x0
#define XEXAMPLE_EXAMPLE_CONTROL_ADDR_GIE     0x4
#define XEXAMPLE_EXAMPLE_CONTROL_ADDR_IER     0x8
#define XEXAMPLE_EXAMPLE_CONTROL_ADDR_ISR     0xc

