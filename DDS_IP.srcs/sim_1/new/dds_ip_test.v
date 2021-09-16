`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/07 14:42:55
// Design Name: 
// Module Name: dds_ip_test
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


module dds_ip_test();
    reg sys_clk;//AXI4协议进行IP之间的数据传输
    reg freq_mode;
    reg rst_n;
    wire [13:0] sin_data_unsigned;
    wire dac_clk;

    always #10 sys_clk = ~sys_clk;//50M
    initial begin
        sys_clk = 0;
        rst_n = 0;
        freq_mode = 0;
        #20;
        rst_n = 1;
        #2000000;
        freq_mode = 1;
        #20000000 $stop;

    end

    dds_top dds_test(
        .sys_clk(sys_clk), 
        .rst_n(rst_n),
        .freq_mode(freq_mode),                                 // input wire aclk
        .m_axis_data_tdata_unsigned(sin_data_unsigned),
        .dac_clk(dac_clk)
    );




endmodule
