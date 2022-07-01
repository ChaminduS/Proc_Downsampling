module MASTER (
    input reset
);

wire clk;
wire enable;
wire rd_en;
wire wr_en;
wire rd_done;
wire wr_done;
wire finish;

//State Control
state_control state_control(
    .reset(reset),
    .finish(finish),
    .clk(clk),
    .rd_done(rd_done),
    .wr_done(wr_done),
    .enable(enable),
    .rd_en(rd_en),
    .wr_en(wr_en)
);

//Clock Generator
clk_gen clk_gen(
    .clk(clk)
);

//DRAM
DRAM DRAM(
    .clk(clk),
    .rd_en(rd_en),
    .wr_en(wr_en),
    .rd_done(rd_done),
    .wr_done(wr_done)
);

//Processor
processor processor(
    .clk(clk),
    .finish(finish),
    .enable(enable)
);

endmodule