// Author : Dasun Premathilaka
// Last Updated : 28/06/2022

// MDR - Memory Data Register
// Stores data that is loaded from the memory or to be loaded to the memory

module MDR(
    input clk,
    input load_MDR,
    input read_memory,
    input write_memory,
    input [7:0] c_bus,
    input [7:0] data_read_DRAM,
    output reg [7:0] data_out_b_bus,
    output reg [7:0] data_write_DRAM

);
    always@(posedge clk)
        begin
            if (load_MDR) data_out_b_bus <= c_bus;

            if (read_memory) data_out_b_bus <= data_read_DRAM;

            if (write_memory) data_write_DRAM <= c_bus;  
        end
    
    
endmodule