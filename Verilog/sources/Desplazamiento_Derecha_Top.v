`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2021 22:05:02
// Design Name: 
// Module Name: Desplazamiento_Derecha_Top
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


module Desplazamiento_Derecha_Top(
    input [5:0] A,
    output [5:0] Y
    );
    
    assign Y[0] = A[1];
    assign Y[1] = A[2];
    assign Y[2] = A[3];
    assign Y[3] = A[4];
    assign Y[4] = A[5];
    assign Y[5] = 0;
    
endmodule
