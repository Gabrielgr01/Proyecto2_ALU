`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 07:42:13 PM
// Design Name: 
// Module Name: TB_MOD_SUM_REST_6b
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


module TB_MOD_SUM_REST_6b(
    );
    reg SEL;
    reg signed [5:0] A;
    reg signed [5:0] B;
    wire [5:0] Y;
    wire Cout;
    
    //implementation 
    MOD_SUM_REST_6b UUT (SEL,A,B,Y,Cout);
    
    //Stimulus
    initial begin
    SEL=1;// quiero restar
    A = 6'b011110; //-20
    B = 6'b001111; //-15
    //R=-5
    end
    
   
endmodule
