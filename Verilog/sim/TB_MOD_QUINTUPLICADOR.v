`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2021 05:55:28 PM
// Design Name: 
// Module Name: TB_MOD_QUINTUPLICADOR
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


module TB_MOD_QUINTUPLICADOR(

    );
    
    // inputs
    reg[5:0] A;
    
    // outputs
    wire[11:0] F;
    
    // instantiate
    MOD_QUINTUPLICADOR quintu(A, F);
        
    // stimulus
    initial begin
        A = -6'sd2;
    end
    
    always #80 A = $urandom%10;
    
endmodule
