`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2021 20:00:39
// Design Name: 
// Module Name: MUX
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


module MUX(input[2:0] SEL, input signed[5:0] A, B, output reg signed[5:0]Y
    ); //constructor MUX
    
    wire signed[5:0] XOR, AND, OR, SUM, RES, COUT;
    wire signed [11:0] DEZ, MUL, MUL5; //cables de entrada y salidas de las funciones
    
    Operacion_XOR_Top GXOR(A, B ,XOR);
    Operacion_AND_Top GAND(A, B, AND);
    Operacion_OR_Top GOR(A, B, OR);
    Dezplazamiento_Derecha_Top DD(A, DEZ);
    Sum_Rest_6bit SUMA(1'd0, A, B, SUM, COUT);
    assign MUL = A*B;
    Sum_Rest_6bit REST(1'd1, A, B, RES, COUT);
    quituplicador quintu(A, MUL5);
    
    
    always @ (SEL, OR, MUL)
        case (SEL)
            3'd0: Y <= XOR;
            3'd1: Y <= AND;
            3'd2: Y <= OR;
            3'd3: Y <= DEZ;
            3'd4: Y <= SUM;
            3'd5: Y <= MUL;
            3'd6: Y <= RES;
            3'd7: Y <= MUL5;
          endcase
          
endmodule
