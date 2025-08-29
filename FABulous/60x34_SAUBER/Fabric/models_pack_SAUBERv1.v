
module LHQD1 (input D, E, output reg Q, QN);
    always @(*)
    begin
        if (E == 1'b1) begin
            Q = D;
            QN = ~D;
        end
    end
endmodule


module MUX4PTv4 (IN1, IN2, IN3, IN4, S1, S2, O);
	input IN1;
	input IN2;
	input IN3;
	input IN4;
	input S1;
	input S2;
	output O; 
	reg O;
	wire [1:0] SEL;

	assign SEL = {S2,S1};
	always @(*) 
	begin
		case(SEL)
			2'b00:O = IN1;
			2'b01:O = IN2;
			2'b10:O = IN3;
			2'b11:O = IN4;
			default:O = 1'b0;
		endcase
	end

endmodule 

module MUX16PTv2 (IN1, IN2, IN3, IN4, IN5, IN6, IN7, IN8, IN9, IN10, IN11, IN12, IN13, IN14, IN15, IN16, S1, S2, S3, S4, O);
	input IN1;
	input IN2;
	input IN3;
	input IN4;
	input IN5;
	input IN6;
	input IN7;
	input IN8;
	input IN9;
	input IN10;
	input IN11;
	input IN12;
	input IN13;
	input IN14;
	input IN15;
	input IN16;
	input S1;
	input S2;
	input S3;
	input S4;
	output O;
	reg O;
	wire [3:0] SEL;

	assign SEL = {S4,S3,S2,S1};
	always @(*)
	begin
		case(SEL)
			4'b0000: O = IN1;
			4'b0001: O = IN2;
			4'b0010: O = IN3;
			4'b0011: O = IN4;
			4'b0100: O = IN5;
			4'b0101: O = IN6;
			4'b0110: O = IN7;
			4'b0111: O = IN8;
			4'b1000: O = IN9;
			4'b1001: O = IN10;
			4'b1010: O = IN11;
			4'b1011: O = IN12;
			4'b1100: O = IN13;
			4'b1101: O = IN14;
			4'b1110: O = IN15;
			4'b1111: O = IN16;
			default: O = 1'b0;
		endcase
	end

endmodule

module my_buf (A, X);
    input A;
    output X;
    assign X = A;
endmodule

module clk_buf (A, X);
    input A;
    output X;
    assign X = A;
endmodule

module cus_mux41 (A0, A1, A2, A3, S0, S0N, S1, S1N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input S0;
	input S0N;
	input S1;
	input S1N;
	output X; 
	wire [1:0] SEL;
	wire [3:0] AIN;

	assign AIN[0] = A0;
	assign AIN[1] = A1;
	assign AIN[2] = A2;
	assign AIN[3] = A3;

	wire B0 = S0 ? AIN[1] : AIN[0];
	wire B1 = S0 ? AIN[3] : AIN[2];
	assign X =  S1 ? B1 : B0;
endmodule

module cus_mux41_buf (A0, A1, A2, A3, S0, S0N, S1, S1N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input S0;
	input S0N;
	input S1;
	input S1N;
	output X; 
	wire [3:0] AIN;
	
	assign AIN[0] = A0;
	assign AIN[1] = A1;
	assign AIN[2] = A2;
	assign AIN[3] = A3;

	wire B0 = S0 ? AIN[1] : AIN[0];
	wire B1 = S0 ? AIN[3] : AIN[2];
	assign X =  S1 ? B1 : B0;
endmodule

module my_mux2 (A0, A1, S, X);
	input A0;
	input A1;
	input S;
	output X;
	wire [1:0] AIN;

	assign AIN[0] = A0;
	assign AIN[1] = A1;

	assign X = S ? AIN[1] : AIN[0];
endmodule 

module cus_mux81 (A0, A1, A2, A3, A4, A5, A6, A7, S0, S0N, S1, S1N, S2, S2N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input A4;
	input A5;
	input A6;
	input A7;
	input S0;
	input S0N;
	input S1;
	input S1N;
	input S2;
	input S2N;
	output X;

	wire cus_mux41_out0;
	wire cus_mux41_out1;

	cus_mux41 cus_mux41_inst0(
	.A0 (A0),
	.A1 (A1),
	.A2 (A2),
	.A3 (A3),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_out0)
	);
	
	cus_mux41 cus_mux41_inst1(
	.A0 (A4),
	.A1 (A5),
	.A2 (A6),
	.A3 (A7),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_out1)
	);

	my_mux2 my_mux2_inst(
	.A0(cus_mux41_out0),
	.A1(cus_mux41_out1),
	.S (S2),
	.X (X)
	);
endmodule

module cus_mux81_buf (A0, A1, A2, A3, A4, A5, A6, A7, S0, S0N, S1, S1N, S2, S2N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input A4;
	input A5;
	input A6;
	input A7;
	input S0;
	input S0N;
	input S1;
	input S1N;
	input S2;
	input S2N;
	output X;

	wire cus_mux41_buf_out0;
	wire cus_mux41_buf_out1;

	cus_mux41_buf cus_mux41_buf_inst0(
	.A0 (A0),
	.A1 (A1),
	.A2 (A2),
	.A3 (A3),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_buf_out0)
	);
	
	cus_mux41_buf cus_mux41_buf_inst1(
	.A0 (A4),
	.A1 (A5),
	.A2 (A6),
	.A3 (A7),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_buf_out1)
	);

	my_mux2 my_mux2_inst(
	.A0(cus_mux41_buf_out0),
	.A1(cus_mux41_buf_out1),
	.S (S2),
	.X (X)
	);
endmodule

module cus_mux161 (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, S0, S0N, S1, S1N, S2, S2N, S3, S3N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input A4;
	input A5;
	input A6;
	input A7;
	input A8;
	input A9;
	input A10;
	input A11;
	input A12;
	input A13;
	input A14;
	input A15;
	input S0;
	input S0N;
	input S1;
	input S1N;
	input S2;
	input S2N;
	input S3;
	input S3N;
	output X;

	wire cus_mux41_out0;
	wire cus_mux41_out1;
	wire cus_mux41_out2;
	wire cus_mux41_out3;

	cus_mux41 cus_mux41_inst0(
	.A0 (A0),
	.A1 (A1),
	.A2 (A2),
	.A3 (A3),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_out0)
	);
	
	cus_mux41 cus_mux41_inst1(
	.A0 (A4),
	.A1 (A5),
	.A2 (A6),
	.A3 (A7),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_out1)
	);

	cus_mux41 cus_mux41_inst2(
	.A0 (A8),
	.A1 (A9),
	.A2 (A10),
	.A3 (A11),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_out2)
	);

	cus_mux41 cus_mux41_inst3(
	.A0 (A12),
	.A1 (A13),
	.A2 (A14),
	.A3 (A15),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_out3)
	);
	
	cus_mux41 cus_mux41_inst4(
	.A0 (cus_mux41_out0),
	.A1 (cus_mux41_out1),
	.A2 (cus_mux41_out2),
	.A3 (cus_mux41_out3),
	.S0 (S2),
	.S0N(S2N),
	.S1 (S3),
	.S1N(S3N),
	.X  (X)
	);
