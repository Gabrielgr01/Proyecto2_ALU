`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2021 10:20:21 PM
// Design Name: 
// Module Name: Sumador_6_tb
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


module Sumador_6_tb(
    );
    //in
    reg Cin;
    reg [5:0] A,B;
    //out
    wire [5:0] Y;
    wire Cout;
    //implementation
    Sumador_6 UUT (
    .Cin(Cin),
    .A(A),
    .B(B),
    .Y(Y),
    .Cout(Cout)
    );
    
    //Stimulus
    initial begin
    A=0;
    B=0;
    Cin=0;
   
    #10 A = 6'b110110;
    #10 B = 6'd12;
    end
    
    
    
    
endmodule
