module I2C_Control_Verilog(clk,rst,core_busy,data_valid,rw,slave_addr,reg_addr,reg_data);

input clk;
input rst;
input core_busy;
output data_valid;
output rw;
output [6:0]slave_addr;
output [7:0]reg_addr;
output [7:0]reg_data;


//data registers
reg [6:0]slave_add_reg=0;
reg [7:0]reg_add_reg=0;
reg [7:0]reg_data_reg=0;
reg data_valid_reg=0;
reg rw_reg=1;

//assign reg to output
assign slave_addr=slave_add_reg;
assign reg_addr=reg_add_reg;
assign reg_data=reg_data_reg;
assign data_valid=data_valid_reg;
assign rw=rw_reg;

//states
localparam s0=3'b000;//ideal state
localparam s1=3'b001;
localparam s2=3'b010;
localparam s3=3'b011;
localparam s4=3'b100;
localparam s5=3'b101;

//state variable
reg[2:0] state=3'b000;

//address of lsb
reg[7:0] lsb_addr=8'b00110010;
reg[7:0] msb_addr=8'b00110011;

always @(posedge clk)begin
	case(state)

	s0: begin										//Ideal State
		if(rst==1)begin
			slave_add_reg=0;
			reg_add_reg=0;
			state=s1;
		end
	end

	s1:begin		//Set_Resolution		
		if(core_busy==0)begin
			data_valid_reg=1;
			//set state or rw and data in slave and address registers
			rw_reg=1;
			reg_add_reg=lsb_addr;

			slave_add_reg=7'b1100110;
			reg_data_reg=8'b00110011;
			state=s2;
		end
		
	end

	s2:begin
		//ACK bits wait nothing happens only onle cycle is allowed to pass
		state=s3;
	end

	s3:begin
		if(core_busy==0)begin
			data_valid_reg=1;
			state=s4;
			//set value or rw and data on busses
			reg_add_reg=msb_addr;
			slave_add_reg=7'b0101110;
			reg_data_reg=8'b00111100;	
			rw_reg=1;
		end
		else begin
			
			data_valid_reg=0;
		end 
	end

	s4:begin
		//wait for ACK Bit
		state=s5;
	end

	s5:begin
	if(rst==0)begin
		state=s0;
	end
		
	end


	endcase

	
end
endmodule
