/***************************************************************
EN3030 - Circuits and System Design
180497C - 180554B - 180564F - 180574K
Designing a custom processor for Image Downsampling

Author : Avishka Sandeepa
Last Updated : 29/06/2022
Module : Data Random Access Memory
****************************************************************/

module DRAM (
    input addr,
    input clk,
    input write,
    input read,
    input rd_en,
    input wr_en,
    input [7:0] din,
    output rd_done,
    output wr_done,
    output reg [7:0] dout
);

reg [7:0] RAM [65535:0];
  
initial begin
    if (rd_en) begin
        $readmemb("path to the image value file",RAM);
    end
    rd_done=1;

end

always @(posedge clk) 
begin
    if (write) begin
        RAM[addr] <= din;
    
    end
    if (read) begin
        dout <= RAM[addr];
        
    end
    
end
  
initial begin
    if (wr_en) begin
    $writememh("saving location","array that contain the final pixel values");
    end
    wr_done=1;
end

    
endmodule
