

module testbench;

	// Inputs
	reg Clock;
	reg Reset;
	reg [7:0] InData;

	// Outputs
	wire Ready;
	wire [7:0] OutData;
	
	reg  [199:0] Input;
	reg  [199:0] Output;

	
	// Instantiate the Unit Under Test (UUT)
	keccak_top uut (
		.Clock(Clock), 
		.Reset(Reset), 
		.InData(InData), 
		.Ready(Ready), 
		.OutData(OutData)
	);
	

		initial begin: init
		integer i;
		
		Input = {128'hffffffffffffffffffffffffffffffff,72'h0123456789abcdef01};

		Clock = 0;
		Reset = 1;
		#500
		
		for (i=0; i<25; i=i+1) begin
			InData = Input[(i*8) +: 8];
         #20;
      end		
		
		Reset = 0;

		@(posedge Ready)
			#10
		
			for (i=0; i<25; i=i+1) begin
				Output[(i*8) +: 8] = OutData;
				#20;
			end		
			
			if(Output == 200'he090c8c5e596d3421d2fcc695838626cbb365352811837480f) begin
					$write("------------------PASS---------------\n");
			end
			else begin
				$write("\------------------FAIL---------------\n");
				$write("%x\n", OutData);
			end
	
    	end
	
	   always #10 Clock = ~Clock;
		
     
endmodule

