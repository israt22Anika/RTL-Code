`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2025 10:56:45 PM
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit(
    input [7:0] A,
    input [7:0] B,
    input [3:0] select,
    output reg [7:0] result,
    output reg carry_flag,
    output reg overflow_flag,
    output reg zero_flag,
    output reg negative_flag        
    );
    
    
    always@(*) begin
    carry_flag = 0'b0;
    overflow_flag = 0'b0;
    zero_flag = 0'b0;
    negative_flag = 0'b0;
    
    case(select)
        4'b0000: begin // add
            {carry_flag, result} = A + B;
            overflow_flag = (A[7] == B[7]) && (A[7] != result[7]);
            end
        4'b0001: begin // subtractor
            {carry_flag, result} = A - B;
            overflow_flag = (A[7] != B[7]) && (A[7] != result[7]);
            end
        4'b0010: begin // multiply
            result = A * B;
            end
        4'b0011: begin // division
            if (B != 0) begin
                result = A / B;
            end
            else begin
                result = 8'b0000_0000;
            end
            end
       4'b0100: begin // and
            result = A & B;
            end
       4'b0101: begin // or
            result = A | B;
            end
       4'b0110: begin // nanad
            result = ~ ( A & B );
            end
       4'b0111: begin // nor
            result = ~ ( A | B );
            end
       4'b1000: begin // xor
            result = A ^ B;
            end
       4'b1001: begin // or
            result = A ^ ~B;
            end
       4'b1010: begin // or
            result = ~A;
            end
       default: result = 8'b0000_0000;
   endcase
   
   if (result == 8'b0000_0000) zero_flag = 1;
   if (result[7] == 1'b1) negative_flag = 1;
   
end

               
endmodule
