module I2C_tb ;


reg clock,reset;
wire scl,cs,sda;

wire [15:0]data;
I2C test(.clock(clock),.reset(reset),.scl(scl),.cs(cs),.sda(sda),.rx_data(data));


initial begin
clock=0;
reset=1;
pullup(sda);

end

always begin
	#1;clock=~clock;
end

endmodule
