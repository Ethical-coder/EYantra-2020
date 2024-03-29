module UART(CLOCK,TX_DATA_VALID,TX_BYTE,O_TX_SERIAL,O_TX_DONE);
input CLOCK;
input TX_DATA_VALID;
input[7:0] TX_BYTE;
output O_TX_SERIAL;
output O_TX_DONE;


reg data[7:0];

reg [2:0]s0=3'b000;//ideal statae
reg [2:0]s1=3'b001;//start bit state
reg [2:0]s2=3'b010;//data transfer state
reg [2:0]s3=3'b011;//stop bit state
reg [2:0]s4=3'b100;//clean up state
reg [2:0]state=3'b000;
reg value=1;
reg [3:0]counter=4'b0000;
reg done=1;

assign O_TX_SERIAL=value;
assign O_TX_DONE=done;

//new code for 50MHZ clock generation
//This code is not used as there was some problem in downloading design in Modelsim 
//but the code below will work fine for converting clock to 50MHz 
//**************************************************************

//IF you want to get output in UWF just comment this block and replace clk in other always block with CLOCK

reg [8:0]time_counter=0;
reg CLK=0;

always @ (posedge CLOCK)begin
	if(time_counter<434)begin
		time_counter=time_counter+9'b000000001;
	end
	else begin
		time_counter=0;
		CLK=~CLK;
	end
end


//**************************************************************

//Reaplace CLK with CLOCK for getting UWF in the always block below
always @ (posedge CLK) begin

	case (state)
		s0:begin										//Ideal state
			if(TX_DATA_VALID==1) begin
				state=s1;
			end
			end
		
		s1:begin                              // TX_START_BIT  i.e. start bit state 
			value=0;
			state=s2;
			data[0]=TX_BYTE[0];
			data[1]=TX_BYTE[1];
			data[2]=TX_BYTE[2];
			data[3]=TX_BYTE[3];
			data[4]=TX_BYTE[4];
			data[5]=TX_BYTE[5];
			data[6]=TX_BYTE[6];
			data[7]=TX_BYTE[7];
			done=0;
			end
			
		s2:begin  		//TX_DATA_BITS i.e. data transfer bits
			value=data[counter];  //For sending LSB first than MSB as discussed in doubt clearning session
			counter=counter+4'b0001;
			if(counter>4'b0111)begin
					counter=4'b0000;
					state=s3;
			end

			end
			
		s3:begin     		//TX_STOP_BIT i.e. stoping bit state
			value=1;
			state=s4;
			end
			
		s4:begin
			done=1;
			state=s0;
			end
			
		endcase

	end



endmodule

