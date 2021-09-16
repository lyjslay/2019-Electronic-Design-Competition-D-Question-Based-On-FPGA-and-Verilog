`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Jlu
// Engineer: Liu Yijun 2446078134@qq.com
// 
// Create Date: 2021/07/13 17:23:23
// Design Name: 
// Module Name: adc_samp
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


module adc_samp_ctrl(
    input ad_clk,
    input rst_n,
    input [11:0] ad_input,
    input [11:0] bd_input,
    output adc_clk,
    output bdc_clk,
    output [11:0] ad_data,
    output [11:0] bd_data
);

    reg state;
    reg [11:0] rega1,rega2,rega3,rega4;
    reg [11:0] regb1,regb2,regb3,regb4;
    wire [13:0]tempa,tempb;

    assign tempa = rega1+rega2+rega3+rega4;
    assign tempb = regb1+regb2+regb3+regb4;

    assign adc_clk = state;
    assign bdc_clk = state;
    assign ad_data = tempa[13:2];
    assign bd_data = tempb[13:2];



    always @(posedge sys_clk or negedge rst_n) begin
        if(~rst_n)begin      
            state<=0;
            rega1<=0;
            rega2<=0;
            rega3<=0;
            rega4<=0;
            regb1<=0;
            regb2<=0;
            regb3<=0;
            regb4<=0;    
        end   
        else begin
            case(state)
                1'b0:begin
                    state<=1'b1;
                    rega1 <= ad_input;    //ADCLK下降沿同步数据，防止亚稳态   
                    rega2 <= rega1;
                    rega3 <= rega2;
                    rega4 <= rega3;

                    regb1 <= bd_input;    //ADCLK下降沿同步数据，防止亚稳态   
                    regb2 <= regb1;
                    regb3 <= regb2;
                    regb4 <= regb3;
                end
                1'b1:begin
                    state<=1'b0;      
                end
                default:
                    state<=0;
            endcase
        end
    
    end

    


endmodule
