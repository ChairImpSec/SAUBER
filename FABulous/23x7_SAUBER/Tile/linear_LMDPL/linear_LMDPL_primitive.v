(*FABulous, BelMap,
CA=0,
CB=1,
CZ=2,
FF=3
*)
module linear_LMDPL_primitive (A0_t, B0_t, A0_f, B0_f, A1_t, B1_t, A1_f, B1_f, Z0_t, Z0_f, Z1_t, Z1_f, F_masked1, F_masked2, UserCLK, rst, ConfigBits);
    parameter NoConfigBits = 4 ; // manually adjust
	// IMPORTANT: this has to be in a dedicated line
	input  A0_t; // inputs
	input  B0_t; 
	input  A0_f; 
	input  B0_f; 
	input  A1_t; 
	input  B1_t; 
	input  A1_f; 
	input  B1_f; 
    output Z0_t; // outputs (combinational or FF)
	output Z0_f; 
	output Z1_t;
    output Z1_f;
    (* FABulous, EXTERNAL *) output F_masked1; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL *) output F_masked2; // EXTERNAL has to ge to top-level entity not the switch matrix
	(* FABulous, EXTERNAL, SHARED_PORT *) input UserCLK; // EXTERNAL // SHARED_PORT //
    (* FABulous, EXTERNAL, SHARED_PORT *) input rst; // EXTERNAL // SHARED_PORT //
    // GLOBAL
	(* FABulous, GLOBAL *) input [NoConfigBits-1 : 0] ConfigBits;

    // --- internal wiring -----------------------------------------

    wire CA, CB, CZ, FF;

    wire iA0_t;
    wire iA0_f;
    wire iA1_t;
    wire iA1_f;

	wire iB0_t;
	wire iB0_f;
	wire iB1_t;
	wire iB1_f;
    
    wire resZ0_t;
    wire resZ0_f;
    wire resZ1_t;
    wire resZ1_f;

    wire oZ0_t;
    wire oZ0_f;
    wire oZ1_t;
    wire oZ1_f;

    reg stage0_Z0_t;
    reg stage0_Z0_f;
    reg stage0_Z1_t;
    reg stage0_Z1_f;

    reg stage1_Z0_t;
    reg stage1_Z0_f;
    reg stage1_Z1_t;
    reg stage1_Z1_f;

    // --- configuration bits --------------------------------------

    assign CA = ConfigBits[0];
    assign CB = ConfigBits[1];
    assign CZ = ConfigBits[2];
    assign FF = ConfigBits[3];

    // --- IO configuration -----------------------------------------

    // --- invert input A (share 0 only)
    SwapRails swapA(
        .A_t(A0_t),
        .A_f(A0_f),
        .swap(CA),
        .Z_t(iA0_t),
        .Z_f(iA0_f)
	);

    assign iA1_t = A1_t;
    assign iA1_f = A1_f;

    // --- invert input B (share 0 only)
    SwapRails swapB(
        .A_t(B0_t),
        .A_f(B0_f),
        .swap(CB),
        .Z_t(iB0_t),
        .Z_f(iB0_f)
	);

    assign iB1_t = B1_t;
    assign iB1_f = B1_f;

    // --- invert output Z (share 1 only)
    assign oZ0_t = resZ0_t;
    assign oZ0_f = resZ0_f;

    SwapRails swapZ(
        .A_t(resZ1_t),
        .A_f(resZ1_f),
        .swap(CZ),
        .Z_t(oZ1_t),
        .Z_f(oZ1_f)
	);


    // --- layers ---------------------------------------------------

    // --- layer 0
    XOR_DRP xorInst0 (.A_t(iA0_t), .A_f(iA0_f), .B_t(iB0_t), .B_f(iB0_f), .Z_t(resZ0_t), .Z_f(resZ0_f));

    // --- layer 1
    XOR_DRP xorInst1 (.A_t(iA1_t), .A_f(iA1_f), .B_t(iB1_t), .B_f(iB1_f), .Z_t(resZ1_t), .Z_f(resZ1_f));



    // --- output register stages / wiring ---------------------------
    always @ (posedge UserCLK) begin
        if (rst) begin
            // stage0
            stage0_Z0_t <= 1'b0;
            stage0_Z0_f <= 1'b0;
            stage0_Z1_t <= 1'b0;
            stage0_Z1_f <= 1'b1;

            // stage1
            stage1_Z0_t <= 1'b0;
            stage1_Z0_f <= 1'b1;
            stage1_Z1_t <= 1'b0;
            stage1_Z1_f <= 1'b0;
        end
        else begin
            // stage0
            stage0_Z0_t <= oZ0_t;
            stage0_Z0_f <= oZ0_f;
            stage0_Z1_t <= oZ1_t;
            stage0_Z1_f <= oZ1_f;

            // stage1
            stage1_Z0_t <= stage0_Z0_t;
            stage1_Z0_f <= stage0_Z0_f;
            stage1_Z1_t <= stage0_Z1_t;
            stage1_Z1_f <= stage0_Z1_f;
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

    my_mux2 outMux2(
        .A0(oZ1_t),
        .A1(stage1_Z1_t),
        .S(FF),
        .X(Z1_t)
	);

    my_mux2 outMux3(
        .A0(oZ1_f),
        .A1(stage1_Z1_f),
        .S(FF),
        .X(Z1_f)
	);

    // --- dr check
    assign F_masked2 = ~(stage0_Z0_f ^ stage0_Z0_t) & FF;
    assign F_masked1 = ~(stage0_Z1_f ^ stage0_Z1_t) & FF;

endmodule