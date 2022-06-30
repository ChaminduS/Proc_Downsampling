/***************************************************************
EN3030 - Circuits and System Design
180497C - 180554B - 180564F - 180574K
Designing a custom processor for Image Downsampling

Module : Program Counter
****************************************************************/
module PC(
    input clk,
    input enable,
    input reset,
    input load,
    input inc,
    input [7:0] C_bus,

    output reg [7:0] ins_address
);

//initializing start flag and instruction address
reg start = 1'b0;

initial begin
    ins_address = 8'b0;
end

//State block (to ensure CPI=4)
reg [1:0] state = 2'b0;

always@(negedge clk)
    begin
        if (start) begin
            case (state)
                2'b00 : state = 2'b01;
                2'b01 : state = 2'b10;
                2'b10 : state = 2'b11;
                2'b11 : state = 2'b00;
                default : state = state;
            endcase
        end
    end

//Program counter functions
always@(posedge clk)
    begin
        if (reset) ins_address <= ins_address;

        else if (start) begin
            if (state == 2'b11 && load) begin
                ins_address <= C_bus;
            end

            else if (state == 2'b11 && inc) begin
                ins_address <= ins_address + 8'b00000001;
            end

            else begin
                ins_address <= ins_address;
            end
        end 
    end

endmodule
