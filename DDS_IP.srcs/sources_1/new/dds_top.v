`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Jlu
// Engineer: Liu Yijun 2446078134@qq.com
// 
// Create Date: 2021/07/07 14:30:02
// Design Name: top module
// Module Name: dds_top
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


module dds_top(
    input sys_clk, //AXI4协议进行IP之间的数据传输
    input rst_n,
    input [11:0] adc_input,
    input [11:0] bdc_input,
    output [13:0] m_axis_data_tdata_unsigned,//输出转为无符号数
    output dac_clk,
    output adc_clk,
    output bdc_clk,
    output load_on_off_switch,
    output freq_mode_top,
    output [23:0] rgb,
    output rgb_valid,
    output vga_clk,
    output hsync,
    output vsync
);

    //DDS IP信号
    wire [15:0] m_axis_data_tdata;//dds输出的有符号正弦信号
    wire [31:0] dds_ctrl_data;
    wire m_axis_phase_tvalid;//输出相位有效信号，高有效
    wire [15:0] m_axis_phase_tdata;
    wire m_axis_data_tvalid;
    wire aclk;//dds ip的时钟，sin_freq / aclk * 2^width = freq_ctrl_data
    wire ad_clk;//100M

    wire freq_mode;//由all_ctrl模块输出，驱动sweep模块(静态输出还是扫频输出)和计算模块(计算输出电阻还是画曲线)，以及Ram忙闲的标志位
    wire cnt_done;//由sweep模块输出，驱动计算模块，扫完一个频率后根据该信号写入ram增益
    wire peroid_done;
    wire [7:0] current_freq;//由sweep模块输出，表示当前输出正弦的频率(freq_mode为静态模式时也有输出)，驱动计算模块，作为ram的地址
    wire [11:0] adc_data;//输入端ADC数据
    wire [11:0] bdc_data;//输出端ADC数据

    /*calculate模块的信号*/
    //***************VGA*********************
    //频谱ram
    wire clk_xl;
    wire en_xl;
    wire [7:0] addr_xl;
    wire [7:0] dout_xl;
    //输入输出电阻
    wire [23:0] input_res;
    wire [23:0] output_res;
    //1k频率
    wire [7:0] Av_1k;
    //截止频率
    wire [7:0] cutoff_freq;
    //***************VGA*********************

    wire [7:0] Av_200;
    wire [7:0] Av_10k;
    wire [7:0] Av_200k;
    wire [11:0] vppin;
    wire [11:0]vppmax;
    wire [11:0]vppmin;
    

    assign freq_mode_top = freq_mode;
    assign aclk = dac_clk;
    assign m_axis_data_tdata_unsigned = m_axis_data_tdata[13:0] + 14'h2000;//转为无符号数


    vga_top vga_top_inst(
    .clk(sys_clk),
    .rstn(rst_n),
    .RI_data(input_res),
    .RO_data(output_res),
    .freq_data(dout_x),
    .vga_clk(vga_clk),
    .freq_addr(addr_xl),
    .rgb(rgb),
    .rgb_valid(rgb_valid),
    
    .hsync(hsync),
    .vsync(vsync),
    .vpp(vppin),
    .vmax(vppmax),
    .vmin(vppmin)
    );



    dds_compiler_1 dds_ip_top (
        //in
        .aclk(aclk),
        .s_axis_config_tvalid(1'b1),
        .s_axis_config_tdata(dds_ctrl_data),
        //out
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata)
    );


    sweep_ctrl sweep_top(
        //in
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .freq_mode(freq_mode),
        //out
        .current_freq_q(current_freq),
        .cnt_done_q(cnt_done),
        .peroid_done_q(peroid_done),
        .dds_ctrl_data(dds_ctrl_data),
        .dac_clk(dac_clk)
        //.m_axis_data_tdata_unsigned(m_axis_data_tdata_unsigned)

    );

    
    adc_samp_ctrl adc_samp_top(
        //in
        .ad_clk(ad_clk),
        .rst_n(rst_n),
        .ad_input(adc_input),
        .bd_input(bdc_input),
        //out
        .adc_clk(adc_clk),
        .bdc_clk(bdc_clk),
        .ad_data(adc_data),
        .bd_data(bdc_data)
    );

    all_ctrl all_ctrl_top(
        //in
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        //out
        .freq_mode_q(freq_mode)
    );

    Calculate calculate_top(
        //in
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .circuit_in_sig(adc_data),
        .circuit_out_sig(bdc_data),
        .freq_mode(freq_mode),
        .sweep_onefreq_done(peroid_done),
        .sweep_oneper_done(cnt_done),
        .current_freq(current_freq),
        .clk_xl(clk_xl),
        .en_xl(en_xl),
        .addr_xl(addr_xl),
        //out
        .dout_xl(dout_xl),
        .input_res_q(input_res),
        //.output_res_q(output_res),
        .Av_1k_q(Av_1k),
        .Av_10k_q(Av_10k),
        .Av_200_q(Av_200),
        .Av_200k_q(Av_200k),
        .cutoff_freq_q(cutoff_freq),
        .load_on_off_switch(load_on_off_switch),
        .vppin(vppin),
        .vppmax(vppmax),
        .vppmin(vppmin)
    );

    clk_wiz_0 vga_clk_gen
   (
    // Clock out ports
    .clk_out1(vga_clk),     // output clk_out1
    // Status and control signals
    .reset(~rstn), // input reset
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(clk));      // input clk_in1


endmodule
