// ==============================================================
// Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XEXAMPLE_EXAMPLE_H
#define XEXAMPLE_EXAMPLE_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xexample_example_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XExample_example_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 IsReady;
} XExample_example;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XExample_example_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XExample_example_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XExample_example_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XExample_example_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XExample_example_Initialize(XExample_example *InstancePtr, u16 DeviceId);
XExample_example_Config* XExample_example_LookupConfig(u16 DeviceId);
int XExample_example_CfgInitialize(XExample_example *InstancePtr, XExample_example_Config *ConfigPtr);
#else
int XExample_example_Initialize(XExample_example *InstancePtr, const char* InstanceName);
int XExample_example_Release(XExample_example *InstancePtr);
#endif

void XExample_example_Start(XExample_example *InstancePtr);
u32 XExample_example_IsDone(XExample_example *InstancePtr);
u32 XExample_example_IsIdle(XExample_example *InstancePtr);
u32 XExample_example_IsReady(XExample_example *InstancePtr);
void XExample_example_Continue(XExample_example *InstancePtr);
void XExample_example_EnableAutoRestart(XExample_example *InstancePtr);
void XExample_example_DisableAutoRestart(XExample_example *InstancePtr);


void XExample_example_InterruptGlobalEnable(XExample_example *InstancePtr);
void XExample_example_InterruptGlobalDisable(XExample_example *InstancePtr);
void XExample_example_InterruptEnable(XExample_example *InstancePtr, u32 Mask);
void XExample_example_InterruptDisable(XExample_example *InstancePtr, u32 Mask);
void XExample_example_InterruptClear(XExample_example *InstancePtr, u32 Mask);
u32 XExample_example_InterruptGetEnabled(XExample_example *InstancePtr);
u32 XExample_example_InterruptGetStatus(XExample_example *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
