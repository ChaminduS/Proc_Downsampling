`timescale 1ns/1ps
module clock_gen (
    output reg clk
);

parameter clk_pd = 160; //Clock period in ns

initial begin
    clk = 0;
    forever 
         #(clk_pd) clk = ~clk;
end

    
endmodule