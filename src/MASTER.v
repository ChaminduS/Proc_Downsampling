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
wire [15:0] addr_out;
wire [7:0] dout;
wire read;
wire write;
wire [7:0] din;

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
clock_gen clock_gen(
    .clk(clk)
);

//DRAM
DRAM DRAM(
    .clk(clk),
    .rd_en(rd_en),
    .wr_en(wr_en),
    .rd_done(rd_done),
    .wr_done(wr_done),
    .din(dout),
    .addr(addr_out),
    .dout(din),
    .read(read),
    .write(write)
);

//Processor
processor processor(
    .clk(clk),
    .finish(finish),
    .enable(enable),
    .d_in(din),
    .addr_out(addr_out),
    .dout(dout),
    .read(read),
    .write(write)
);

endmodule