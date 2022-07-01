module state_control (
    input clk,
    input reset,
    input finish,
    input rd_done,
    input wr_done,

    output reg enable,
    output reg wr_en,
    output reg rd_en );


parameter IDLE = 3'b000;
parameter DRAM_rd = 3'b001;
parameter proc_run = 3'b010;
parameter DRAM_wr = 3'b011;
parameter complete = 3'b100;

reg [2:0] state = IDLE;


always @(posedge clk) begin
    case (state)
        IDLE :
            begin
                if (reset) begin
                    rd_en <= 1'b1;
                    wr_en <= 1'b0;
                    enable <= 1'b0; 
                    state <= DRAM_rd;
                end
            end
        
        DRAM_rd :
            begin
                if (rd_done) begin
                    rd_en <= 1'b0;
                    wr_en <= 1'b0;
                    enable <= 1'b1;
                    state <= proc_run;
                end
            end

        proc_run :
            begin
                if (finish) begin
                    rd_en <= 1'b0;
                    wr_en <= 1'b1;
                    enable <= 1'b0;
                    state <= DRAM_wr;
                end
            end

        DRAM_wr :
            begin
                if (wr_done) begin
                    rd_en <= 1'b0;
                    wr_en <= 1'b0;
                    enable <= 1'b0;
                    state <= complete;
                end
            end

        complete :
            begin
                state <= complete;
            end
    endcase
end

endmodule



