
if grep -q "DEADLOCK DETECTED" scout_hls.log ; then
  echo "Found the expected error!"
#  exit 0
else
  echo "Did not find expected error!"
  exit 1
fi

echo "start post check for pragma HLS stream"
if grep -q "Implementing FIFO 'data_channel1.*(example_fifo_w32_d8_A)'" scout_hls.log ; then
        echo "PASS: check point 1."                                                  
else                                                                                 
        echo "FAILED: pragma HLS stream."                                            
        exit 1                                                                       
fi                                                                                   
if grep -q "Implementing FIFO 'data_channel2.*(example_fifo_w32_d8_A)'" scout_hls.log ; then
        echo "PASS: pragma HLS stream."                                              
        exit 0                                                                       
else                                                                                 
        echo "FAILED: pragma HLS stream."                                            
        exit 1                                                                       
fi
