// Author : Dasun Premathilaka
// Last Updated : 28/06/2022

// GPR - General Purpose Register
// These registers will be storing intermediate values during convolution

module GPR(
    input clk,
    input load_GPR,
    input [23:0] c_bus, //connects to the MIR load signal
    output reg [23:0] data_out_b_bus //connects to the b bus via a mux

); 
always@(posedge clk)
    begin
        if (load_GPR) data_out_b_bus <= c_bus;
    end
    
endmodule