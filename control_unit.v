/***************************************************************
EN3030 - Circuits and System Design
180497C - 180554B - 180564F - 180574K
Designing a custom processor for Image Downsampling

Module : Control Unit
****************************************************************/
module control_unit(
    input enable,
    input clk,
    input Z_flag,
    input [7:0] addr,
    input [7:0] MBRU,
    output finish,
    output reg [29:0] MIR,
);

//Initializing start flag and ROM
reg start = 1'b0;
reg [29:0] ROM[0:42];
reg check = 1'b0;

//Initializing MIR
initial begin
    MIR = 30'b0;
end

assign finish = check;

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

//Handling fetch,jump and no-op
always @(posedge clk)
    begin
        if (state == 2'b11) begin
            case (addr)
                8'd1 : MIR {MBRU, ROM[8'd1][21:0]}; //FETCH2
                8'd32: if (Z_flag == 1'b0) MIR = {8'd33, ROM[8'd32][21:0]};  else MIR = {8'd34, ROM[8'd32][21:0]}; //JMPZ1
                8'd37: if (Z_flag == 1'b1) MIR = {8'd38, ROM[8'd37][21:0]};  else MIR = {8'd39, ROM[8'd37][21:0]}; //JMNZ1
                8'd2 : check = 1'b1; //NOP
                default : MIR = ROM[addr];
            endcase
        end
    end

//Defining the microinstructions
initial begin
            //  nxtAddr__ALU____Cbus_____mem_PC_B_bus
    ROM[0] = 30'b0000001_0000_0000000000_100_0__0000; //Fetch1
    ROM[1] = 30'bXXXXXXX_0000_0000000000_000_1__0000; //Fetch2
    ROM[2] = 30'b0000010_0000_0000000000_000_0__0000; //NOP
    ROM[3] = 30'b0000100_0000_0000000000_010_0__0000; //LDAC1
    ROM[4] = 30'b0000000_0100_0000000001_000_0__0001; //LDAC2
    ROM[5] = 30'b0000110_0011_0100000000_000_0__0000; //STAC1
    ROM[6] = 30'b0000000_0000_0000000000_001_0__0000; //STAC2