endmodule

module cus_mux161_buf (A0, A1, A2, A3, A4, A5, A6, A7, A8, A9, A10, A11, A12, A13, A14, A15, S0, S0N, S1, S1N, S2, S2N, S3, S3N, X);
	input A0;
	input A1;
	input A2;
	input A3;
	input A4;
	input A5;
	input A6;
	input A7;
	input A8;
	input A9;
	input A10;
	input A11;
	input A12;
	input A13;
	input A14;
	input A15;
	input S0;
	input S0N;
	input S1;
	input S1N;
	input S2;
	input S2N;
	input S3;
	input S3N;
	output X;

	wire cus_mux41_buf_out0;
	wire cus_mux41_buf_out1;
	wire cus_mux41_buf_out2;
	wire cus_mux41_buf_out3;

	cus_mux41_buf cus_mux41_buf_inst0(
	.A0 (A0),
	.A1 (A1),
	.A2 (A2),
	.A3 (A3),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_buf_out0)
	);
	
	cus_mux41_buf cus_mux41_buf_inst1(
	.A0 (A4),
	.A1 (A5),
	.A2 (A6),
	.A3 (A7),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_buf_out1)
	);

	cus_mux41_buf cus_mux41_buf_inst2(
	.A0 (A8),
	.A1 (A9),
	.A2 (A10),
	.A3 (A11),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_buf_out2)
	);

	cus_mux41_buf cus_mux41_buf_inst3(
	.A0 (A12),
	.A1 (A13),
	.A2 (A14),
	.A3 (A15),
	.S0 (S0),
	.S0N(S0N),
	.S1 (S1),
	.S1N(S1N),
	.X  (cus_mux41_buf_out3)
	);
	
	cus_mux41_buf cus_mux41_buf_inst4(
	.A0 (cus_mux41_buf_out0),
	.A1 (cus_mux41_buf_out1),
	.A2 (cus_mux41_buf_out2),
	.A3 (cus_mux41_buf_out3),
	.S0 (S2),
	.S0N(S2N),
	.S1 (S3),
	.S1N(S3N),
	.X  (X)
	);
