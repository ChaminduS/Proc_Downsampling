// Author : Dasun Premathilaka
// Last Updated : 29/06/2022

// GPR - General Purpose Register
// These registers will be storing intermediate values during convolution

module GPR(
    input clk,
    input load,
    input [23:0] C_bus, //connects to the MIR load signal
    output reg [23:0] data_out //connects to the b bus via a mux

); 
always@(posedge clk)
    begin
        if (load) data_out <= C_bus;
    end
    
endmodule