// ==============================================================
// Scout HLS - High-Level Synthesis from C, C++ and OpenCL v2019.2.0 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

`define TV_IN_A_TDATA "./c.example_example.autotvin_A_V_data_V.dat"
`define INGRESS_STATUS_A_TDATA "./stream_ingress_status_A_V_data_V.dat"
`define TV_IN_A_TKEEP "./c.example_example.autotvin_A_V_keep_V.dat"
`define INGRESS_STATUS_A_TKEEP "./stream_ingress_status_A_V_keep_V.dat"
`define TV_IN_A_TSTRB "./c.example_example.autotvin_A_V_strb_V.dat"
`define INGRESS_STATUS_A_TSTRB "./stream_ingress_status_A_V_strb_V.dat"
`define TV_IN_A_TUSER "./c.example_example.autotvin_A_V_user_V.dat"
`define INGRESS_STATUS_A_TUSER "./stream_ingress_status_A_V_user_V.dat"
`define TV_IN_A_TLAST "./c.example_example.autotvin_A_V_last_V.dat"
`define INGRESS_STATUS_A_TLAST "./stream_ingress_status_A_V_last_V.dat"
`define TV_IN_A_TID "./c.example_example.autotvin_A_V_id_V.dat"
`define INGRESS_STATUS_A_TID "./stream_ingress_status_A_V_id_V.dat"
`define TV_IN_A_TDEST "./c.example_example.autotvin_A_V_dest_V.dat"
`define INGRESS_STATUS_A_TDEST "./stream_ingress_status_A_V_dest_V.dat"

