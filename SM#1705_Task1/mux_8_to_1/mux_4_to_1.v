// Sankatmochan Bot : Task 1 B : Multiplexer
/*
Instructions
-------------------
Students are not allowed to make any changes in the Module declaration.
This file is used to design a 4:1 multiplexer.

Recommended Quartus Version : 19.1
The submitted project file must be 19.1 compatible as the evaluation will be done on Quartus Prime Lite 19.1.

Warning: The error due to compatibility will not be entertained.
			Do not make any changes to Test_Bench_Vector.txt file. Violating will result into Disqualification.
-------------------
*/

//4:1 multiplexer
//Inputs : 4 inputs - i3 to i0, 2 select lines - s1 and s0, enable input - en.
//Output : y

//////////////////DO NOT MAKE ANY CHANGES IN MODULE///////////////////////////////
module mux_4_to_1(
	input i3,i2,i1,i0,         //Inputs
	input s1,s0,               //Select Lines
	input en,                  //enable
	output y                   //output
	);
	
////////////////////////WRITE YOUR CODE FROM HERE////////////////////



assign y=en&((~s1 & ~s0 & i0)|   (~s1 & s0 & i1) |   (s1 & ~s0 & i2)  |  (s1 & s0 & i3));



	
///////////////////////YOUR CODE ENDS HERE////////////////////////////
endmodule
///////////////////////////////MODULE ENDS///////////////////////////