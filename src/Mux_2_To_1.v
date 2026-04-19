`timescale 1ns / 1ps

module Mux_2_To_1 (
    input  S,
    input  D0,
    input  D1,
    output reg Y
);

    always @(*) begin
        case (S)
            1'b0: Y = D0;
            1'b1: Y = D1;
        endcase
    end

endmodule