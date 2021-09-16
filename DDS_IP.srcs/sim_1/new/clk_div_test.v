`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/18 14:06:30
// Design Name: 
// Module Name: clk_div_test
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


module clk_div_test();
    reg clk_sys;
    reg rst_n;
    wire clk_100k;
    wire clk_1m;
    wire clk_10m;//实际上是8.33MHz
    wire clk_100m;

    always #10 clk_sys = ~clk_sys;
    initial begin
        clk_sys = 0;
        rst_n = 0;
        #20;
        rst_n = 1;
        #10000 $stop;
    end

    clk_div dac_clk_gen(
        .clk_sys(clk_sys),
        .rst_n(rst_n),
        .clk_100k(clk_100k),
        .clk_1m(clk_1m),
        .clk_10m(clk_10m),
        .clk_100m(clk_100m)
    );
endmodule
