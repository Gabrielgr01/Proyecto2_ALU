`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 11:43:15 PM
// Design Name: 
// Module Name: Mux_2a1_tb
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


module Mux_2a1_tb(
    );
    reg SEL;
    reg [5:0] Dato;
    wire [5:0] Y;
    
    Mux_2a1 UUT (SEL,Dato,Y);
    
    initial begin
    SEL=0;
    Dato=6'd9;
    
    #40 SEL = 1;
    end
    
    
endmodule
