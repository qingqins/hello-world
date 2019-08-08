// ==============================================================
// Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xexample_example.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XExample_example_CfgInitialize(XExample_example *InstancePtr, XExample_example_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XExample_example_Start(XExample_example *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XExample_example_IsDone(XExample_example *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XExample_example_IsIdle(XExample_example *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XExample_example_IsReady(XExample_example *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XExample_example_Continue(XExample_example *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XExample_example_EnableAutoRestart(XExample_example *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XExample_example_DisableAutoRestart(XExample_example *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_AP_CTRL, 0);
}

void XExample_example_InterruptGlobalEnable(XExample_example *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_GIE, 1);
}

void XExample_example_InterruptGlobalDisable(XExample_example *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_GIE, 0);
}

void XExample_example_InterruptEnable(XExample_example *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_IER);
    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_IER, Register | Mask);
}

void XExample_example_InterruptDisable(XExample_example *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_IER);
    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XExample_example_InterruptClear(XExample_example *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_example_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_ISR, Mask);
}

u32 XExample_example_InterruptGetEnabled(XExample_example *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_IER);
}

u32 XExample_example_InterruptGetStatus(XExample_example *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XExample_example_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_EXAMPLE_CONTROL_ADDR_ISR);
}

