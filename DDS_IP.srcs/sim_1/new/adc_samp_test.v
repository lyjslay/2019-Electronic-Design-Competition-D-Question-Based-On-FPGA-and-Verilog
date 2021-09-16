`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/18 14:33:38
// Design Name: 
// Module Name: adc_samp_test
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


module adc_samp_test();
    reg sys_clk;
    reg rst_n;
    reg [11:0] ad_input;
    reg [11:0] bd_input;
    wire adc_clk;
    wire bdc_clk;
    wire [11:0] ad_data;
    wire [11:0] bd_data;

    adc_samp_ctrl adc_samp_top(
        //in
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .ad_input(ad_input),
        .bd_input(bd_input),
        //out
        .adc_clk(adc_clk),
        .bdc_clk(bdc_clk),
        .ad_data(ad_data),
        .bd_data(bd_data)
    );

    always #10 sys_clk = ~sys_clk;
    always #50 ad_input = ad_input + 1;
    always #30 bd_input = bd_input + 1;
    initial begin
        sys_clk = 0;
        rst_n = 0;
        ad_input = 0;
        bd_input = 0;
        #20 rst_n = 1;
        #1000000000 $stop;
    end

endmodule
