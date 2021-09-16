`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/12 10:00:05
// Design Name: 
// Module Name: test_pix
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


module RI_pix(
    input clk,
    input vga_clk,
    input rstn,
    input [9:0] pix_x,
    input [9:0] pix_y,
    input update_flag,
    input [23:0] din,
    output reg  pix_data
    
    );

parameter CHAR_W = 10'd160;
parameter CHAR_H = 10'd32;

parameter CHAR_START_H = 10'd400;
parameter CHAR_START_V = 10'd100;

reg [159:0]temp;
reg [15:0]num1,num2,num3,num4;

//以下为字符码
reg [15:0] char_R [31:0];
reg [15:0] char_I [31:0]; 
reg [15:0] char_equal [31:0];
reg [15:0] data_0 [31:0];
reg [15:0] data_1 [31:0];
reg [15:0] data_2 [31:0];
reg [15:0] data_3 [31:0];
reg [15:0] data_4 [31:0];
reg [15:0] data_5 [31:0];
reg [15:0] data_6 [31:0];
reg [15:0] data_7 [31:0];
reg [15:0] data_8 [31:0];
reg [15:0] data_9 [31:0];
reg [15:0] data_point  [31:0];

reg [15:0] char_k [31:0];
reg [15:0] char_omeiga [31:0];
reg [15:0] char_M [31:0];
reg [15:0]space;

wire [3:0]d1;
wire [3:0]d2;
wire [3:0]d3;
wire [3:0]d4;
wire [1:0]point_flag;
wire [1:0]kilo_flag;

wire select_flag;


assign select_flag=(((pix_x >= CHAR_START_H) && (pix_x < (CHAR_START_H + CHAR_W)))
                    && ((pix_y >= CHAR_START_V) && (pix_y < (CHAR_START_V + CHAR_H))))
                    ? 1'b1:1'b0;
            


wire [9:0]char_x,char_y; 
//字符显示坐标
assign  char_x  =   select_flag ? (pix_x - CHAR_START_H) : 10'b0;
assign  char_y  =   select_flag ? (pix_y - CHAR_START_V) : 10'b0;

data_change ri_inst(
    .clk(clk),
    .rstn(rstn),
    .vga_clk(vga_clk),
    .update_flag(update_flag),
    .din(din),
    .q1(d1),
    .q2(d2),
    .q3(d3),
    .q4(d4),
    .point_flag(point_flag),
    .kilo_flag(kilo_flag)
    );

always @(posedge clk) begin
    case (d1)
        4'd0: num1<=data_0[char_y];
        4'd1: num1<=data_1[char_y];
        4'd2: num1<=data_2[char_y];
        4'd3: num1<=data_3[char_y];
        4'd4: num1<=data_4[char_y];
        4'd5: num1<=data_5[char_y];
        4'd6: num1<=data_6[char_y];
        4'd7: num1<=data_7[char_y];
        4'd8: num1<=data_8[char_y];
        4'd9: num1<=data_9[char_y];
        default: num1<=16'b0;
    endcase

    case (d2)
        4'd0: num2<=data_0[char_y];
        4'd1: num2<=data_1[char_y];
        4'd2: num2<=data_2[char_y];
        4'd3: num2<=data_3[char_y];
        4'd4: num2<=data_4[char_y];
        4'd5: num2<=data_5[char_y];
        4'd6: num2<=data_6[char_y];
        4'd7: num2<=data_7[char_y];
        4'd8: num2<=data_8[char_y];
        4'd9: num2<=data_9[char_y];
        default: num2<=16'b0;
    endcase

    case (d3)
        4'd0: num3<=data_0[char_y];
        4'd1: num3<=data_1[char_y];
        4'd2: num3<=data_2[char_y];
        4'd3: num3<=data_3[char_y];
        4'd4: num3<=data_4[char_y];
        4'd5: num3<=data_5[char_y];
        4'd6: num3<=data_6[char_y];
        4'd7: num3<=data_7[char_y];
        4'd8: num3<=data_8[char_y];
        4'd9: num3<=data_9[char_y];
        default: num3<=16'b0;
    endcase

    case (d4)
        4'd0: num4<=data_0[char_y];
        4'd1: num4<=data_1[char_y];
        4'd2: num4<=data_2[char_y];
        4'd3: num4<=data_3[char_y];
        4'd4: num4<=data_4[char_y];
        4'd5: num4<=data_5[char_y];
        4'd6: num4<=data_6[char_y];
        4'd7: num4<=data_7[char_y];
        4'd8: num4<=data_8[char_y];
        4'd9: num4<=data_9[char_y];
        default: num4<=16'b0;
    endcase
end

always @(posedge clk) begin
    temp[159:112]<={char_R[char_y],char_I[char_y],char_equal[char_y]};
    case (point_flag)
        2'd0:temp[111:32]<={num1,num2,num3,num4,space}; 
        2'd1:temp[111:32]<={num1,data_point[char_y],num2,num3,num4}; 
        2'd2:temp[111:32]<={num1,num2,data_point[char_y],num3,num4}; 
        2'd3:temp[111:32]<={num1,num2,num3,data_point[char_y],num4}; 
        default: temp[111:32]<={num1,num2,num3,num4,space};
    endcase
    
    case (kilo_flag)
        2'd0:temp[31:16]<=space;
        2'd1:temp[31:16]<=char_k[char_y];
        2'd2:temp[31:16]<=char_M[char_y];
        default: temp[31:16]<=space;
    endcase
    temp[15:0]<=char_omeiga[char_y];
   
end

always@(posedge clk or negedge rstn)begin
    if(~rstn)
        pix_data    <= 1'b0;
    else    if(select_flag)
        pix_data    <=  temp[CHAR_W-1'b1-char_x];
    else
        pix_data    <=  1'b0;
end


//char:字符数据
always@(posedge clk)
    begin
        space<=16'h0000;

        char_R[0] <=16'h0000;
        char_R[1] <=16'h0000;
        char_R[2] <=16'h0000;
        char_R[3] <=16'h0000;
        char_R[4] <=16'h0000;
        char_R[5] <=16'h0000;
        char_R[6] <=16'h7F80;
        char_R[7] <=16'h7FF0;
        char_R[8] <=16'h71F8;
        char_R[9] <=16'h7038;
        char_R[10]<=16'h7038;
        char_R[11]<=16'h7038;
        char_R[12]<=16'h7038;
        char_R[13]<=16'h7038;
        char_R[14]<=16'h7070;
        char_R[15]<=16'h7FE0;
        char_R[16]<=16'h7F80;
        char_R[17]<=16'h71C0;
        char_R[18]<=16'h70E0;
        char_R[19]<=16'h70F0;
        char_R[20]<=16'h7070;
        char_R[21]<=16'h7078;
        char_R[22]<=16'h7038;
        char_R[23]<=16'h703C;
        char_R[24]<=16'h701C;
        char_R[25]<=16'h701E;
        char_R[26]<=16'h0000;
        char_R[27]<=16'h0000;
        char_R[28]<=16'h0000;
        char_R[29]<=16'h0000;
        char_R[30]<=16'h0000;
        char_R[31]<=16'h0000;

        char_I[0] <=16'h0000;
        char_I[1] <=16'h0000;
        char_I[2] <=16'h0000;
        char_I[3] <=16'h0000;
        char_I[4] <=16'h0000;
        char_I[5] <=16'h0000;
        char_I[6] <=16'h0000;
        char_I[7] <=16'h0000;
        char_I[8] <=16'h3FFC;
        char_I[9] <=16'h3FFC;
        char_I[10]<=16'h0180;
        char_I[11]<=16'h0180;
        char_I[12]<=16'h0180;
        char_I[13]<=16'h0180;
        char_I[14]<=16'h0180;
        char_I[15]<=16'h0180;
        char_I[16]<=16'h0180;
        char_I[17]<=16'h0180;
        char_I[18]<=16'h0180;
        char_I[19]<=16'h0180;
        char_I[20]<=16'h0180;
        char_I[21]<=16'h0180;
        char_I[22]<=16'h0180;
        char_I[23]<=16'h3FFC;
        char_I[24]<=16'h3FFC;
        char_I[25]<=16'h0000;
        char_I[26]<=16'h0000;
        char_I[27]<=16'h0000;
        char_I[28]<=16'h0000;
        char_I[29]<=16'h0000;
        char_I[30]<=16'h0000;
        char_I[31]<=16'h0000;

        char_equal[0]<= 16'h0000;
        char_equal[1]<= 16'h0000;
        char_equal[2]<= 16'h0000;
        char_equal[3]<= 16'h0000;
        char_equal[4]<= 16'h0000;
        char_equal[5]<= 16'h0000;
        char_equal[6]<= 16'h0000;
        char_equal[7]<= 16'h0000;
        char_equal[8]<= 16'h0000;
        char_equal[9]<= 16'h0000;
        char_equal[10]<=16'h0000;
        char_equal[11]<=16'h0000;
        char_equal[12]<=16'h0000;
        char_equal[13]<=16'h7FFE;
        char_equal[14]<=16'h7FFE;
        char_equal[15]<=16'h0000;
        char_equal[16]<=16'h0000;
        char_equal[17]<=16'h0000;
        char_equal[18]<=16'h7FFE;
        char_equal[19]<=16'h7FFE;
        char_equal[20]<=16'h0000;
        char_equal[21]<=16'h0000;
        char_equal[22]<=16'h0000;
        char_equal[23]<=16'h0000;
        char_equal[24]<=16'h0000;
        char_equal[25]<=16'h0000;
        char_equal[26]<=16'h0000;
        char_equal[27]<=16'h0000;
        char_equal[28]<=16'h0000;
        char_equal[29]<=16'h0000;
        char_equal[30]<=16'h0000;
        char_equal[31]<=16'h0000;
        

        data_0[0]<= 16'h0000;
        data_0[1]<= 16'h0000;
        data_0[2]<= 16'h0000;
        data_0[3]<= 16'h0000;
        data_0[4]<= 16'h0000;
        data_0[5]<= 16'h07E0;
        data_0[6]<= 16'h0FF8;
        data_0[7]<= 16'h1C3C;
        data_0[8]<= 16'h381C;
        data_0[9]<= 16'h700E;
        data_0[10]<=16'h700E;
        data_0[11]<=16'h701E;
        data_0[12]<=16'h603F;
        data_0[13]<=16'hE0F7;
        data_0[14]<=16'hE1E7;
        data_0[15]<=16'hE787;
        data_0[16]<=16'hEF07;
        data_0[17]<=16'h7E07;
        data_0[18]<=16'h7806;
        data_0[19]<=16'h700E;
        data_0[20]<=16'h700E;
        data_0[21]<=16'h381C;
        data_0[22]<=16'h3C3C;
        data_0[23]<=16'h1FF8;
        data_0[24]<=16'h0FE0;
        data_0[25]<=16'h0000;
        data_0[26]<=16'h0000;
        data_0[27]<=16'h0000;
        data_0[28]<=16'h0000;
        data_0[29]<=16'h0000;
        data_0[30]<=16'h0000;
        data_0[31]<=16'h0000;

        data_1[0]<= 16'h0000;
        data_1[1]<= 16'h0000;
        data_1[2]<= 16'h0000;
        data_1[3]<= 16'h0000;
        data_1[4]<= 16'h0000;
        data_1[5]<= 16'h01C0;
        data_1[6]<= 16'h07C0;
        data_1[7]<= 16'h1FC0;
        data_1[8]<= 16'h7DC0;
        data_1[9]<= 16'h39C0;
        data_1[10]<=16'h21C0;
        data_1[11]<=16'h01C0;
        data_1[12]<=16'h01C0;
        data_1[13]<=16'h01C0;
        data_1[14]<=16'h01C0;
        data_1[15]<=16'h01C0;
        data_1[16]<=16'h01C0;
        data_1[17]<=16'h01C0;
        data_1[18]<=16'h01C0;
        data_1[19]<=16'h01C0;
        data_1[20]<=16'h01C0;
        data_1[21]<=16'h01C0;
        data_1[22]<=16'h01C0;
        data_1[23]<=16'h3FFE;
        data_1[24]<=16'h3FFE;
        data_1[25]<=16'h0000;
        data_1[26]<=16'h0000;
        data_1[27]<=16'h0000;
        data_1[28]<=16'h0000;
        data_1[29]<=16'h0000;
        data_1[30]<=16'h0000;
        data_1[31]<=16'h0000;

        data_2[0]<= 16'h0000;
        data_2[1]<= 16'h0000;
        data_2[2]<= 16'h0000;
        data_2[3]<= 16'h0000;
        data_2[4]<= 16'h0000;
        data_2[5]<= 16'h07E0;
        data_2[6]<= 16'h1FF0;
        data_2[7]<= 16'h3C78;
        data_2[8]<= 16'h303C;
        data_2[9]<= 16'h001C;
        data_2[10]<=16'h001C;
        data_2[11]<=16'h001C;
        data_2[12]<=16'h001C;
        data_2[13]<=16'h003C;
        data_2[14]<=16'h0038;
        data_2[15]<=16'h0070;
        data_2[16]<=16'h00E0;
        data_2[17]<=16'h01C0;
        data_2[18]<=16'h0380;
        data_2[19]<=16'h0700;
        data_2[20]<=16'h0E00;
        data_2[21]<=16'h1C00;
        data_2[22]<=16'h3FFE;
        data_2[23]<=16'h7FFE;
        data_2[24]<=16'h7FFE;
        data_2[25]<=16'h0000;
        data_2[26]<=16'h0000;
        data_2[27]<=16'h0000;
        data_2[28]<=16'h0000;
        data_2[29]<=16'h0000;
        data_2[30]<=16'h0000;
        data_2[31]<=16'h0000;

        data_3[0]<= 16'h0000;
        data_3[1]<= 16'h0000;
        data_3[2]<= 16'h0000;
        data_3[3]<= 16'h0000;
        data_3[4]<= 16'h0000;
        data_3[5]<= 16'h1FE0;
        data_3[6]<= 16'h3FF0;
        data_3[7]<= 16'h3078;
        data_3[8]<= 16'h003C;
        data_3[9]<= 16'h001C;
        data_3[10]<=16'h001C;
        data_3[11]<=16'h001C;
        data_3[12]<=16'h0038;
        data_3[13]<=16'h00F0;
        data_3[14]<=16'h0FC0;
        data_3[15]<=16'h0FF8;
        data_3[16]<=16'h003C;
        data_3[17]<=16'h001E;
        data_3[18]<=16'h000E;
        data_3[19]<=16'h000E;
        data_3[20]<=16'h000E;
        data_3[21]<=16'h001C;
        data_3[22]<=16'h007C;
        data_3[23]<=16'h3FF0;
        data_3[24]<=16'h3FE0;
        data_3[25]<=16'h0000;
        data_3[26]<=16'h0000;
        data_3[27]<=16'h0000;
        data_3[28]<=16'h0000;
        data_3[29]<=16'h0000;
        data_3[30]<=16'h0000;
        data_3[31]<=16'h0000; 
        
        data_4[0]<= 16'h0000;
        data_4[1]<= 16'h0000;
        data_4[2]<= 16'h0000;
        data_4[3]<= 16'h0000;
        data_4[4]<= 16'h0000;
        data_4[5]<= 16'h00F8;
        data_4[6]<= 16'h00F8;
        data_4[7]<= 16'h01F8;
        data_4[8]<= 16'h03B8;
        data_4[9]<= 16'h03B8;
        data_4[10]<=16'h0738;
        data_4[11]<=16'h0E38;
        data_4[12]<=16'h0E38;
        data_4[13]<=16'h1C38;
        data_4[14]<=16'h3838;
        data_4[15]<=16'h3038;
        data_4[16]<=16'h7038;
        data_4[17]<=16'hE038;
        data_4[18]<=16'hFFFF;
        data_4[19]<=16'hFFFF;
        data_4[20]<=16'hFFFF;
        data_4[21]<=16'h0038;
        data_4[22]<=16'h0038;
        data_4[23]<=16'h0038;
        data_4[24]<=16'h0038;
        data_4[25]<=16'h0000;
        data_4[26]<=16'h0000;
        data_4[27]<=16'h0000;
        data_4[28]<=16'h0000;
        data_4[29]<=16'h0000;
        data_4[30]<=16'h0000;
        data_4[31]<=16'h0000; 

        data_5[0]<= 16'h0000;
        data_5[1]<= 16'h0000;
        data_5[2]<= 16'h0000;
        data_5[3]<= 16'h0000;
        data_5[4]<= 16'h0000;
        data_5[5]<= 16'h3FFC;
        data_5[6]<= 16'h3FFC;
        data_5[7]<= 16'h3FFC;
        data_5[8]<= 16'h3800;
        data_5[9]<= 16'h3800;
        data_5[10]<=16'h3800;
        data_5[11]<=16'h3800;
        data_5[12]<=16'h3800;
        data_5[13]<=16'h3FC0;
        data_5[14]<=16'h3FF8;
        data_5[15]<=16'h00FC;
        data_5[16]<=16'h001C;
        data_5[17]<=16'h001E;
        data_5[18]<=16'h000E;
        data_5[19]<=16'h000E;
        data_5[20]<=16'h001C;
        data_5[21]<=16'h001C;
        data_5[22]<=16'h0078;
        data_5[23]<=16'h3FF0;
        data_5[24]<=16'h3FC0;
        data_5[25]<=16'h0000;
        data_5[26]<=16'h0000;
        data_5[27]<=16'h0000;
        data_5[28]<=16'h0000;
        data_5[29]<=16'h0000;
        data_5[30]<=16'h0000;
        data_5[31]<=16'h0000; 

        data_6[0]<= 16'h0000;
        data_6[1]<= 16'h0000;
        data_6[2]<= 16'h0000;
        data_6[3]<= 16'h0000;
        data_6[4]<= 16'h0000;
        data_6[5]<= 16'h0000;
        data_6[6]<= 16'h007C;
        data_6[7]<= 16'h03FC;
        data_6[8]<= 16'h0FFC;
        data_6[9]<= 16'h1E00;
        data_6[10]<=16'h1C00;
        data_6[11]<=16'h3800;
        data_6[12]<=16'h3000;
        data_6[13]<=16'h7000;
        data_6[14]<=16'h77F0;
        data_6[15]<=16'h7FFC;
        data_6[16]<=16'h7C1E;
        data_6[17]<=16'h700E;
        data_6[18]<=16'h700E;
        data_6[19]<=16'h7006;
        data_6[20]<=16'h7006;
        data_6[21]<=16'h700E;
        data_6[22]<=16'h380E;
        data_6[23]<=16'h3C1C;
        data_6[24]<=16'h1FF8;
        data_6[25]<=16'h07F0;
        data_6[26]<=16'h0000;
        data_6[27]<=16'h0000;
        data_6[28]<=16'h0000;
        data_6[29]<=16'h0000;
        data_6[30]<=16'h0000;
        data_6[31]<=16'h0000; 

        data_7[0]<= 16'h0000;
        data_7[1]<= 16'h0000;
        data_7[2]<= 16'h0000;
        data_7[3]<= 16'h0000;
        data_7[4]<= 16'h0000;
        data_7[5]<= 16'h0000;
        data_7[6]<= 16'h7FFE;
        data_7[7]<= 16'h7FFE;
        data_7[8]<= 16'h7FFE;
        data_7[9]<= 16'h000E;
        data_7[10]<=16'h001C;
        data_7[11]<=16'h001C;
        data_7[12]<=16'h0038;
        data_7[13]<=16'h0038;
        data_7[14]<=16'h0070;
        data_7[15]<=16'h0070;
        data_7[16]<=16'h00E0;
        data_7[17]<=16'h00E0;
        data_7[18]<=16'h01C0;
        data_7[19]<=16'h01C0;
        data_7[20]<=16'h0380;
        data_7[21]<=16'h0780;
        data_7[22]<=16'h0700;
        data_7[23]<=16'h0F00;
        data_7[24]<=16'h0E00;
        data_7[25]<=16'h1E00;
        data_7[26]<=16'h0000;
        data_7[27]<=16'h0000;
        data_7[28]<=16'h0000;
        data_7[29]<=16'h0000;
        data_7[30]<=16'h0000;
        data_7[31]<=16'h0000;

        data_8[0]<= 16'h0000;
        data_8[1]<= 16'h0000;
        data_8[2]<= 16'h0000;
        data_8[3]<= 16'h0000;
        data_8[4]<= 16'h0000;
        data_8[5]<= 16'h0000;
        data_8[6]<= 16'h07F0;
        data_8[7]<= 16'h1FF8;
        data_8[8]<= 16'h3C3C;
        data_8[9]<= 16'h380E;
        data_8[10]<=16'h700E;
        data_8[11]<=16'h700E;
        data_8[12]<=16'h381C;
        data_8[13]<=16'h3C3C;
        data_8[14]<=16'h1FF8;
        data_8[15]<=16'h07E0;
        data_8[16]<=16'h0FF0;
        data_8[17]<=16'h1E7C;
        data_8[18]<=16'h381E;
        data_8[19]<=16'h700E;
        data_8[20]<=16'h700E;
        data_8[21]<=16'h700E;
        data_8[22]<=16'h700E;
        data_8[23]<=16'h781E;
        data_8[24]<=16'h3FFC;
        data_8[25]<=16'h0FF0;
        data_8[26]<=16'h0000;
        data_8[27]<=16'h0000;
        data_8[28]<=16'h0000;
        data_8[29]<=16'h0000;
        data_8[30]<=16'h0000;
        data_8[31]<=16'h0000;    

        data_9[0]<= 16'h0000;
        data_9[1]<= 16'h0000;
        data_9[2]<= 16'h0000;
        data_9[3]<= 16'h0000;
        data_9[4]<= 16'h0000;
        data_9[5]<= 16'h0000;
        data_9[6]<= 16'h07E0;
        data_9[7]<= 16'h1FF8;
        data_9[8]<= 16'h3C38;
        data_9[9]<= 16'h701C;
        data_9[10]<=16'h700C;
        data_9[11]<=16'h700E;
        data_9[12]<=16'h700E;
        data_9[13]<=16'h700E;
        data_9[14]<=16'h700E;
        data_9[15]<=16'h781E;
        data_9[16]<=16'h3FFE;
        data_9[17]<=16'h1FFE;
        data_9[18]<=16'h000E;
        data_9[19]<=16'h000E;
        data_9[20]<=16'h001C;
        data_9[21]<=16'h001C;
        data_9[22]<=16'h0078;
        data_9[23]<=16'h01F0;
        data_9[24]<=16'h3FE0;
        data_9[25]<=16'h3F00;
        data_9[26]<=16'h0000;
        data_9[27]<=16'h0000;
        data_9[28]<=16'h0000;
        data_9[29]<=16'h0000;
        data_9[30]<=16'h0000;
        data_9[31]<=16'h0000;     

        data_point[0]<= 16'h0000;
        data_point[1]<= 16'h0000;
        data_point[2]<= 16'h0000;
        data_point[3]<= 16'h0000;
        data_point[4]<= 16'h0000;
        data_point[5]<= 16'h0000;
        data_point[6]<= 16'h0000;
        data_point[7]<= 16'h0000;
        data_point[8]<= 16'h0000;
        data_point[9]<= 16'h0000;
        data_point[10]<=16'h0000;
        data_point[11]<=16'h0000;
        data_point[12]<=16'h0000;
        data_point[13]<=16'h0000;
        data_point[14]<=16'h0000;
        data_point[15]<=16'h0000;
        data_point[16]<=16'h0000;
        data_point[17]<=16'h0000;
        data_point[18]<=16'h0000;
        data_point[19]<=16'h0000;
        data_point[20]<=16'h0000;
        data_point[21]<=16'h0180;
        data_point[22]<=16'h03C0;
        data_point[23]<=16'h07E0;
        data_point[24]<=16'h07E0;
        data_point[25]<=16'h03C0;
        data_point[26]<=16'h0000;
        data_point[27]<=16'h0000;
        data_point[28]<=16'h0000;
        data_point[29]<=16'h0000;
        data_point[30]<=16'h0000;
        data_point[31]<=16'h0000;  

        
        char_k[0]<= 16'h0000;
        char_k[1]<= 16'h0000;
        char_k[2]<= 16'h0000;
        char_k[3]<= 16'h0000;
        char_k[4]<= 16'h0000;
        char_k[5]<= 16'h7000;
        char_k[6]<= 16'h7000;
        char_k[7]<= 16'h7000;
        char_k[8]<= 16'h7000;
        char_k[9]<= 16'h7000;
        char_k[10]<=16'h7000;
        char_k[11]<=16'h703C;
        char_k[12]<=16'h7078;
        char_k[13]<=16'h70F0;
        char_k[14]<=16'h71E0;
        char_k[15]<=16'h73C0;
        char_k[16]<=16'h7780;
        char_k[17]<=16'h7E00;
        char_k[18]<=16'h7F00;
        char_k[19]<=16'h7780;
        char_k[20]<=16'h73C0;
        char_k[21]<=16'h71E0;
        char_k[22]<=16'h70F0;
        char_k[23]<=16'h7078;
        char_k[24]<=16'h703C;
        char_k[25]<=16'h701E;
        char_k[26]<=16'h0000;
        char_k[27]<=16'h0000;
        char_k[28]<=16'h0000;
        char_k[29]<=16'h0000;
        char_k[30]<=16'h0000;
        char_k[31]<=16'h0000;

        char_M[0]<= 16'h0000;
        char_M[1]<= 16'h0000;
        char_M[2]<= 16'h0000;
        char_M[3]<= 16'h0000;
        char_M[4]<= 16'h0000;
        char_M[5]<= 16'h0000;
        char_M[6]<= 16'h700E;
        char_M[7]<= 16'h781E;
        char_M[8]<= 16'h781E;
        char_M[9]<= 16'h781F;
        char_M[10]<=16'h7C37;
        char_M[11]<=16'h6C37;
        char_M[12]<=16'h6E77;
        char_M[13]<=16'hE667;
        char_M[14]<=16'hE667;
        char_M[15]<=16'hE7C7;
        char_M[16]<=16'hE3C7;
        char_M[17]<=16'hE3C7;
        char_M[18]<=16'hE387;
        char_M[19]<=16'hE187;
        char_M[20]<=16'hE007;
        char_M[21]<=16'hE007;
        char_M[22]<=16'hE007;
        char_M[23]<=16'hE007;
        char_M[24]<=16'hE007;
        char_M[25]<=16'hE003;
        char_M[26]<=16'h0000;
        char_M[27]<=16'h0000;
        char_M[28]<=16'h0000;
        char_M[29]<=16'h0000;
        char_M[30]<=16'h0000;
        char_M[31]<=16'h0000;

        char_omeiga[0]<= 16'h0000;
        char_omeiga[1]<= 16'h0000;
        char_omeiga[2]<= 16'h0000;
        char_omeiga[3]<= 16'h0000;
        char_omeiga[4]<= 16'h0000;
        char_omeiga[5]<= 16'h0000;
        char_omeiga[6]<= 16'h0180;
        char_omeiga[7]<= 16'h0E70;
        char_omeiga[8]<= 16'h181C;
        char_omeiga[9]<= 16'h300E;
        char_omeiga[10]<=16'h6006;
        char_omeiga[11]<=16'hE007;
        char_omeiga[12]<=16'hC003;
        char_omeiga[13]<=16'hC003;
        char_omeiga[14]<=16'hC003;
        char_omeiga[15]<=16'hC003;
        char_omeiga[16]<=16'hC003;
        char_omeiga[17]<=16'hC003;
        char_omeiga[18]<=16'hE007;
        char_omeiga[19]<=16'hE007;
        char_omeiga[20]<=16'h700E;
        char_omeiga[21]<=16'h1838;
        char_omeiga[22]<=16'h0441;
        char_omeiga[23]<=16'h8441;
        char_omeiga[24]<=16'hFC7F;
        char_omeiga[25]<=16'hFC7F;
        char_omeiga[26]<=16'h0000;
        char_omeiga[27]<=16'h0000;
        char_omeiga[28]<=16'h0000;
        char_omeiga[29]<=16'h0000;
        char_omeiga[30]<=16'h0000;
        char_omeiga[31]<=16'h0000;
    end

endmodule