endmodule

//-----------------------------------------

module SwapRails (A_t, A_f, Z_t, Z_f, swap);
    input  A_t;
    input  A_f;
    output Z_t;
    output Z_f;
	input  swap;

    my_mux2 inputAInv0(
        .A0(A_t),
        .A1(A_f),
        .S(swap),
        .X(Z_t)
	);

    my_mux2 inputAInv1(
        .A0(A_f),
        .A1(A_t),
        .S(swap),
        .X(Z_f)
	);

endmodule

//-----------------------------------------

module XOR_DRP(
	input  A_t,
	input  A_f,
	input  B_t,
	input  B_f,
	output Z_t,
	output Z_f);

    wire w0, w1, w2, w3;

	AND2 andInst0 (.A(A_t), .B(B_f), .Z(w0));
	AND2 andInst1 (.A(A_f), .B(B_t), .Z(w1));
	AND2 andInst2 (.A(A_t), .B(B_t), .Z(w2));
	AND2 andInst3 (.A(A_f), .B(B_f), .Z(w3));

	OR2  orInst1  (.A(w0), .B(w1), .Z(Z_t));
	OR2  orInst2  (.A(w2), .B(w3), .Z(Z_f));

endmodule

//-----------------------------------------

module AND_DRP(
	input  A_t,
	input  A_f,
	input  B_t,
	input  B_f,
	output Z_t,
	output Z_f);

    wire w0, w1, w2;

	AND2 andInst0 (.A(A_t), .B(B_t), .Z(Z_t));

	AND2 andInst1 (.A(A_t), .B(B_f), .Z(w0));
	AND2 andInst2 (.A(A_f), .B(B_t), .Z(w1));
	AND2 andInst3 (.A(A_f), .B(B_f), .Z(w2));

	OR3  orInst1  (.A(w0), .B(w1), .C(w2), .Z(Z_f));

endmodule

//-----------------------------------------

module Combined_DRP(
	input  A_t,
	input  A_f,
	input  B_t,
	input  B_f,
	input  isNonlinear,
	output Z_t,
	output Z_f);

    wire w0, w1, w2, w3;
	wire XOR_Z_t, XOR_Z_f, AND_Z_t, AND_Z_f;

	AND2 andInst0 (.A(A_t), .B(B_f), .Z(w0));
	AND2 andInst1 (.A(A_f), .B(B_t), .Z(w1));
	AND2 andInst2 (.A(A_t), .B(B_t), .Z(w2));
	AND2 andInst3 (.A(A_f), .B(B_f), .Z(w3));

	// -- XOR
	OR2  orInst1  (.A(w0), .B(w1), .Z(XOR_Z_t));
	OR2  orInst2  (.A(w2), .B(w3), .Z(XOR_Z_f));

	// -- AND
	OR2  orInst3  (.A(XOR_Z_t), .B(w3), .Z(AND_Z_f));
	assign AND_Z_t = w2;

	// -- select
    my_mux2 combined_select_t(
        .A0(XOR_Z_t),
        .A1(AND_Z_t),
        .S(isNonlinear),
        .X(Z_t)
	);

	my_mux2 combined_select_f(
        .A0(XOR_Z_f),
        .A1(AND_Z_f),
        .S(isNonlinear),
        .X(Z_f)
	);

