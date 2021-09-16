`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/07/15 16:07:33
// Design Name: 
// Module Name: test_chart
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


module freq_chart(
    input clk,
    input vga_clk,
    input rstn,
    input update,
    input [9:0] pix_x,
    input [9:0] pix_y,
    input data_require,
    input [7:0]din,
    output reg out,
    output [7:0]freq_addr
    );
    

    parameter CHART_W=10'd256;
    parameter CHART_H=10'd256;

    parameter CHART_START_H = 10'd100;
    parameter CHART_START_V = 10'd100;
    parameter LINE_W = 2'd3;

    wire select_flag;

    wire [7:0]q;

    wire [7:0]chart_x;
    wire [7:0]chart_y;

    assign select_flag = (((pix_x >= CHART_START_H) && (pix_x < (CHART_START_H + CHART_W)))
                    && ((pix_y >= CHART_START_V) && (pix_y < (CHART_START_V + CHART_H))))
                    ? 1'b1:1'b0;

    assign chart_x  =   select_flag ? (pix_x - CHART_START_H) : 8'hff;
    assign chart_y  =   select_flag ? (pix_y - CHART_START_V) : 8'hff;
    
    always @(posedge vga_clk or negedge rstn) begin
        if(~rstn)begin
            out<=1'b0;
        end
        else begin
            if(select_flag)begin
                 if(chart_y==8'd255)begin
                    out<=1'b1;  
                 end
                 else if(chart_x==8'd0)begin
                    out<=1'b1;
                 end
                 else if(chart_y==(8'd255-q))
                 begin
                    out<=1'b1;
                 end
                 else   out<=1'b0;
            end
            else out<=1'b0;
        end
    end

    reg we;
    reg done;
    reg [7:0]update_add;
    parameter WAIT = 3'b001, UPDATING = 3'b010, DONE = 3'b100;
    reg [2:0]update_state  , update_next_state;
    always @(posedge clk or negedge rstn) begin
        if(~rstn)begin
            update_state<=WAIT;
        end
        else begin
            update_state<=update_next_state;
        end
    end

    always @(*) begin
        case(update_state)
            WAIT:begin
                if(update)begin
                    update_next_state<=UPDATING;
                end
                else begin
                    update_next_state<=WAIT;
                end
            end
            UPDATING:begin
                if(done)begin
                    update_next_state<=DONE;
                end
                else begin
                    update_next_state<=UPDATING;
                end
            end
            DONE:begin
                if(~update)begin
                    update_next_state<=WAIT;
                end
                else begin
                    update_next_state<=DONE;
                end
            end
            default:update_next_state<=WAIT;
        endcase
    end

    always @(posedge clk or negedge rstn) begin
        if(~rstn)begin
            we<=0;
            done<=0;
            update_add<=0;
        end
        else begin
            case(update_next_state)
                WAIT:begin
                    we<=0;
                    done<=0;
                    update_add<=0;
                end
                UPDATING:begin
                    we<=1;
                    if(update_add==8'd255)begin
                        done<=1;
                    end
                    else begin
                        update_add<=update_add+1'b1;
                    end
                end
                DONE:begin
                    update_add<=0;
                    we<=0;
                end
            endcase
        end
    end


    ram_dual chart_ram
    (   
	.data(q1),
	.read_addr(chart_x+1'b1), 
    .write_addr(update_add),
	.we(we), 
    .read_clock(vga_clk), 
    .write_clock(clk),
	.q(q)
    );

    assign freq_addr=update_add;

endmodule
