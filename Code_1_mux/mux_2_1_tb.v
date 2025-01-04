
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2024 10:15:15 PM
// Design Name: 
// Module Name: mux_2_1_tb
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
`timescale 1ns / 1ns


module mux_2_1_tb(

    );
    
    reg [1:0] in_tb; 
    reg S_tb;
    wire out_tb;
    
    mux_2_1 dut (.S(S_tb), .in(in_tb), .out(out_tb));
    
    initial begin
        in_tb = 2'b10; S_tb = 1'b0;
        #5;
        in_tb = 2'b10; S_tb = 1'b1;
        #5;
        $finish;
    end
            
endmodule
