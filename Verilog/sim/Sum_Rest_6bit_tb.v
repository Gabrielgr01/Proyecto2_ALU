`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2021 12:34:18 AM
// Design Name: 
// Module Name: Sum_Rest_6bit_tb
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


module Sum_Rest_6bit_tb(
    );
    reg SEL;
    reg signed [5:0] A;
    reg signed [5:0] B;
    wire [5:0] Y;
    wire Cout;
    
    //implementation 
    Sum_Rest_6bit UUT (SEL,A,B,Y,Cout);
    //Stimulus
    initial begin
    SEL=1;// quiero restar
    A = 6'b011110; //-20
    B = 6'b001111; //-15
    //R=-5
    end
    
   
endmodule
