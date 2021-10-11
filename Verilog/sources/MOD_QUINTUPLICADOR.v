`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 05:53:50 PM
// Design Name: 
// Module Name: MOD_QUINTUPLICADOR
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


module MOD_QUINTUPLICADOR(
    input signed [5:0] A,
    output[11:0] Y
    );
    
    wire[5:0] B = 6'd5;
    reg signed [11:0] result;

    always @A
        result <= A*$signed(B);
    
    assign Y = result[11:0];
    
endmodule
