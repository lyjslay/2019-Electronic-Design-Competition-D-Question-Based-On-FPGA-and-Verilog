`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Jlu
// Engineer: Liu Yijun
// 
// Create Date: 2021/07/17 10:14:15
// Design Name: 
// Module Name: all_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//      总控制模块，通过计数定时切换freq_mode频率模式，从而在sweep.v中切换
//      1k正弦波还是扫频，也能输出给Calculate.v用于控制计算
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module all_ctrl(
    input sys_clk,
    input rst_n,
    output freq_mode_q
);

    reg [31:0] mode_change_cnt;
    reg freq_mode;
    parameter MODE_SWEEP_CNT = 32'd25_000_000-1;//计时500ms
    parameter MODE_STATIC_CNT = 32'd5_000_000-1;//计时100ms
    //parameter TOTAL_CNT =  MODE_SWEEP_CNT + MODE_STATIC_CNT;

    assign freq_mode_q = freq_mode;

    always @(posedge sys_clk) begin
        if(!rst_n) begin
            mode_change_cnt <= 0;
        end
        else if(freq_mode == 0 && mode_change_cnt == MODE_STATIC_CNT) begin
            mode_change_cnt <= 0;
        end
        else if(freq_mode == 1 && mode_change_cnt == MODE_SWEEP_CNT) begin
            mode_change_cnt <= 0;
        end
        else begin
            mode_change_cnt <= mode_change_cnt + 1;
        end
    end

    always @(posedge sys_clk) begin
        if(!rst_n) begin
            freq_mode <= 0;
        end
        else if(freq_mode == 0 && mode_change_cnt == MODE_STATIC_CNT) begin
            freq_mode <= 0;  //这里原来是1 ！！！！！              
        end
        else if(freq_mode == 1 && mode_change_cnt == MODE_SWEEP_CNT) begin
            freq_mode <= 0;
        end
        else begin
            freq_mode <= freq_mode;
        end
    end




endmodule
