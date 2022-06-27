module PC(
    input clk,
    input enable,
    input reset,
    input load,
    input inc,
    input [7:0] C_bus,

    output reg [7:0] ins_addr
);

//initializing start flag and instruction address
reg start = 1'b0;

initial begin
    ins_addr = 8'b0;
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
        if (reset) ins_addr <= ins_addr;

        else if (start) begin
            if (state == 2'b11 && load) begin
                ins_addr <= C_bus;
            end

            else if (state == 2'b11 && inc) begin
                ins_addr <= ins_addr + 8'b00000001;
            end

            else begin
                isn_addr <= ins_addr;
            end
        end 
    end

endmodule
