`timescale 1ns / 1ps

module FA (
    input  A,
    input  B,
    input  Cin,
    output Sum,
    output Cout
);

    // Full Adder behavior
    assign Sum  = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule // FA