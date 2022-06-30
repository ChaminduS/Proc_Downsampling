/***************************************************************
EN3030 - Circuits and System Design
180497C - 180554B - 180564F - 180574K
Designing a custom processor for Image Downsampling

Author : Avishka Sandeepa
Last Updated : 28/06/2022
Module : B Bus Multiplexer
****************************************************************/

module decoder (
    // initializing registers
    input [23:0] L, C1 , C2 , C3 , T , E ,
    input [7:0] PC ,
    input [7:0] MDR ,
    input [7:0] MBRU ,
    input [3:0] B_Bus_ctrl ,
    output reg [23:0] B_Bus
);

always @(L or C1 or C2 or C3 or T or E or PC or MDR or MBRU or B_Bus_ctrl or B_Bus) 
begin
    case (B_Bus_ctrl)
        4'b0001 : B_Bus <= {16'b0 , MDR};
        4'b0010 : B_Bus <= {16'b0 , PC};
        4'b0011 : B_Bus <= {16'b0 , MBRU};
        4'b0100 : B_Bus <= L;
        4'b0101 : B_Bus <= C1;
        4'b0110 : B_Bus <= C2;
        4'b0111 : B_Bus <= C3;
        4'b1000 : B_Bus <= T;
        4'b1001 : B_Bus <= E;
        default : B_Bus <= 24'b0;
    endcase
    
end
    
endmodule