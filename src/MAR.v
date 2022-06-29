// Author : Dasun Premathilaka
// Last Updated : 28/06/2022

// MAR - Memory Address Register
// Stores the address of the memory location from/ to which data is to be fetched/ stored

module MAR (
    input clk,
    input write_enable,
    input [15:0] c_bus,
    output reg [15:0] memory_address
);
    always@(posedge clk)
        begin
            if (write_enable) memory_address <= c_bus;
        end

endmodule

