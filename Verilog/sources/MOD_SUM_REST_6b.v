`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:08:52 PM
// Design Name: 
// Module Name: MOD_SUM_REST_6b
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


module MOD_SUM_REST_6b(
    input SEL, //Corresponde a SEL[1] de la ALU
    input signed [5:0] A,
    input signed [5:0] B,
    output [5:0] Y,
    output Cout
    );
    wire [5:0] caso_Bneg;
    wire caso_Cin;
    
    MOD_Mux_2a1_REST complemento_B (SEL, B, caso_Bneg); //Según el valor de SEL se niega B o no
    MOD_Mux_2a1_SumRest Sum_Rest (SEL, caso_Cin); // Según el valor de SEL, Cin en el sumador es 0 o 1
     
    reg signed [6:0] Sum;
    
    always @*
    begin
    Sum = A + caso_Bneg + caso_Cin;
    end

    assign Y = Sum[5:0];
    assign Cout = Sum[6];
    
endmodule
