
module keccak_control #(
    parameter W = 8
)(
    input  wire Clock,
    input  wire Reset,
	 output wire [W-1:0]IotaRCO,
    output reg  Ready
);


//-----------------------------------------------------------------------------
localparam ROUNDS = 18;
localparam   
	START					    = 3'h01,
   CHI_IOTA_NextLAMDA    = 3'h02,
   FINISH                = 3'h04;
//-----------------------------------------------------------------------------


reg [2:0] CtrlStatexDP, CtrlStatexDN;
reg [4:0] RoundCountxDP;
wire[4:0] RoundCountxDN;
reg       RoundCountLastxDP;

reg enableRoundCountxS;

//-----------------------------------------------------------------------------
// State machine

always @(*) begin : FSM
    CtrlStatexDN = CtrlStatexDP;

	 Ready = 1'b0;
    enableRoundCountxS = 1'b0;

    case(CtrlStatexDP)

	START: begin
		 if(~Reset) 
		 begin
			enableRoundCountxS = 1'b1;
			CtrlStatexDN = CHI_IOTA_NextLAMDA;
		 end
		 else
			CtrlStatexDN = START;
	end
   
   CHI_IOTA_NextLAMDA: begin
		enableRoundCountxS = 1'b1;
		if(RoundCountLastxDP) 
            CtrlStatexDN = FINISH;   
        else
            CtrlStatexDN = CHI_IOTA_NextLAMDA;
	end
		
	FINISH: begin
	    Ready = 1;
	end		
   endcase
end

always @(posedge Clock) begin
    if(Reset) begin
        CtrlStatexDP <= START;
        RoundCountxDP <= 0;
        RoundCountLastxDP <= 0;		
	end
    else begin
	     CtrlStatexDP <= CtrlStatexDN;
        RoundCountLastxDP <= (RoundCountxDN >= (ROUNDS - 1));
  		  if (enableRoundCountxS)
				RoundCountxDP <= RoundCountxDN;
	end
end


assign RoundCountxDN	= RoundCountxDP + 1;

wire[W-1:0] RCxD;

keccak_roundconstant #(
    .W(W)
    ) RC_GEN (
    .RoundNrxDI(RoundCountxDP),
    .RCxDO(RCxD)
    );

assign IotaRCO = RCxD ;


endmodule