`define AUTOTB_TRANSACTION_NUM 4

module AESL_axi_s_A (
    input clk,
    input reset,
    output [32 - 1:0] TRAN_A_TDATA,
    output [4 - 1:0] TRAN_A_TKEEP,
    output [4 - 1:0] TRAN_A_TSTRB,
    output [2 - 1:0] TRAN_A_TUSER,
    output TRAN_A_TLAST,
    output [5 - 1:0] TRAN_A_TID,
    output [6 - 1:0] TRAN_A_TDEST,
    output TRAN_A_TVALID,
    input TRAN_A_TREADY,
    input ready,
    input done,
    output [31:0] transaction);

    wire TRAN_A_TVALID_temp;
    wire A_TDATA_full;
    wire A_TDATA_empty;
    reg A_TDATA_write_en;
    reg [32 - 1:0] A_TDATA_write_data;
    reg A_TDATA_read_en;
    wire [32 - 1:0] A_TDATA_read_data;
    
    fifo #(10, 32) fifo_A_TDATA (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TDATA_write_en),
        .write_data(A_TDATA_write_data),
        .read_clock(clk),
        .read_en(A_TDATA_read_en),
        .read_data(A_TDATA_read_data),
        .full(A_TDATA_full),
        .empty(A_TDATA_empty));
    
    always @ (*) begin
        A_TDATA_write_en <= 0;
        A_TDATA_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TDATA = A_TDATA_read_data;
    wire A_TKEEP_full;
    wire A_TKEEP_empty;
    reg A_TKEEP_write_en;
    reg [4 - 1:0] A_TKEEP_write_data;
    reg A_TKEEP_read_en;
    wire [4 - 1:0] A_TKEEP_read_data;
    
    fifo #(10, 4) fifo_A_TKEEP (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TKEEP_write_en),
        .write_data(A_TKEEP_write_data),
        .read_clock(clk),
        .read_en(A_TKEEP_read_en),
        .read_data(A_TKEEP_read_data),
        .full(A_TKEEP_full),
        .empty(A_TKEEP_empty));
    
    always @ (*) begin
        A_TKEEP_write_en <= 0;
        A_TKEEP_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TKEEP = A_TKEEP_read_data;
    wire A_TSTRB_full;
    wire A_TSTRB_empty;
    reg A_TSTRB_write_en;
    reg [4 - 1:0] A_TSTRB_write_data;
    reg A_TSTRB_read_en;
    wire [4 - 1:0] A_TSTRB_read_data;
    
    fifo #(10, 4) fifo_A_TSTRB (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TSTRB_write_en),
        .write_data(A_TSTRB_write_data),
        .read_clock(clk),
        .read_en(A_TSTRB_read_en),
        .read_data(A_TSTRB_read_data),
        .full(A_TSTRB_full),
        .empty(A_TSTRB_empty));
    
    always @ (*) begin
        A_TSTRB_write_en <= 0;
        A_TSTRB_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TSTRB = A_TSTRB_read_data;
    wire A_TUSER_full;
    wire A_TUSER_empty;
    reg A_TUSER_write_en;
    reg [2 - 1:0] A_TUSER_write_data;
    reg A_TUSER_read_en;
    wire [2 - 1:0] A_TUSER_read_data;
    
    fifo #(10, 2) fifo_A_TUSER (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TUSER_write_en),
        .write_data(A_TUSER_write_data),
        .read_clock(clk),
        .read_en(A_TUSER_read_en),
        .read_data(A_TUSER_read_data),
        .full(A_TUSER_full),
        .empty(A_TUSER_empty));
    
    always @ (*) begin
        A_TUSER_write_en <= 0;
        A_TUSER_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TUSER = A_TUSER_read_data;
    wire A_TLAST_full;
    wire A_TLAST_empty;
    reg A_TLAST_write_en;
    reg [1 - 1:0] A_TLAST_write_data;
    reg A_TLAST_read_en;
    wire [1 - 1:0] A_TLAST_read_data;
    
    fifo #(10, 1) fifo_A_TLAST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TLAST_write_en),
        .write_data(A_TLAST_write_data),
        .read_clock(clk),
        .read_en(A_TLAST_read_en),
        .read_data(A_TLAST_read_data),
        .full(A_TLAST_full),
        .empty(A_TLAST_empty));
    
    always @ (*) begin
        A_TLAST_write_en <= 0;
        A_TLAST_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TLAST = A_TLAST_read_data;
    wire A_TID_full;
    wire A_TID_empty;
    reg A_TID_write_en;
    reg [5 - 1:0] A_TID_write_data;
    reg A_TID_read_en;
    wire [5 - 1:0] A_TID_read_data;
    
    fifo #(10, 5) fifo_A_TID (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TID_write_en),
        .write_data(A_TID_write_data),
        .read_clock(clk),
        .read_en(A_TID_read_en),
        .read_data(A_TID_read_data),
        .full(A_TID_full),
        .empty(A_TID_empty));
    
    always @ (*) begin
        A_TID_write_en <= 0;
        A_TID_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TID = A_TID_read_data;
    wire A_TDEST_full;
    wire A_TDEST_empty;
    reg A_TDEST_write_en;
    reg [6 - 1:0] A_TDEST_write_data;
    reg A_TDEST_read_en;
    wire [6 - 1:0] A_TDEST_read_data;
    
    fifo #(10, 6) fifo_A_TDEST (
        .reset(1'b0),
        .write_clock(clk),
        .write_en(A_TDEST_write_en),
        .write_data(A_TDEST_write_data),
        .read_clock(clk),
        .read_en(A_TDEST_read_en),
        .read_data(A_TDEST_read_data),
        .full(A_TDEST_full),
        .empty(A_TDEST_empty));
    
    always @ (*) begin
        A_TDEST_write_en <= 0;
        A_TDEST_read_en <= TRAN_A_TREADY & TRAN_A_TVALID;
    end
    
    assign TRAN_A_TDEST = A_TDEST_read_data;
    assign TRAN_A_TVALID = TRAN_A_TVALID_temp;

    
    reg A_TDATA_valid = 0; // ingress buffer indicator: A_TDATA
    reg A_TKEEP_valid = 0; // ingress buffer indicator: A_TKEEP
    reg A_TSTRB_valid = 0; // ingress buffer indicator: A_TSTRB
    reg A_TUSER_valid = 0; // ingress buffer indicator: A_TUSER
    reg A_TLAST_valid = 0; // ingress buffer indicator: A_TLAST
    reg A_TID_valid = 0; // ingress buffer indicator: A_TID
    reg A_TDEST_valid = 0; // ingress buffer indicator: A_TDEST
    
    assign TRAN_A_TVALID_temp = ~(A_TDATA_empty || A_TKEEP_empty || A_TSTRB_empty || A_TUSER_empty || A_TLAST_empty || A_TID_empty || A_TDEST_empty) || (A_TDATA_valid && A_TKEEP_valid && A_TSTRB_valid && A_TUSER_valid && A_TLAST_valid && A_TID_valid && A_TDEST_valid);
    
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
    
    reg [31:0] transaction_load_A_TDATA;
    
    assign transaction = transaction_load_A_TDATA;
    
    initial begin : AXI_stream_driver_A_TDATA
        integer fp;
        reg [127:0] token;
        reg [32 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TDATA = 0;
        fifo_A_TDATA.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TDATA, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TDATA);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TDATA, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TDATA);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TDATA.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TDATA.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TDATA.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TDATA_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TDATA = transaction_load_A_TDATA + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_A_TKEEP;
    
    initial begin : AXI_stream_driver_A_TKEEP
        integer fp;
        reg [127:0] token;
        reg [4 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TKEEP = 0;
        fifo_A_TKEEP.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TKEEP, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TKEEP);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TKEEP, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TKEEP);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TKEEP.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TKEEP.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TKEEP.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TKEEP_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TKEEP = transaction_load_A_TKEEP + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_A_TSTRB;
    
    initial begin : AXI_stream_driver_A_TSTRB
        integer fp;
        reg [127:0] token;
        reg [4 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TSTRB = 0;
        fifo_A_TSTRB.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TSTRB, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TSTRB);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TSTRB, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TSTRB);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TSTRB.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TSTRB.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TSTRB.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TSTRB_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TSTRB = transaction_load_A_TSTRB + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_A_TUSER;
    
    initial begin : AXI_stream_driver_A_TUSER
        integer fp;
        reg [127:0] token;
        reg [2 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TUSER = 0;
        fifo_A_TUSER.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TUSER, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TUSER);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TUSER, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TUSER);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TUSER.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TUSER.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TUSER.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TUSER_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TUSER = transaction_load_A_TUSER + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_A_TLAST;
    
    initial begin : AXI_stream_driver_A_TLAST
        integer fp;
        reg [127:0] token;
        reg [1 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TLAST = 0;
        fifo_A_TLAST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TLAST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TLAST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TLAST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TLAST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TLAST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TLAST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TLAST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TLAST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TLAST = transaction_load_A_TLAST + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_A_TID;
    
    initial begin : AXI_stream_driver_A_TID
        integer fp;
        reg [127:0] token;
        reg [5 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TID = 0;
        fifo_A_TID.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TID, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TID);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TID, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TID);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TID.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TID.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TID.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TID_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TID = transaction_load_A_TID + 1;
            end
        end
    end
    
    reg [31:0] transaction_load_A_TDEST;
    
    initial begin : AXI_stream_driver_A_TDEST
        integer fp;
        reg [127:0] token;
        reg [6 - 1:0] data;
        reg [127:0] data_integer;
        integer fp_ingress_status;
        reg [127:0] token_ingress_status;
        reg [31:0] ingress_status;
        reg [8 * 5:1] str;
        integer ret;
        
        transaction_load_A_TDEST = 0;
        fifo_A_TDEST.clear();
        wait (reset === 1);
        fp = $fopen(`TV_IN_A_TDEST, "r");
        if (fp == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `TV_IN_A_TDEST);
            $finish;
        end
        fp_ingress_status = $fopen(`INGRESS_STATUS_A_TDEST, "r");
        if (fp_ingress_status == 0) begin // Failed to open file
            $display("ERROR: Failed to open file \"%s\"!", `INGRESS_STATUS_A_TDEST);
            $finish;
        end
        token = read_token(fp);
        token_ingress_status = read_token(fp_ingress_status);
        if (token != "[[[runtime]]]") begin
            $display("ERROR: token %s != [[[runtime]]]", token);
            $finish;
        end
        token = read_token(fp); // read 1st "[[transaction]]"
        token_ingress_status = read_token(fp_ingress_status);
        forever begin
            @ (negedge clk);
            if (ready == 1) begin
                if (token != "[[[/runtime]]]") begin
                    if (token != "[[transaction]]") begin
                        $display("ERROR: token %s != [[[transaction]]]", token);
                        $finish;
                    end
                    token = read_token(fp); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // skip transaction number
                    token_ingress_status = read_token(fp_ingress_status); // load ingress status at beginning of transaction
                    fifo_A_TDEST.clear();
                    token = read_token(fp);
                    ret = $sscanf(token_ingress_status, "%d", ingress_status);
                    token_ingress_status = read_token(fp_ingress_status);
                    while (token != "[[/transaction]]") begin
                        if (fifo_A_TDEST.full) begin
                            $display("ERROR: FIFO is full");
                            $finish;
                        end
                        ret = $sscanf(rm_0x(token), "%x", data_integer);
                        data = data_integer;
                        fifo_A_TDEST.push(data);
                        token = read_token(fp);
                        ret = $sscanf(token_ingress_status, "%d", ingress_status);
                        token_ingress_status = read_token(fp_ingress_status);
                    end
                    A_TDEST_valid = (ingress_status > 0);
                    token = read_token(fp);
                    token_ingress_status = read_token(fp_ingress_status);
                end else begin
                    if (fp != 0) begin
                        $fclose(fp);
                        fp = 0;
                    end
                    if (fp_ingress_status != 0) begin
                        $fclose(fp_ingress_status);
                        fp_ingress_status = 0;
                    end
                end
                transaction_load_A_TDEST = transaction_load_A_TDEST + 1;
            end
        end
    end

endmodule
