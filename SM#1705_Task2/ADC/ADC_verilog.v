module ADC_verilog(
input Dout,
input sclk,
input rst,
output [11:0]ADC_DATA_CH1,
output [11:0]ADC_DATA_CH2,
output [11:0]ADC_DATA_CH3,
output Din,
output cs
);

reg[11:0] data1=0;
reg[11:0] data1_assign=0;
reg[11:0] data2=0;
reg[11:0] data2_assign=0;
reg[11:0] data3=0;
reg[11:0] data3_assign=0;
reg[2:0] address=3'b001;

reg [3:0]pulse_number=4'b0000;

reg value_pos=1;
reg value_neg=1;

reg address_value=0;

assign cs=value_pos&value_neg;
assign Din=address_value;
assign ADC_DATA_CH1=data1_assign;
assign ADC_DATA_CH2=data2_assign;
assign ADC_DATA_CH3=data3_assign;

//write code for negative edges of the sclk
always @ (negedge sclk)
begin	
	if(pulse_number>=2 && pulse_number<=4)begin
		address_value=address[4-pulse_number];
	end
	if(pulse_number==4'b1111)begin
			value_pos=1;
		end else begin
			value_pos=0;
		end
end





//code for all the positive edges of the slck



always @ (posedge sclk)
begin
	if(pulse_number==4)begin
		data1_assign=data1;
		data2_assign=data2;
		data3_assign=data3;
	end
	if(pulse_number>=4 && pulse_number<=15)begin
		if(address==1)begin
			data1[15-pulse_number]=Dout;
		end
		
		if(address==2)begin
			data2[15-pulse_number]=Dout;
		end
		
		if(address==3)begin
			data3[15-pulse_number]=Dout;
		end

	if(pulse_number==4'b1110)begin
		value_neg=0;


		end else begin
		value_neg=1;
		end


	end
	if(pulse_number==4'b1111)begin
			address=address+3'b001;
			if(address==3'b100)begin
				address=3'b001;
			end
	end
	pulse_number=pulse_number+4'b0001;

	
end





endmodule
