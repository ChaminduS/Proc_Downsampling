module DRAM (
    input clk,
    input write,
    input read,
    input [7:0] din,
    output reg [7:0] dout
);

reg [7:0] RAM [65535:0];

always @(posedge clk) 
begin
    if (write) begin
        RAM[addr] <= din;
    
    end
    if (read) begin
        dout <= RAM[addr];
        
    end
    
end
    
endmodule