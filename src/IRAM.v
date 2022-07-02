// Author : Dasun Premathilaka
// Last Updated : 29/06/2022

//IRAM - Instruction RAM
//Stores the instructions to be executed sequentially

module IRAM (
    input clk,
    input [7:0] addr, //connects to the PC
    output reg [7:0] dout //connects to the MBRU
);
    reg [7:0] ROM [120:0];

    // Defining the assembly code

    parameter FETCH = 8'd0;
    parameter NOP = 8'd2;
    parameter LDAC = 8'd3;
    parameter STAC = 8'd5;
    parameter CLAC = 8'd7;
    parameter MVACMAR = 8'd8;
    parameter MVACC1 = 8'd9;
    parameter MVACC2 = 8'd10;
    parameter MVACC3 = 8'd11;
    parameter MVACL = 8'd12;
    parameter MVACE = 8'd13;
    parameter MVACT = 8'd14;
    parameter MVC1 = 8'd15;
    parameter MVC2 = 8'd16;
    parameter MVC3 = 8'd17;
    parameter MVT = 8'd18;
    parameter INAC = 8'd19;
    parameter DEAC = 8'd20;
    parameter ADDT = 8'd21;
    parameter ADDL = 8'd22;
    parameter SUBE = 8'd23;
    parameter SUBL = 8'd24;
    parameter DIV = 8'd25;
    parameter MUL2 = 8'd26;
    parameter MUL4 = 8'd27;
    parameter MUL256 = 8'd28;
    parameter JUMP = 8'd29;
    parameter JMPZ = 8'd32;
    parameter JMNZ = 8'd37;
    parameter MVL = 8'd42;

    parameter L1 = 8'd120;
    parameter L2 = 8'd21;


    always@(posedge clk)
        begin
            dout <= ROM[addr];
        end

    initial begin
        // setting the initial values of C1, C2, C3, L
        ROM[0] = CLAC; //AC <- 0
        ROM[1] = MVACMAR; //MAR <- AC
        ROM[2] = LDAC; //AC <- DRAM[MAR=0]
        ROM[3] = INAC; //AC <- AC + 1
        ROM[4] = MVACL; //L <- AC (L = 256)
        ROM[5] = MVL; //AC <- L
        ROM[6] = INAC; //AC <- AC + 1
        ROM[7] = INAC; //AC <- AC + 1
        ROM[8] = MVACC1; //C1 <- AC (C1 = 258)
        ROM[9] = CLAC; //AC <- 0
        ROM[10] = INAC; //AC <- AC + 1
        ROM[11] = MVACC3; //C3 <- AC (C3 = 1)
        ROM[12] = CLAC; //AC <- 0 
        ROM[13] = INAC; //AC <- AC + 1
        ROM[14] = INAC; //AC <- AC + 1
        ROM[15] = MVACC2; // C2 <- AC (C2 = 2)

        //setting the value of reg E = L * (L-2)
        ROM[16] = MVL; //AC <- L 
        ROM[17] = DEAC; //AC <- AC - 1
        ROM[18] = DEAC; //AC <- AC - 1
        ROM[19] = MUL256; //AC <- AC*256
        ROM[20] = MVACE; //E <- AC (E = 65024)

        ROM[21] = CLAC; //AC <- 0
        ROM[22] = MVACT; //T <- AC (T = 0)

        //total <- total + top left pixel
        ROM[23] = MVC1; //AC <- C1
        ROM[24] = SUBL; //AC <- AC - L
        ROM[25] = DEAC; //AC <- AC - 1
        ROM[26] = MVACMAR; //MAR <- AC
        ROM[27] = LDAC; //AC <- DRAM[MAR] (top left pixel)
        ROM[28] = ADDT; //AC <- AC + T
        ROM[29] = MVACT; //T <- AC

        //total <- total + 2*top mid pixel 
        ROM[30] = MVC1; //AC <- C1
        ROM[31] = SUBL; //AC <- AC - L
        ROM[32] = MVACMAR; //MAR <- AC
        ROM[33] = LDAC; //AC <- DRAM[MAR] (top mid pixel)
        ROM[34] = MUL2; //AC <- AC * 2
        ROM[35] = ADDT; //AC <- AC + T
        ROM[36] = MVACT; //T <- AC

        //total <- total + top right pixel 
        ROM[37] = MVC1; //AC <- C1
        ROM[38] = SUBL; //AC <- AC - L
        ROM[39] = INAC; //AC <- AC + 1
        ROM[40] = MVACMAR; //MAR <- AC
        ROM[41] = LDAC; //AC <- DRAM[MAR] (top right pixel)
        ROM[42] = ADDT; //AC <- AC + T
        ROM[43] = MVACT; //T <- AC

        //total <- total + 2 * mid left pixel
        ROM[44] = MVC1; //AC <- C1
        ROM[45] = DEAC; //AC <- AC - 1
        ROM[46] = MVACMAR; //MAR <- AC
        ROM[47] = LDAC; //AC <- DRAM[MAR] (mid left pixel)
        ROM[48] = MUL2; //AC <- AC * 2
        ROM[49] = ADDT; //AC <- AC + T
        ROM[50] = MVACT; //T <- AC

        //total <- total + 4 * centre pixel
        ROM[51] = MVC1; //AC <- C1
        ROM[52] = MVACMAR; //MAR <- AC
        ROM[53] = LDAC; //AC <- DRAM[MAR] (centre pixel)
        ROM[54] = MUL4; //AC <- AC * 4
        ROM[55] = ADDT; //AC <- AC + T
        ROM[56] = MVACT; //T <- AC

        //total <- total + 2 * mid right pixel
        ROM[57] = MVC1; //AC <- C1
        ROM[58] = INAC; //AC <- AC + 1
        ROM[59] = MVACMAR; //MAR <- AC
        ROM[60] = LDAC; //AC <- DRAM[MAR] (mid right pixel)
        ROM[61] = MUL2; //AC <- AC * 2
        ROM[62] = ADDT; //AC <- AC + T
        ROM[63] = MVACT; //T <- AC

        //total <- total + bottom left pixel
        ROM[64] = MVC1; //AC <- C1
        ROM[65] = ADDL; //AC <- AC + L
        ROM[66] = DEAC; //AC <- AC - 1
        ROM[67] = MVACMAR; //MAR <- AC
        ROM[68] = LDAC; //AC <- DRAM[MAR] (bottom left pixel)
        ROM[69] = ADDT; //AC <- AC + T
        ROM[70] = MVACT; //T <- AC

        //total <- total + 2 * bottom mid pixel
        ROM[71] = MVC1; //AC <- C1
        ROM[72] = ADDL; //AC <- AC + L
        ROM[73] = MVACMAR; //MAR <- AC
        ROM[74] = LDAC; //AC <- DRAM[MAR] (bottom mid pixel)
        ROM[75] = MUL2; //AC <- AC * 2
        ROM[76] = ADDT; //AC <- AC + T
        ROM[77] = MVACT; //T <- AC

        //total <- total + bottom right pixel
        ROM[78] = MVC1; //AC <- C1
        ROM[79] = ADDL; //AC <- AC + L
        ROM[80] = INAC; //AC <- AC + 1
        ROM[81] = MVACMAR; //MAR <- AC
        ROM[82] = LDAC; //AC <- DRAM[MAR] (bottom right pixel)
        ROM[83] = ADDT; //AC <- AC + T
        ROM[84] = DIV; //AC <- AC / 16
        ROM[85] = MVACT; //T <- AC

        //storing the calculated average value
        ROM[86] = MVC3; //AC <- C3
        ROM[87] = MVACMAR; //MAR <- AC
        ROM[88] = MVT; //AC <- T
        ROM[89] = STAC; //DRAM[MAR] <- AC

        //updating C1, C2, C3 values
        ROM[90] = MVC1; //AC <- C1
        ROM[91] = INAC; //AC <- AC + 1
        ROM[92] = INAC; //AC <- AC + 1
        ROM[93] = MVACC1; // C1 <- AC  (C1 <- C1 + 2)

        ROM[94] = MVC2; //AC <- C2
        ROM[95] = INAC; //AC <- AC + 1
        ROM[96] = INAC; //AC <- AC + 1
        ROM[97] = MVACC2; //C2 <- AC (C2 <- C2 + 2)

        ROM[98] = MVC3; //AC <- C3
        ROM[99] = INAC; //AC <- AC + 1
        ROM[100] = MVACC3; //C3 <- AC (C3 <- C3 + 1)

        //checking the conditions before starting the next cycle
        ROM[101] = MVC1; //AC <- C1
        ROM[102] = SUBE; //AC <- AC - E (If C1 > 65024, stop calculations)
        ROM[103] = JMPZ; //If Z == 1, go to the endop or else continue
        ROM[104] = L1;

        //checking if we are at the rightmost column
        ROM[105] = MVC2; //AC <- C2
        ROM[106] = SUBL; //AC <- AC - L (If C2 = 256, go to next row, re update the C1, C2 values)
        ROM[107] = JMNZ; // If Z == 0, go to L2 (clear AC - continue without reupdating C1, C2)
        ROM[108] = L2; 

        //reupdating C1, C2 values
        ROM[109] = MVC1; //AC <- C1
        ROM[110] = ADDL; //AC <- AC + L
        ROM[111] = INAC; //AC <- AC + 1
        ROM[112] = INAC; //AC <- AC + 1
        ROM[113] = MVACC1; //C1 <- AC

        ROM[114] = CLAC; //AC <- 0
        ROM[115] = INAC; //AC <- AC + 1
        ROM[116] = INAC; //AC <- AC + 1
        ROM[117] = MVACC2; //C2 <- AC

        //continuing convolution
        ROM[118] = JUMP; //go to L2
        ROM[119] = L2; //clear AC and then convolve

        //redirecting to endop when C1 = 65024
        ROM[120] = NOP;

    end
    
endmodule