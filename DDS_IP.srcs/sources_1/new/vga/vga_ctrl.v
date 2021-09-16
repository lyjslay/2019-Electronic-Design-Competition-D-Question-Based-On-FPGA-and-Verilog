`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/10 16:38:05
// Design Name: 
// Module Name: vga_ctrl
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


module vga_ctrl(
    input vga_clk,
    input rstn,
    input pix_data,
    output hsync,
    output vsync,
    output rgb_valid,
    output [23:0] rgb,
    output pix_data_req,
    output [9:0]pix_x,
    output [9:0]pix_y ,
    output update_flag                                                       
    );

    //parameter define
    parameter H_SYNC    =   10'd128  ,   //行同步
              H_BACK    =   10'd88  ,   //行时序后沿
              H_VALID   =   10'd800 ,   //行有效数据
              H_FRONT   =   10'd40   ,   //行时序前沿
              H_TOTAL   =   11'd1056 ;   //行扫描周期
    parameter V_SYNC    =   10'd4   ,   //场同步
              V_BACK    =   10'd23  ,   //场时序后沿
              V_VALID   =   10'd600 ,   //场有效数据
              V_FRONT   =   10'd1   ,   //场时序前沿
              V_TOTAL   =   10'd628 ;   //场扫描周期


    reg     [10:0]   cnt_h           ;   //行同步信号计数器
    reg     [9:0]   cnt_v           ;   //场同步信号计数器  


    //cnt_h:行同步信号计数器
always@(posedge vga_clk or  negedge  rstn)
    if( ~rstn )
        cnt_h   <=  11'd0;
    else    if(cnt_h == H_TOTAL - 1'd1)
        cnt_h   <=  11'd0;
    else
        cnt_h   <=  cnt_h + 1'd1;

//hsync:行同步信号
assign  hsync = (cnt_h  <=  H_SYNC - 1'd1) ? 1'b1 : 1'b0;

//cnt_v:场同步信号计数器
always@(posedge vga_clk or  negedge  rstn)
    if( ~rstn)
        cnt_v   <=  10'd0 ;
    else    if((cnt_v == V_TOTAL - 1'd1) &&  (cnt_h == H_TOTAL-1'd1))
        cnt_v   <=  10'd0 ;
    else    if(cnt_h == H_TOTAL - 1'd1)
        cnt_v   <=  cnt_v + 1'd1 ;
    else
        cnt_v   <=  cnt_v ;

//vsync:场同步信号
assign  vsync = (cnt_v  <=  V_SYNC - 1'd1) ? 1'b1 : 1'b0  ;

//rgb_valid:VGA有效显示区域
assign  rgb_valid = (((cnt_h >= H_SYNC + H_BACK)
                    && (cnt_h < H_SYNC + H_BACK + H_VALID))
                    &&((cnt_v >= V_SYNC + V_BACK)
                    && (cnt_v < V_SYNC + V_BACK + V_VALID)))
                    ? 1'b1 : 1'b0;

//pix_data_req:像素点色彩信息请求信号,超前rgb_valid信号一个时钟周期
assign  pix_data_req = (((cnt_h >= H_SYNC + H_BACK   - 1'b1)
                    && (cnt_h < H_SYNC + H_BACK   + H_VALID - 1'b1))
                    &&((cnt_v >= V_SYNC + V_BACK)
                    && (cnt_v < V_SYNC + V_BACK + V_VALID)))
                    ? 1'b1 : 1'b0;

assign  pix_x = pix_data_req ? (cnt_h - (H_SYNC + H_BACK - 1'b1)) : 10'h3ff;//输出坐标为时序前一个的坐标
assign  pix_y = pix_data_req ? (cnt_v - (V_SYNC + V_BACK)) : 10'h3ff;

//rgb:输出单色像素点色彩信息
assign  rgb = rgb_valid ? (pix_data ? 24'b0 : 24'hffffff) : 24'b0 ;
assign  update_flag= ((cnt_v< V_SYNC + V_BACK)
                    ||(cnt_v >= V_SYNC + V_BACK + V_VALID ))
                    ? 1'b1 : 1'b0; 

endmodule