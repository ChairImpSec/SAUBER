
module keccak_top #(      
   parameter b = 200,      	//The width of a KECCAK-p permutation in bits.
   parameter W = 8       		//The lane size of a KECCAK-p permutation in bits, i.e., b/25
)(
    input  wire Clock,
    input  wire Reset,
	 input  wire [W-1:0] InData,  // Input shares concatenateed to each other
    output wire Ready,
    output wire [W-1:0] OutData	// Output shares concatenateed to each other
);


wire[b-1:0] StateIn;
reg [b-1:0] StateOut;
wire[b-1:0] StateFromTheta;
wire[b-1:0] StateFromRhoPi;
wire[b-1:0] StateFromChi;

wire[W-1:0] IotaRC;

//---------------------------------------------------------------------
	
	assign StateIn = (Reset | Ready) ? {InData, StateOut[b-1:W]} : StateFromChi;

//-----------------------------------------------------------------------------

	always @(posedge Clock) begin
		StateOut <= StateIn;
	end
	
//---------------------------------------------------------------------

	keccak_theta #(.W(W), .b(b)) THETA (
		.In(StateOut), 
      .Out(StateFromTheta));

//---------------------------------------------------------------------

	// Rho + Pi

	keccak_rhopi #(.W(W)) RHOPI(
		.In(StateFromTheta),
		.Out(StateFromRhoPi));

//---------------------------------------------------------------------

	// Chi + Iota

	keccak_chi_iota #(.W(W)) CHI(
		.In(StateFromRhoPi),
		.IotaRCI(IotaRC),
		.Out(StateFromChi));

//-----------------------------------------------------------------------------

	
	assign OutData = StateOut[W-1:0];		

//-----------------------------------------------------------------------------

	// Control path

	keccak_control #(.W(W)) KECCAK_CONTROL (
		.Clock(Clock),
		.Reset(Reset),
		.IotaRCO(IotaRC),
		.Ready(Ready));

endmodule  
