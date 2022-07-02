module MASTER_tb ();

reg Reset;

MASTER dut (.reset(Reset));

initial begin
    Reset = 1'b1;
end

endmodule 