endmodule



//-----------------------------------------

module AND2(
    input  A,
    input  B,
    output Z);
	
	assign Z = A & B;

endmodule	

//-----------------------------------------

module AND3(
    input  A,
	input  B,
	input  C,
    output Z);
	
	assign Z = A & B & C;

endmodule	

//-----------------------------------------

module OR2(
    input  A,
	input  B,
    output Z);
	
	assign Z = A | B;

endmodule	

//-----------------------------------------

module OR3(
    input  A,
	input  B,
	input  C,
    output Z);
	
	assign Z = A | B | C;

endmodule	

//-----------------------------------------

module OR6(
    input  A,
	input  B,
	input  C,
	input  D,
	input  E,
	input  F,
    output Z);
	
	assign Z = A | B | C | D | E | F;

endmodule

module n_input_and_gate #(parameter N = 2)(
    input wire [N-1:0] input_signals,
    output wire output_signal
);

assign output_signal = &input_signals;

endmodule

module prech_signal_module (
	input wire rst,
	input wire CLK,
	output reg prech1,
	output reg prech2
);

parameter S1 = 2'b0;
parameter S2 = 2'b1;

reg current_state;

always @(posedge CLK) begin // or rst

	if (rst == 1) begin
		prech1 <= 1'b0;
		prech2 <= 1'b0;
		current_state <= S1;
	end else begin	

		case (current_state)

			S1: begin
				prech1 <= 1'b1;
				prech2 <= 1'b0;
				current_state <= S2;
			end
			S2: begin
				prech1 <= 1'b0;
				prech2 <= 1'b1;
				current_state <= S1;
			end
			default: current_state <= S1;
    	endcase

	end
end

endmodule



module fault_detector  #(parameter Nm1 = 2, parameter Nm2 = 2, parameter Nctrl = 2)(
	input wire CLK,
	input wire rst,
	input wire prech1,
	input wire prech2,
	input wire [Nm1:0] f_m1,
	input wire [Nm2:0] f_m2,
	input wire [Nctrl:0] f_ctrl,
	output wire f_detected
);

wire f1, f2;
reg rf1, rf2;

assign f1 = |f_m1 | (|f_ctrl);
assign f2 = (|f_m2);

assign f_detected = rf2;

always @(posedge CLK) begin
	if (rst) begin
		rf1 <= 1'b0;
		rf2 <= 1'b0;
	end else begin
		rf1 <= f1 & prech1;
		rf2 <= rf1 | (f2 & prech2) | rf2;
	end
end

endmodule

