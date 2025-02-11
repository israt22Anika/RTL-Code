`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2025 10:04:33 PM
// Design Name: 
// Module Name: t_ff
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


module t_ff(
    input t,
    input rst_n,
    input clk,
    output reg q
    );
    
    always@(posedge clk or negedge rst_n) begin
        if (~rst_n) begin 
            q <= 0;
            end else begin
                if (t) begin
                    q <= ~q;
                end else begin
                    q <= q;
                end
            end
        end        
         
endmodule
