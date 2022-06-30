module mux2to1 (
input A,
input B,
input sel,
output reg OUT
);

always @(A or B or sel)
    begin
        case ( sel)
            1'b0 : OUT = A;
            1'b1 : OUT = B;
        endcase
    end
endmodule