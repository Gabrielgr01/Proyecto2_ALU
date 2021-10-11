
module MOD_OR_2x6b(
    input [5:0] A,
    input [5:0] B,
    output [5:0] Y
);

    assign Y[0] = A[0] | B[0];
    assign Y[1] = A[1] | B[1];
    assign Y[2] = A[2] | B[2];
    assign Y[3] = A[3] | B[3];
    assign Y[4] = A[4] | B[4];
    assign Y[5] = A[5] | B[5];

endmodule