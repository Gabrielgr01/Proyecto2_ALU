`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2021 21:59:15
// Design Name: 
// Module Name: quintuplicador_tb
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


module quintuplicador_tb;
    reg[5:0] A;
    wire[11:0] F;
    quintuplicador quintu(A, F);
        
    initial begin
    A = -6'sd2;
    end
    
    always #80 A = $urandom%10;
    
endmodule
