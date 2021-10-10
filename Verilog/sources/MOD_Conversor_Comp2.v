`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 01:05:15 PM
// Design Name: 
// Module Name: MOD_Conversor_Comp2
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


module MOD_Conversor_Comp2(
    input [5:0] A,
    output [5:0] A_convertido
    );
    
    assign A[0] = ~A[0];
    assign A[1] = ~A[1];
    assign A[2] = ~A[2];
    assign A[3] = ~A[3];
    assign A[4] = ~A[4];
    assign A[5] = ~A[5];

    wire [6:0]suma;
    assign suma = A + 000001;
    assign A_convertido = suma[5:0];
    
endmodule
