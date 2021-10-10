`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.10.2021 21:48:20
// Design Name: 
// Module Name: quintuplicador
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


module quintuplicador(
input signed [5:0] A,
output[11:0] Y
);
wire[5:0] B = 6'd5;
reg signed [11:0] result;

always @A
    result <= A*$signed(B);
    
 assign Y = result[11:0];
 
endmodule
