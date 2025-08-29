(*FABulous, BelMap,
CA=0,
CB=1,
CZ=2,
FF=3
*)
module nonlinear_LMDPL_primitive (A0_t, B0_t, A0_f, B0_f, A1_t, B1_t, A1_f, B1_f, Z0_t, Z0_f, Z1_t, Z1_f, F_masked1, F_masked2, UserCLK, rst, R_t, R_f, ConfigBits);
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
    (* FABulous, EXTERNAL *) input R_t; // EXTERNAL //
    (* FABulous, EXTERNAL *) input R_f; // EXTERNAL //
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

    wire [7:0] t;
    reg  [7:0] t_reg;

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

    // --- invert output Z (share 0 only)
    SwapRails swapZ(
        .A_t(resZ0_t),
        .A_f(resZ0_f),
        .swap(CZ),
        .Z_t(oZ0_t),
        .Z_f(oZ0_f)
	);

    assign oZ1_t = resZ1_t;
    assign oZ1_f = resZ1_f;

    // --- layers ---------------------------------------------------

    // --- layer 0
    NonlinearLayer_LMDPL nonlinearInst (.A_t(iA0_t), .A_f(iA0_f), .B_t(iB0_t), .B_f(iB0_f), .R_t(R_t), .R_f(R_f), .t(t));

    assign resZ0_t = R_t;
    assign resZ0_f = R_f;

    // --- registers between layers
    always @ (posedge UserCLK) begin
        if (rst) begin
            t_reg <= 8'h00;
        end
        else begin
            t_reg <= t;
        end
	end

    // --- layer 1
    OperationLayer_LMDPL operationInst (.t(t_reg), .A_t(iA1_t), .A_f(iA1_f), .B_t(iB1_t), .B_f(iB1_f), .Z_t(resZ1_t), .Z_f(resZ1_f));




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

//-----------------------------------------

module NonlinearLayer_LMDPL(
    input  A_t,
    input  A_f,
    input  B_t,
    input  B_f,
    input  R_t,
    input  R_f,
	output [7:0] t);
	
	wire w0_t, w0_f;
	wire w1_t, w1_f;
	wire w2_t, w2_f;
	wire w3_t, w3_f;
	
	AND_DRP andInst0 (.A_t(A_t),  .A_f(A_f),  .B_t(B_t), .B_f(B_f), .Z_t(w0_t), .Z_f(w0_f));
	XOR_DRP xorInst0 (.A_t(w0_t), .A_f(w0_f), .B_t(R_t), .B_f(R_f), .Z_t(t[0]), .Z_f(t[4]));
	
	AND_DRP andInst1 (.A_t(A_t),  .A_f(A_f),  .B_t(B_f), .B_f(B_t), .Z_t(w1_t), .Z_f(w1_f));
	XOR_DRP xorInst1 (.A_t(w1_t), .A_f(w1_f), .B_t(R_t), .B_f(R_f), .Z_t(t[1]), .Z_f(t[5]));
	
	AND_DRP andInst2 (.A_t(A_f),  .A_f(A_t),  .B_t(B_t), .B_f(B_f), .Z_t(w2_t), .Z_f(w2_f));
	XOR_DRP xorInst2 (.A_t(w2_t), .A_f(w2_f), .B_t(R_t), .B_f(R_f), .Z_t(t[2]), .Z_f(t[6]));

	AND_DRP andInst3 (.A_t(A_f),  .A_f(A_t),  .B_t(B_f), .B_f(B_t), .Z_t(w3_t), .Z_f(w3_f));
	XOR_DRP xorInst3 (.A_t(w3_t), .A_f(w3_f), .B_t(R_t), .B_f(R_f), .Z_t(t[3]), .Z_f(t[7]));
	
endmodule

//-----------------------------------------

module OperationLayer_LMDPL(
    input  [7:0] t,
	input  A_t,
	input  A_f,
	input  B_t,
	input  B_f,
	output Z_t,
	output Z_f);
	
	wire e0, e1;
	wire w0, w1, w2, w3;
	wire w4, w5, w6, w7;
	
    AND2 andExtra0 (.A(A_t), .B(A_f), .Z(e0));
	AND2 andExtra1 (.A(B_t), .B(B_f), .Z(e1));
	
	AND3 andInst0  (.A(A_f), .B(B_f), .C(t[0]), .Z(w0));
    AND3 andInst1  (.A(A_f), .B(B_t), .C(t[1]), .Z(w1));
    AND3 andInst2  (.A(A_t), .B(B_f), .C(t[2]), .Z(w2));
    AND3 andInst3  (.A(A_t), .B(B_t), .C(t[3]), .Z(w3));
	OR6  orInst1   (.A(w0), .B(w1), .C(w2), .D(w3), .E(e0), .F(e1), .Z(Z_t));
	
    AND3 andInst4  (.A(A_f), .B(B_f), .C(t[4]), .Z(w4));
    AND3 andInst5  (.A(A_f), .B(B_t), .C(t[5]), .Z(w5));
    AND3 andInst6  (.A(A_t), .B(B_f), .C(t[6]), .Z(w6));
    AND3 andInst7  (.A(A_t), .B(B_t), .C(t[7]), .Z(w7));
    OR6  orInst2   (.A(w4), .B(w5), .C(w6), .D(w7), .E(e0), .F(e1), .Z(Z_f));
	
endmodule	
