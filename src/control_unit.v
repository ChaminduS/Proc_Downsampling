// /***************************************************************
// EN3030 - Circuits and System Design
// 180497C - 180554B - 180564F - 180574K
// Designing a custom processor for Image Downsampling

// Module : Control Unit
// ****************************************************************/


module control_unit(

input enable,
input clk,
input Z_flag,
input [7:0] addr,
input [7:0] MBRU,
output reg [29:0] MIR,
output finish

);

reg [1:0] state = 2'b00;
reg start = 1'b0;
reg [29:0] ROM[0:42];
reg check = 1'b0;

assign finish = check;

//parameter define

parameter JMPZ1 = 8'd32;
parameter JMPZN1 = 8'd33;
parameter JMPZY1 = 8'd34;
parameter JMNZ1 = 8'd37;
parameter JMNZY1 = 8'd38;
parameter JMNZN1 = 8'd39;
parameter FETCH2 = 8'd1;
parameter NOP = 8'd2;

initial 
	begin
		MIR = 30'b0;
	end

always@(posedge enable)
	start = 1'b1;

always@(negedge clk)
	begin
		if (start) begin
			case(state)
				2'b00 : state = 2'b01;
				2'b01 : state = 2'b10;
				2'b10 : state = 2'b11;
				2'b11 : state = 2'b00;
				default : state = state;
			endcase
		end
	end

always @(posedge clk)
	begin
		if (state == 2'b11) begin
			case(addr)
				FETCH2 : MIR = {MBRU,ROM[FETCH2][21:0]};
				JMPZ1  : if (Z_flag == 1'b0) MIR = {8'd33,ROM[JMPZ1][21:0]};
				         else MIR = {8'd34,ROM[JMPZ1][21:0]};
			   JMNZ1  : if (Z_flag == 1'b1) MIR = {8'd38,ROM[JMNZ1][21:0]};
				         else MIR = {8'd39,ROM[JMNZ1][21:0]};
				NOP    : check = 1'b1;
				default : MIR = ROM[addr];
			endcase
		end
	end
	
//define the microinstruction in the control store

initial 
begin

ROM[0]  = 30'b00000001_0000_0000000000_100_0_0000; //FETCH1
ROM[1]  = 30'bXXXXXXXX_0000_0000000000_000_1_0000; //FETCH2
ROM[2]  = 30'b00000010_0000_0000000000_000_0_0000; //NOP (check this)
ROM[3]  = 30'b00000100_0000_0000000000_010_0_0000; //LDAC1
ROM[4]  = 30'b00000000_0100_0000000001_000_0_0001; //LDAC2
ROM[5]  = 30'b00000110_0011_0100000000_000_0_0000; //STAC1
ROM[6]  = 30'b00000000_0000_0000000000_001_0_0000; //STAC2
ROM[7]  = 30'b00000000_1011_0000000001_000_0_0000; //CLAC
ROM[8]  = 30'b00000000_0011_1000000000_000_0_0000; //MVACMAR
ROM[9]  = 30'b00000000_0011_0000100000_000_0_0000; //MVACC1
ROM[10] = 30'b00000000_0011_0000010000_000_0_0000; //MVACC2
ROM[11] = 30'b00000000_0011_0000001000_000_0_0000; //MVACC3
ROM[12] = 30'b00000000_0011_0001000000_000_0_0000; //MVACL
ROM[13] = 30'b00000000_0011_0000000010_000_0_0000; //MVACE
ROM[14] = 30'b00000000_0011_0000000100_000_0_0000; //MVACT
ROM[15] = 30'b00000000_0100_0000000001_000_0_0101; //MVC1
ROM[16] = 30'b00000000_0100_0000000001_000_0_0110; //MVC2
ROM[17] = 30'b00000000_0100_0000000001_000_0_0111; //MVC3
ROM[18] = 30'b00000000_0100_0000000001_000_0_1000; //MVT
ROM[19] = 30'b00000000_0101_0000000001_000_0_0000; //INAC
ROM[20] = 30'b00000000_0110_0000000001_000_0_0000; //DEAC
ROM[21] = 30'b00000000_0001_0000000001_000_0_1000; //ADDT
ROM[22] = 30'b00000000_0001_0000000001_000_0_0100; //ADDL
ROM[23] = 30'b00000000_0010_0000000001_000_0_1001; //SUBE
ROM[24] = 30'b00000000_0010_0000000001_000_0_0100; //SUBL
ROM[25] = 30'b00000000_1010_0000000001_000_0_0000; //DIV
ROM[26] = 30'b00000000_0111_0000000001_000_0_0000; //MUL2
ROM[27] = 30'b00000000_1000_0000000001_000_0_0000; //MUL4
ROM[28] = 30'b00000000_1001_0000000001_000_0_0000; //MUL512

ROM[29] = 30'b00011110_0000_0000000000_100_0_0000; //JUMP1
ROM[30] = 30'b00011111_0100_0000000000_000_0_0011; //JUMP2
ROM[31] = 30'b00000000_0000_0010000000_000_0_0000;

ROM[32] = 30'bxxxxxxxx_0000_0000000000_000_0_0000; //JMPZ1
ROM[33] = 30'b00000000_0000_0000000000_000_1_0000; //JMPZN1
ROM[34] = 30'b00100011_0000_0000000000_100_0_0000; //JMPZY1
ROM[35] = 30'b00100100_0100_0000000000_000_0_0011; //JMPZY2
ROM[36] = 30'b00000000_0000_0010000000_000_0_0000; //JMPZY3

ROM[37] = 30'bxxxxxxxx_0000_0000000000_000_0_0000; //JMNZ1
ROM[38] = 30'b00000000_0000_0000000000_000_1_0000; //JMNZY1
ROM[39] = 30'b00101000_0000_0000000000_100_0_0000; //JMNZN1
ROM[40] = 30'b00101001_0100_0000000000_000_0_0011; //JMNZN2
ROM[41] = 30'b00000000_0000_0010000000_000_0_0000; //JMNZN3

ROM[42] = 30'b00000000_0100_0000000001_000_0_0100; //MVL

end

endmodule








	
			