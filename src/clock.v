`timescale 1ns/1ps
module clock ();
    reg clk;
    initial begin
        clk = 0;
        forever # (40/2) clk <= ~clk;
    end

    reg reset = 1;
    processor pr(.clk(clk), .reset(reset));
    initial begin
        @(posedge clk);
        reset = 1;
        @(posedge clk);
        reset = 0;
    end
    
endmodule