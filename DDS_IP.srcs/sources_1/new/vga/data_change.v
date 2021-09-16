`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/13 21:15:01
// Design Name: 
// Module Name: data_change
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


module data_change(
    input clk,
    input rstn,
    input vga_clk,
    input update_flag,
    input [23:0]din,
    output reg [3:0] q1,
    output reg [3:0] q2,
    output reg [3:0] q3,
    output reg [3:0] q4,
    output reg [1:0] point_flag,
    output reg [1:0] kilo_flag
    );

    reg overflow;
    reg [13:0]temp;
    reg [3:0]d1,d2,d3,d4;

    reg [1:0]kilo ,point ;

    always @(*) begin
        if(din<=24'd999)begin
             point=2'd0;
             kilo=2'd0;
             overflow=1'b0;
             temp=din;
        end
        else if(din<=24'd9_999)begin
            point=2'd1;
            kilo=2'd1;
            overflow=1'b0;
            temp=din;
        end
        else if(din<=24'd99_999)begin
            point=2'd2;
            kilo=2'd1;
            overflow=1'b0;
            temp=din / 4'd10;
        end
        else if(din<=24'd999_999)begin
            point=2'd3;
            kilo=2'd1;
            overflow=1'b0;
            temp=din / 7'd100;
        end
        else if(din<=24'd9_999_999)begin
            point=2'd1;
            kilo=2'd2;
            overflow=1'b0;
            temp=din / 10'd1000;
        end
        else begin
            point=2'd0;
            kilo=2'd2;
            overflow=1'b1;
            temp=0;
        end    
    end

    always @(posedge clk or negedge rstn) begin
        if(~rstn)begin
            d1<=0;
            d2<=0;
            d3<=0;
            d4<=0;
        end
        else begin
            d1<=temp / 10'd1000;
            d2<=(temp % 10'd1000) / 7'd100;
            d3<=(temp % 7'd100) / 4'd10;
            d4<=temp % 4'd10;
        end
    end

    reg [19:0]reg_temp;

    always @(posedge vga_clk or negedge rstn) begin
        if(~rstn)begin
            q1<=4'b0;
            q2<=4'b0;
            q3<=4'b0;
            q4<=4'b0;
            point_flag<=2'b0;
            kilo_flag<=2'b0;
            reg_temp<=20'b0;
        end
        else if(update_flag)begin
            reg_temp<={d1,d2,d3,d4,point,kilo};
            {q1,q2,q3,q4,point_flag,kilo_flag}<=reg_temp;
        end
    end

endmodule
