`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 01:02:14 PM
// Design Name: 
// Module Name: Mux_2a1_Cin_tb
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


module Mux_2a1_Cin_tb(
    );
    reg SEL;
    wire Y;
    
    Mux_2a1_Cin UUT (SEL,Y);
    
    initial begin
    SEL = 0;
    #40 SEL = 1;
    #40 SEL = 0;
    end
endmodule
