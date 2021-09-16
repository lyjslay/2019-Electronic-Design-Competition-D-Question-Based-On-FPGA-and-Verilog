`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Jilin UniVersity
// Engineer: Liu Yijun
// 
// Create Date: 2021/07/07 15:44:19
// Design Name: 
// Module Name: sweep
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


module sweep_ctrl(
    input sys_clk,
    input rst_n,
    input freq_mode,
    output reg [31:0] dds_ctrl_data,
    output [7:0] current_freq_q,//输入给计算模块，作为地址存储增益
    output cnt_done_q,//计算模块写入Ram的标志信号，即一个频率扫完后写入
    output peroid_done_q,
    output dac_clk
);

    //这里选用1k-100k频率扫频，如更换频率需用gen_case_code.py重新生成查找表
    reg [15:0] phase_ctrl_word = 16'h0000;//高16位相位控制字
    reg [7:0] current_freq=0;//0-256,256个不同频率状态
    reg [23:0] ten_per_cnt=0;//每个频率的信号持续10个周期所需要的计数值
    reg [23:0] cnt=0;//当前计数值
    reg cnt_done;
    reg [3:0] peroid_cnt;//每个频率持续的周期数
    reg peroid_done;
    reg [1:0] dac_clk_ctrl;
    reg last_freq_mode;//上一个cnt_done时的freq_mode
    wire clk_100k;
    wire clk_1m;
    wire clk_10m;
    wire clk_100m;


    parameter static_1k = 0, sweep_1k_to_100k = 1 ;
    parameter PEROID = 9;//每个频率持续的周期数,实际上只能采到PEROID-1个周期


    assign current_freq_q = current_freq;
    assign cnt_done_q = cnt_done;
    assign peroid_done_q = peroid_done;
    assign dac_clk = (dac_clk_ctrl == 0) ? clk_100k : (dac_clk_ctrl == 1) ? clk_1m : (dac_clk_ctrl == 2) ? clk_10m : clk_100m;

    //DAC时钟选择 需要根据py代码输出重新分配current_freq范围
    always @(*) begin
        if(!rst_n) 
            dac_clk_ctrl = 0;//DA默认输出1kHz
        else if(current_freq < 10)
            dac_clk_ctrl = 0;
        else if((current_freq >= 10) & (current_freq < 90) )
            dac_clk_ctrl = 1;
        else if((current_freq >= 90) & (current_freq < 256) )
            dac_clk_ctrl = 2;
        else 
            dac_clk_ctrl = 3;
    end


    always @(posedge sys_clk) begin
        if(!rst_n) begin
            current_freq <= 9;
        end
        else begin
            case(freq_mode)
                static_1k : current_freq <= 9;//根据py里的1K对应的current freq
                sweep_1k_to_100k : begin
                    if(peroid_done&cnt_done) begin
                        if(current_freq < 256) begin
                            current_freq <= current_freq + 1;
                        end
                        else begin
                            current_freq <= 0;
                        end
                    end
                end
            endcase
        end
    end

    //这两个always用于正弦波周期数计数，每个频率8个周期一个脉冲
    always @(posedge sys_clk) begin
        if(!rst_n) begin
            last_freq_mode <= 0;
        end
        else begin
            if(cnt_done) begin
                last_freq_mode <= freq_mode;
            end
            else begin
                last_freq_mode <= last_freq_mode;
            end
        end
    end

    always @(posedge sys_clk) begin
        if(!rst_n) begin
            peroid_cnt <= 0;
            peroid_done <= 0;
        end
        else begin
            if(last_freq_mode == freq_mode) begin
                if(cnt_done & (peroid_cnt < PEROID)) begin
                    peroid_done <= 0;
                    peroid_cnt <= peroid_cnt + 1;
                end
                else if (peroid_cnt == 8) begin
                    peroid_cnt <= 0;
                    peroid_done <= 1;
                end
                else begin
                    peroid_cnt <= peroid_cnt;
                    peroid_done <= peroid_done;
                end
            end
            else begin
                peroid_cnt <= 0;
                peroid_done <= 1;        
            end
        end
    end


    //每个频率一个周期需要的计数,计数值查表
    always @(posedge sys_clk) begin
        if (!rst_n) begin
            cnt <= 0;
            cnt_done <= 1;
        end
        else begin
            // if(freq_mode == static_1k)begin
            //     cnt <= 0;
            //     cnt_done <= 1;
            // end
            // else begin
            if(cnt < ten_per_cnt) begin
                cnt <= cnt + 1;
                cnt_done <= 0;
            end
            else begin
                cnt <= 0;
                cnt_done <=1;
            end
            //end
        end
    end


    //查表得到计数值
    always @(*) begin
        case(current_freq)
            //周期数:1
            0:ten_per_cnt=24'd500000;
            1:ten_per_cnt=24'd250000;
            2:ten_per_cnt=24'd166667;
            3:ten_per_cnt=24'd125000;
            4:ten_per_cnt=24'd100000;
            5:ten_per_cnt=24'd83333;
            6:ten_per_cnt=24'd71429;
            7:ten_per_cnt=24'd62500;
            8:ten_per_cnt=24'd55556;
            9:ten_per_cnt=24'd50000;
            10:ten_per_cnt=24'd45455;
            11:ten_per_cnt=24'd41232;
            12:ten_per_cnt=24'd37727;
            13:ten_per_cnt=24'd34771;
            14:ten_per_cnt=24'd32245;
            15:ten_per_cnt=24'd30061;
            16:ten_per_cnt=24'd28154;
            17:ten_per_cnt=24'd26475;
            18:ten_per_cnt=24'd24984;
            19:ten_per_cnt=24'd23653;
            20:ten_per_cnt=24'd22456;
            21:ten_per_cnt=24'd21374;
            22:ten_per_cnt=24'd20392;
            23:ten_per_cnt=24'd19497;
            24:ten_per_cnt=24'd18676;
            25:ten_per_cnt=24'd17922;
            26:ten_per_cnt=24'd17226;
            27:ten_per_cnt=24'd16583;
            28:ten_per_cnt=24'd15985;
            29:ten_per_cnt=24'd15430;
            30:ten_per_cnt=24'd14911;
            31:ten_per_cnt=24'd14427;
            32:ten_per_cnt=24'd13972;
            33:ten_per_cnt=24'd13546;
            34:ten_per_cnt=24'd13145;
            35:ten_per_cnt=24'd12767;
            36:ten_per_cnt=24'd12410;
            37:ten_per_cnt=24'd12072;
            38:ten_per_cnt=24'd11752;
            39:ten_per_cnt=24'd11449;
            40:ten_per_cnt=24'd11161;
            41:ten_per_cnt=24'd10888;
            42:ten_per_cnt=24'd10627;
            43:ten_per_cnt=24'd10378;
            44:ten_per_cnt=24'd10141;
            45:ten_per_cnt=24'd9915;
            46:ten_per_cnt=24'd9698;
            47:ten_per_cnt=24'd9491;
            48:ten_per_cnt=24'd9292;
            49:ten_per_cnt=24'd9101;
            50:ten_per_cnt=24'd8918;
            51:ten_per_cnt=24'd8743;
            52:ten_per_cnt=24'd8574;
            53:ten_per_cnt=24'd8411;
            54:ten_per_cnt=24'd8255;
            55:ten_per_cnt=24'd8104;
            56:ten_per_cnt=24'd7959;
            57:ten_per_cnt=24'd7819;
            58:ten_per_cnt=24'd7683;
            59:ten_per_cnt=24'd7553;
            60:ten_per_cnt=24'd7426;
            61:ten_per_cnt=24'd7304;
            62:ten_per_cnt=24'd7186;
            63:ten_per_cnt=24'd7071;
            64:ten_per_cnt=24'd6960;
            65:ten_per_cnt=24'd6853;
            66:ten_per_cnt=24'd6749;
            67:ten_per_cnt=24'd6648;
            68:ten_per_cnt=24'd6549;
            69:ten_per_cnt=24'd6454;
            70:ten_per_cnt=24'd6362;
            71:ten_per_cnt=24'd6272;
            72:ten_per_cnt=24'd6184;
            73:ten_per_cnt=24'd6099;
            74:ten_per_cnt=24'd6017;
            75:ten_per_cnt=24'd5936;
            76:ten_per_cnt=24'd5858;
            77:ten_per_cnt=24'd5782;
            78:ten_per_cnt=24'd5707;
            79:ten_per_cnt=24'd5635;
            80:ten_per_cnt=24'd5564;
            81:ten_per_cnt=24'd5495;
            82:ten_per_cnt=24'd5428;
            83:ten_per_cnt=24'd5362;
            84:ten_per_cnt=24'd5298;
            85:ten_per_cnt=24'd5236;
            86:ten_per_cnt=24'd5175;
            87:ten_per_cnt=24'd5115;
            88:ten_per_cnt=24'd5057;
            89:ten_per_cnt=24'd5000;
            90:ten_per_cnt=24'd4545;
            91:ten_per_cnt=24'd4117;
            92:ten_per_cnt=24'd3762;
            93:ten_per_cnt=24'd3463;
            94:ten_per_cnt=24'd3209;
            95:ten_per_cnt=24'd2989;
            96:ten_per_cnt=24'd2798;
            97:ten_per_cnt=24'd2629;
            98:ten_per_cnt=24'd2480;
            99:ten_per_cnt=24'd2346;
            100:ten_per_cnt=24'd2227;
            101:ten_per_cnt=24'd2119;
            102:ten_per_cnt=24'd2021;
            103:ten_per_cnt=24'd1931;
            104:ten_per_cnt=24'd1849;
            105:ten_per_cnt=24'd1774;
            106:ten_per_cnt=24'd1705;
            107:ten_per_cnt=24'd1641;
            108:ten_per_cnt=24'd1581;
            109:ten_per_cnt=24'd1526;
            110:ten_per_cnt=24'd1475;
            111:ten_per_cnt=24'd1426;
            112:ten_per_cnt=24'd1381;
            113:ten_per_cnt=24'd1339;
            114:ten_per_cnt=24'd1299;
            115:ten_per_cnt=24'd1261;
            116:ten_per_cnt=24'd1226;
            117:ten_per_cnt=24'd1193;
            118:ten_per_cnt=24'd1161;
            119:ten_per_cnt=24'd1131;
            120:ten_per_cnt=24'd1102;
            121:ten_per_cnt=24'd1075;
            122:ten_per_cnt=24'd1049;
            123:ten_per_cnt=24'd1025;
            124:ten_per_cnt=24'd1001;
            125:ten_per_cnt=24'd979;
            126:ten_per_cnt=24'd957;
            127:ten_per_cnt=24'd937;
            128:ten_per_cnt=24'd917;
            129:ten_per_cnt=24'd898;
            130:ten_per_cnt=24'd880;
            131:ten_per_cnt=24'd863;
            132:ten_per_cnt=24'd846;
            133:ten_per_cnt=24'd830;
            134:ten_per_cnt=24'd814;
            135:ten_per_cnt=24'd799;
            136:ten_per_cnt=24'd785;
            137:ten_per_cnt=24'd771;
            138:ten_per_cnt=24'd758;
            139:ten_per_cnt=24'd745;
            140:ten_per_cnt=24'd732;
            141:ten_per_cnt=24'd720;
            142:ten_per_cnt=24'd709;
            143:ten_per_cnt=24'd697;
            144:ten_per_cnt=24'd686;
            145:ten_per_cnt=24'd676;
            146:ten_per_cnt=24'd665;
            147:ten_per_cnt=24'd655;
            148:ten_per_cnt=24'd646;
            149:ten_per_cnt=24'd636;
            150:ten_per_cnt=24'd627;
            151:ten_per_cnt=24'd618;
            152:ten_per_cnt=24'd610;
            153:ten_per_cnt=24'd601;
            154:ten_per_cnt=24'd593;
            155:ten_per_cnt=24'd585;
            156:ten_per_cnt=24'd577;
            157:ten_per_cnt=24'd570;
            158:ten_per_cnt=24'd562;
            159:ten_per_cnt=24'd555;
            160:ten_per_cnt=24'd548;
            161:ten_per_cnt=24'd542;
            162:ten_per_cnt=24'd535;
            163:ten_per_cnt=24'd528;
            164:ten_per_cnt=24'd522;
            165:ten_per_cnt=24'd516;
            166:ten_per_cnt=24'd510;
            167:ten_per_cnt=24'd504;
            168:ten_per_cnt=24'd498;
            169:ten_per_cnt=24'd493;
            170:ten_per_cnt=24'd487;
            171:ten_per_cnt=24'd482;
            172:ten_per_cnt=24'd477;
            173:ten_per_cnt=24'd471;
            174:ten_per_cnt=24'd466;
            175:ten_per_cnt=24'd461;
            176:ten_per_cnt=24'd457;
            177:ten_per_cnt=24'd452;
            178:ten_per_cnt=24'd447;
            179:ten_per_cnt=24'd443;
            180:ten_per_cnt=24'd438;
            181:ten_per_cnt=24'd434;
            182:ten_per_cnt=24'd430;
            183:ten_per_cnt=24'd425;
            184:ten_per_cnt=24'd421;
            185:ten_per_cnt=24'd417;
            186:ten_per_cnt=24'd413;
            187:ten_per_cnt=24'd409;
            188:ten_per_cnt=24'd406;
            189:ten_per_cnt=24'd402;
            190:ten_per_cnt=24'd398;
            191:ten_per_cnt=24'd395;
            192:ten_per_cnt=24'd391;
            193:ten_per_cnt=24'd388;
            194:ten_per_cnt=24'd384;
            195:ten_per_cnt=24'd381;
            196:ten_per_cnt=24'd378;
            197:ten_per_cnt=24'd374;
            198:ten_per_cnt=24'd371;
            199:ten_per_cnt=24'd368;
            200:ten_per_cnt=24'd365;
            201:ten_per_cnt=24'd362;
            202:ten_per_cnt=24'd359;
            203:ten_per_cnt=24'd356;
            204:ten_per_cnt=24'd353;
            205:ten_per_cnt=24'd350;
            206:ten_per_cnt=24'd348;
            207:ten_per_cnt=24'd345;
            208:ten_per_cnt=24'd342;
            209:ten_per_cnt=24'd339;
            210:ten_per_cnt=24'd337;
            211:ten_per_cnt=24'd334;
            212:ten_per_cnt=24'd332;
            213:ten_per_cnt=24'd329;
            214:ten_per_cnt=24'd327;
            215:ten_per_cnt=24'd324;
            216:ten_per_cnt=24'd322;
            217:ten_per_cnt=24'd320;
            218:ten_per_cnt=24'd317;
            219:ten_per_cnt=24'd315;
            220:ten_per_cnt=24'd313;
            221:ten_per_cnt=24'd310;
            222:ten_per_cnt=24'd308;
            223:ten_per_cnt=24'd306;
            224:ten_per_cnt=24'd304;
            225:ten_per_cnt=24'd302;
            226:ten_per_cnt=24'd300;
            227:ten_per_cnt=24'd298;
            228:ten_per_cnt=24'd296;
            229:ten_per_cnt=24'd294;
            230:ten_per_cnt=24'd292;
            231:ten_per_cnt=24'd290;
            232:ten_per_cnt=24'd288;
            233:ten_per_cnt=24'd286;
            234:ten_per_cnt=24'd284;
            235:ten_per_cnt=24'd282;
            236:ten_per_cnt=24'd281;
            237:ten_per_cnt=24'd279;
            238:ten_per_cnt=24'd277;
            239:ten_per_cnt=24'd275;
            240:ten_per_cnt=24'd273;
            241:ten_per_cnt=24'd272;
            242:ten_per_cnt=24'd270;
            243:ten_per_cnt=24'd268;
            244:ten_per_cnt=24'd267;
            245:ten_per_cnt=24'd265;
            246:ten_per_cnt=24'd264;
            247:ten_per_cnt=24'd262;
            248:ten_per_cnt=24'd260;
            249:ten_per_cnt=24'd259;
            250:ten_per_cnt=24'd257;
            251:ten_per_cnt=24'd256;
            252:ten_per_cnt=24'd254;
            253:ten_per_cnt=24'd253;
            254:ten_per_cnt=24'd251;
            255:ten_per_cnt=24'd250;


        endcase
    end

    //查表输出控制字
    always @(*) begin
        case(current_freq)
            0:dds_ctrl_data={phase_ctrl_word,16'd16};
            1:dds_ctrl_data={phase_ctrl_word,16'd33};
            2:dds_ctrl_data={phase_ctrl_word,16'd49};
            3:dds_ctrl_data={phase_ctrl_word,16'd66};
            4:dds_ctrl_data={phase_ctrl_word,16'd82};
            5:dds_ctrl_data={phase_ctrl_word,16'd98};
            6:dds_ctrl_data={phase_ctrl_word,16'd115};
            7:dds_ctrl_data={phase_ctrl_word,16'd131};
            8:dds_ctrl_data={phase_ctrl_word,16'd147};
            9:dds_ctrl_data={phase_ctrl_word,16'd164};
            10:dds_ctrl_data={phase_ctrl_word,16'd18};
            11:dds_ctrl_data={phase_ctrl_word,16'd20};
            12:dds_ctrl_data={phase_ctrl_word,16'd22};
            13:dds_ctrl_data={phase_ctrl_word,16'd24};
            14:dds_ctrl_data={phase_ctrl_word,16'd25};
            15:dds_ctrl_data={phase_ctrl_word,16'd27};
            16:dds_ctrl_data={phase_ctrl_word,16'd29};
            17:dds_ctrl_data={phase_ctrl_word,16'd31};
            18:dds_ctrl_data={phase_ctrl_word,16'd33};
            19:dds_ctrl_data={phase_ctrl_word,16'd35};
            20:dds_ctrl_data={phase_ctrl_word,16'd36};
            21:dds_ctrl_data={phase_ctrl_word,16'd38};
            22:dds_ctrl_data={phase_ctrl_word,16'd40};
            23:dds_ctrl_data={phase_ctrl_word,16'd42};
            24:dds_ctrl_data={phase_ctrl_word,16'd44};
            25:dds_ctrl_data={phase_ctrl_word,16'd46};
            26:dds_ctrl_data={phase_ctrl_word,16'd48};
            27:dds_ctrl_data={phase_ctrl_word,16'd49};
            28:dds_ctrl_data={phase_ctrl_word,16'd51};
            29:dds_ctrl_data={phase_ctrl_word,16'd53};
            30:dds_ctrl_data={phase_ctrl_word,16'd55};
            31:dds_ctrl_data={phase_ctrl_word,16'd57};
            32:dds_ctrl_data={phase_ctrl_word,16'd59};
            33:dds_ctrl_data={phase_ctrl_word,16'd60};
            34:dds_ctrl_data={phase_ctrl_word,16'd62};
            35:dds_ctrl_data={phase_ctrl_word,16'd64};
            36:dds_ctrl_data={phase_ctrl_word,16'd66};
            37:dds_ctrl_data={phase_ctrl_word,16'd68};
            38:dds_ctrl_data={phase_ctrl_word,16'd70};
            39:dds_ctrl_data={phase_ctrl_word,16'd72};
            40:dds_ctrl_data={phase_ctrl_word,16'd73};
            41:dds_ctrl_data={phase_ctrl_word,16'd75};
            42:dds_ctrl_data={phase_ctrl_word,16'd77};
            43:dds_ctrl_data={phase_ctrl_word,16'd79};
            44:dds_ctrl_data={phase_ctrl_word,16'd81};
            45:dds_ctrl_data={phase_ctrl_word,16'd83};
            46:dds_ctrl_data={phase_ctrl_word,16'd84};
            47:dds_ctrl_data={phase_ctrl_word,16'd86};
            48:dds_ctrl_data={phase_ctrl_word,16'd88};
            49:dds_ctrl_data={phase_ctrl_word,16'd90};
            50:dds_ctrl_data={phase_ctrl_word,16'd92};
            51:dds_ctrl_data={phase_ctrl_word,16'd94};
            52:dds_ctrl_data={phase_ctrl_word,16'd96};
            53:dds_ctrl_data={phase_ctrl_word,16'd97};
            54:dds_ctrl_data={phase_ctrl_word,16'd99};
            55:dds_ctrl_data={phase_ctrl_word,16'd101};
            56:dds_ctrl_data={phase_ctrl_word,16'd103};
            57:dds_ctrl_data={phase_ctrl_word,16'd105};
            58:dds_ctrl_data={phase_ctrl_word,16'd107};
            59:dds_ctrl_data={phase_ctrl_word,16'd108};
            60:dds_ctrl_data={phase_ctrl_word,16'd110};
            61:dds_ctrl_data={phase_ctrl_word,16'd112};
            62:dds_ctrl_data={phase_ctrl_word,16'd114};
            63:dds_ctrl_data={phase_ctrl_word,16'd116};
            64:dds_ctrl_data={phase_ctrl_word,16'd118};
            65:dds_ctrl_data={phase_ctrl_word,16'd120};
            66:dds_ctrl_data={phase_ctrl_word,16'd121};
            67:dds_ctrl_data={phase_ctrl_word,16'd123};
            68:dds_ctrl_data={phase_ctrl_word,16'd125};
            69:dds_ctrl_data={phase_ctrl_word,16'd127};
            70:dds_ctrl_data={phase_ctrl_word,16'd129};
            71:dds_ctrl_data={phase_ctrl_word,16'd131};
            72:dds_ctrl_data={phase_ctrl_word,16'd132};
            73:dds_ctrl_data={phase_ctrl_word,16'd134};
            74:dds_ctrl_data={phase_ctrl_word,16'd136};
            75:dds_ctrl_data={phase_ctrl_word,16'd138};
            76:dds_ctrl_data={phase_ctrl_word,16'd140};
            77:dds_ctrl_data={phase_ctrl_word,16'd142};
            78:dds_ctrl_data={phase_ctrl_word,16'd144};
            79:dds_ctrl_data={phase_ctrl_word,16'd145};
            80:dds_ctrl_data={phase_ctrl_word,16'd147};
            81:dds_ctrl_data={phase_ctrl_word,16'd149};
            82:dds_ctrl_data={phase_ctrl_word,16'd151};
            83:dds_ctrl_data={phase_ctrl_word,16'd153};
            84:dds_ctrl_data={phase_ctrl_word,16'd155};
            85:dds_ctrl_data={phase_ctrl_word,16'd156};
            86:dds_ctrl_data={phase_ctrl_word,16'd158};
            87:dds_ctrl_data={phase_ctrl_word,16'd160};
            88:dds_ctrl_data={phase_ctrl_word,16'd162};
            89:dds_ctrl_data={phase_ctrl_word,16'd164};
            90:dds_ctrl_data={phase_ctrl_word,16'd14};
            91:dds_ctrl_data={phase_ctrl_word,16'd16};
            92:dds_ctrl_data={phase_ctrl_word,16'd17};
            93:dds_ctrl_data={phase_ctrl_word,16'd19};
            94:dds_ctrl_data={phase_ctrl_word,16'd20};
            95:dds_ctrl_data={phase_ctrl_word,16'd22};
            96:dds_ctrl_data={phase_ctrl_word,16'd23};
            97:dds_ctrl_data={phase_ctrl_word,16'd25};
            98:dds_ctrl_data={phase_ctrl_word,16'd26};
            99:dds_ctrl_data={phase_ctrl_word,16'd28};
            100:dds_ctrl_data={phase_ctrl_word,16'd29};
            101:dds_ctrl_data={phase_ctrl_word,16'd31};
            102:dds_ctrl_data={phase_ctrl_word,16'd32};
            103:dds_ctrl_data={phase_ctrl_word,16'd34};
            104:dds_ctrl_data={phase_ctrl_word,16'd35};
            105:dds_ctrl_data={phase_ctrl_word,16'd37};
            106:dds_ctrl_data={phase_ctrl_word,16'd38};
            107:dds_ctrl_data={phase_ctrl_word,16'd40};
            108:dds_ctrl_data={phase_ctrl_word,16'd41};
            109:dds_ctrl_data={phase_ctrl_word,16'd43};
            110:dds_ctrl_data={phase_ctrl_word,16'd44};
            111:dds_ctrl_data={phase_ctrl_word,16'd46};
            112:dds_ctrl_data={phase_ctrl_word,16'd47};
            113:dds_ctrl_data={phase_ctrl_word,16'd49};
            114:dds_ctrl_data={phase_ctrl_word,16'd50};
            115:dds_ctrl_data={phase_ctrl_word,16'd52};
            116:dds_ctrl_data={phase_ctrl_word,16'd53};
            117:dds_ctrl_data={phase_ctrl_word,16'd55};
            118:dds_ctrl_data={phase_ctrl_word,16'd56};
            119:dds_ctrl_data={phase_ctrl_word,16'd58};
            120:dds_ctrl_data={phase_ctrl_word,16'd59};
            121:dds_ctrl_data={phase_ctrl_word,16'd61};
            122:dds_ctrl_data={phase_ctrl_word,16'd62};
            123:dds_ctrl_data={phase_ctrl_word,16'd64};
            124:dds_ctrl_data={phase_ctrl_word,16'd65};
            125:dds_ctrl_data={phase_ctrl_word,16'd67};
            126:dds_ctrl_data={phase_ctrl_word,16'd68};
            127:dds_ctrl_data={phase_ctrl_word,16'd70};
            128:dds_ctrl_data={phase_ctrl_word,16'd71};
            129:dds_ctrl_data={phase_ctrl_word,16'd73};
            130:dds_ctrl_data={phase_ctrl_word,16'd74};
            131:dds_ctrl_data={phase_ctrl_word,16'd76};
            132:dds_ctrl_data={phase_ctrl_word,16'd77};
            133:dds_ctrl_data={phase_ctrl_word,16'd79};
            134:dds_ctrl_data={phase_ctrl_word,16'd80};
            135:dds_ctrl_data={phase_ctrl_word,16'd82};
            136:dds_ctrl_data={phase_ctrl_word,16'd83};
            137:dds_ctrl_data={phase_ctrl_word,16'd85};
            138:dds_ctrl_data={phase_ctrl_word,16'd86};
            139:dds_ctrl_data={phase_ctrl_word,16'd88};
            140:dds_ctrl_data={phase_ctrl_word,16'd89};
            141:dds_ctrl_data={phase_ctrl_word,16'd91};
            142:dds_ctrl_data={phase_ctrl_word,16'd92};
            143:dds_ctrl_data={phase_ctrl_word,16'd94};
            144:dds_ctrl_data={phase_ctrl_word,16'd95};
            145:dds_ctrl_data={phase_ctrl_word,16'd97};
            146:dds_ctrl_data={phase_ctrl_word,16'd98};
            147:dds_ctrl_data={phase_ctrl_word,16'd100};
            148:dds_ctrl_data={phase_ctrl_word,16'd101};
            149:dds_ctrl_data={phase_ctrl_word,16'd103};
            150:dds_ctrl_data={phase_ctrl_word,16'd105};
            151:dds_ctrl_data={phase_ctrl_word,16'd106};
            152:dds_ctrl_data={phase_ctrl_word,16'd108};
            153:dds_ctrl_data={phase_ctrl_word,16'd109};
            154:dds_ctrl_data={phase_ctrl_word,16'd111};
            155:dds_ctrl_data={phase_ctrl_word,16'd112};
            156:dds_ctrl_data={phase_ctrl_word,16'd114};
            157:dds_ctrl_data={phase_ctrl_word,16'd115};
            158:dds_ctrl_data={phase_ctrl_word,16'd117};
            159:dds_ctrl_data={phase_ctrl_word,16'd118};
            160:dds_ctrl_data={phase_ctrl_word,16'd120};
            161:dds_ctrl_data={phase_ctrl_word,16'd121};
            162:dds_ctrl_data={phase_ctrl_word,16'd123};
            163:dds_ctrl_data={phase_ctrl_word,16'd124};
            164:dds_ctrl_data={phase_ctrl_word,16'd126};
            165:dds_ctrl_data={phase_ctrl_word,16'd127};
            166:dds_ctrl_data={phase_ctrl_word,16'd129};
            167:dds_ctrl_data={phase_ctrl_word,16'd130};
            168:dds_ctrl_data={phase_ctrl_word,16'd132};
            169:dds_ctrl_data={phase_ctrl_word,16'd133};
            170:dds_ctrl_data={phase_ctrl_word,16'd135};
            171:dds_ctrl_data={phase_ctrl_word,16'd136};
            172:dds_ctrl_data={phase_ctrl_word,16'd138};
            173:dds_ctrl_data={phase_ctrl_word,16'd139};
            174:dds_ctrl_data={phase_ctrl_word,16'd141};
            175:dds_ctrl_data={phase_ctrl_word,16'd142};
            176:dds_ctrl_data={phase_ctrl_word,16'd144};
            177:dds_ctrl_data={phase_ctrl_word,16'd145};
            178:dds_ctrl_data={phase_ctrl_word,16'd147};
            179:dds_ctrl_data={phase_ctrl_word,16'd148};
            180:dds_ctrl_data={phase_ctrl_word,16'd150};
            181:dds_ctrl_data={phase_ctrl_word,16'd151};
            182:dds_ctrl_data={phase_ctrl_word,16'd153};
            183:dds_ctrl_data={phase_ctrl_word,16'd154};
            184:dds_ctrl_data={phase_ctrl_word,16'd156};
            185:dds_ctrl_data={phase_ctrl_word,16'd157};
            186:dds_ctrl_data={phase_ctrl_word,16'd159};
            187:dds_ctrl_data={phase_ctrl_word,16'd160};
            188:dds_ctrl_data={phase_ctrl_word,16'd162};
            189:dds_ctrl_data={phase_ctrl_word,16'd163};
            190:dds_ctrl_data={phase_ctrl_word,16'd165};
            191:dds_ctrl_data={phase_ctrl_word,16'd166};
            192:dds_ctrl_data={phase_ctrl_word,16'd168};
            193:dds_ctrl_data={phase_ctrl_word,16'd169};
            194:dds_ctrl_data={phase_ctrl_word,16'd171};
            195:dds_ctrl_data={phase_ctrl_word,16'd172};
            196:dds_ctrl_data={phase_ctrl_word,16'd174};
            197:dds_ctrl_data={phase_ctrl_word,16'd175};
            198:dds_ctrl_data={phase_ctrl_word,16'd177};
            199:dds_ctrl_data={phase_ctrl_word,16'd178};
            200:dds_ctrl_data={phase_ctrl_word,16'd180};
            201:dds_ctrl_data={phase_ctrl_word,16'd181};
            202:dds_ctrl_data={phase_ctrl_word,16'd183};
            203:dds_ctrl_data={phase_ctrl_word,16'd184};
            204:dds_ctrl_data={phase_ctrl_word,16'd186};
            205:dds_ctrl_data={phase_ctrl_word,16'd187};
            206:dds_ctrl_data={phase_ctrl_word,16'd189};
            207:dds_ctrl_data={phase_ctrl_word,16'd190};
            208:dds_ctrl_data={phase_ctrl_word,16'd192};
            209:dds_ctrl_data={phase_ctrl_word,16'd193};
            210:dds_ctrl_data={phase_ctrl_word,16'd195};
            211:dds_ctrl_data={phase_ctrl_word,16'd196};
            212:dds_ctrl_data={phase_ctrl_word,16'd198};
            213:dds_ctrl_data={phase_ctrl_word,16'd199};
            214:dds_ctrl_data={phase_ctrl_word,16'd201};
            215:dds_ctrl_data={phase_ctrl_word,16'd202};
            216:dds_ctrl_data={phase_ctrl_word,16'd204};
            217:dds_ctrl_data={phase_ctrl_word,16'd205};
            218:dds_ctrl_data={phase_ctrl_word,16'd207};
            219:dds_ctrl_data={phase_ctrl_word,16'd208};
            220:dds_ctrl_data={phase_ctrl_word,16'd210};
            221:dds_ctrl_data={phase_ctrl_word,16'd211};
            222:dds_ctrl_data={phase_ctrl_word,16'd213};
            223:dds_ctrl_data={phase_ctrl_word,16'd214};
            224:dds_ctrl_data={phase_ctrl_word,16'd216};
            225:dds_ctrl_data={phase_ctrl_word,16'd217};
            226:dds_ctrl_data={phase_ctrl_word,16'd219};
            227:dds_ctrl_data={phase_ctrl_word,16'd220};
            228:dds_ctrl_data={phase_ctrl_word,16'd222};
            229:dds_ctrl_data={phase_ctrl_word,16'd223};
            230:dds_ctrl_data={phase_ctrl_word,16'd225};
            231:dds_ctrl_data={phase_ctrl_word,16'd226};
            232:dds_ctrl_data={phase_ctrl_word,16'd228};
            233:dds_ctrl_data={phase_ctrl_word,16'd229};
            234:dds_ctrl_data={phase_ctrl_word,16'd231};
            235:dds_ctrl_data={phase_ctrl_word,16'd232};
            236:dds_ctrl_data={phase_ctrl_word,16'd234};
            237:dds_ctrl_data={phase_ctrl_word,16'd235};
            238:dds_ctrl_data={phase_ctrl_word,16'd237};
            239:dds_ctrl_data={phase_ctrl_word,16'd238};
            240:dds_ctrl_data={phase_ctrl_word,16'd240};
            241:dds_ctrl_data={phase_ctrl_word,16'd241};
            242:dds_ctrl_data={phase_ctrl_word,16'd243};
            243:dds_ctrl_data={phase_ctrl_word,16'd244};
            244:dds_ctrl_data={phase_ctrl_word,16'd246};
            245:dds_ctrl_data={phase_ctrl_word,16'd247};
            246:dds_ctrl_data={phase_ctrl_word,16'd249};
            247:dds_ctrl_data={phase_ctrl_word,16'd250};
            248:dds_ctrl_data={phase_ctrl_word,16'd252};
            249:dds_ctrl_data={phase_ctrl_word,16'd253};
            250:dds_ctrl_data={phase_ctrl_word,16'd255};
            251:dds_ctrl_data={phase_ctrl_word,16'd256};
            252:dds_ctrl_data={phase_ctrl_word,16'd258};
            253:dds_ctrl_data={phase_ctrl_word,16'd259};
            254:dds_ctrl_data={phase_ctrl_word,16'd261};
            255:dds_ctrl_data={phase_ctrl_word,16'd262};

        endcase
    end


    clk_div dac_clk_gen(
        .clk_sys(sys_clk),
        .rst_n(rst_n),
        .clk_100k(clk_100k),
        .clk_1m(clk_1m),
        .clk_10m(clk_10m),
        .clk_100m(clk_100m)
    );

endmodule
