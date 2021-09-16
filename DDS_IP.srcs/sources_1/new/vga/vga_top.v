`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/12 10:03:04
// Design Name: 
// Module Name: vga_top
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


module vga_top(
    input clk,
    input vga_clk,
    input rstn,
    input [23:0]RI_data,
    input [23:0]RO_data,
    input [7:0]freq_data,
    input [11:0]vpp,
    input [11:0]vmax,
    input [11:0]vmin,
    output [7:0]freq_addr,
    output [23:0] rgb,
    output rgb_valid,
    output hsync,
    output vsync
    
    );


    wire pix_data,RI_pix_data,RO_pix_data,freq_pix_data;
    wire max,min,pp;
    wire pix_data_req;
    wire [9:0]pix_x;
    wire [9:0]pix_y;
    wire update_flag;
    wire [3:0]num1,num2,num3,num4;
    wire [1:0]point_flag,kilo_flag;
    reg [24:0]din;

    assign pix_data=RI_pix_data|RO_pix_data|freq_pix_data|max|min|pp;

   

    vga_ctrl vga_ctrl_inst(
    .vga_clk(vga_clk),
    .rstn(rstn),
    .pix_data(pix_data),
    .hsync(hsync),
    .vsync(vsync),
    .rgb_valid(rgb_valid),
    .rgb(rgb),
    .pix_data_req(pix_data_req),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .update_flag(update_flag)                                                        
    );
    
    RI_pix RI_pix_inst(
    .clk(clk),
    .vga_clk(vga_clk),
    .rstn(rstn),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .update_flag(update_flag),
    .din(RI_data),
    .pix_data(RI_pix_data)
    );

    RO_pix RO_pix_inst(
    .clk(clk),
    .vga_clk(vga_clk),
    .rstn(rstn),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .update_flag(update_flag),
    .din(RO_data),
    .pix_data(RO_pix_data)
    );

    vpp_pix vpp_pix_inst(
    .clk(clk),
    .vga_clk(vga_clk),
    .rstn(rstn),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .update_flag(update_flag),
    .din(vpp),
    .pix_data(pp)
    );

    vmin_pix vmin_pix_inst(
    .clk(clk),
    .vga_clk(vga_clk),
    .rstn(rstn),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .update_flag(update_flag),
    .din(vmin),
    .pix_data(min)
    );

    vmax_pix vmax_pix_inst(
    .clk(clk),
    .vga_clk(vga_clk),
    .rstn(rstn),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .update_flag(update_flag),
    .din(vmax),
    .pix_data(max)
    );

    freq_chart freq_chart_inst(
    .clk(clk),
    .vga_clk(vga_clk),
    .rstn(rstn),
    .update(update_flag),
    .pix_x(pix_x),
    .pix_y(pix_y),
    .data_require(pix_data_req),
    .din(din),
    .out(freq_pix_data),
    .freq_addr(freq_addr)
    );

endmodule
