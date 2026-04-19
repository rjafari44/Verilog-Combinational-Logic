`timescale 1ns / 1ps

module HA (
    input  A,
    input  B,
    output Sum,
    output Cout
);

    // Define the Half Adder behavior
    assign Sum  = A ^ B;  // XOR
    assign Cout = A & B;  // AND

endmodule // HA
