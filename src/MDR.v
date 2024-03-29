// Author : Dasun Premathilaka
// Last Updated : 29/06/2022

// MDR - Memory Data Register
// Stores data that is loaded from the memory or to be loaded to the memory

module MDR(
    input clk,
    input load,
    input read,
    input write,
    input [7:0] C_bus,
    input [7:0] data_in_DRAM,
    output reg [7:0] data_out_Bbus,
    output reg [7:0] data_out_DRAM

);
    always@(posedge clk)
        begin
            if (load) data_out_Bbus <= C_bus;

            if (read) data_out_Bbus <= data_in_DRAM;

            if (write) data_out_DRAM <= C_bus;  
        end
    
    
endmodule