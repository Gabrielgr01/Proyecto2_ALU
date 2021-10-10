`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 11:39:35 PM
// Design Name: 
// Module Name: Mux_2a1
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


module Mux_2a1(
    input SEL,
    input [5:0] Dato,
    output [5:0] Y
    );
    
    assign Y = SEL ? ~Dato : Dato;
    
endmodule
