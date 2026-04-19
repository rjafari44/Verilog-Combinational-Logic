`timescale 1ns / 1ps

module Mux_2_To_1_tb;

    // Testbench signals
    reg D0_tb = 0;
    reg D1_tb = 0;
    reg S_tb  = 0;
    wire Y_tb;

    // Instantiate the DUT
    Mux_2_To_1 dut (
        .D0(D0_tb),
        .D1(D1_tb),
        .S(S_tb),
        .Y(Y_tb)
    );

    // Monitor outputs
    initial begin
        $display("  Time | D0 D1 S | Y");
        $monitor("%4dns | %b  %b  %b | %b", $time, D0_tb, D1_tb, S_tb, Y_tb);
    end

    // Apply stimulus
    initial begin
        // Test 1: D0=0, D1=1, S=0 → Y should be 0
        D0_tb = 1'b0; D1_tb = 1'b1; S_tb = 1'b0; #20;
        // Test 2: D0=0, D1=1, S=1 → Y should be 1
        D0_tb = 1'b0; D1_tb = 1'b1; S_tb = 1'b1; #20;
        $finish;
    end

endmodule