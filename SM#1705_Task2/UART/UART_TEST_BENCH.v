module UART_TEST_BENCH ;
reg clk,valid;
reg [7:0]data;
wire out_Serial,out_done;

UART test_uart(.CLOCK(clk),.TX_DATA_VALID(valid),.TX_BYTE(data),.O_TX_SERIAL(out_Serial),.O_TX_DONE(out_done));

initial begin
clk=0;
valid=1;
#5;
data=8'b01010011;
#100000;
data=8'b01001101;
#100000;
data=8'b00000000;
#100000;
data=8'b00000101;
end

always begin
#0.5; clk=~clk;
end



endmodule
