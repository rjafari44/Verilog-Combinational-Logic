`timescale 1ns / 1ps

module Mux_4_To_1 (
    input  [1:0] S,
    input  D0,
    input  D1,
    input  D2,
    input  D3,
    output Y
);

    // Define the 4:1 MUX behavior
    assign Y = (S == 2'b00) ? D0 :
               (S == 2'b01) ? D1 :
               (S == 2'b10) ? D2 :
                               D3;

endmodule // Mux_4_To_1