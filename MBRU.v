// Author : Dasun Premathilaka
// Last Updated : 28/06/2022

// MBRU - Memory Buffer Register Unit
// Loads and keeps the location of the instruction to be decoded

module MBRU (
    input clk,
    input read_enable, //connects to the MIR fetch signal
    input [7:0] ins_in, //connects to the IRAM out
    output reg [7:0] ins_out //connects to the control store
);
    always@(posedge clk)
        begin
            if (read_enable) ins_out <= ins_in;
        end

endmodule