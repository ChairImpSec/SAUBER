module ctrl_IO_1_bidirectional_frame_config_pass (
												I0_t, I0_f, 
												T,
												Q0_t, Q0_f, 
												I_top_0_t, I_top_0_f, 
												T_top,
												O_top_0_t, O_top_0_f, 
												F_ctrl, DR_fault,
												UserCLK,
												rst,
												prech2);
	parameter NoConfigBits = 0 ; // manually adjust
	// IMPORTANT: this has to be in a dedicated line
	input I0_t; // from fabric to external pin
	input I0_f; // from fabric to external pinru
	input T; // tristate control
	output Q0_t; // from external pin to fabric (registered)
	output Q0_f; // from external pin to fabric (registered)
	(* FABulous, EXTERNAL *) output I_top_0_t; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) output I_top_0_f; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) output T_top; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) input O_top_0_t; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) input O_top_0_f; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) input prech2; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) output F_ctrl; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) input DR_fault; // EXTERNAL has to ge to top-level entity not the switch matrix
	// Tile IO ports from BELs
	(* FABulous, EXTERNAL, SHARED_PORT *) input UserCLK; // EXTERNAL // SHARED_PORT // ## the EXTERNAL keyword will send this signal all the way to top and the //SHARED Allows multiple BELs using the same port (e.g. for exporting a clock to the top)
	(* FABulous, EXTERNAL, SHARED_PORT *) input rst; // EXTERNAL // SHARED_PORT
	// GLOBAL all primitive pins that are connected to the switch matrix have to go before the GLOBAL label
	(* FABulous, GLOBAL *)

	wire Q0_t;
	wire Q0_f;

	reg O_top_0_t_reg;
	reg O_top_0_f_reg;

	//wire check_share0;

	//always @ (posedge UserCLK)
	//begin
		//if (DR_ok) begin
				//assign Q0_t = O_top_0_t;
				//assign Q0_f = O_top_0_f;

		/*end else begin
				Q0_t <= 1'b0;
				Q0_f <= 1'b0;
		end*/
	//end

	always @ (posedge UserCLK)
	begin
		O_top_0_t_reg <= O_top_0_t;
		O_top_0_f_reg <= O_top_0_f;
	end

	assign Q0_t = O_top_0_t_reg & prech2;
	assign Q0_f = O_top_0_f_reg & prech2;


	assign I_top_0_t = I0_t;
	assign I_top_0_f = I0_f;

	assign T_top = ~T;


    // --- dr check
    assign F_ctrl = ~(I0_f ^ I0_t) & T;	

endmodule
