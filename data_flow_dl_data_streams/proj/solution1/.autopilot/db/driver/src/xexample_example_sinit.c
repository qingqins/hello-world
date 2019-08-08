// ==============================================================
// Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xexample_example.h"

extern XExample_example_Config XExample_example_ConfigTable[];

XExample_example_Config *XExample_example_LookupConfig(u16 DeviceId) {
	XExample_example_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEXAMPLE_EXAMPLE_NUM_INSTANCES; Index++) {
		if (XExample_example_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XExample_example_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XExample_example_Initialize(XExample_example *InstancePtr, u16 DeviceId) {
	XExample_example_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XExample_example_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XExample_example_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

