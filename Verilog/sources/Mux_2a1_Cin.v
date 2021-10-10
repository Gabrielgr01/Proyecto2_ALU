`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 12:22:04 AM
// Design Name: 
// Module Name: Mux_2a1_Cin
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


module Mux_2a1_Cin(
    input SEL,
    output Y
    );
    
    assign Y = SEL ? 1'b1 : 1'b0;

endmodule
