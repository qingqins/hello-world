/*******************************************************************************
Vendor: Xilinx 
Associated Filename: example_test.cpp
Purpose: AXI stream interface example for Vivado HLS using side channel data
Revision History: February 13, 2012 - initial release
                                                
*******************************************************************************
__VIVADO_HLS_COPYRIGHT-INFO__

This file contains confidential and proprietary information of Xilinx, Inc. and 
is protected under U.S. and international copyright and other intellectual 
property laws.

DISCLAIMER
This disclaimer is not a license and does not grant any rights to the materials 
distributed herewith. Except as otherwise provided in a valid license issued to 
you by Xilinx, and to the maximum extent permitted by applicable law: 
(1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX 
HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, OR 
FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable (whether 
in contract or tort, including negligence, or under any other theory of 
liability) for any loss or damage of any kind or nature related to, arising under 
or in connection with these materials, including for any direct, or any indirect, 
special, incidental, or consequential loss or damage (including loss of data, 
profits, goodwill, or any type of loss or damage suffered as a result of any 
action brought by a third party) even if such damage or loss was reasonably 
foreseeable or Xilinx had been advised of the possibility of the same.

CRITICAL APPLICATIONS
Xilinx products are not designed or intended to be fail-safe, or for use in any 
application requiring fail-safe performance, such as life-support or safety 
devices or systems, Class III medical devices, nuclear facilities, applications 
related to the deployment of airbags, or any other applications that could lead 
to death, personal injury, or severe property or environmental damage 
(individually and collectively, "Critical Applications"). Customer assumes the 
sole risk and liability of any use of Xilinx products in Critical Applications, 
subject only to applicable laws and regulations governing limitations on product 
liability. 

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT 
ALL TIMES.

*******************************************************************************/
#include <stdio.h>
#include "ap_axi_sdata.h"
#include "hls_stream.h"


#define SIZE 10
typedef  ap_axis<32,2,5,6> data_t;
extern void example(hls::stream<data_t>& A, hls::stream<data_t>& B);

int main()
{
  int i;
  hls::stream<ap_axis<32,2,5,6> > A;
  hls::stream<ap_axis<32,2,5,6> > B;
    ap_axis<32,2,5,6> A_tmp;
    ap_axis<32,2,5,6> B_tmp;
    int time = 0;
  for   (time = 0 ; time < 4; time ++) {
      for(i=0; i < SIZE; i++){

        A_tmp.data = i + time;
        A_tmp.keep = 1;
        A_tmp.strb = 1;
        A_tmp.user = 1;
        A_tmp.last = 0;
        A_tmp.id = 0;
        A_tmp.dest = 1;
        A << A_tmp;
      }

      example(A,B);

      for(i=0; i < SIZE; i++){
          B_tmp = B.read();
       if (i< 5) {
        if(B_tmp.data.to_int() != i+time*2+SIZE-1){
          printf("ERROR: HW and SW results mismatch\n");
          return 1;
        }
      } else {
         if(B_tmp.data.to_int() != i+time*2+SIZE){
          printf("ERROR: HW and SW results mismatch\n");
          return 1;
        }
      }
      }
    }
  printf("Success: HW and SW results match\n");
  return 0;
}

/*
int main()
{
  int i;
  ap_axis<32,2,5,6> A[SIZE];
  ap_axis<32,2,5,6> B[SIZE];

  for(i=0; i < SIZE; i++){
    A[i].data = i;
    A[i].keep = 1;
    A[i].strb = 1;
    A[i].user = 1;
    A[i].last = 0;
    A[i].id = 0;
    A[i].dest = 1;
  }

  example(A,B);

  for(i=0; i < SIZE; i++){
    if(B[i].data.to_int() != (i+5)){
      printf("ERROR: HW and SW results mismatch\n");
      return 1;
    }
  }

  printf("Success: HW and SW results match\n");
  return 0;
}
*/
