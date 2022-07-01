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
    output reg rd_done,
    output reg wr_done,
    output reg [7:0] dout
);

reg [7:0] RAM [65535:0];
  

parameter IDLE = 2'b00;
parameter DRAM_rd = 2'b01;
parameter proc_run = 2'b10;
parameter DRAM_wr = 2'b11;

reg [2:0] state = IDLE;


always @(posedge clk) begin
    case (state)
        IDLE :
            begin
                if (rd_en) begin
                    state <= DRAM_rd;
                end
            end
        
        DRAM_rd :
            begin
                $readmemb("path to the image value file",RAM);
                rd_done <= 1'b1;
                state <= proc_run;
            end

        proc_run :
            begin
                if (~wr_en)
                    if (write) begin
                        RAM[addr] <= din;
                    end

                    if (read) begin
                        dout <= RAM[addr];
                    end
                else state <=DRAM_wr;
            end

        DRAM_wr :
            begin
                $writememh("saving location","array that contain the final pixel values");
                wr_done=1;
                state <= IDLE;
            end

    endcase
end


    
endmodule
