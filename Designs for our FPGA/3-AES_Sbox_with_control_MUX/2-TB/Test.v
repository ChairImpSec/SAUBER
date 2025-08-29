`timescale 1ns / 1ps

module Test;

	// Inputs
	reg [7:0] value_in;
	reg [3:0] start;
	reg rst;
	reg clk;

	// Outputs
	wire [7:0] value_out;

	// Instantiate the Unit Under Test (UUT)
	main uut (
		.value_in(value_in), 
		.start(start), 
		.rst(rst), 
		.clk(clk), 
		.value_out(value_out)
	);

	initial begin
		// Initialize Inputs
		value_in = 8'h25;
		start = 4'b0000;
		rst = 1'b1;

		// Wait 100 ns for global reset to finish
		#100;
        
		rst = 1'b0;
		  
		// Add stimulus here

	end
	
	initial begin
	   clk = 1'b0;
	   forever begin
	     #5 clk = ~clk;
	   end
	end	
endmodule

