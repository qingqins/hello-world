#include "example.h"

void example(hls::stream<data_t>& A, hls::stream<data_t>& B){
#pragma HLS dataflow
#pragma HLS INTERFACE axis port=&A
#pragma HLS INTERFACE axis port=&B
    hls::stream<int> data_channel1;
    hls::stream<int> data_channel2;
#pragma HLS stream depth=8 variable=data_channel1,data_channel2
    proc_1(A, data_channel1, data_channel2);
    proc_2(B, data_channel1, data_channel2);
}
int test1() {
    return 1;
}
int test2() {
    return 0;
}

void proc_1(hls::stream<data_t>& A, hls::stream<int>& data_channel1, hls::stream<int>& data_channel2){
  int i,j,k;
  data_t tmp;
  j=0;
  if (j< 5) {
    for(i = 0; i < 10; i++){
      tmp = A.read();
      tmp.data = tmp.data.to_int(); 
      data_channel1.write(tmp.data); 
    }
    for(i = 0; i < 10; i++){
      tmp.data = tmp.data.to_int();
      data_channel2.write(tmp.data);
    }
    k = test1();
  }  else {
    for(i = 0; i < 10; i++){
      tmp = A.read();
      tmp.data = tmp.data.to_int() + 1;
      data_channel1.write(tmp.data);
    } 
    for(i = 0; i < 10; i++){
      tmp.data = tmp.data.to_int() + 1; 
      data_channel2.write(tmp.data); 
    }
    k = test2(); 
  }
}

void proc_2(hls::stream<data_t>& B, hls::stream<int>& data_channel1, hls::stream<int>& data_channel2){
  int i;
  data_t tmp;
  tmp.data = 0;
  tmp.keep = 1;
  tmp.strb = 1;
  tmp.user = 1;
  tmp.last = 0;
  tmp.id = 0;
  tmp.dest = 1;
  for(i = 0; i < 10; i++){
    if (i < 5)
    tmp.data = data_channel2.read() + data_channel1.read();
    else
    tmp.data = data_channel2.read() + data_channel1.read() + 1;
    B.write(tmp);
  }
}
