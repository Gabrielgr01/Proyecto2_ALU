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
    
    wire [5:0] comp;
    assign comp = ~A;

    wire [6:0]suma;
    assign suma = comp + 6'b000001;
    
    //Mux_2a1 mux_conv (suma[6] ,suma[5:0], 6'b100000, A_convertido);
    assign A_convertido = suma[5:0];
    
endmodule
