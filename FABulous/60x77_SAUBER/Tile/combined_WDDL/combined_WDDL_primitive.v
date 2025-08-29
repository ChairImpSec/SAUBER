(*FABulous, BelMap,
CA=0,
CB=1,
CZ=2,
FF=3,
NL=4
*)
module combined_WDDL_primitive (A0_t, B0_t, A0_f, B0_f, Z0_t, Z0_f, UserCLK, rst, F_ctrl, ConfigBits);
    parameter NoConfigBits = 5 ; // manually adjust
	// IMPORTANT: this has to be in a dedicated line
	input  A0_t; // inputs
	input  B0_t; 
	input  A0_f; 
	input  B0_f;  
    output Z0_t; // outputs (combinational or FF)
	output Z0_f; 
	(* FABulous, EXTERNAL *) output F_ctrl; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL, SHARED_PORT *) input UserCLK; // EXTERNAL // SHARED_PORT //
    (* FABulous, EXTERNAL, SHARED_PORT *) input rst; // EXTERNAL // SHARED_PORT //
    // GLOBAL
	(* FABulous, GLOBAL *) input [NoConfigBits-1 : 0] ConfigBits;


    // --- internal wiring -----------------------------------------

    wire CA, CB, CZ, FF, NL;

    wire iA0_t;
    wire iA0_f;

	wire iB0_t;
	wire iB0_f;

    wire resZ0_t;
    wire resZ0_f;

    wire oZ0_t;
    wire oZ0_f;

    reg stage0_Z0_t;
    reg stage0_Z0_f;

    reg stage1_Z0_t;
    reg stage1_Z0_f;

    // --- configuration bits --------------------------------------

    assign CA = ConfigBits[0];
    assign CB = ConfigBits[1];
    assign CZ = ConfigBits[2];
    assign FF = ConfigBits[3];
    assign NL = ConfigBits[4];

    // --- IO configuration -----------------------------------------

    // --- invert input A 
    SwapRails swapA(
        .A_t(A0_t),
        .A_f(A0_f),
        .swap(CA),
        .Z_t(iA0_t),
        .Z_f(iA0_f)
	);

    // --- invert input B
    SwapRails swapB(
        .A_t(B0_t),
        .A_f(B0_f),
        .swap(CB),
        .Z_t(iB0_t),
        .Z_f(iB0_f)
	);

    // --- invert output Z
    SwapRails swapZ(
        .A_t(resZ0_t),
        .A_f(resZ0_f),
        .swap(CZ),
        .Z_t(oZ0_t),
        .Z_f(oZ0_f)
	);

    // --- WDDL-Combined2 ------------------------------------------------
    Combined_DRP combInst (.isNonlinear(NL), .A_t(iA0_t),  .A_f(iA0_f),  .B_t(iB0_t), .B_f(iB0_f), .Z_t(resZ0_t), .Z_f(resZ0_f));


    // --- output register stages / wiring ---------------------------
    always @ (posedge UserCLK) begin
        if (rst) begin
            // stage0
            stage0_Z0_t <= 1'b0;
            stage0_Z0_f <= 1'b1;

            // stage1
            stage1_Z0_t <= 1'b0;
            stage1_Z0_f <= 1'b0;
        end
        else begin
            // stage0
            stage0_Z0_t <= oZ0_t;
            stage0_Z0_f <= oZ0_f;

            // stage1
            stage1_Z0_t <= stage0_Z0_t;
            stage1_Z0_f <= stage0_Z0_f;
        end
	end

    my_mux2 outMux0(
        .A0(oZ0_t),
        .A1(stage1_Z0_t),
        .S(FF),
        .X(Z0_t)
	);

    my_mux2 outMux1(
        .A0(oZ0_f),
        .A1(stage1_Z0_f),
        .S(FF),
        .X(Z0_f)
	);

    // --- dr check
    assign F_ctrl = ~(stage0_Z0_f ^ stage0_Z0_t) & FF;

endmodule	