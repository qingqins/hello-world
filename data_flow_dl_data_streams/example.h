#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef  ap_axis<32,2,5,6> data_t;

void example(hls::stream<data_t>& A, hls::stream<data_t>& B);
void proc_1(hls::stream<data_t>& A, hls::stream<int>& data_channel1, hls::stream<int>& data_channel2);
void proc_2(hls::stream<data_t>& B, hls::stream<int>& data_channel1, hls::stream<int>& data_channel2);