/*
module Trivium_DRP  #(parameter output_bits = 64)(
    input  clk,
    input  rst,         // <- only on startup
    input  prech1,
    input  [79:0] key_t,
    input  [79:0] key_f,
    input  [79:0] iv_t,
    input  [79:0] iv_f,
    output [output_bits-1:0] stream_out_t,
    output [output_bits-1:0] stream_out_f);

    // --- internal wiring -----------------------------------------
    // states
    reg [287:0] stage0_state_t_reg;
    reg [287:0] stage0_state_f_reg;
    reg [287:0] stage1_state_t_reg;
    reg [287:0] stage1_state_f_reg;

    wire [((output_bits+1)*288)-1:0] state_t;
    wire [((output_bits+1)*288)-1:0] state_f;

    // state bit compuations
    wire [output_bits-1:0] t1_t;
    wire [output_bits-1:0] t1_f;

    wire [output_bits-1:0] t2_t;
    wire [output_bits-1:0] t2_f;

    wire [output_bits-1:0] t3_t;
    wire [output_bits-1:0] t3_f;

    wire [output_bits-1:0] state_t_174_AND_175;
    wire [output_bits-1:0] state_t_090_AND_091;
    wire [output_bits-1:0] state_t_285_AND_286;

    wire [output_bits-1:0] state_f_174_AND_175;
    wire [output_bits-1:0] state_f_090_AND_091;
    wire [output_bits-1:0] state_f_285_AND_286;
    
    wire [output_bits-1:0] state_t_t1_XOR_263;
    wire [output_bits-1:0] state_t_t2_XOR_170;
    wire [output_bits-1:0] state_t_t3_XOR_068;

    wire [output_bits-1:0] state_f_t1_XOR_263;
    wire [output_bits-1:0] state_f_t2_XOR_170;
    wire [output_bits-1:0] state_f_t3_XOR_068;

    wire [output_bits-1:0] t1_XOR_t2_t;
    wire [output_bits-1:0] t1_XOR_t2_f;
    
    // output wires
    wire [output_bits-1:0] stream_t;
    wire [output_bits-1:0] stream_f;

    // --- registers -----------------------------------------------
    always @(posedge clk) begin
        if (rst) begin
            // stage0
            stage0_state_t_reg <= 288'h00000000000000000000000000000000000000000000;
            stage0_state_f_reg <= 288'h00000000000000000000000000000000000000000000;

            // stage1
            stage1_state_t_reg <= {3'b111, 112'h0000000000000000000000000000, iv_t, 12'h000, 1'b0, key_t};
            stage1_state_f_reg <= {3'b000, 112'hffffffffffffffffffffffffffff, iv_f, 12'hfff, 1'b1, key_f};
        end
        else begin
            // stage0
            stage0_state_t_reg <= state_t[((output_bits+1)*288)-1:output_bits*288];
            stage0_state_f_reg <= state_f[((output_bits+1)*288)-1:output_bits*288];

            // stage1
            stage1_state_t_reg <= stage0_state_t_reg;
            stage1_state_f_reg <= stage0_state_f_reg;
        end
    end
    assign state_t[287:0] = stage1_state_t_reg;
    assign state_f[287:0] = stage1_state_f_reg;

    // --- state computation ---------------------------------------
    genvar i;
    generate 
        for (i = 288; i < ((output_bits+1)*288); i = i + 288) begin

            // state wiring
            assign state_t[i+287:i+178] = state_t[(i-288)+286:(i-288)+177];
            assign state_t[i+176:i+ 94] = state_t[(i-288)+175:(i-288)+ 93];
            assign state_t[i+ 92:i+  1] = state_t[(i-288)+ 91:(i-288)+  0];

            assign state_f[i+287:i+178] = state_f[(i-288)+286:(i-288)+177];
            assign state_f[i+176:i+ 94] = state_f[(i-288)+175:(i-288)+ 93];
            assign state_f[i+ 92:i+  1] = state_f[(i-288)+ 91:(i-288)+  0];

            // state computation bits
            XOR_DRP xorInst8  (.A_t(state_t[i-288+161]), .A_f(state_f[i-288+161]), .B_t(state_t[i-288+176]), .B_f(state_f[i-288+176]), .Z_t(t1_t[(i-288)/288]), .Z_f(t1_f[(i-288)/288]));
            XOR_DRP xorInst9  (.A_t(state_t[i-288+ 65]), .A_f(state_f[i-288+ 65]), .B_t(state_t[i-288+ 92]), .B_f(state_f[i-288+ 92]), .Z_t(t2_t[(i-288)/288]), .Z_f(t2_f[(i-288)/288]));
            XOR_DRP xorInst10 (.A_t(state_t[i-288+242]), .A_f(state_f[i-288+242]), .B_t(state_t[i-288+287]), .B_f(state_f[i-288+287]), .Z_t(t3_t[(i-288)/288]), .Z_f(t3_f[(i-288)/288]));
            
            // state bits 177, 93, 0
            AND_DRP andInst0 (.A_t(state_t[(i-288)+174]), .A_f(state_f[(i-288)+174]), .B_t(state_t[(i-288)+175]), .B_f(state_f[(i-288)+175]), .Z_t(state_t_174_AND_175[(i-288)/288]), .Z_f(state_f_174_AND_175[(i-288)/288]));
            AND_DRP andInst1 (.A_t(state_t[(i-288)+ 90]), .A_f(state_f[(i-288)+ 90]), .B_t(state_t[(i-288)+ 91]), .B_f(state_f[(i-288)+ 91]), .Z_t(state_t_090_AND_091[(i-288)/288]), .Z_f(state_f_090_AND_091[(i-288)/288]));
            AND_DRP andInst2 (.A_t(state_t[(i-288)+285]), .A_f(state_f[(i-288)+285]), .B_t(state_t[(i-288)+286]), .B_f(state_f[(i-288)+286]), .Z_t(state_t_285_AND_286[(i-288)/288]), .Z_f(state_f_285_AND_286[(i-288)/288]));

            XOR_DRP xorInst0 (.A_t(t1_t[(i-288)/288]), .A_f(t1_f[(i-288)/288]), .B_t(state_t[i-288+263]), .B_f(state_f[i-288+263]), .Z_t(state_t_t1_XOR_263[(i-288)/288]), .Z_f(state_f_t1_XOR_263[(i-288)/288]));
            XOR_DRP xorInst1 (.A_t(t2_t[(i-288)/288]), .A_f(t2_f[(i-288)/288]), .B_t(state_t[i-288+170]), .B_f(state_f[i-288+170]), .Z_t(state_t_t2_XOR_170[(i-288)/288]), .Z_f(state_f_t2_XOR_170[(i-288)/288]));
            XOR_DRP xorInst2 (.A_t(t3_t[(i-288)/288]), .A_f(t3_f[(i-288)/288]), .B_t(state_t[i-288+ 68]), .B_f(state_f[i-288+ 68]), .Z_t(state_t_t3_XOR_068[(i-288)/288]), .Z_f(state_f_t3_XOR_068[(i-288)/288]));

            XOR_DRP xorInst3 (.A_t(state_t_174_AND_175[(i-288)/288]), .A_f(state_f_174_AND_175[(i-288)/288]), .B_t(state_t_t1_XOR_263[(i-288)/288]), .B_f(state_f_t1_XOR_263[(i-288)/288]), .Z_t(state_t[i+177]), .Z_f(state_f[i+177]));
            XOR_DRP xorInst4 (.A_t(state_t_090_AND_091[(i-288)/288]), .A_f(state_f_090_AND_091[(i-288)/288]), .B_t(state_t_t2_XOR_170[(i-288)/288]), .B_f(state_f_t2_XOR_170[(i-288)/288]), .Z_t(state_t[i+ 93]), .Z_f(state_f[i+ 93]));
            XOR_DRP xorInst5 (.A_t(state_t_285_AND_286[(i-288)/288]), .A_f(state_f_285_AND_286[(i-288)/288]), .B_t(state_t_t3_XOR_068[(i-288)/288]), .B_f(state_f_t3_XOR_068[(i-288)/288]), .Z_t(state_t[i+  0]), .Z_f(state_f[i+  0]));

            // output
            XOR_DRP xorInst6 (.A_t(t1_t[output_bits-(i/288)]), .A_f(t1_f[output_bits-(i/288)]), .B_t(t2_t[output_bits-(i/288)]), .B_f(t2_f[output_bits-(i/288)]), .Z_t(t1_XOR_t2_t[(i-288)/288]), .Z_f(t1_XOR_t2_f[(i-288)/288]));
            XOR_DRP xorInst7 (.A_t(t3_t[output_bits-(i/288)]), .A_f(t3_f[output_bits-(i/288)]), .B_t(t1_XOR_t2_t[(i-288)/288]), .B_f(t1_XOR_t2_f[(i-288)/288]), .Z_t(stream_t[(i/288)-1]), .Z_f(stream_f[(i/288)-1]));

        end
    endgenerate
    
    // output selection
    assign stream_out_t = (prech1) ? stream_t : 0;
	assign stream_out_f = (prech1) ? stream_f : 0;

endmodule
*/

module Trivium_DRP  #(parameter output_bits = 64)(
    input  clk,
    input  rst,         // <- only on startup
    input  prech1,
    input  [79:0] key_t,
    input  [79:0] key_f,
    input  [79:0] iv_t,
    input  [79:0] iv_f,
    output [output_bits-1:0] stream_out_t,
    output [output_bits-1:0] stream_out_f);

    reg [output_bits-1:0] stream_t;
    reg [output_bits-1:0] stream_f;

    always @(posedge clk) begin
		stream_t <= {output_bits{1'b0}};
		stream_f <= {output_bits{1'b1}};
    end
    
    // output selection
    assign stream_out_t = (prech1) ? stream_t : 0;
	assign stream_out_f = (prech1) ? stream_f : 0;

endmodule