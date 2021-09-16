`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Jlu
// Engineer: Liu Yijun 2446078134@qq.com
// 
// Create Date: 2021/07/15 15:35:51
// Design Name: 
// Module Name: Calculate
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 根据输入的freq_mode来输出计算结果，电阻直接wire输出，扫频增益存到ram里
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Calculate(
    input sys_clk,
    input rst_n,
    input [11:0] circuit_in_sig,
    input [11:0] circuit_out_sig,
    input freq_mode,//频率模式也即测量模式，static_1k模式为输入输出电阻测量，sweep模式为幅频特性测量
    //只有在freq_mode == 1 时才写入Ram,因此该信号也可作为写入闲忙信号
    input sweep_onefreq_done,
    input sweep_oneper_done,
    input [7:0] current_freq,

    /*祥龙输入信号，用于读Ram中的增益画曲线*/
    input clk_xl,
    input en_xl,
    input [7:0] addr_xl,
    output [23:0] dout_xl,

    output [15:0] input_res_q,
    output [15:0] output_res_q,
    output [7:0] Av_1k_q,
    output [7:0] Av_10k_q,
    output [7:0] Av_200_q,
    output [7:0] Av_200k_q,
    output [7:0] cutoff_freq_q,// 0-256表示
    output load_on_off_switch, //1表示带负载，0表示u不带负载

    output [11:0]vppin,
    output [11:0]vppmax,
    output [11:0]vppmin
);
    reg [11:0] vpp_in;
    reg [11:0] vpp_out_with_load;
    reg [11:0] vpp_out_off_load;
    assign  vppin=vpp_in;
    assign  vppmax=in_current_max;
    assign   vppmin=in_current_min;

    /*需要监测的量，用于输出和故障判断，通过组合逻辑计算*/
    reg [15:0] input_res;
    reg [15:0] output_res;
    reg [7:0] Av_1k;
    reg [7:0] Av_10k;
    reg [7:0] Av_200;
    reg [7:0] Av_200k;
    reg [7:0] cutoff_freq;

    /*辅助测量的中间量*/
    wire [23:0] current_Av;
    reg [11:0] in_current_max;//数字量的最大值，是输入的最小值
    reg [11:0] in_current_min;//记录当前周期的最大最小值
    reg [11:0] out_current_max;
    reg [11:0] out_current_min;
    reg [15:0] sum_in_max;//8个周期求和取平均
    reg [15:0] sum_in_min;
    reg [11:0] aver_in_max;
    reg [11:0] aver_in_min;
    reg [15:0] sum_out_max;
    reg [15:0] sum_out_min;
    reg [11:0] aver_out_max;
    reg [11:0] aver_out_min;
    reg [19:0] load_time_cnt; //负载空载切换的时间计数器
    reg load_on_off_switch_reg;

    /* 这些参数需要根据电路调整*/
    reg [19:0] DDS_IN_VPP = 20'd296;//DDS输出并分压后的正弦波峰峰值
    parameter Rs_in = 985;//串联电阻的值，单位：欧姆
    parameter RL_out = 2000;//负载电阻

    reg [7:0] small2big_Gain;//前置放大电路的频率响应，查表得到
    
    
    reg [19:0] CNT_MAX = 500000-1; //计时10ms

    reg [7:0] addra;//ram地址，存放256个频率对应的增益
    wire [23:0] dina;//写入Ram的增益大小
    wire wea;//ram写入的使能，根据freq_mode是否为1调整




    //计算vpp
    //assign vpp_in = aver_in_max - aver_in_min;
    assign vpp_out_with_load = (load_on_off_switch == 1) ? (aver_out_max - aver_out_min) : 22'd0;
    assign vpp_out_off_load = (load_on_off_switch == 0) ? (aver_out_max - aver_out_min) : 22'd0;

    /*输出监测量给判断模块*/
    //基础部分及发挥部分
    assign input_res_q = input_res;
    assign output_res_q =  output_res;
    assign Av_1k_q = Av_1k;
    assign cutoff_freq_q = cutoff_freq;
    //发挥部分
    assign Av_10k_q = Av_10k;//通频带增益
    assign Av_200_q = Av_200;//低频增益，用于判断C1和C2
    assign Av_200k_q = Av_200k;//用于判断C3,如果200k时增益仍比较大,则说明C3开路，如果增益变得比原来小
    
    assign current_Av = (vpp_in != 0 && vpp_out_off_load) ? vpp_out_off_load / vpp_in : 0;
    //根据计时调整带载和空载，根据模式调整带载和空载
    assign load_on_off_switch = load_on_off_switch_reg;

    //freq_mode == 1 时增益大小，即current_Av
    assign dina = (freq_mode == 1) ? current_Av : 0;
    assign wea = (freq_mode == 1) ? 1 : 0;
     

    //根据freq_mode计算增益
    always @(*) begin
        if(!rst_n) begin
            input_res = 0;
            output_res = 0;
            Av_200 = 0;
            Av_1k = 0;
            Av_10k = 0;
            Av_200k = 0;
        end
        else if(freq_mode == 0) begin //静止1K
            input_res = vpp_in * Rs_in / (DDS_IN_VPP - vpp_in);
            output_res = (vpp_out_off_load - vpp_out_with_load) * RL_out / vpp_out_off_load;
            Av_1k = current_Av;
        end
        else begin //扫频
            if(current_freq == 89) begin
                Av_10k = current_Av;
            end
            else if(current_freq == 1)begin
                Av_200 = current_Av;
            end
            else if(current_freq == 255)begin
                Av_200k = current_Av;
            end
            else begin
                Av_200 = 0;
                Av_10k = 0;
                Av_200k = 0;
            end
        end
    end

    // always @(current_Av) begin
    //     if(!rst_n) begin
    //         cutoff_freq = 0;
    //     end
    //     else begin
            
    //     end
    // end

    //测量 输入 的峰峰值
    always @(posedge sys_clk) begin
        if(~rst_n) begin
            in_current_max <= 12'h7ff;
            in_current_min <= 12'h7ff;
        end
        else if(sweep_oneper_done) begin
            in_current_max <= 12'h7ff;
            in_current_min <= 12'h7ff;
            vpp_in <= in_current_max-in_current_min;
        end
        else begin
            if(circuit_in_sig > in_current_max) begin
                in_current_max <= circuit_in_sig;
                in_current_min <= in_current_min;
            end
            else if(circuit_in_sig < in_current_min) begin
                in_current_max <= in_current_max;
                in_current_min <= circuit_in_sig;
            end
        end
    end
    
    


    //测量 输出 的峰峰值，分为带载和不带载两种情况，
    always @(posedge sys_clk) begin
        if(!rst_n) begin
            out_current_max <= 12'h7ff;
            out_current_min <= 12'h7ff;
        end
        else if(sweep_oneper_done) begin
            out_current_max <= 12'h7ff;
            out_current_min <= 12'h7ff;
            if(load_on_off_switch_reg)begin
                vpp_out_with_load<=out_current_max-out_current_min;
            end
            else begin
                vpp_out_off_load<=out_current_max-out_current_min;
            end
                

        end
        else begin
            if(circuit_out_sig > out_current_max) begin
                out_current_max <= circuit_out_sig;
                out_current_min <= out_current_min;
            end
            else if(circuit_out_sig < out_current_min) begin
                out_current_max <= out_current_max;
                out_current_min <= circuit_out_sig;
            end
            else begin
                out_current_max <= out_current_max;
                out_current_min <= out_current_min;
            end
        end
    end

    


    //切换负载，10ms切换一次
    always @(posedge sys_clk) begin
        if(!rst_n) begin
            load_time_cnt <= 0;
        end
        else if(load_time_cnt < CNT_MAX) begin
            load_time_cnt <= load_time_cnt + 1;
        end
        else begin
            load_time_cnt <= 0;
        end
    end

    always @(posedge sys_clk) begin
        if(!rst_n) begin
            load_on_off_switch_reg <= 0;
        end
        else if(freq_mode == 0) begin
            if(load_time_cnt == CNT_MAX) begin
                case(load_on_off_switch_reg)
                    0:load_on_off_switch_reg <= 1;
                    1:load_on_off_switch_reg <= 0;
                endcase
            end
            else begin
                load_on_off_switch_reg <= load_on_off_switch_reg;
            end
        end
        else begin
            load_on_off_switch_reg <= 0 ;
        end
    end


    //freq_mode为1时扫频,根据一个频率结束标志写入Ram
    always @(posedge sys_clk) begin
        if(!rst_n) begin
            addra <= 0;
        end
        else if(freq_mode == 1) begin
            if (sweep_onefreq_done)
                addra <= current_freq;
            else 
                addra <= addra;    
        end
        else begin
            addra <= addra;
        end
    end

    always @(*) begin
        if(!rst_n) begin
            small2big_Gain = 195;
        end
        else begin
            case(current_freq)
                9:small2big_Gain = 195;
                default:small2big_Gain = 195;
            endcase
        end
    end



    blk_mem_gen_0 GainFreqRam (
        .clka(sys_clk),    // input wire clka
        .wea(wea),      // input wire [0 : 0] wea
        .addra(addra),  // input wire [7 : 0] addra
        .dina(dina),    // input wire [23 : 0] dina
        .clkb(clk_xl),    // input wire clkb
        .enb(en_xl),      // input wire enb
        .addrb(addr_xl),  // input wire [7 : 0] addrb
        .doutb(dout_xl)  // output wire [23 : 0] doutb
    );





endmodule
