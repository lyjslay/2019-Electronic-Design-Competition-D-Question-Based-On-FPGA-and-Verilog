`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/17 17:16:53
// Design Name: 
// Module Name: all_ctrl_tb
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


module all_ctrl_tb();
    reg sys_clk;
    reg rst_n;
    wire freq_mode;

    all_ctrl all_ctrl_tb(
        .sys_clk(sys_clk),
        .rst_n(rst_n),
        .freq_mode_q(freq_mode)
    );

    always #10 sys_clk = ~sys_clk;

    initial begin
        sys_clk = 0;
        rst_n = 0;
        # 20 ;
        rst_n = 1;
        #1000000000;
    end
endmodule
