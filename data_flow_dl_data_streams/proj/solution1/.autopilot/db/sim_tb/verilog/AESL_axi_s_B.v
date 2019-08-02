// ==============================================================
// Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_OUT_B_TDATA "./impl_rtl.example_example.autotvout_B_V_data_V.dat"
`define EGRESS_STATUS_B_TDATA "./stream_egress_status_B_V_data_V.dat"
`define TV_OUT_B_TKEEP "./impl_rtl.example_example.autotvout_B_V_keep_V.dat"
`define EGRESS_STATUS_B_TKEEP "./stream_egress_status_B_V_keep_V.dat"
`define TV_OUT_B_TSTRB "./impl_rtl.example_example.autotvout_B_V_strb_V.dat"
`define EGRESS_STATUS_B_TSTRB "./stream_egress_status_B_V_strb_V.dat"
`define TV_OUT_B_TUSER "./impl_rtl.example_example.autotvout_B_V_user_V.dat"
`define EGRESS_STATUS_B_TUSER "./stream_egress_status_B_V_user_V.dat"
`define TV_OUT_B_TLAST "./impl_rtl.example_example.autotvout_B_V_last_V.dat"
`define EGRESS_STATUS_B_TLAST "./stream_egress_status_B_V_last_V.dat"
`define TV_OUT_B_TID "./impl_rtl.example_example.autotvout_B_V_id_V.dat"
`define EGRESS_STATUS_B_TID "./stream_egress_status_B_V_id_V.dat"
`define TV_OUT_B_TDEST "./impl_rtl.example_example.autotvout_B_V_dest_V.dat"
`define EGRESS_STATUS_B_TDEST "./stream_egress_status_B_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 4

module AESL_axi_s_B (
    input clk,
    input reset,
    input [32 - 1:0] TRAN_B_TDATA,
    input [4 - 1:0] TRAN_B_TKEEP,
    input [4 - 1:0] TRAN_B_TSTRB,
    input [2 - 1:0] TRAN_B_TUSER,
    input TRAN_B_TLAST,
    input [5 - 1:0] TRAN_B_TID,
    input [6 - 1:0] TRAN_B_TDEST,
    input TRAN_B_TVALID,
    output TRAN_B_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_B_TVALID_temp;
    wire B_TDATA_full;
    wire B_TDATA_empty;
    reg B_TDATA_write_en;
    reg [32 - 1:0] B_TDATA_write_data;
    reg B_TDATA_read_en;
    wire [32 - 1:0] B_TDATA_read_data;
    
    fifo #(10, 32) fifo_B_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TDATA_write_en),
        .write_data(B_TDATA_write_data),
        .read_clock(clk),
        .read_en(B_TDATA_read_en),
        .read_data(B_TDATA_read_data),
        .full(B_TDATA_full),
        .empty(B_TDATA_empty));
    
    always @ (*) begin
        B_TDATA_write_en <= TRAN_B_TVALID;
        B_TDATA_write_data <= TRAN_B_TDATA;
        B_TDATA_read_en <= 0;
    end
    wire B_TKEEP_full;
    wire B_TKEEP_empty;
    reg B_TKEEP_write_en;
    reg [4 - 1:0] B_TKEEP_write_data;
    reg B_TKEEP_read_en;
    wire [4 - 1:0] B_TKEEP_read_data;
    
    fifo #(10, 4) fifo_B_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TKEEP_write_en),
        .write_data(B_TKEEP_write_data),
        .read_clock(clk),
        .read_en(B_TKEEP_read_en),
        .read_data(B_TKEEP_read_data),
        .full(B_TKEEP_full),
        .empty(B_TKEEP_empty));
    
    always @ (*) begin
        B_TKEEP_write_en <= TRAN_B_TVALID;
        B_TKEEP_write_data <= TRAN_B_TKEEP;
        B_TKEEP_read_en <= 0;
    end
    wire B_TSTRB_full;
    wire B_TSTRB_empty;
    reg B_TSTRB_write_en;
    reg [4 - 1:0] B_TSTRB_write_data;
    reg B_TSTRB_read_en;
    wire [4 - 1:0] B_TSTRB_read_data;
    
    fifo #(10, 4) fifo_B_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TSTRB_write_en),
        .write_data(B_TSTRB_write_data),
        .read_clock(clk),
        .read_en(B_TSTRB_read_en),
        .read_data(B_TSTRB_read_data),
        .full(B_TSTRB_full),
        .empty(B_TSTRB_empty));
    
    always @ (*) begin
        B_TSTRB_write_en <= TRAN_B_TVALID;
        B_TSTRB_write_data <= TRAN_B_TSTRB;
        B_TSTRB_read_en <= 0;
    end
    wire B_TUSER_full;
    wire B_TUSER_empty;
    reg B_TUSER_write_en;
    reg [2 - 1:0] B_TUSER_write_data;
    reg B_TUSER_read_en;
    wire [2 - 1:0] B_TUSER_read_data;
    
    fifo #(10, 2) fifo_B_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TUSER_write_en),
        .write_data(B_TUSER_write_data),
        .read_clock(clk),
        .read_en(B_TUSER_read_en),
        .read_data(B_TUSER_read_data),
        .full(B_TUSER_full),
        .empty(B_TUSER_empty));
    
    always @ (*) begin
        B_TUSER_write_en <= TRAN_B_TVALID;
        B_TUSER_write_data <= TRAN_B_TUSER;
        B_TUSER_read_en <= 0;
    end
    wire B_TLAST_full;
    wire B_TLAST_empty;
    reg B_TLAST_write_en;
    reg [1 - 1:0] B_TLAST_write_data;
    reg B_TLAST_read_en;
    wire [1 - 1:0] B_TLAST_read_data;
    
    fifo #(10, 1) fifo_B_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TLAST_write_en),
        .write_data(B_TLAST_write_data),
        .read_clock(clk),
        .read_en(B_TLAST_read_en),
        .read_data(B_TLAST_read_data),
        .full(B_TLAST_full),
        .empty(B_TLAST_empty));
    
    always @ (*) begin
        B_TLAST_write_en <= TRAN_B_TVALID;
        B_TLAST_write_data <= TRAN_B_TLAST;
        B_TLAST_read_en <= 0;
    end
    wire B_TID_full;
    wire B_TID_empty;
    reg B_TID_write_en;
    reg [5 - 1:0] B_TID_write_data;
    reg B_TID_read_en;
    wire [5 - 1:0] B_TID_read_data;
    
    fifo #(10, 5) fifo_B_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TID_write_en),
        .write_data(B_TID_write_data),
        .read_clock(clk),
        .read_en(B_TID_read_en),
        .read_data(B_TID_read_data),
        .full(B_TID_full),
        .empty(B_TID_empty));
    
    always @ (*) begin
        B_TID_write_en <= TRAN_B_TVALID;
        B_TID_write_data <= TRAN_B_TID;
        B_TID_read_en <= 0;
    end
    wire B_TDEST_full;
    wire B_TDEST_empty;
    reg B_TDEST_write_en;
    reg [6 - 1:0] B_TDEST_write_data;
    reg B_TDEST_read_en;
    wire [6 - 1:0] B_TDEST_read_data;
    
    fifo #(10, 6) fifo_B_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(B_TDEST_write_en),
        .write_data(B_TDEST_write_data),
        .read_clock(clk),
        .read_en(B_TDEST_read_en),
        .read_data(B_TDEST_read_data),
        .full(B_TDEST_full),
        .empty(B_TDEST_empty));
    
    always @ (*) begin
        B_TDEST_write_en <= TRAN_B_TVALID;
        B_TDEST_write_data <= TRAN_B_TDEST;
        B_TDEST_read_en <= 0;
    end
    assign TRAN_B_TVALID = TRAN_B_TVALID_temp;

    
    assign TRAN_B_TREADY = ~(B_TDATA_full || B_TKEEP_full || B_TSTRB_full || B_TUSER_full || B_TLAST_full || B_TID_full || B_TDEST_full);
    
    function is_blank_char(input [7:0] in_char);
        if (in_char == " " || in_char == "\011" || in_char == "\012" || in_char == "\015") begin
            is_blank_char = 1;
        end else begin
            is_blank_char = 0;
        end
    endfunction
    
    function [127:0] read_token(input integer fp);
        integer ret;
        begin
            read_token = "";
                    ret = 0;
                    ret = $fscanf(fp,"%s",read_token);
        end
    endfunction
    
    function [127:0] rm_0x(input [127:0] token);
        reg [127:0] token_tmp;
        integer i;
        begin
            token_tmp = "";
            for (i = 0; token[15:0] != "0x"; token = token >> 8) begin
                token_tmp = (token[7:0] << (8 * i)) | token_tmp;
                i = i + 1;
            end
            rm_0x = token_tmp;
        end
    endfunction
    
    reg done_1;
    
    always @ (posedge clk or reset) begin
        if (~reset) begin
            done_1 <= 0;
        end else begin
            done_1 <= done;
        end
    end
    
    reg [31:0] transaction_save_B_TDATA;
    
    assign transaction = transaction_save_B_TDATA;
    
    initial begin : AXI_stream_receiver_B_TDATA
        integer fp;
        reg [32 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TDATA = 0;
        fifo_B_TDATA.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TDATA, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TDATA);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TDATA);
                while (~fifo_B_TDATA.empty) begin
                    fifo_B_TDATA.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TDATA = transaction_save_B_TDATA + 1;
                fifo_B_TDATA.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_B_TKEEP;
    
    initial begin : AXI_stream_receiver_B_TKEEP
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TKEEP = 0;
        fifo_B_TKEEP.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TKEEP, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TKEEP);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TKEEP);
                while (~fifo_B_TKEEP.empty) begin
                    fifo_B_TKEEP.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TKEEP = transaction_save_B_TKEEP + 1;
                fifo_B_TKEEP.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_B_TSTRB;
    
    initial begin : AXI_stream_receiver_B_TSTRB
        integer fp;
        reg [4 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TSTRB = 0;
        fifo_B_TSTRB.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TSTRB, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TSTRB);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TSTRB);
                while (~fifo_B_TSTRB.empty) begin
                    fifo_B_TSTRB.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TSTRB = transaction_save_B_TSTRB + 1;
                fifo_B_TSTRB.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_B_TUSER;
    
    initial begin : AXI_stream_receiver_B_TUSER
        integer fp;
        reg [2 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TUSER = 0;
        fifo_B_TUSER.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TUSER, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TUSER);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TUSER);
                while (~fifo_B_TUSER.empty) begin
                    fifo_B_TUSER.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TUSER = transaction_save_B_TUSER + 1;
                fifo_B_TUSER.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_B_TLAST;
    
    initial begin : AXI_stream_receiver_B_TLAST
        integer fp;
        reg [1 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TLAST = 0;
        fifo_B_TLAST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TLAST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TLAST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TLAST);
                while (~fifo_B_TLAST.empty) begin
                    fifo_B_TLAST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TLAST = transaction_save_B_TLAST + 1;
                fifo_B_TLAST.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_B_TID;
    
    initial begin : AXI_stream_receiver_B_TID
        integer fp;
        reg [5 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TID = 0;
        fifo_B_TID.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TID, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TID);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TID);
                while (~fifo_B_TID.empty) begin
                    fifo_B_TID.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TID = transaction_save_B_TID + 1;
                fifo_B_TID.clear();
                $fclose(fp);
            end
        end
    end
    
    reg [31:0] transaction_save_B_TDEST;
    
    initial begin : AXI_stream_receiver_B_TDEST
        integer fp;
        reg [6 - 1:0] data;
        reg [8 * 5:1] str;
        
        transaction_save_B_TDEST = 0;
        fifo_B_TDEST.clear();
        wait (reset === 1);
        forever begin
            @ (negedge clk);
            if (done_1 == 1) begin
                fp = $fopen(`TV_OUT_B_TDEST, "a");
                if (fp == 0) begin // Failed to open file
                    $display("ERROR: Failed to open file \"%s\"!", `TV_OUT_B_TDEST);
                    $finish;
                end
                $fdisplay(fp, "[[transaction]] %d", transaction_save_B_TDEST);
                while (~fifo_B_TDEST.empty) begin
                    fifo_B_TDEST.pop(data);
                    $fdisplay(fp, "0x%x", data);
                end
                $fdisplay(fp, "[[/transaction]]");
                transaction_save_B_TDEST = transaction_save_B_TDEST + 1;
                fifo_B_TDEST.clear();
                $fclose(fp);
            end
        end
    end

endmodule
