`timescale 1ns / 1ps

module HA_tb ();

    // Declare testbench signals
    reg  A_tb   = 0;
    reg  B_tb   = 0;
    wire Sum_tb;
    wire Cout_tb;

    // Instantiate the DUT (device under test)
    HA dut (
        .A    (A_tb),
        .B    (B_tb),
        .Sum  (Sum_tb),
        .Cout (Cout_tb)
    );

    // Monitor and print outputs
    initial begin
        $display("  Time | A B | Sum Cout");
        $monitor("%4dns | %b %b |  %b   %b", $time, A_tb, B_tb, Sum_tb, Cout_tb);
    end

    // Apply stimulus
    initial begin
        A_tb = 1'b0; B_tb = 1'b0; #20;  // Test case 0 + 0
        A_tb = 1'b0; B_tb = 1'b1; #20;  // Test case 0 + 1
        A_tb = 1'b1; B_tb = 1'b0; #20;  // Test case 1 + 0
        A_tb = 1'b1; B_tb = 1'b1; #20;  // Test case 1 + 1
        $finish;                         // End simulation
    end

endmodule