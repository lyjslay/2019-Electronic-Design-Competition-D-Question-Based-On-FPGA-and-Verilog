`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Jlu
// Engineer: Liu Yijun
// 
// Create Date: 2021/07/12 09:59:21
// Design Name: 
// Module Name: clk_div
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_div(
    input clk_sys,
    input rst_n,
    output clk_100k,
    output clk_1m,
    output clk_10m,//12.5Mhz
    output clk_100m
);
    parameter cnt_max_100k = 8'd249;
    parameter cnt_max_1m = 6'd24;
    parameter cnt_max_10m = 3'd1 ; //其实是12.5Mhz
    reg [7:0] cnt_100k = 0;
    reg [5:0] cnt_1m = 0;
    reg [2:0] cnt_10m = 0;
    reg clk_100k_buf = 0;
    reg clk_1m_buf = 0;
    reg clk_10m_buf = 0;
    wire locked;

    always@(posedge clk_sys) begin
        if(cnt_100k == cnt_max_100k) begin
            cnt_100k <= 6'd0;
            clk_100k_buf <= ~clk_100k_buf;
        end
        else
            cnt_100k <= cnt_100k + 6'd1;
    end

    always@(posedge clk_sys) begin
        if(cnt_1m == cnt_max_1m) begin
            cnt_1m <= 6'd0;
            clk_1m_buf <= ~clk_1m_buf;
        end
        else
            cnt_1m <= cnt_1m + 6'd1;
    end

    always@(posedge clk_sys) begin
        if(cnt_10m == cnt_max_10m) begin
            cnt_10m <= 6'd0;
            clk_10m_buf <= ~clk_10m_buf;
        end
        else
            cnt_10m <= cnt_10m + 6'd1;
    end

    assign clk_100k = clk_100k_buf;
    assign clk_1m = clk_1m_buf;
    assign clk_10m = clk_10m_buf;

      clk_wiz_0 gen_100m_clk
   (
    // Clock out ports
    .clk_out1(clk_100m),     // output clk_out1
    // Status and control signals
    .reset(~rst_n), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(clk_sys));      // input clk_in1
    
endmodule
