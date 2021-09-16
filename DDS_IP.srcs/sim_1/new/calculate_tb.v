`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/15 20:13:06
// Design Name: 
// Module Name: tb
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


module Calculate_tb();
    reg sys_clk;
    reg rst_n;
    reg freq_mode;//频率模式也即测量模式，static_1k模式为输入输出电阻测量，sweep模式为幅频特性测量

    
    wire [15:0] input_res;
    wire [15:0] output_res;
    wire [7:0] Av_1k;
    wire [7:0] Av_200;
    wire [7:0] Av_10k;
    wire [7:0] Av_200k;
    wire [7:0] cutoff_freq;
    wire load_on_off_switch;//1表示带负载，0表示u不带负载

    reg clk_xl;
    reg en_xl;
    reg [7:0] addr_xl;
    wire [23:0] dout_xl;
    wire dac_clk;
    wire [13:0] m_axis_data_tdata_unsigned;

    //DDS IP信号
    wire [15:0] m_axis_data_tdata;//dds输出的有符号正弦信号
    wire [31:0] dds_ctrl_data;
    wire m_axis_phase_tvalid;//输出相位有效信号，高有效
    wire [15:0] m_axis_phase_tdata;
    wire m_axis_data_tvalid;
    wire aclk;//dds ip的时钟，sin_freq / aclk * 2^width = freq_ctrl_data

    wire [11:0] circuit_in_sig;
    wire [11:0] circuit_out_sig;
    wire cnt_done;
    wire peroid_done;
    wire [7:0] current_freq;

    always #10 sys_clk = ~sys_clk;

    assign circuit_out_sig = (m_axis_data_tdata_unsigned >> 3) + (current_freq) ;
    assign circuit_in_sig = m_axis_data_tdata_unsigned >> 8; // 1/16

    assign aclk = dac_clk;
    assign m_axis_data_tdata_unsigned = m_axis_data_tdata[13:0] + 14'h2000;//转为无符号数

    initial begin
        sys_clk = 0;
        rst_n = 0;
        freq_mode = 0;
        clk_xl = 0;
        en_xl = 0;
        addr_xl = 0;
        #20;
        rst_n = 1;
        #2000000 ;
        freq_mode = 1;
        #100000000;
        $stop;


    end

    Calculate calculate_top(
        //in
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .circuit_in_sig(circuit_in_sig),
        .circuit_out_sig(circuit_out_sig),
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
        .output_res_q(output_res),
        .Av_1k_q(Av_1k),
        .Av_10k_q(Av_10k),
        .Av_200_q(Av_200),
        .Av_200k_q(Av_200k),
        .cutoff_freq_q(cutoff_freq),
        .load_on_off_switch(load_on_off_switch)
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






endmodule
