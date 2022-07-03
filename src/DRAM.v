/***************************************************************
EN3030 - Circuits and System Design
180497C - 180554B - 180564F - 180574K
Designing a custom processor for Image Downsampling

Author : Avishka Sandeepa
Last Updated : 29/06/2022
Module : Data Random Access Memory
****************************************************************/

module DRAM (
    input [15:0] addr,
    input clk,
    input write,
    input read,
    input rd_en,
    input wr_en,
    input [7:0] din,
    output reg rd_done,
    output reg wr_done,
    output reg [7:0] dout
);

reg [7:0] RAM [65535:0];

reg [1:0] state = 2'b00;

initial begin
assign state = {wr_en,rd_en};  
end

// parameter IDLE = 2'b00;
parameter DRAM_rd = 2'b01;
parameter proc_run = 2'b00;
parameter DRAM_wr = 2'b10;

// reg [2:0] state = IDLE;


always @(posedge clk) begin
    case (state)

        DRAM_rd :
            begin
                $readmemb("path to the image value file",RAM);
                rd_done <= 1'b1;
            end

        proc_run :
            begin
                if (wr_en == 1'b0)
                    if (write) begin
                        RAM[addr] <= din;
                    end

                    if (read) begin
                        dout <= RAM[addr];
                    end
                else if (wr_en == 1'b1) state <=DRAM_wr;
            end

        DRAM_wr :
            begin
                $writememb("saving location",RAM);
                wr_done=1;
            end
        

    endcase
end


    
endmodule
