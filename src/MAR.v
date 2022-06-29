// Author : Dasun Premathilaka
// Last Updated : 29/06/2022

// MAR - Memory Address Register
// Stores the address of the memory location from/ to which data is to be fetched/ stored

module MAR (
    input clk,
    input load,
    input [15:0] C_bus,
    output reg [15:0] data_address
);
    always@(posedge clk)
        begin
            if (load) data_address <= C_bus;
        end

endmodule

