module nonlinear_WDDL_primitive #(parameter CA=1'b0, parameter CB=1'b0, parameter CZ=1'b0, parameter FF=1'b0)(
	input  A0_t, B0_t, A0_f, B0_f, CLK,
	output Z0_t, Z0_f);
	
endmodule

module linear_WDDL_primitive #(parameter CA=1'b0, parameter CB=1'b0, parameter CZ=1'b0, parameter FF=1'b0)(
	input  A0_t, B0_t, A0_f, B0_f, CLK,
	output Z0_t, Z0_f);
	
endmodule

module nonlinear_LMDPL_primitive #(parameter CA=1'b0, parameter CB=1'b0, parameter CZ=1'b0, parameter FF=1'b0)(
	input  A0_t, B0_t, A0_f, B0_f,
	input  A1_t, B1_t, A1_f, B1_f, CLK,
	output Z0_t, Z0_f,
	output Z1_t, Z1_f);
	
endmodule

module linear_LMDPL_primitive #(parameter CA=1'b0, parameter CB=1'b0, parameter CZ=1'b0, parameter FF=1'b0)(
	input  A0_t, B0_t, A0_f, B0_f,
	input  A1_t, B1_t, A1_f, B1_f, CLK,
	output Z0_t, Z0_f,
	output Z1_t, Z1_f);
	
endmodule


module top(input wire clk, pre1, pre2, input wire [20:0] io_in_0t, io_in_0f, io_in_1t, io_in_1f, output wire [20:0] io_out_0t, io_out_0f, io_out_1t, io_out_1f, io_oeb);

    // internal wiring
    wire [7:0] X0_t, X0_f, X1_t, X1_f;
    wire [7:0] O0_t, O0_f, O1_t, O1_f;

    wire T1_0_t, T2_0_t, T3_0_t, T4_0_t, T5_0_t, T6_0_t, T7_0_t, T8_0_t, T9_0_t, T10_0_t, T11_0_t, T12_0_t, T13_0_t, T14_0_t, T15_0_t, T16_0_t, T17_0_t, T18_0_t, T19_0_t, T20_0_t, T21_0_t, T22_0_t, T23_0_t, T24_0_t, T25_0_t, T26_0_t, T27_0_t;
    wire T1_0_f, T2_0_f, T3_0_f, T4_0_f, T5_0_f, T6_0_f, T7_0_f, T8_0_f, T9_0_f, T10_0_f, T11_0_f, T12_0_f, T13_0_f, T14_0_f, T15_0_f, T16_0_f, T17_0_f, T18_0_f, T19_0_f, T20_0_f, T21_0_f, T22_0_f, T23_0_f, T24_0_f, T25_0_f, T26_0_f, T27_0_f;
    wire T1_1_t, T2_1_t, T3_1_t, T4_1_t, T5_1_t, T6_1_t, T7_1_t, T8_1_t, T9_1_t, T10_1_t, T11_1_t, T12_1_t, T13_1_t, T14_1_t, T15_1_t, T16_1_t, T17_1_t, T18_1_t, T19_1_t, T20_1_t, T21_1_t, T22_1_t, T23_1_t, T24_1_t, T25_1_t, T26_1_t, T27_1_t;
    wire T1_1_f, T2_1_f, T3_1_f, T4_1_f, T5_1_f, T6_1_f, T7_1_f, T8_1_f, T9_1_f, T10_1_f, T11_1_f, T12_1_f, T13_1_f, T14_1_f, T15_1_f, T16_1_f, T17_1_f, T18_1_f, T19_1_f, T20_1_f, T21_1_f, T22_1_f, T23_1_f, T24_1_f, T25_1_f, T26_1_f, T27_1_f;

    wire M1_0_t, M2_0_t, M3_0_t, M4_0_t, M5_0_t, M6_0_t, M7_0_t, M8_0_t, M9_0_t, M10_0_t, M11_0_t, M12_0_t, M13_0_t, M14_0_t, M15_0_t, M16_0_t, M17_0_t, M18_0_t, M19_0_t, M20_0_t, M21_0_t, M22_0_t, M23_0_t, M24_0_t, M25_0_t, M26_0_t, M27_0_t, M28_0_t, M29_0_t, M30_0_t, M31_0_t, M32_0_t, M33_0_t, M34_0_t, M35_0_t, M36_0_t, M37_0_t, M38_0_t, M39_0_t, M40_0_t, M41_0_t, M42_0_t, M43_0_t, M44_0_t, M45_0_t, M46_0_t, M47_0_t, M48_0_t, M49_0_t, M50_0_t, M51_0_t, M52_0_t, M53_0_t, M54_0_t, M55_0_t, M56_0_t, M57_0_t, M58_0_t, M59_0_t, M60_0_t, M61_0_t, M62_0_t, M63_0_t;
    wire M1_0_f, M2_0_f, M3_0_f, M4_0_f, M5_0_f, M6_0_f, M7_0_f, M8_0_f, M9_0_f, M10_0_f, M11_0_f, M12_0_f, M13_0_f, M14_0_f, M15_0_f, M16_0_f, M17_0_f, M18_0_f, M19_0_f, M20_0_f, M21_0_f, M22_0_f, M23_0_f, M24_0_f, M25_0_f, M26_0_f, M27_0_f, M28_0_f, M29_0_f, M30_0_f, M31_0_f, M32_0_f, M33_0_f, M34_0_f, M35_0_f, M36_0_f, M37_0_f, M38_0_f, M39_0_f, M40_0_f, M41_0_f, M42_0_f, M43_0_f, M44_0_f, M45_0_f, M46_0_f, M47_0_f, M48_0_f, M49_0_f, M50_0_f, M51_0_f, M52_0_f, M53_0_f, M54_0_f, M55_0_f, M56_0_f, M57_0_f, M58_0_f, M59_0_f, M60_0_f, M61_0_f, M62_0_f, M63_0_f;
    wire M1_1_t, M2_1_t, M3_1_t, M4_1_t, M5_1_t, M6_1_t, M7_1_t, M8_1_t, M9_1_t, M10_1_t, M11_1_t, M12_1_t, M13_1_t, M14_1_t, M15_1_t, M16_1_t, M17_1_t, M18_1_t, M19_1_t, M20_1_t, M21_1_t, M22_1_t, M23_1_t, M24_1_t, M25_1_t, M26_1_t, M27_1_t, M28_1_t, M29_1_t, M30_1_t, M31_1_t, M32_1_t, M33_1_t, M34_1_t, M35_1_t, M36_1_t, M37_1_t, M38_1_t, M39_1_t, M40_1_t, M41_1_t, M42_1_t, M43_1_t, M44_1_t, M45_1_t, M46_1_t, M47_1_t, M48_1_t, M49_1_t, M50_1_t, M51_1_t, M52_1_t, M53_1_t, M54_1_t, M55_1_t, M56_1_t, M57_1_t, M58_1_t, M59_1_t, M60_1_t, M61_1_t, M62_1_t, M63_1_t;
    wire M1_1_f, M2_1_f, M3_1_f, M4_1_f, M5_1_f, M6_1_f, M7_1_f, M8_1_f, M9_1_f, M10_1_f, M11_1_f, M12_1_f, M13_1_f, M14_1_f, M15_1_f, M16_1_f, M17_1_f, M18_1_f, M19_1_f, M20_1_f, M21_1_f, M22_1_f, M23_1_f, M24_1_f, M25_1_f, M26_1_f, M27_1_f, M28_1_f, M29_1_f, M30_1_f, M31_1_f, M32_1_f, M33_1_f, M34_1_f, M35_1_f, M36_1_f, M37_1_f, M38_1_f, M39_1_f, M40_1_f, M41_1_f, M42_1_f, M43_1_f, M44_1_f, M45_1_f, M46_1_f, M47_1_f, M48_1_f, M49_1_f, M50_1_f, M51_1_f, M52_1_f, M53_1_f, M54_1_f, M55_1_f, M56_1_f, M57_1_f, M58_1_f, M59_1_f, M60_1_f, M61_1_f, M62_1_f, M63_1_f;

    wire L0_0_t, L1_0_t, L2_0_t, L3_0_t, L4_0_t, L5_0_t, L6_0_t, L7_0_t, L8_0_t, L9_0_t, L10_0_t, L11_0_t, L12_0_t, L13_0_t, L14_0_t, L15_0_t, L16_0_t, L17_0_t, L18_0_t, L19_0_t, L20_0_t, L21_0_t, L22_0_t, L23_0_t, L24_0_t, L25_0_t, L26_0_t, L27_0_t, L28_0_t, L29_0_t;
    wire L0_0_f, L1_0_f, L2_0_f, L3_0_f, L4_0_f, L5_0_f, L6_0_f, L7_0_f, L8_0_f, L9_0_f, L10_0_f, L11_0_f, L12_0_f, L13_0_f, L14_0_f, L15_0_f, L16_0_f, L17_0_f, L18_0_f, L19_0_f, L20_0_f, L21_0_f, L22_0_f, L23_0_f, L24_0_f, L25_0_f, L26_0_f, L27_0_f, L28_0_f, L29_0_f;
    wire L0_1_t, L1_1_t, L2_1_t, L3_1_t, L4_1_t, L5_1_t, L6_1_t, L7_1_t, L8_1_t, L9_1_t, L10_1_t, L11_1_t, L12_1_t, L13_1_t, L14_1_t, L15_1_t, L16_1_t, L17_1_t, L18_1_t, L19_1_t, L20_1_t, L21_1_t, L22_1_t, L23_1_t, L24_1_t, L25_1_t, L26_1_t, L27_1_t, L28_1_t, L29_1_t;
    wire L0_1_f, L1_1_f, L2_1_f, L3_1_f, L4_1_f, L5_1_f, L6_1_f, L7_1_f, L8_1_f, L9_1_f, L10_1_f, L11_1_f, L12_1_f, L13_1_f, L14_1_f, L15_1_f, L16_1_f, L17_1_f, L18_1_f, L19_1_f, L20_1_f, L21_1_f, L22_1_f, L23_1_f, L24_1_f, L25_1_f, L26_1_f, L27_1_f, L28_1_f, L29_1_f;

//-------    

    wire [7:0] value_in_s0_t, value_in_s0_f ;
    wire [7:0] value_in_s1_t, value_in_s1_f ;
    wire [3:0] start_t, start_f ;
    wire rst_t, rst_f ;
    wire [7:0] value_out_s0_t, value_out_s0_f ;
    wire [7:0] value_out_s1_t, value_out_s1_f ;
    wire [7:0] Sbox_in_s0_t, Sbox_in_s0_f ;
    wire [7:0] Sbox_in_s1_t, Sbox_in_s1_f ;
    
    wire n8_t, n8_f ;
    wire n9_t, n9_f ;
    wire M1_gen_loop_0__M_Y_t, M1_gen_loop_0__M_Y_f ;
    wire M1_gen_loop_0__M_X_t, M1_gen_loop_0__M_X_f ;
    wire M1_gen_loop_1__M_Y_t, M1_gen_loop_1__M_Y_f ;
    wire M1_gen_loop_1__M_X_t, M1_gen_loop_1__M_X_f ;
    wire M1_gen_loop_2__M_Y_t, M1_gen_loop_2__M_Y_f ;
    wire M1_gen_loop_2__M_X_t, M1_gen_loop_2__M_X_f ;
    wire M1_gen_loop_3__M_Y_t, M1_gen_loop_3__M_Y_f ;
    wire M1_gen_loop_3__M_X_t, M1_gen_loop_3__M_X_f ;
    wire M1_gen_loop_4__M_Y_t, M1_gen_loop_4__M_Y_f ;
    wire M1_gen_loop_4__M_X_t, M1_gen_loop_4__M_X_f ;
    wire M1_gen_loop_5__M_Y_t, M1_gen_loop_5__M_Y_f ;
    wire M1_gen_loop_5__M_X_t, M1_gen_loop_5__M_X_f ;
    wire M1_gen_loop_6__M_Y_t, M1_gen_loop_6__M_Y_f ;
    wire M1_gen_loop_6__M_X_t, M1_gen_loop_6__M_X_f ;
    wire M1_gen_loop_7__M_Y_t, M1_gen_loop_7__M_Y_f ;
    wire M1_gen_loop_7__M_X_t, M1_gen_loop_7__M_X_f ;
    wire M2_gen_loop_0__M_Y_t, M2_gen_loop_0__M_Y_f ;
    wire M2_gen_loop_0__M_X_t, M2_gen_loop_0__M_X_f ;
    wire M2_gen_loop_1__M_Y_t, M2_gen_loop_1__M_Y_f ;
    wire M2_gen_loop_1__M_X_t, M2_gen_loop_1__M_X_f ;
    wire M2_gen_loop_2__M_Y_t, M2_gen_loop_2__M_Y_f ;
    wire M2_gen_loop_2__M_X_t, M2_gen_loop_2__M_X_f ;
    wire M2_gen_loop_3__M_Y_t, M2_gen_loop_3__M_Y_f ;
    wire M2_gen_loop_3__M_X_t, M2_gen_loop_3__M_X_f ;
    wire [3:1] Inc_out_t, Inc_out_f ;
    wire [3:0] Inc_Reg_t, Inc_Reg_f ;
    wire [3:0] Inc_in_t, Inc_in_f ;
    wire new_AGEMA_signal_84_t, new_AGEMA_signal_84_f ;
    wire new_AGEMA_signal_87_t, new_AGEMA_signal_87_f ;
    wire new_AGEMA_signal_90_t, new_AGEMA_signal_90_f ;
    wire new_AGEMA_signal_93_t, new_AGEMA_signal_93_f ;
    wire new_AGEMA_signal_96_t, new_AGEMA_signal_96_f ;
    wire new_AGEMA_signal_99_t, new_AGEMA_signal_99_f ;
    wire new_AGEMA_signal_102_t, new_AGEMA_signal_102_f ;
    wire new_AGEMA_signal_105_t, new_AGEMA_signal_105_f ;
    wire new_AGEMA_signal_106_t, new_AGEMA_signal_106_f ;
    wire new_AGEMA_signal_107_t, new_AGEMA_signal_107_f ;
    wire new_AGEMA_signal_108_t, new_AGEMA_signal_108_f ;
    wire new_AGEMA_signal_109_t, new_AGEMA_signal_109_f ;
    wire new_AGEMA_signal_110_t, new_AGEMA_signal_110_f ;
    wire new_AGEMA_signal_111_t, new_AGEMA_signal_111_f ;
    wire new_AGEMA_signal_112_t, new_AGEMA_signal_112_f ;
    wire new_AGEMA_signal_113_t, new_AGEMA_signal_113_f ;

    // inputs
    assign value_in_s0_t[0] = io_in_0t[0];
    assign value_in_s0_f[0] = io_in_0f[0];
    assign value_in_s1_t[0] = io_in_1t[0];
    assign value_in_s1_f[0] = io_in_1f[0];
    
    assign value_in_s0_t[1] = io_in_0t[1];
    assign value_in_s0_f[1] = io_in_0f[1];
    assign value_in_s1_t[1] = io_in_1t[1];
    assign value_in_s1_f[1] = io_in_1f[1];

    assign value_in_s0_t[2] = io_in_0t[2];
    assign value_in_s0_f[2] = io_in_0f[2];
    assign value_in_s1_t[2] = io_in_1t[2];
    assign value_in_s1_f[2] = io_in_1f[2];

    assign value_in_s0_t[3] = io_in_0t[3];
    assign value_in_s0_f[3] = io_in_0f[3];
    assign value_in_s1_t[3] = io_in_1t[3];
    assign value_in_s1_f[3] = io_in_1f[3]; 

    assign value_in_s0_t[4] = io_in_0t[4];
    assign value_in_s0_f[4] = io_in_0f[4];
    assign value_in_s1_t[4] = io_in_1t[4];
    assign value_in_s1_f[4] = io_in_1f[4];

    assign value_in_s0_t[5] = io_in_0t[5];
    assign value_in_s0_f[5] = io_in_0f[5];
    assign value_in_s1_t[5] = io_in_1t[5];
    assign value_in_s1_f[5] = io_in_1f[5];

    assign value_in_s0_t[6] = io_in_0t[6];
    assign value_in_s0_f[6] = io_in_0f[6];
    assign value_in_s1_t[6] = io_in_1t[6];
    assign value_in_s1_f[6] = io_in_1f[6]; 

    assign value_in_s0_t[7] = io_in_0t[7];
    assign value_in_s0_f[7] = io_in_0f[7];
    assign value_in_s1_t[7] = io_in_1t[7];
    assign value_in_s1_f[7] = io_in_1f[7];

    assign start_t[0] = io_in_0t[8];
    assign start_f[0] = io_in_0f[8];
    
    assign start_t[1] = io_in_0t[9];
    assign start_f[1] = io_in_0f[9];

    assign start_t[2] = io_in_0t[10];
    assign start_f[2] = io_in_0f[10];

    assign start_t[3] = io_in_0t[11];
    assign start_f[3] = io_in_0f[11];

    assign rst_t = io_in_0t[12];
    assign rst_f = io_in_0f[12];

    // outputs
    assign io_out_0t[13] = value_out_s0_t[0];
    assign io_out_0f[13] = value_out_s0_f[0];
    assign io_out_1t[13] = value_out_s1_t[0];
    assign io_out_1f[13] = value_out_s1_f[0];

    assign io_out_0t[14] = value_out_s0_t[1];
    assign io_out_0f[14] = value_out_s0_f[1];
    assign io_out_1t[14] = value_out_s1_t[1];
    assign io_out_1f[14] = value_out_s1_f[1];

    assign io_out_0t[15] = value_out_s0_t[2];
    assign io_out_0f[15] = value_out_s0_f[2];
    assign io_out_1t[15] = value_out_s1_t[2];
    assign io_out_1f[15] = value_out_s1_f[2];

    assign io_out_0t[16] = value_out_s0_t[3];
    assign io_out_0f[16] = value_out_s0_f[3];
    assign io_out_1t[16] = value_out_s1_t[3];
    assign io_out_1f[16] = value_out_s1_f[3];
    
    assign io_out_0t[17] = value_out_s0_t[4];
    assign io_out_0f[17] = value_out_s0_f[4];
    assign io_out_1t[17] = value_out_s1_t[4];
    assign io_out_1f[17] = value_out_s1_f[4];

    assign io_out_0t[18] = value_out_s0_t[5];
    assign io_out_0f[18] = value_out_s0_f[5];
    assign io_out_1t[18] = value_out_s1_t[5];
    assign io_out_1f[18] = value_out_s1_f[5];
    
    assign io_out_0t[19] = value_out_s0_t[6];
    assign io_out_0f[19] = value_out_s0_f[6];
    assign io_out_1t[19] = value_out_s1_t[6];
    assign io_out_1f[19] = value_out_s1_f[6];

    assign io_out_0t[20] = value_out_s0_t[7];
    assign io_out_0f[20] = value_out_s0_f[7];
    assign io_out_1t[20] = value_out_s1_t[7];
    assign io_out_1f[20] = value_out_s1_f[7];

//----------------
    
    //AND2_X1 U14 ( .A1 (Inc_in[0]), .A2 (Inc_in[1]), .ZN (n8) ) ;
    (* Keep *) nonlinear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) U14 ( .A0_t (Inc_in_t[0]), .B0_t (Inc_in_t[1]), .A0_f (Inc_in_f[0]), .B0_f (Inc_in_f[1]), .Z0_t (n8_t), .Z0_f (n8_f), .CLK(clk));
    
    //AND2_X1 M2_gen_loop_0__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_0__M_X), .ZN (M2_gen_loop_0__M_Y) ) ;
    (* Keep *) nonlinear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_0__M_A_U1 ( .A0_t (rst_t), .B0_t (M2_gen_loop_0__M_X_t), .A0_f (rst_f), .B0_f (M2_gen_loop_0__M_X_f), .Z0_t (M2_gen_loop_0__M_Y_t), .Z0_f (M2_gen_loop_0__M_Y_f), .CLK(clk));

    //AND2_X1 M2_gen_loop_1__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_1__M_X), .ZN (M2_gen_loop_1__M_Y) ) ;
    (* Keep *) nonlinear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_1__M_A_U1 ( .A0_t (rst_t), .B0_t (M2_gen_loop_1__M_X_t), .A0_f (rst_f), .B0_f (M2_gen_loop_1__M_X_f), .Z0_t (M2_gen_loop_1__M_Y_t), .Z0_f (M2_gen_loop_1__M_Y_f), .CLK(clk));

    //AND2_X1 M2_gen_loop_2__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_2__M_X), .ZN (M2_gen_loop_2__M_Y) ) ;
    (* Keep *) nonlinear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_2__M_A_U1 ( .A0_t (rst_t), .B0_t (M2_gen_loop_2__M_X_t), .A0_f (rst_f), .B0_f (M2_gen_loop_2__M_X_f), .Z0_t (M2_gen_loop_2__M_Y_t), .Z0_f (M2_gen_loop_2__M_Y_f), .CLK(clk));

    //AND2_X1 M2_gen_loop_3__M_A_U1 ( .A1 (rst), .A2 (M2_gen_loop_3__M_X), .ZN (M2_gen_loop_3__M_Y) ) ;
    (* Keep *) nonlinear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_3__M_A_U1 ( .A0_t (rst_t), .B0_t (M2_gen_loop_3__M_X_t), .A0_f (rst_f), .B0_f (M2_gen_loop_3__M_X_f), .Z0_t (M2_gen_loop_3__M_Y_t), .Z0_f (M2_gen_loop_3__M_Y_f), .CLK(clk));
    
    
    //NAND2_X1 U18 ( .A1 (n8), .A2 (Inc_in[2]), .ZN (n9) ) ;
    (* Keep *) nonlinear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b1), .FF(1'b0)) U18 ( .A0_t (n8_t), .B0_t (Inc_in_t[2]), .A0_f (n8_f), .B0_f (Inc_in_f[2]), .Z0_t (n9_t), .Z0_f (n9_f), .CLK(clk));


    //XOR2_X1 M2_gen_loop_0__M_X1_U1 ( .A1 (Inc_Reg[0]), .A2 (start[0]), .ZN (M2_gen_loop_0__M_X) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_0__M_X1_U1 ( .A0_t (Inc_Reg_t[0]), .B0_t (start_t[0]), .A0_f (Inc_Reg_f[0]), .B0_f (start_f[0]), .Z0_t (M2_gen_loop_0__M_X_t), .Z0_f (M2_gen_loop_0__M_X_f), .CLK(clk));

    //XOR2_X1 M2_gen_loop_1__M_X1_U1 ( .A1 (Inc_Reg[1]), .A2 (start[1]), .ZN (M2_gen_loop_1__M_X) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_1__M_X1_U1 ( .A0_t (Inc_Reg_t[1]), .B0_t (start_t[1]), .A0_f (Inc_Reg_f[1]), .B0_f (start_f[1]), .Z0_t (M2_gen_loop_1__M_X_t), .Z0_f (M2_gen_loop_1__M_X_f), .CLK(clk));

    //XOR2_X1 M2_gen_loop_1__M_X2_U1 ( .A1 (M2_gen_loop_1__M_Y), .A2 (Inc_Reg[1]), .ZN (Inc_in[1]) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_1__M_X2_U1 ( .A0_t (M2_gen_loop_1__M_Y_t), .B0_t (Inc_Reg_t[1]), .A0_f (M2_gen_loop_1__M_Y_f), .B0_f (Inc_Reg_f[1]), .Z0_t (Inc_in_t[1]), .Z0_f (Inc_in_f[1]), .CLK(clk));

    //XOR2_X1 M2_gen_loop_2__M_X1_U1 ( .A1 (Inc_Reg[2]), .A2 (start[2]), .ZN (M2_gen_loop_2__M_X) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_2__M_X1_U1 ( .A0_t (Inc_Reg_t[2]), .B0_t (start_t[2]), .A0_f (Inc_Reg_f[2]), .B0_f (start_f[2]), .Z0_t (M2_gen_loop_2__M_X_t), .Z0_f (M2_gen_loop_2__M_X_f), .CLK(clk));

    //XOR2_X1 M2_gen_loop_2__M_X2_U1 ( .A1 (M2_gen_loop_2__M_Y), .A2 (Inc_Reg[2]), .ZN (Inc_in[2]) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_2__M_X2_U1 ( .A0_t (M2_gen_loop_2__M_Y_t), .B0_t (Inc_Reg_t[2]), .A0_f (M2_gen_loop_2__M_Y_f), .B0_f (Inc_Reg_f[2]), .Z0_t (Inc_in_t[2]), .Z0_f (Inc_in_f[2]), .CLK(clk));

    //XOR2_X1 M2_gen_loop_3__M_X1_U1 ( .A1 (Inc_Reg[3]), .A2 (start[3]), .ZN (M2_gen_loop_3__M_X) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_3__M_X1_U1 ( .A0_t (Inc_Reg_t[3]), .B0_t (start_t[3]), .A0_f (Inc_Reg_f[3]), .B0_f (start_f[3]), .Z0_t (M2_gen_loop_3__M_X_t), .Z0_f (M2_gen_loop_3__M_X_f), .CLK(clk));

    //XOR2_X1 M2_gen_loop_3__M_X2_U1 ( .A1 (M2_gen_loop_3__M_Y), .A2 (Inc_Reg[3]), .ZN (Inc_in[3]) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_3__M_X2_U1 ( .A0_t (M2_gen_loop_3__M_Y_t), .B0_t (Inc_Reg_t[3]), .A0_f (M2_gen_loop_3__M_Y_f), .B0_f (Inc_Reg_f[3]), .Z0_t (Inc_in_t[3]), .Z0_f (Inc_in_f[3]), .CLK(clk));
    
//----------------

    //XOR2_X1 M2_gen_loop_0__M_X2_U1 ( .A1 (M2_gen_loop_0__M_Y), .A2 (Inc_Reg[0]), .ZN (Inc_in[0]) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M2_gen_loop_0__M_X2_U1 ( .A0_t (M2_gen_loop_0__M_Y_t), .B0_t (Inc_Reg_t[0]), .A0_f (M2_gen_loop_0__M_Y_f), .B0_f (Inc_Reg_f[0]), .Z0_t (Inc_in_t[0]), .Z0_f (Inc_in_f[0]), .CLK(clk));
        
    //DFF_X1 R2_gen_loop_0__R_Q_reg ( .D (~Inc_in[0]), .CK (clk_gated), .Q (Inc_Reg[0]), .QN () ) ;  
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b1), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) M2_gen_loop_0__M_X2_U1F (.A0_t(Inc_in_t[0]), .B0_t(1'b0), .A0_f(Inc_in_f[0]), .B0_f(pre1), .Z0_t(Inc_Reg_t[0]), .Z0_f(Inc_Reg_f[0]), .CLK(clk));
       
    //XNOR2_X1 U16 ( .A1 (Inc_in[1]), .A2 (~Inc_in[0]), .ZN (Inc_out[1]) ) ;
    //DFF_X1 R2_gen_loop_1__R_Q_reg ( .D (Inc_out[1]), .CK (clk_gated), .Q (Inc_Reg[1]), .QN () ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b1), .CZ(1'b1), .FF(1'b1)) U16 ( .A0_t (Inc_in_t[1]), .B0_t (Inc_in_t[0]), .A0_f (Inc_in_f[1]), .B0_f (Inc_in_f[0]), .Z0_t (Inc_Reg_t[1]), .Z0_f (Inc_Reg_f[1]), .CLK(clk));
    
    //XOR2_X1 U17 ( .A1 (n8), .A2 (Inc_in[2]), .ZN (Inc_out[2]) ) ;
    //DFF_X1 R2_gen_loop_2__R_Q_reg ( .D (Inc_out[2]), .CK (clk_gated), .Q (Inc_Reg[2]), .QN () ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) U17 ( .A0_t (n8_t), .B0_t (Inc_in_t[2]), .A0_f (n8_f), .B0_f (Inc_in_f[2]), .Z0_t (Inc_Reg_t[2]), .Z0_f (Inc_Reg_f[2]), .CLK(clk));
    
    //XNOR2_X1 U19 ( .A1 (Inc_in[3]), .A2 (n9), .ZN (Inc_out[3]) ) ;
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b1), .FF(1'b0)) U19 ( .A0_t (Inc_in_t[3]), .B0_t (n9_t), .A0_f (Inc_in_f[3]), .B0_f (n9_f), .Z0_t (Inc_out_t[3]), .Z0_f (Inc_out_f[3]), .CLK(clk));

    //DFF_X1 R2_gen_loop_3__R_Q_reg ( .D (Inc_out[3]), .CK (clk_gated), .Q (Inc_Reg[3]), .QN () ) ;  
    (* Keep *)    linear_WDDL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) U19F (.A0_t(Inc_out_t[3]), .B0_t(1'b0), .A0_f(Inc_out_f[3]), .B0_f(pre1), .Z0_t(Inc_Reg_t[3]), .Z0_f(Inc_Reg_f[3]), .CLK(clk));
    
//----------------
       
    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_0__M_X1_U1 ( .a ({value_in_s1[0], value_in_s0[0]}), .b ({value_out_s1[0], value_out_s0[0]}), .c ({new_AGEMA_signal_84, M1_gen_loop_0__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_0__M_X1_U1 (.A0_t(value_in_s0_t[0]), .B0_t(value_out_s0_t[0]), .A0_f(value_in_s0_f[0]), .B0_f(value_out_s0_f[0]), .A1_t(value_in_s1_t[0]), .B1_t(value_out_s1_t[0]), .A1_f(value_in_s1_f[0]), .B1_f(value_out_s1_f[0]), .Z0_t(M1_gen_loop_0__M_X_t), .Z0_f(M1_gen_loop_0__M_X_f), .Z1_t(new_AGEMA_signal_84_t), .Z1_f(new_AGEMA_signal_84_f), .CLK(clk));
    
    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_1__M_X1_U1 ( .a ({value_in_s1[1], value_in_s0[1]}), .b ({value_out_s1[1], value_out_s0[1]}), .c ({new_AGEMA_signal_87, M1_gen_loop_1__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_1__M_X1_U1 (.A0_t(value_in_s0_t[1]), .B0_t(value_out_s0_t[1]), .A0_f(value_in_s0_f[1]), .B0_f(value_out_s0_f[1]), .A1_t(value_in_s1_t[1]), .B1_t(value_out_s1_t[1]), .A1_f(value_in_s1_f[1]), .B1_f(value_out_s1_f[1]), .Z0_t(M1_gen_loop_1__M_X_t), .Z0_f(M1_gen_loop_1__M_X_f), .Z1_t(new_AGEMA_signal_87_t), .Z1_f(new_AGEMA_signal_87_f), .CLK(clk));
    
    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_2__M_X1_U1 ( .a ({value_in_s1[2], value_in_s0[2]}), .b ({value_out_s1[2], value_out_s0[2]}), .c ({new_AGEMA_signal_90, M1_gen_loop_2__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_2__M_X1_U1 (.A0_t(value_in_s0_t[2]), .B0_t(value_out_s0_t[2]), .A0_f(value_in_s0_f[2]), .B0_f(value_out_s0_f[2]), .A1_t(value_in_s1_t[2]), .B1_t(value_out_s1_t[2]), .A1_f(value_in_s1_f[2]), .B1_f(value_out_s1_f[2]), .Z0_t(M1_gen_loop_2__M_X_t), .Z0_f(M1_gen_loop_2__M_X_f), .Z1_t(new_AGEMA_signal_90_t), .Z1_f(new_AGEMA_signal_90_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_3__M_X1_U1 ( .a ({value_in_s1[3], value_in_s0[3]}), .b ({value_out_s1[3], value_out_s0[3]}), .c ({new_AGEMA_signal_93, M1_gen_loop_3__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_3__M_X1_U1 (.A0_t(value_in_s0_t[3]), .B0_t(value_out_s0_t[3]), .A0_f(value_in_s0_f[3]), .B0_f(value_out_s0_f[3]), .A1_t(value_in_s1_t[3]), .B1_t(value_out_s1_t[3]), .A1_f(value_in_s1_f[3]), .B1_f(value_out_s1_f[3]), .Z0_t(M1_gen_loop_3__M_X_t), .Z0_f(M1_gen_loop_3__M_X_f), .Z1_t(new_AGEMA_signal_93_t), .Z1_f(new_AGEMA_signal_93_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_4__M_X1_U1 ( .a ({value_in_s1[4], value_in_s0[4]}), .b ({value_out_s1[4], value_out_s0[4]}), .c ({new_AGEMA_signal_96, M1_gen_loop_4__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_4__M_X1_U1 (.A0_t(value_in_s0_t[4]), .B0_t(value_out_s0_t[4]), .A0_f(value_in_s0_f[4]), .B0_f(value_out_s0_f[4]), .A1_t(value_in_s1_t[4]), .B1_t(value_out_s1_t[4]), .A1_f(value_in_s1_f[4]), .B1_f(value_out_s1_f[4]), .Z0_t(M1_gen_loop_4__M_X_t), .Z0_f(M1_gen_loop_4__M_X_f), .Z1_t(new_AGEMA_signal_96_t), .Z1_f(new_AGEMA_signal_96_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_5__M_X1_U1 ( .a ({value_in_s1[5], value_in_s0[5]}), .b ({value_out_s1[5], value_out_s0[5]}), .c ({new_AGEMA_signal_99, M1_gen_loop_5__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_5__M_X1_U1 (.A0_t(value_in_s0_t[5]), .B0_t(value_out_s0_t[5]), .A0_f(value_in_s0_f[5]), .B0_f(value_out_s0_f[5]), .A1_t(value_in_s1_t[5]), .B1_t(value_out_s1_t[5]), .A1_f(value_in_s1_f[5]), .B1_f(value_out_s1_f[5]), .Z0_t(M1_gen_loop_5__M_X_t), .Z0_f(M1_gen_loop_5__M_X_f), .Z1_t(new_AGEMA_signal_99_t), .Z1_f(new_AGEMA_signal_99_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_6__M_X1_U1 ( .a ({value_in_s1[6], value_in_s0[6]}), .b ({value_out_s1[6], value_out_s0[6]}), .c ({new_AGEMA_signal_102, M1_gen_loop_6__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_6__M_X1_U1 (.A0_t(value_in_s0_t[6]), .B0_t(value_out_s0_t[6]), .A0_f(value_in_s0_f[6]), .B0_f(value_out_s0_f[6]), .A1_t(value_in_s1_t[6]), .B1_t(value_out_s1_t[6]), .A1_f(value_in_s1_f[6]), .B1_f(value_out_s1_f[6]), .Z0_t(M1_gen_loop_6__M_X_t), .Z0_f(M1_gen_loop_6__M_X_f), .Z1_t(new_AGEMA_signal_102_t), .Z1_f(new_AGEMA_signal_102_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_7__M_X1_U1 ( .a ({value_in_s1[7], value_in_s0[7]}), .b ({value_out_s1[7], value_out_s0[7]}), .c ({new_AGEMA_signal_105, M1_gen_loop_7__M_X}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_7__M_X1_U1 (.A0_t(value_in_s0_t[7]), .B0_t(value_out_s0_t[7]), .A0_f(value_in_s0_f[7]), .B0_f(value_out_s0_f[7]), .A1_t(value_in_s1_t[7]), .B1_t(value_out_s1_t[7]), .A1_f(value_in_s1_f[7]), .B1_f(value_out_s1_f[7]), .Z0_t(M1_gen_loop_7__M_X_t), .Z0_f(M1_gen_loop_7__M_X_f), .Z1_t(new_AGEMA_signal_105_t), .Z1_f(new_AGEMA_signal_105_f), .CLK(clk));


    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_0__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_84, M1_gen_loop_0__M_X}), .clk (clk), .r ({Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_106, M1_gen_loop_0__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_0__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_0__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_0__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_84_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_84_f), .Z0_t(M1_gen_loop_0__M_Y_t), .Z0_f(M1_gen_loop_0__M_Y_f), .Z1_t(new_AGEMA_signal_106_t), .Z1_f(new_AGEMA_signal_106_f), .CLK(clk));
    
    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_0__M_X2_U1 ( .a ({new_AGEMA_signal_106, M1_gen_loop_0__M_Y}), .b ({value_in_s1[0], value_in_s0[0]}), .c ({Sbox_in_s1[0], Sbox_in_s0[0]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_0__M_X2_U1 (.A0_t(M1_gen_loop_0__M_Y_t), .B0_t(value_in_s0_t[0]), .A0_f(M1_gen_loop_0__M_Y_f), .B0_f(value_in_s0_f[0]), .A1_t(new_AGEMA_signal_106_t), .B1_t(value_in_s1_t[0]), .A1_f(new_AGEMA_signal_106_f), .B1_f(value_in_s1_f[0]), .Z0_t(Sbox_in_s0_t[0]), .Z0_f(Sbox_in_s0_f[0]), .Z1_t(Sbox_in_s1_t[0]), .Z1_f(Sbox_in_s1_f[0]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_1__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_87, M1_gen_loop_1__M_X}), .clk (clk), .r ({Fresh[3], Fresh[2]}), .c ({new_AGEMA_signal_107, M1_gen_loop_1__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_1__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_1__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_1__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_87_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_87_f), .Z0_t(M1_gen_loop_1__M_Y_t), .Z0_f(M1_gen_loop_1__M_Y_f), .Z1_t(new_AGEMA_signal_107_t), .Z1_f(new_AGEMA_signal_107_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_1__M_X2_U1 ( .a ({new_AGEMA_signal_107, M1_gen_loop_1__M_Y}), .b ({value_in_s1[1], value_in_s0[1]}), .c ({Sbox_in_s1[1], Sbox_in_s0[1]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_1__M_X2_U1 (.A0_t(M1_gen_loop_1__M_Y_t), .B0_t(value_in_s0_t[1]), .A0_f(M1_gen_loop_1__M_Y_f), .B0_f(value_in_s0_f[1]), .A1_t(new_AGEMA_signal_107_t), .B1_t(value_in_s1_t[1]), .A1_f(new_AGEMA_signal_107_f), .B1_f(value_in_s1_f[1]), .Z0_t(Sbox_in_s0_t[1]), .Z0_f(Sbox_in_s0_f[1]), .Z1_t(Sbox_in_s1_t[1]), .Z1_f(Sbox_in_s1_f[1]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_2__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_90, M1_gen_loop_2__M_X}), .clk (clk), .r ({Fresh[5], Fresh[4]}), .c ({new_AGEMA_signal_108, M1_gen_loop_2__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_2__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_2__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_2__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_90_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_90_f), .Z0_t(M1_gen_loop_2__M_Y_t), .Z0_f(M1_gen_loop_2__M_Y_f), .Z1_t(new_AGEMA_signal_108_t), .Z1_f(new_AGEMA_signal_108_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_2__M_X2_U1 ( .a ({new_AGEMA_signal_108, M1_gen_loop_2__M_Y}), .b ({value_in_s1[2], value_in_s0[2]}), .c ({Sbox_in_s1[2], Sbox_in_s0[2]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_2__M_X2_U1 (.A0_t(M1_gen_loop_2__M_Y_t), .B0_t(value_in_s0_t[2]), .A0_f(M1_gen_loop_2__M_Y_f), .B0_f(value_in_s0_f[2]), .A1_t(new_AGEMA_signal_108_t), .B1_t(value_in_s1_t[2]), .A1_f(new_AGEMA_signal_108_f), .B1_f(value_in_s1_f[2]), .Z0_t(Sbox_in_s0_t[2]), .Z0_f(Sbox_in_s0_f[2]), .Z1_t(Sbox_in_s1_t[2]), .Z1_f(Sbox_in_s1_f[2]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_3__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_93, M1_gen_loop_3__M_X}), .clk (clk), .r ({Fresh[7], Fresh[6]}), .c ({new_AGEMA_signal_109, M1_gen_loop_3__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_3__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_3__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_3__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_93_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_93_f), .Z0_t(M1_gen_loop_3__M_Y_t), .Z0_f(M1_gen_loop_3__M_Y_f), .Z1_t(new_AGEMA_signal_109_t), .Z1_f(new_AGEMA_signal_109_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_3__M_X2_U1 ( .a ({new_AGEMA_signal_109, M1_gen_loop_3__M_Y}), .b ({value_in_s1[3], value_in_s0[3]}), .c ({Sbox_in_s1[3], Sbox_in_s0[3]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_3__M_X2_U1 (.A0_t(M1_gen_loop_3__M_Y_t), .B0_t(value_in_s0_t[3]), .A0_f(M1_gen_loop_3__M_Y_f), .B0_f(value_in_s0_f[3]), .A1_t(new_AGEMA_signal_109_t), .B1_t(value_in_s1_t[3]), .A1_f(new_AGEMA_signal_109_f), .B1_f(value_in_s1_f[3]), .Z0_t(Sbox_in_s0_t[3]), .Z0_f(Sbox_in_s0_f[3]), .Z1_t(Sbox_in_s1_t[3]), .Z1_f(Sbox_in_s1_f[3]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_4__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_96, M1_gen_loop_4__M_X}), .clk (clk), .r ({Fresh[9], Fresh[8]}), .c ({new_AGEMA_signal_110, M1_gen_loop_4__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_4__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_4__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_4__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_96_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_96_f), .Z0_t(M1_gen_loop_4__M_Y_t), .Z0_f(M1_gen_loop_4__M_Y_f), .Z1_t(new_AGEMA_signal_110_t), .Z1_f(new_AGEMA_signal_110_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_4__M_X2_U1 ( .a ({new_AGEMA_signal_110, M1_gen_loop_4__M_Y}), .b ({value_in_s1[4], value_in_s0[4]}), .c ({Sbox_in_s1[4], Sbox_in_s0[4]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_4__M_X2_U1 (.A0_t(M1_gen_loop_4__M_Y_t), .B0_t(value_in_s0_t[4]), .A0_f(M1_gen_loop_4__M_Y_f), .B0_f(value_in_s0_f[4]), .A1_t(new_AGEMA_signal_110_t), .B1_t(value_in_s1_t[4]), .A1_f(new_AGEMA_signal_110_f), .B1_f(value_in_s1_f[4]), .Z0_t(Sbox_in_s0_t[4]), .Z0_f(Sbox_in_s0_f[4]), .Z1_t(Sbox_in_s1_t[4]), .Z1_f(Sbox_in_s1_f[4]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_5__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_99, M1_gen_loop_5__M_X}), .clk (clk), .r ({Fresh[11], Fresh[10]}), .c ({new_AGEMA_signal_111, M1_gen_loop_5__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_5__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_5__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_5__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_99_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_99_f), .Z0_t(M1_gen_loop_5__M_Y_t), .Z0_f(M1_gen_loop_5__M_Y_f), .Z1_t(new_AGEMA_signal_111_t), .Z1_f(new_AGEMA_signal_111_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_5__M_X2_U1 ( .a ({new_AGEMA_signal_111, M1_gen_loop_5__M_Y}), .b ({value_in_s1[5], value_in_s0[5]}), .c ({Sbox_in_s1[5], Sbox_in_s0[5]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_5__M_X2_U1 (.A0_t(M1_gen_loop_5__M_Y_t), .B0_t(value_in_s0_t[5]), .A0_f(M1_gen_loop_5__M_Y_f), .B0_f(value_in_s0_f[5]), .A1_t(new_AGEMA_signal_111_t), .B1_t(value_in_s1_t[5]), .A1_f(new_AGEMA_signal_111_f), .B1_f(value_in_s1_f[5]), .Z0_t(Sbox_in_s0_t[5]), .Z0_f(Sbox_in_s0_f[5]), .Z1_t(Sbox_in_s1_t[5]), .Z1_f(Sbox_in_s1_f[5]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_6__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_102, M1_gen_loop_6__M_X}), .clk (clk), .r ({Fresh[13], Fresh[12]}), .c ({new_AGEMA_signal_112, M1_gen_loop_6__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_6__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_6__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_6__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_102_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_102_f), .Z0_t(M1_gen_loop_6__M_Y_t), .Z0_f(M1_gen_loop_6__M_Y_f), .Z1_t(new_AGEMA_signal_112_t), .Z1_f(new_AGEMA_signal_112_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_6__M_X2_U1 ( .a ({new_AGEMA_signal_112, M1_gen_loop_6__M_Y}), .b ({value_in_s1[6], value_in_s0[6]}), .c ({Sbox_in_s1[6], Sbox_in_s0[6]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_6__M_X2_U1 (.A0_t(M1_gen_loop_6__M_Y_t), .B0_t(value_in_s0_t[6]), .A0_f(M1_gen_loop_6__M_Y_f), .B0_f(value_in_s0_f[6]), .A1_t(new_AGEMA_signal_112_t), .B1_t(value_in_s1_t[6]), .A1_f(new_AGEMA_signal_112_f), .B1_f(value_in_s1_f[6]), .Z0_t(Sbox_in_s0_t[6]), .Z0_f(Sbox_in_s0_f[6]), .Z1_t(Sbox_in_s1_t[6]), .Z1_f(Sbox_in_s1_f[6]), .CLK(clk));

    //and_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_7__M_A_U1 ( .a ({1'b0, Inc_out[3]}), .b ({new_AGEMA_signal_105, M1_gen_loop_7__M_X}), .clk (clk), .r ({Fresh[15], Fresh[14]}), .c ({new_AGEMA_signal_113, M1_gen_loop_7__M_Y}) ) ;
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_7__M_A_U1 (.A0_t(Inc_out_t[3]), .B0_t(M1_gen_loop_7__M_X_t), .A0_f(Inc_out_f[3]), .B0_f(M1_gen_loop_7__M_X_f), .A1_t(1'b0), .B1_t(new_AGEMA_signal_105_t), .A1_f(pre2), .B1_f(new_AGEMA_signal_105_f), .Z0_t(M1_gen_loop_7__M_Y_t), .Z0_f(M1_gen_loop_7__M_Y_f), .Z1_t(new_AGEMA_signal_113_t), .Z1_f(new_AGEMA_signal_113_f), .CLK(clk));

    //xor_HPC3 #(.security_order(1), .pipeline(0)) M1_gen_loop_7__M_X2_U1 ( .a ({new_AGEMA_signal_113, M1_gen_loop_7__M_Y}), .b ({value_in_s1[7], value_in_s0[7]}), .c ({Sbox_in_s1[7], Sbox_in_s0[7]}) ) ;
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) M1_gen_loop_7__M_X2_U1 (.A0_t(M1_gen_loop_7__M_Y_t), .B0_t(value_in_s0_t[7]), .A0_f(M1_gen_loop_7__M_Y_f), .B0_f(value_in_s0_f[7]), .A1_t(new_AGEMA_signal_113_t), .B1_t(value_in_s1_t[7]), .A1_f(new_AGEMA_signal_113_f), .B1_f(value_in_s1_f[7]), .Z0_t(Sbox_in_s0_t[7]), .Z0_f(Sbox_in_s0_f[7]), .Z1_t(Sbox_in_s1_t[7]), .Z1_f(Sbox_in_s1_f[7]), .CLK(clk));

//-----------

    assign X0_t[0] = Sbox_in_s0_t[0];
    assign X0_f[0] = Sbox_in_s0_f[0];
    assign X1_t[0] = Sbox_in_s1_t[0];
    assign X1_f[0] = Sbox_in_s1_f[0];
    
    assign X0_t[1] = Sbox_in_s0_t[1];
    assign X0_f[1] = Sbox_in_s0_f[1];
    assign X1_t[1] = Sbox_in_s1_t[1];
    assign X1_f[1] = Sbox_in_s1_f[1];

    assign X0_t[2] = Sbox_in_s0_t[2];
    assign X0_f[2] = Sbox_in_s0_f[2];
    assign X1_t[2] = Sbox_in_s1_t[2];
    assign X1_f[2] = Sbox_in_s1_f[2];

    assign X0_t[3] = Sbox_in_s0_t[3];
    assign X0_f[3] = Sbox_in_s0_f[3];
    assign X1_t[3] = Sbox_in_s1_t[3];
    assign X1_f[3] = Sbox_in_s1_f[3];

    assign X0_t[4] = Sbox_in_s0_t[4];
    assign X0_f[4] = Sbox_in_s0_f[4];
    assign X1_t[4] = Sbox_in_s1_t[4];
    assign X1_f[4] = Sbox_in_s1_f[4];

    assign X0_t[5] = Sbox_in_s0_t[5];
    assign X0_f[5] = Sbox_in_s0_f[5];
    assign X1_t[5] = Sbox_in_s1_t[5];
    assign X1_f[5] = Sbox_in_s1_f[5];

    assign X0_t[6] = Sbox_in_s0_t[6];
    assign X0_f[6] = Sbox_in_s0_f[6];
    assign X1_t[6] = Sbox_in_s1_t[6];
    assign X1_f[6] = Sbox_in_s1_f[6];

    assign X0_t[7] = Sbox_in_s0_t[7];
    assign X0_f[7] = Sbox_in_s0_f[7];
    assign X1_t[7] = Sbox_in_s1_t[7];
    assign X1_f[7] = Sbox_in_s1_f[7];


    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T1_U1  (.A0_t(X0_t[7]), .B0_t(X0_t[4]), .A0_f(X0_f[7]), .B0_f(X0_f[4]), .A1_t(X1_t[7]), .B1_t(X1_t[4]), .A1_f(X1_f[7]), .B1_f(X1_f[4]), .Z0_t(T1_0_t), .Z0_f(T1_0_f), .Z1_t(T1_1_t), .Z1_f(T1_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T2_U1  (.A0_t(X0_t[7]), .B0_t(X0_t[2]), .A0_f(X0_f[7]), .B0_f(X0_f[2]), .A1_t(X1_t[7]), .B1_t(X1_t[2]), .A1_f(X1_f[7]), .B1_f(X1_f[2]), .Z0_t(T2_0_t), .Z0_f(T2_0_f), .Z1_t(T2_1_t), .Z1_f(T2_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T3_U1  (.A0_t(X0_t[7]), .B0_t(X0_t[1]), .A0_f(X0_f[7]), .B0_f(X0_f[1]), .A1_t(X1_t[7]), .B1_t(X1_t[1]), .A1_f(X1_f[7]), .B1_f(X1_f[1]), .Z0_t(T3_0_t), .Z0_f(T3_0_f), .Z1_t(T3_1_t), .Z1_f(T3_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T4_U1  (.A0_t(X0_t[4]), .B0_t(X0_t[2]), .A0_f(X0_f[4]), .B0_f(X0_f[2]), .A1_t(X1_t[4]), .B1_t(X1_t[2]), .A1_f(X1_f[4]), .B1_f(X1_f[2]), .Z0_t(T4_0_t), .Z0_f(T4_0_f), .Z1_t(T4_1_t), .Z1_f(T4_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T5_U1  (.A0_t(X0_t[3]), .B0_t(X0_t[1]), .A0_f(X0_f[3]), .B0_f(X0_f[1]), .A1_t(X1_t[3]), .B1_t(X1_t[1]), .A1_f(X1_f[3]), .B1_f(X1_f[1]), .Z0_t(T5_0_t), .Z0_f(T5_0_f), .Z1_t(T5_1_t), .Z1_f(T5_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T6_U1  (.A0_t(T1_0_t), .B0_t(T5_0_t), .A0_f(T1_0_f), .B0_f(T5_0_f), .A1_t(T1_1_t), .B1_t(T5_1_t), .A1_f(T1_1_f), .B1_f(T5_1_f), .Z0_t(T6_0_t), .Z0_f(T6_0_f), .Z1_t(T6_1_t), .Z1_f(T6_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T7_U1  (.A0_t(X0_t[6]), .B0_t(X0_t[5]), .A0_f(X0_f[6]), .B0_f(X0_f[5]), .A1_t(X1_t[6]), .B1_t(X1_t[5]), .A1_f(X1_f[6]), .B1_f(X1_f[5]), .Z0_t(T7_0_t), .Z0_f(T7_0_f), .Z1_t(T7_1_t), .Z1_f(T7_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T8_U1  (.A0_t(X0_t[0]), .B0_t(T6_0_t), .A0_f(X0_f[0]), .B0_f(T6_0_f), .A1_t(X1_t[0]), .B1_t(T6_1_t), .A1_f(X1_f[0]), .B1_f(T6_1_f), .Z0_t(T8_0_t), .Z0_f(T8_0_f), .Z1_t(T8_1_t), .Z1_f(T8_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T9_U1  (.A0_t(X0_t[0]), .B0_t(T7_0_t), .A0_f(X0_f[0]), .B0_f(T7_0_f), .A1_t(X1_t[0]), .B1_t(T7_1_t), .A1_f(X1_f[0]), .B1_f(T7_1_f), .Z0_t(T9_0_t), .Z0_f(T9_0_f), .Z1_t(T9_1_t), .Z1_f(T9_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T10_U1 (.A0_t(T6_0_t), .B0_t(T7_0_t), .A0_f(T6_0_f), .B0_f(T7_0_f), .A1_t(T6_1_t), .B1_t(T7_1_t), .A1_f(T6_1_f), .B1_f(T7_1_f), .Z0_t(T10_0_t), .Z0_f(T10_0_f), .Z1_t(T10_1_t), .Z1_f(T10_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T11_U1 (.A0_t(X0_t[6]), .B0_t(X0_t[2]), .A0_f(X0_f[6]), .B0_f(X0_f[2]), .A1_t(X1_t[6]), .B1_t(X1_t[2]), .A1_f(X1_f[6]), .B1_f(X1_f[2]), .Z0_t(T11_0_t), .Z0_f(T11_0_f), .Z1_t(T11_1_t), .Z1_f(T11_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T12_U1 (.A0_t(X0_t[5]), .B0_t(X0_t[2]), .A0_f(X0_f[5]), .B0_f(X0_f[2]), .A1_t(X1_t[5]), .B1_t(X1_t[2]), .A1_f(X1_f[5]), .B1_f(X1_f[2]), .Z0_t(T12_0_t), .Z0_f(T12_0_f), .Z1_t(T12_1_t), .Z1_f(T12_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T13_U1 (.A0_t(T3_0_t), .B0_t(T4_0_t), .A0_f(T3_0_f), .B0_f(T4_0_f), .A1_t(T3_1_t), .B1_t(T4_1_t), .A1_f(T3_1_f), .B1_f(T4_1_f), .Z0_t(T13_0_t), .Z0_f(T13_0_f), .Z1_t(T13_1_t), .Z1_f(T13_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T14_U1 (.A0_t(T6_0_t), .B0_t(T11_0_t), .A0_f(T6_0_f), .B0_f(T11_0_f), .A1_t(T6_1_t), .B1_t(T11_1_t), .A1_f(T6_1_f), .B1_f(T11_1_f), .Z0_t(T14_0_t), .Z0_f(T14_0_f), .Z1_t(T14_1_t), .Z1_f(T14_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T15_U1 (.A0_t(T5_0_t), .B0_t(T11_0_t), .A0_f(T5_0_f), .B0_f(T11_0_f), .A1_t(T5_1_t), .B1_t(T11_1_t), .A1_f(T5_1_f), .B1_f(T11_1_f), .Z0_t(T15_0_t), .Z0_f(T15_0_f), .Z1_t(T15_1_t), .Z1_f(T15_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T16_U1 (.A0_t(T5_0_t), .B0_t(T12_0_t), .A0_f(T5_0_f), .B0_f(T12_0_f), .A1_t(T5_1_t), .B1_t(T12_1_t), .A1_f(T5_1_f), .B1_f(T12_1_f), .Z0_t(T16_0_t), .Z0_f(T16_0_f), .Z1_t(T16_1_t), .Z1_f(T16_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T17_U1 (.A0_t(T9_0_t), .B0_t(T16_0_t), .A0_f(T9_0_f), .B0_f(T16_0_f), .A1_t(T9_1_t), .B1_t(T16_1_t), .A1_f(T9_1_f), .B1_f(T16_1_f), .Z0_t(T17_0_t), .Z0_f(T17_0_f), .Z1_t(T17_1_t), .Z1_f(T17_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T18_U1 (.A0_t(X0_t[4]), .B0_t(X0_t[0]), .A0_f(X0_f[4]), .B0_f(X0_f[0]), .A1_t(X1_t[4]), .B1_t(X1_t[0]), .A1_f(X1_f[4]), .B1_f(X1_f[0]), .Z0_t(T18_0_t), .Z0_f(T18_0_f), .Z1_t(T18_1_t), .Z1_f(T18_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T19_U1 (.A0_t(T7_0_t), .B0_t(T18_0_t), .A0_f(T7_0_f), .B0_f(T18_0_f), .A1_t(T7_1_t), .B1_t(T18_1_t), .A1_f(T7_1_f), .B1_f(T18_1_f), .Z0_t(T19_0_t), .Z0_f(T19_0_f), .Z1_t(T19_1_t), .Z1_f(T19_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T20_U1 (.A0_t(T1_0_t), .B0_t(T19_0_t), .A0_f(T1_0_f), .B0_f(T19_0_f), .A1_t(T1_1_t), .B1_t(T19_1_t), .A1_f(T1_1_f), .B1_f(T19_1_f), .Z0_t(T20_0_t), .Z0_f(T20_0_f), .Z1_t(T20_1_t), .Z1_f(T20_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T21_U1 (.A0_t(X0_t[1]), .B0_t(X0_t[0]), .A0_f(X0_f[1]), .B0_f(X0_f[0]), .A1_t(X1_t[1]), .B1_t(X1_t[0]), .A1_f(X1_f[1]), .B1_f(X1_f[0]), .Z0_t(T21_0_t), .Z0_f(T21_0_f), .Z1_t(T21_1_t), .Z1_f(T21_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T22_U1 (.A0_t(T7_0_t), .B0_t(T21_0_t), .A0_f(T7_0_f), .B0_f(T21_0_f), .A1_t(T7_1_t), .B1_t(T21_1_t), .A1_f(T7_1_f), .B1_f(T21_1_f), .Z0_t(T22_0_t), .Z0_f(T22_0_f), .Z1_t(T22_1_t), .Z1_f(T22_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T23_U1 (.A0_t(T2_0_t), .B0_t(T22_0_t), .A0_f(T2_0_f), .B0_f(T22_0_f), .A1_t(T2_1_t), .B1_t(T22_1_t), .A1_f(T2_1_f), .B1_f(T22_1_f), .Z0_t(T23_0_t), .Z0_f(T23_0_f), .Z1_t(T23_1_t), .Z1_f(T23_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T24_U1 (.A0_t(T2_0_t), .B0_t(T10_0_t), .A0_f(T2_0_f), .B0_f(T10_0_f), .A1_t(T2_1_t), .B1_t(T10_1_t), .A1_f(T2_1_f), .B1_f(T10_1_f), .Z0_t(T24_0_t), .Z0_f(T24_0_f), .Z1_t(T24_1_t), .Z1_f(T24_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T25_U1 (.A0_t(T20_0_t), .B0_t(T17_0_t), .A0_f(T20_0_f), .B0_f(T17_0_f), .A1_t(T20_1_t), .B1_t(T17_1_t), .A1_f(T20_1_f), .B1_f(T17_1_f), .Z0_t(T25_0_t), .Z0_f(T25_0_f), .Z1_t(T25_1_t), .Z1_f(T25_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T26_U1 (.A0_t(T3_0_t), .B0_t(T16_0_t), .A0_f(T3_0_f), .B0_f(T16_0_f), .A1_t(T3_1_t), .B1_t(T16_1_t), .A1_f(T3_1_f), .B1_f(T16_1_f), .Z0_t(T26_0_t), .Z0_f(T26_0_f), .Z1_t(T26_1_t), .Z1_f(T26_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_T27_U1 (.A0_t(T1_0_t), .B0_t(T12_0_t), .A0_f(T1_0_f), .B0_f(T12_0_f), .A1_t(T1_1_t), .B1_t(T12_1_t), .A1_f(T1_1_f), .B1_f(T12_1_f), .Z0_t(T27_0_t), .Z0_f(T27_0_f), .Z1_t(T27_1_t), .Z1_f(T27_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M1_U1  (.A0_t(T13_0_t), .B0_t(T6_0_t), .A0_f(T13_0_f), .B0_f(T6_0_f), .A1_t(T13_1_t), .B1_t(T6_1_t), .A1_f(T13_1_f), .B1_f(T6_1_f), .Z0_t(M1_0_t), .Z0_f(M1_0_f), .Z1_t(M1_1_t), .Z1_f(M1_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M2_U1  (.A0_t(T23_0_t), .B0_t(T8_0_t), .A0_f(T23_0_f), .B0_f(T8_0_f), .A1_t(T23_1_t), .B1_t(T8_1_t), .A1_f(T23_1_f), .B1_f(T8_1_f), .Z0_t(M2_0_t), .Z0_f(M2_0_f), .Z1_t(M2_1_t), .Z1_f(M2_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M3_U1  (.A0_t(T14_0_t), .B0_t(M1_0_t), .A0_f(T14_0_f), .B0_f(M1_0_f), .A1_t(T14_1_t), .B1_t(M1_1_t), .A1_f(T14_1_f), .B1_f(M1_1_f), .Z0_t(M3_0_t), .Z0_f(M3_0_f), .Z1_t(M3_1_t), .Z1_f(M3_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M4_U1  (.A0_t(T19_0_t), .B0_t(X0_t[0]), .A0_f(T19_0_f), .B0_f(X0_f[0]), .A1_t(T19_1_t), .B1_t(X1_t[0]), .A1_f(T19_1_f), .B1_f(X1_f[0]), .Z0_t(M4_0_t), .Z0_f(M4_0_f), .Z1_t(M4_1_t), .Z1_f(M4_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M5_U1  (.A0_t(M4_0_t), .B0_t(M1_0_t), .A0_f(M4_0_f), .B0_f(M1_0_f), .A1_t(M4_1_t), .B1_t(M1_1_t), .A1_f(M4_1_f), .B1_f(M1_1_f), .Z0_t(M5_0_t), .Z0_f(M5_0_f), .Z1_t(M5_1_t), .Z1_f(M5_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M6_U1  (.A0_t(T3_0_t), .B0_t(T16_0_t), .A0_f(T3_0_f), .B0_f(T16_0_f), .A1_t(T3_1_t), .B1_t(T16_1_t), .A1_f(T3_1_f), .B1_f(T16_1_f), .Z0_t(M6_0_t), .Z0_f(M6_0_f), .Z1_t(M6_1_t), .Z1_f(M6_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M7_U1  (.A0_t(T22_0_t), .B0_t(T9_0_t), .A0_f(T22_0_f), .B0_f(T9_0_f), .A1_t(T22_1_t), .B1_t(T9_1_t), .A1_f(T22_1_f), .B1_f(T9_1_f), .Z0_t(M7_0_t), .Z0_f(M7_0_f), .Z1_t(M7_1_t), .Z1_f(M7_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M8_U1  (.A0_t(T26_0_t), .B0_t(M6_0_t), .A0_f(T26_0_f), .B0_f(M6_0_f), .A1_t(T26_1_t), .B1_t(M6_1_t), .A1_f(T26_1_f), .B1_f(M6_1_f), .Z0_t(M8_0_t), .Z0_f(M8_0_f), .Z1_t(M8_1_t), .Z1_f(M8_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M9_U1  (.A0_t(T20_0_t), .B0_t(T17_0_t), .A0_f(T20_0_f), .B0_f(T17_0_f), .A1_t(T20_1_t), .B1_t(T17_1_t), .A1_f(T20_1_f), .B1_f(T17_1_f), .Z0_t(M9_0_t), .Z0_f(M9_0_f), .Z1_t(M9_1_t), .Z1_f(M9_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M10_U1 (.A0_t(M9_0_t), .B0_t(M6_0_t), .A0_f(M9_0_f), .B0_f(M6_0_f), .A1_t(M9_1_t), .B1_t(M6_1_t), .A1_f(M9_1_f), .B1_f(M6_1_f), .Z0_t(M10_0_t), .Z0_f(M10_0_f), .Z1_t(M10_1_t), .Z1_f(M10_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M11_U1 (.A0_t(T1_0_t), .B0_t(T15_0_t), .A0_f(T1_0_f), .B0_f(T15_0_f), .A1_t(T1_1_t), .B1_t(T15_1_t), .A1_f(T1_1_f), .B1_f(T15_1_f), .Z0_t(M11_0_t), .Z0_f(M11_0_f), .Z1_t(M11_1_t), .Z1_f(M11_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M12_U1 (.A0_t(T4_0_t), .B0_t(T27_0_t), .A0_f(T4_0_f), .B0_f(T27_0_f), .A1_t(T4_1_t), .B1_t(T27_1_t), .A1_f(T4_1_f), .B1_f(T27_1_f), .Z0_t(M12_0_t), .Z0_f(M12_0_f), .Z1_t(M12_1_t), .Z1_f(M12_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M13_U1 (.A0_t(M12_0_t), .B0_t(M11_0_t), .A0_f(M12_0_f), .B0_f(M11_0_f), .A1_t(M12_1_t), .B1_t(M11_1_t), .A1_f(M12_1_f), .B1_f(M11_1_f), .Z0_t(M13_0_t), .Z0_f(M13_0_f), .Z1_t(M13_1_t), .Z1_f(M13_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M14_U1 (.A0_t(T2_0_t), .B0_t(T10_0_t), .A0_f(T2_0_f), .B0_f(T10_0_f), .A1_t(T2_1_t), .B1_t(T10_1_t), .A1_f(T2_1_f), .B1_f(T10_1_f), .Z0_t(M14_0_t), .Z0_f(M14_0_f), .Z1_t(M14_1_t), .Z1_f(M14_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M15_U1 (.A0_t(M14_0_t), .B0_t(M11_0_t), .A0_f(M14_0_f), .B0_f(M11_0_f), .A1_t(M14_1_t), .B1_t(M11_1_t), .A1_f(M14_1_f), .B1_f(M11_1_f), .Z0_t(M15_0_t), .Z0_f(M15_0_f), .Z1_t(M15_1_t), .Z1_f(M15_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M16_U1 (.A0_t(M3_0_t), .B0_t(M2_0_t), .A0_f(M3_0_f), .B0_f(M2_0_f), .A1_t(M3_1_t), .B1_t(M2_1_t), .A1_f(M3_1_f), .B1_f(M2_1_f), .Z0_t(M16_0_t), .Z0_f(M16_0_f), .Z1_t(M16_1_t), .Z1_f(M16_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M17_U1 (.A0_t(M5_0_t), .B0_t(T24_0_t), .A0_f(M5_0_f), .B0_f(T24_0_f), .A1_t(M5_1_t), .B1_t(T24_1_t), .A1_f(M5_1_f), .B1_f(T24_1_f), .Z0_t(M17_0_t), .Z0_f(M17_0_f), .Z1_t(M17_1_t), .Z1_f(M17_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M18_U1 (.A0_t(M8_0_t), .B0_t(M7_0_t), .A0_f(M8_0_f), .B0_f(M7_0_f), .A1_t(M8_1_t), .B1_t(M7_1_t), .A1_f(M8_1_f), .B1_f(M7_1_f), .Z0_t(M18_0_t), .Z0_f(M18_0_f), .Z1_t(M18_1_t), .Z1_f(M18_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M19_U1 (.A0_t(M10_0_t), .B0_t(M15_0_t), .A0_f(M10_0_f), .B0_f(M15_0_f), .A1_t(M10_1_t), .B1_t(M15_1_t), .A1_f(M10_1_f), .B1_f(M15_1_f), .Z0_t(M19_0_t), .Z0_f(M19_0_f), .Z1_t(M19_1_t), .Z1_f(M19_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M20_U1 (.A0_t(M16_0_t), .B0_t(M13_0_t), .A0_f(M16_0_f), .B0_f(M13_0_f), .A1_t(M16_1_t), .B1_t(M13_1_t), .A1_f(M16_1_f), .B1_f(M13_1_f), .Z0_t(M20_0_t), .Z0_f(M20_0_f), .Z1_t(M20_1_t), .Z1_f(M20_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M21_U1 (.A0_t(M17_0_t), .B0_t(M15_0_t), .A0_f(M17_0_f), .B0_f(M15_0_f), .A1_t(M17_1_t), .B1_t(M15_1_t), .A1_f(M17_1_f), .B1_f(M15_1_f), .Z0_t(M21_0_t), .Z0_f(M21_0_f), .Z1_t(M21_1_t), .Z1_f(M21_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M22_U1 (.A0_t(M18_0_t), .B0_t(M13_0_t), .A0_f(M18_0_f), .B0_f(M13_0_f), .A1_t(M18_1_t), .B1_t(M13_1_t), .A1_f(M18_1_f), .B1_f(M13_1_f), .Z0_t(M22_0_t), .Z0_f(M22_0_f), .Z1_t(M22_1_t), .Z1_f(M22_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M23_U1 (.A0_t(M19_0_t), .B0_t(T25_0_t), .A0_f(M19_0_f), .B0_f(T25_0_f), .A1_t(M19_1_t), .B1_t(T25_1_t), .A1_f(M19_1_f), .B1_f(T25_1_f), .Z0_t(M23_0_t), .Z0_f(M23_0_f), .Z1_t(M23_1_t), .Z1_f(M23_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M24_U1 (.A0_t(M22_0_t), .B0_t(M23_0_t), .A0_f(M22_0_f), .B0_f(M23_0_f), .A1_t(M22_1_t), .B1_t(M23_1_t), .A1_f(M22_1_f), .B1_f(M23_1_f), .Z0_t(M24_0_t), .Z0_f(M24_0_f), .Z1_t(M24_1_t), .Z1_f(M24_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M25_U1 (.A0_t(M22_0_t), .B0_t(M20_0_t), .A0_f(M22_0_f), .B0_f(M20_0_f), .A1_t(M22_1_t), .B1_t(M20_1_t), .A1_f(M22_1_f), .B1_f(M20_1_f), .Z0_t(M25_0_t), .Z0_f(M25_0_f), .Z1_t(M25_1_t), .Z1_f(M25_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M26_U1 (.A0_t(M21_0_t), .B0_t(M25_0_t), .A0_f(M21_0_f), .B0_f(M25_0_f), .A1_t(M21_1_t), .B1_t(M25_1_t), .A1_f(M21_1_f), .B1_f(M25_1_f), .Z0_t(M26_0_t), .Z0_f(M26_0_f), .Z1_t(M26_1_t), .Z1_f(M26_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M27_U1 (.A0_t(M20_0_t), .B0_t(M21_0_t), .A0_f(M20_0_f), .B0_f(M21_0_f), .A1_t(M20_1_t), .B1_t(M21_1_t), .A1_f(M20_1_f), .B1_f(M21_1_f), .Z0_t(M27_0_t), .Z0_f(M27_0_f), .Z1_t(M27_1_t), .Z1_f(M27_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M28_U1 (.A0_t(M23_0_t), .B0_t(M25_0_t), .A0_f(M23_0_f), .B0_f(M25_0_f), .A1_t(M23_1_t), .B1_t(M25_1_t), .A1_f(M23_1_f), .B1_f(M25_1_f), .Z0_t(M28_0_t), .Z0_f(M28_0_f), .Z1_t(M28_1_t), .Z1_f(M28_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M29_U1 (.A0_t(M28_0_t), .B0_t(M27_0_t), .A0_f(M28_0_f), .B0_f(M27_0_f), .A1_t(M28_1_t), .B1_t(M27_1_t), .A1_f(M28_1_f), .B1_f(M27_1_f), .Z0_t(M29_0_t), .Z0_f(M29_0_f), .Z1_t(M29_1_t), .Z1_f(M29_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M30_U1 (.A0_t(M26_0_t), .B0_t(M24_0_t), .A0_f(M26_0_f), .B0_f(M24_0_f), .A1_t(M26_1_t), .B1_t(M24_1_t), .A1_f(M26_1_f), .B1_f(M24_1_f), .Z0_t(M30_0_t), .Z0_f(M30_0_f), .Z1_t(M30_1_t), .Z1_f(M30_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M31_U1 (.A0_t(M20_0_t), .B0_t(M23_0_t), .A0_f(M20_0_f), .B0_f(M23_0_f), .A1_t(M20_1_t), .B1_t(M23_1_t), .A1_f(M20_1_f), .B1_f(M23_1_f), .Z0_t(M31_0_t), .Z0_f(M31_0_f), .Z1_t(M31_1_t), .Z1_f(M31_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M32_U1 (.A0_t(M27_0_t), .B0_t(M31_0_t), .A0_f(M27_0_f), .B0_f(M31_0_f), .A1_t(M27_1_t), .B1_t(M31_1_t), .A1_f(M27_1_f), .B1_f(M31_1_f), .Z0_t(M32_0_t), .Z0_f(M32_0_f), .Z1_t(M32_1_t), .Z1_f(M32_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M33_U1 (.A0_t(M27_0_t), .B0_t(M25_0_t), .A0_f(M27_0_f), .B0_f(M25_0_f), .A1_t(M27_1_t), .B1_t(M25_1_t), .A1_f(M27_1_f), .B1_f(M25_1_f), .Z0_t(M33_0_t), .Z0_f(M33_0_f), .Z1_t(M33_1_t), .Z1_f(M33_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M34_U1 (.A0_t(M21_0_t), .B0_t(M22_0_t), .A0_f(M21_0_f), .B0_f(M22_0_f), .A1_t(M21_1_t), .B1_t(M22_1_t), .A1_f(M21_1_f), .B1_f(M22_1_f), .Z0_t(M34_0_t), .Z0_f(M34_0_f), .Z1_t(M34_1_t), .Z1_f(M34_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M35_U1 (.A0_t(M24_0_t), .B0_t(M34_0_t), .A0_f(M24_0_f), .B0_f(M34_0_f), .A1_t(M24_1_t), .B1_t(M34_1_t), .A1_f(M24_1_f), .B1_f(M34_1_f), .Z0_t(M35_0_t), .Z0_f(M35_0_f), .Z1_t(M35_1_t), .Z1_f(M35_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M36_U1 (.A0_t(M24_0_t), .B0_t(M25_0_t), .A0_f(M24_0_f), .B0_f(M25_0_f), .A1_t(M24_1_t), .B1_t(M25_1_t), .A1_f(M24_1_f), .B1_f(M25_1_f), .Z0_t(M36_0_t), .Z0_f(M36_0_f), .Z1_t(M36_1_t), .Z1_f(M36_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M37_U1 (.A0_t(M21_0_t), .B0_t(M29_0_t), .A0_f(M21_0_f), .B0_f(M29_0_f), .A1_t(M21_1_t), .B1_t(M29_1_t), .A1_f(M21_1_f), .B1_f(M29_1_f), .Z0_t(M37_0_t), .Z0_f(M37_0_f), .Z1_t(M37_1_t), .Z1_f(M37_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M38_U1 (.A0_t(M32_0_t), .B0_t(M33_0_t), .A0_f(M32_0_f), .B0_f(M33_0_f), .A1_t(M32_1_t), .B1_t(M33_1_t), .A1_f(M32_1_f), .B1_f(M33_1_f), .Z0_t(M38_0_t), .Z0_f(M38_0_f), .Z1_t(M38_1_t), .Z1_f(M38_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M39_U1 (.A0_t(M23_0_t), .B0_t(M30_0_t), .A0_f(M23_0_f), .B0_f(M30_0_f), .A1_t(M23_1_t), .B1_t(M30_1_t), .A1_f(M23_1_f), .B1_f(M30_1_f), .Z0_t(M39_0_t), .Z0_f(M39_0_f), .Z1_t(M39_1_t), .Z1_f(M39_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M40_U1 (.A0_t(M35_0_t), .B0_t(M36_0_t), .A0_f(M35_0_f), .B0_f(M36_0_f), .A1_t(M35_1_t), .B1_t(M36_1_t), .A1_f(M35_1_f), .B1_f(M36_1_f), .Z0_t(M40_0_t), .Z0_f(M40_0_f), .Z1_t(M40_1_t), .Z1_f(M40_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M41_U1 (.A0_t(M38_0_t), .B0_t(M40_0_t), .A0_f(M38_0_f), .B0_f(M40_0_f), .A1_t(M38_1_t), .B1_t(M40_1_t), .A1_f(M38_1_f), .B1_f(M40_1_f), .Z0_t(M41_0_t), .Z0_f(M41_0_f), .Z1_t(M41_1_t), .Z1_f(M41_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M42_U1 (.A0_t(M37_0_t), .B0_t(M39_0_t), .A0_f(M37_0_f), .B0_f(M39_0_f), .A1_t(M37_1_t), .B1_t(M39_1_t), .A1_f(M37_1_f), .B1_f(M39_1_f), .Z0_t(M42_0_t), .Z0_f(M42_0_f), .Z1_t(M42_1_t), .Z1_f(M42_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M43_U1 (.A0_t(M37_0_t), .B0_t(M38_0_t), .A0_f(M37_0_f), .B0_f(M38_0_f), .A1_t(M37_1_t), .B1_t(M38_1_t), .A1_f(M37_1_f), .B1_f(M38_1_f), .Z0_t(M43_0_t), .Z0_f(M43_0_f), .Z1_t(M43_1_t), .Z1_f(M43_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M44_U1 (.A0_t(M39_0_t), .B0_t(M40_0_t), .A0_f(M39_0_f), .B0_f(M40_0_f), .A1_t(M39_1_t), .B1_t(M40_1_t), .A1_f(M39_1_f), .B1_f(M40_1_f), .Z0_t(M44_0_t), .Z0_f(M44_0_f), .Z1_t(M44_1_t), .Z1_f(M44_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_M45_U1 (.A0_t(M42_0_t), .B0_t(M41_0_t), .A0_f(M42_0_f), .B0_f(M41_0_f), .A1_t(M42_1_t), .B1_t(M41_1_t), .A1_f(M42_1_f), .B1_f(M41_1_f), .Z0_t(M45_0_t), .Z0_f(M45_0_f), .Z1_t(M45_1_t), .Z1_f(M45_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M46_U1 (.A0_t(M44_0_t), .B0_t(T6_0_t), .A0_f(M44_0_f), .B0_f(T6_0_f), .A1_t(M44_1_t), .B1_t(T6_1_t), .A1_f(M44_1_f), .B1_f(T6_1_f), .Z0_t(M46_0_t), .Z0_f(M46_0_f), .Z1_t(M46_1_t), .Z1_f(M46_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M47_U1 (.A0_t(M40_0_t), .B0_t(T8_0_t), .A0_f(M40_0_f), .B0_f(T8_0_f), .A1_t(M40_1_t), .B1_t(T8_1_t), .A1_f(M40_1_f), .B1_f(T8_1_f), .Z0_t(M47_0_t), .Z0_f(M47_0_f), .Z1_t(M47_1_t), .Z1_f(M47_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M48_U1 (.A0_t(M39_0_t), .B0_t(X0_t[0]), .A0_f(M39_0_f), .B0_f(X0_f[0]), .A1_t(M39_1_t), .B1_t(X1_t[0]), .A1_f(M39_1_f), .B1_f(X1_f[0]), .Z0_t(M48_0_t), .Z0_f(M48_0_f), .Z1_t(M48_1_t), .Z1_f(M48_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M49_U1 (.A0_t(M43_0_t), .B0_t(T16_0_t), .A0_f(M43_0_f), .B0_f(T16_0_f), .A1_t(M43_1_t), .B1_t(T16_1_t), .A1_f(M43_1_f), .B1_f(T16_1_f), .Z0_t(M49_0_t), .Z0_f(M49_0_f), .Z1_t(M49_1_t), .Z1_f(M49_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M50_U1 (.A0_t(M38_0_t), .B0_t(T9_0_t), .A0_f(M38_0_f), .B0_f(T9_0_f), .A1_t(M38_1_t), .B1_t(T9_1_t), .A1_f(M38_1_f), .B1_f(T9_1_f), .Z0_t(M50_0_t), .Z0_f(M50_0_f), .Z1_t(M50_1_t), .Z1_f(M50_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M51_U1 (.A0_t(M37_0_t), .B0_t(T17_0_t), .A0_f(M37_0_f), .B0_f(T17_0_f), .A1_t(M37_1_t), .B1_t(T17_1_t), .A1_f(M37_1_f), .B1_f(T17_1_f), .Z0_t(M51_0_t), .Z0_f(M51_0_f), .Z1_t(M51_1_t), .Z1_f(M51_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M52_U1 (.A0_t(M42_0_t), .B0_t(T15_0_t), .A0_f(M42_0_f), .B0_f(T15_0_f), .A1_t(M42_1_t), .B1_t(T15_1_t), .A1_f(M42_1_f), .B1_f(T15_1_f), .Z0_t(M52_0_t), .Z0_f(M52_0_f), .Z1_t(M52_1_t), .Z1_f(M52_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M53_U1 (.A0_t(M45_0_t), .B0_t(T27_0_t), .A0_f(M45_0_f), .B0_f(T27_0_f), .A1_t(M45_1_t), .B1_t(T27_1_t), .A1_f(M45_1_f), .B1_f(T27_1_f), .Z0_t(M53_0_t), .Z0_f(M53_0_f), .Z1_t(M53_1_t), .Z1_f(M53_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M54_U1 (.A0_t(M41_0_t), .B0_t(T10_0_t), .A0_f(M41_0_f), .B0_f(T10_0_f), .A1_t(M41_1_t), .B1_t(T10_1_t), .A1_f(M41_1_f), .B1_f(T10_1_f), .Z0_t(M54_0_t), .Z0_f(M54_0_f), .Z1_t(M54_1_t), .Z1_f(M54_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M55_U1 (.A0_t(M44_0_t), .B0_t(T13_0_t), .A0_f(M44_0_f), .B0_f(T13_0_f), .A1_t(M44_1_t), .B1_t(T13_1_t), .A1_f(M44_1_f), .B1_f(T13_1_f), .Z0_t(M55_0_t), .Z0_f(M55_0_f), .Z1_t(M55_1_t), .Z1_f(M55_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M56_U1 (.A0_t(M40_0_t), .B0_t(T23_0_t), .A0_f(M40_0_f), .B0_f(T23_0_f), .A1_t(M40_1_t), .B1_t(T23_1_t), .A1_f(M40_1_f), .B1_f(T23_1_f), .Z0_t(M56_0_t), .Z0_f(M56_0_f), .Z1_t(M56_1_t), .Z1_f(M56_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M57_U1 (.A0_t(M39_0_t), .B0_t(T19_0_t), .A0_f(M39_0_f), .B0_f(T19_0_f), .A1_t(M39_1_t), .B1_t(T19_1_t), .A1_f(M39_1_f), .B1_f(T19_1_f), .Z0_t(M57_0_t), .Z0_f(M57_0_f), .Z1_t(M57_1_t), .Z1_f(M57_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M58_U1 (.A0_t(M43_0_t), .B0_t(T3_0_t), .A0_f(M43_0_f), .B0_f(T3_0_f), .A1_t(M43_1_t), .B1_t(T3_1_t), .A1_f(M43_1_f), .B1_f(T3_1_f), .Z0_t(M58_0_t), .Z0_f(M58_0_f), .Z1_t(M58_1_t), .Z1_f(M58_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M59_U1 (.A0_t(M38_0_t), .B0_t(T22_0_t), .A0_f(M38_0_f), .B0_f(T22_0_f), .A1_t(M38_1_t), .B1_t(T22_1_t), .A1_f(M38_1_f), .B1_f(T22_1_f), .Z0_t(M59_0_t), .Z0_f(M59_0_f), .Z1_t(M59_1_t), .Z1_f(M59_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M60_U1 (.A0_t(M37_0_t), .B0_t(T20_0_t), .A0_f(M37_0_f), .B0_f(T20_0_f), .A1_t(M37_1_t), .B1_t(T20_1_t), .A1_f(M37_1_f), .B1_f(T20_1_f), .Z0_t(M60_0_t), .Z0_f(M60_0_f), .Z1_t(M60_1_t), .Z1_f(M60_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M61_U1 (.A0_t(M42_0_t), .B0_t(T1_0_t), .A0_f(M42_0_f), .B0_f(T1_0_f), .A1_t(M42_1_t), .B1_t(T1_1_t), .A1_f(M42_1_f), .B1_f(T1_1_f), .Z0_t(M61_0_t), .Z0_f(M61_0_f), .Z1_t(M61_1_t), .Z1_f(M61_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M62_U1 (.A0_t(M45_0_t), .B0_t(T4_0_t), .A0_f(M45_0_f), .B0_f(T4_0_f), .A1_t(M45_1_t), .B1_t(T4_1_t), .A1_f(M45_1_f), .B1_f(T4_1_f), .Z0_t(M62_0_t), .Z0_f(M62_0_f), .Z1_t(M62_1_t), .Z1_f(M62_1_f), .CLK(clk));
    (* Keep *) nonlinear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) AND_M63_U1 (.A0_t(M41_0_t), .B0_t(T2_0_t), .A0_f(M41_0_f), .B0_f(T2_0_f), .A1_t(M41_1_t), .B1_t(T2_1_t), .A1_f(M41_1_f), .B1_f(T2_1_f), .Z0_t(M63_0_t), .Z0_f(M63_0_f), .Z1_t(M63_1_t), .Z1_f(M63_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L0_U1  (.A0_t(M61_0_t), .B0_t(M62_0_t), .A0_f(M61_0_f), .B0_f(M62_0_f), .A1_t(M61_1_t), .B1_t(M62_1_t), .A1_f(M61_1_f), .B1_f(M62_1_f), .Z0_t(L0_0_t), .Z0_f(L0_0_f), .Z1_t(L0_1_t), .Z1_f(L0_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L1_U1  (.A0_t(M50_0_t), .B0_t(M56_0_t), .A0_f(M50_0_f), .B0_f(M56_0_f), .A1_t(M50_1_t), .B1_t(M56_1_t), .A1_f(M50_1_f), .B1_f(M56_1_f), .Z0_t(L1_0_t), .Z0_f(L1_0_f), .Z1_t(L1_1_t), .Z1_f(L1_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L2_U1  (.A0_t(M46_0_t), .B0_t(M48_0_t), .A0_f(M46_0_f), .B0_f(M48_0_f), .A1_t(M46_1_t), .B1_t(M48_1_t), .A1_f(M46_1_f), .B1_f(M48_1_f), .Z0_t(L2_0_t), .Z0_f(L2_0_f), .Z1_t(L2_1_t), .Z1_f(L2_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L3_U1  (.A0_t(M47_0_t), .B0_t(M55_0_t), .A0_f(M47_0_f), .B0_f(M55_0_f), .A1_t(M47_1_t), .B1_t(M55_1_t), .A1_f(M47_1_f), .B1_f(M55_1_f), .Z0_t(L3_0_t), .Z0_f(L3_0_f), .Z1_t(L3_1_t), .Z1_f(L3_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L4_U1  (.A0_t(M54_0_t), .B0_t(M58_0_t), .A0_f(M54_0_f), .B0_f(M58_0_f), .A1_t(M54_1_t), .B1_t(M58_1_t), .A1_f(M54_1_f), .B1_f(M58_1_f), .Z0_t(L4_0_t), .Z0_f(L4_0_f), .Z1_t(L4_1_t), .Z1_f(L4_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L5_U1  (.A0_t(M49_0_t), .B0_t(M61_0_t), .A0_f(M49_0_f), .B0_f(M61_0_f), .A1_t(M49_1_t), .B1_t(M61_1_t), .A1_f(M49_1_f), .B1_f(M61_1_f), .Z0_t(L5_0_t), .Z0_f(L5_0_f), .Z1_t(L5_1_t), .Z1_f(L5_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L6_U1  (.A0_t(M62_0_t), .B0_t(L5_0_t), .A0_f(M62_0_f), .B0_f(L5_0_f), .A1_t(M62_1_t), .B1_t(L5_1_t), .A1_f(M62_1_f), .B1_f(L5_1_f), .Z0_t(L6_0_t), .Z0_f(L6_0_f), .Z1_t(L6_1_t), .Z1_f(L6_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L7_U1  (.A0_t(M46_0_t), .B0_t(L3_0_t), .A0_f(M46_0_f), .B0_f(L3_0_f), .A1_t(M46_1_t), .B1_t(L3_1_t), .A1_f(M46_1_f), .B1_f(L3_1_f), .Z0_t(L7_0_t), .Z0_f(L7_0_f), .Z1_t(L7_1_t), .Z1_f(L7_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L8_U1  (.A0_t(M51_0_t), .B0_t(M59_0_t), .A0_f(M51_0_f), .B0_f(M59_0_f), .A1_t(M51_1_t), .B1_t(M59_1_t), .A1_f(M51_1_f), .B1_f(M59_1_f), .Z0_t(L8_0_t), .Z0_f(L8_0_f), .Z1_t(L8_1_t), .Z1_f(L8_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L9_U1  (.A0_t(M52_0_t), .B0_t(M53_0_t), .A0_f(M52_0_f), .B0_f(M53_0_f), .A1_t(M52_1_t), .B1_t(M53_1_t), .A1_f(M52_1_f), .B1_f(M53_1_f), .Z0_t(L9_0_t), .Z0_f(L9_0_f), .Z1_t(L9_1_t), .Z1_f(L9_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L10_U1 (.A0_t(M53_0_t), .B0_t(L4_0_t), .A0_f(M53_0_f), .B0_f(L4_0_f), .A1_t(M53_1_t), .B1_t(L4_1_t), .A1_f(M53_1_f), .B1_f(L4_1_f), .Z0_t(L10_0_t), .Z0_f(L10_0_f), .Z1_t(L10_1_t), .Z1_f(L10_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L11_U1 (.A0_t(M60_0_t), .B0_t(L2_0_t), .A0_f(M60_0_f), .B0_f(L2_0_f), .A1_t(M60_1_t), .B1_t(L2_1_t), .A1_f(M60_1_f), .B1_f(L2_1_f), .Z0_t(L11_0_t), .Z0_f(L11_0_f), .Z1_t(L11_1_t), .Z1_f(L11_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L12_U1 (.A0_t(M48_0_t), .B0_t(M51_0_t), .A0_f(M48_0_f), .B0_f(M51_0_f), .A1_t(M48_1_t), .B1_t(M51_1_t), .A1_f(M48_1_f), .B1_f(M51_1_f), .Z0_t(L12_0_t), .Z0_f(L12_0_f), .Z1_t(L12_1_t), .Z1_f(L12_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L13_U1 (.A0_t(M50_0_t), .B0_t(L0_0_t), .A0_f(M50_0_f), .B0_f(L0_0_f), .A1_t(M50_1_t), .B1_t(L0_1_t), .A1_f(M50_1_f), .B1_f(L0_1_f), .Z0_t(L13_0_t), .Z0_f(L13_0_f), .Z1_t(L13_1_t), .Z1_f(L13_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L14_U1 (.A0_t(M52_0_t), .B0_t(M61_0_t), .A0_f(M52_0_f), .B0_f(M61_0_f), .A1_t(M52_1_t), .B1_t(M61_1_t), .A1_f(M52_1_f), .B1_f(M61_1_f), .Z0_t(L14_0_t), .Z0_f(L14_0_f), .Z1_t(L14_1_t), .Z1_f(L14_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L15_U1 (.A0_t(M55_0_t), .B0_t(L1_0_t), .A0_f(M55_0_f), .B0_f(L1_0_f), .A1_t(M55_1_t), .B1_t(L1_1_t), .A1_f(M55_1_f), .B1_f(L1_1_f), .Z0_t(L15_0_t), .Z0_f(L15_0_f), .Z1_t(L15_1_t), .Z1_f(L15_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L16_U1 (.A0_t(M56_0_t), .B0_t(L0_0_t), .A0_f(M56_0_f), .B0_f(L0_0_f), .A1_t(M56_1_t), .B1_t(L0_1_t), .A1_f(M56_1_f), .B1_f(L0_1_f), .Z0_t(L16_0_t), .Z0_f(L16_0_f), .Z1_t(L16_1_t), .Z1_f(L16_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L17_U1 (.A0_t(M57_0_t), .B0_t(L1_0_t), .A0_f(M57_0_f), .B0_f(L1_0_f), .A1_t(M57_1_t), .B1_t(L1_1_t), .A1_f(M57_1_f), .B1_f(L1_1_f), .Z0_t(L17_0_t), .Z0_f(L17_0_f), .Z1_t(L17_1_t), .Z1_f(L17_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L18_U1 (.A0_t(M58_0_t), .B0_t(L8_0_t), .A0_f(M58_0_f), .B0_f(L8_0_f), .A1_t(M58_1_t), .B1_t(L8_1_t), .A1_f(M58_1_f), .B1_f(L8_1_f), .Z0_t(L18_0_t), .Z0_f(L18_0_f), .Z1_t(L18_1_t), .Z1_f(L18_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L19_U1 (.A0_t(M63_0_t), .B0_t(L4_0_t), .A0_f(M63_0_f), .B0_f(L4_0_f), .A1_t(M63_1_t), .B1_t(L4_1_t), .A1_f(M63_1_f), .B1_f(L4_1_f), .Z0_t(L19_0_t), .Z0_f(L19_0_f), .Z1_t(L19_1_t), .Z1_f(L19_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L20_U1 (.A0_t(L0_0_t), .B0_t(L1_0_t), .A0_f(L0_0_f), .B0_f(L1_0_f), .A1_t(L0_1_t), .B1_t(L1_1_t), .A1_f(L0_1_f), .B1_f(L1_1_f), .Z0_t(L20_0_t), .Z0_f(L20_0_f), .Z1_t(L20_1_t), .Z1_f(L20_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L21_U1 (.A0_t(L1_0_t), .B0_t(L7_0_t), .A0_f(L1_0_f), .B0_f(L7_0_f), .A1_t(L1_1_t), .B1_t(L7_1_t), .A1_f(L1_1_f), .B1_f(L7_1_f), .Z0_t(L21_0_t), .Z0_f(L21_0_f), .Z1_t(L21_1_t), .Z1_f(L21_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L22_U1 (.A0_t(L3_0_t), .B0_t(L12_0_t), .A0_f(L3_0_f), .B0_f(L12_0_f), .A1_t(L3_1_t), .B1_t(L12_1_t), .A1_f(L3_1_f), .B1_f(L12_1_f), .Z0_t(L22_0_t), .Z0_f(L22_0_f), .Z1_t(L22_1_t), .Z1_f(L22_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L23_U1 (.A0_t(L18_0_t), .B0_t(L2_0_t), .A0_f(L18_0_f), .B0_f(L2_0_f), .A1_t(L18_1_t), .B1_t(L2_1_t), .A1_f(L18_1_f), .B1_f(L2_1_f), .Z0_t(L23_0_t), .Z0_f(L23_0_f), .Z1_t(L23_1_t), .Z1_f(L23_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L24_U1 (.A0_t(L15_0_t), .B0_t(L9_0_t), .A0_f(L15_0_f), .B0_f(L9_0_f), .A1_t(L15_1_t), .B1_t(L9_1_t), .A1_f(L15_1_f), .B1_f(L9_1_f), .Z0_t(L24_0_t), .Z0_f(L24_0_f), .Z1_t(L24_1_t), .Z1_f(L24_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L25_U1 (.A0_t(L6_0_t), .B0_t(L10_0_t), .A0_f(L6_0_f), .B0_f(L10_0_f), .A1_t(L6_1_t), .B1_t(L10_1_t), .A1_f(L6_1_f), .B1_f(L10_1_f), .Z0_t(L25_0_t), .Z0_f(L25_0_f), .Z1_t(L25_1_t), .Z1_f(L25_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L26_U1 (.A0_t(L7_0_t), .B0_t(L9_0_t), .A0_f(L7_0_f), .B0_f(L9_0_f), .A1_t(L7_1_t), .B1_t(L9_1_t), .A1_f(L7_1_f), .B1_f(L9_1_f), .Z0_t(L26_0_t), .Z0_f(L26_0_f), .Z1_t(L26_1_t), .Z1_f(L26_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L27_U1 (.A0_t(L8_0_t), .B0_t(L10_0_t), .A0_f(L8_0_f), .B0_f(L10_0_f), .A1_t(L8_1_t), .B1_t(L10_1_t), .A1_f(L8_1_f), .B1_f(L10_1_f), .Z0_t(L27_0_t), .Z0_f(L27_0_f), .Z1_t(L27_1_t), .Z1_f(L27_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L28_U1 (.A0_t(L11_0_t), .B0_t(L14_0_t), .A0_f(L11_0_f), .B0_f(L14_0_f), .A1_t(L11_1_t), .B1_t(L14_1_t), .A1_f(L11_1_f), .B1_f(L14_1_f), .Z0_t(L28_0_t), .Z0_f(L28_0_f), .Z1_t(L28_1_t), .Z1_f(L28_1_f), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b0)) XOR_L29_U1 (.A0_t(L11_0_t), .B0_t(L17_0_t), .A0_f(L11_0_f), .B0_f(L17_0_f), .A1_t(L11_1_t), .B1_t(L17_1_t), .A1_f(L11_1_f), .B1_f(L17_1_f), .Z0_t(L29_0_t), .Z0_f(L29_0_f), .Z1_t(L29_1_t), .Z1_f(L29_1_f), .CLK(clk));
    
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) XOR_S0_U1  (.A0_t(L6_0_t), .B0_t(L24_0_t), .A0_f(L6_0_f), .B0_f(L24_0_f), .A1_t(L6_1_t), .B1_t(L24_1_t), .A1_f(L6_1_f), .B1_f(L24_1_f), .Z0_t(O0_t[7]), .Z0_f(O0_f[7]), .Z1_t(O1_t[7]), .Z1_f(O1_f[7]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b1), .FF(1'b1)) XOR_S1_U1  (.A0_t(L16_0_t), .B0_t(L26_0_t), .A0_f(L16_0_f), .B0_f(L26_0_f), .A1_t(L16_1_t), .B1_t(L26_1_t), .A1_f(L16_1_f), .B1_f(L26_1_f), .Z0_t(O0_t[6]), .Z0_f(O0_f[6]), .Z1_t(O1_t[6]), .Z1_f(O1_f[6]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b1), .FF(1'b1)) XOR_S2_U1  (.A0_t(L19_0_t), .B0_t(L28_0_t), .A0_f(L19_0_f), .B0_f(L28_0_f), .A1_t(L19_1_t), .B1_t(L28_1_t), .A1_f(L19_1_f), .B1_f(L28_1_f), .Z0_t(O0_t[5]), .Z0_f(O0_f[5]), .Z1_t(O1_t[5]), .Z1_f(O1_f[5]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) XOR_S3_U1  (.A0_t(L6_0_t), .B0_t(L21_0_t), .A0_f(L6_0_f), .B0_f(L21_0_f), .A1_t(L6_1_t), .B1_t(L21_1_t), .A1_f(L6_1_f), .B1_f(L21_1_f), .Z0_t(O0_t[4]), .Z0_f(O0_f[4]), .Z1_t(O1_t[4]), .Z1_f(O1_f[4]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) XOR_S4_U1  (.A0_t(L20_0_t), .B0_t(L22_0_t), .A0_f(L20_0_f), .B0_f(L22_0_f), .A1_t(L20_1_t), .B1_t(L22_1_t), .A1_f(L20_1_f), .B1_f(L22_1_f), .Z0_t(O0_t[3]), .Z0_f(O0_f[3]), .Z1_t(O1_t[3]), .Z1_f(O1_f[3]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b0), .FF(1'b1)) XOR_S5_U1  (.A0_t(L25_0_t), .B0_t(L29_0_t), .A0_f(L25_0_f), .B0_f(L29_0_f), .A1_t(L25_1_t), .B1_t(L29_1_t), .A1_f(L25_1_f), .B1_f(L29_1_f), .Z0_t(O0_t[2]), .Z0_f(O0_f[2]), .Z1_t(O1_t[2]), .Z1_f(O1_f[2]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b1), .FF(1'b1)) XOR_S6_U1  (.A0_t(L13_0_t), .B0_t(L27_0_t), .A0_f(L13_0_f), .B0_f(L27_0_f), .A1_t(L13_1_t), .B1_t(L27_1_t), .A1_f(L13_1_f), .B1_f(L27_1_f), .Z0_t(O0_t[1]), .Z0_f(O0_f[1]), .Z1_t(O1_t[1]), .Z1_f(O1_f[1]), .CLK(clk));
    (* Keep *)    linear_LMDPL_primitive #(.CA(1'b0), .CB(1'b0), .CZ(1'b1), .FF(1'b1)) XOR_S7_U1  (.A0_t(L6_0_t), .B0_t(L23_0_t), .A0_f(L6_0_f), .B0_f(L23_0_f), .A1_t(L6_1_t), .B1_t(L23_1_t), .A1_f(L6_1_f), .B1_f(L23_1_f), .Z0_t(O0_t[0]), .Z0_f(O0_f[0]), .Z1_t(O1_t[0]), .Z1_f(O1_f[0]), .CLK(clk));

    assign value_out_s0_t[0] = O0_t[0];
    assign value_out_s0_f[0] = O0_f[0];
    assign value_out_s1_t[0] = O1_t[0];
    assign value_out_s1_f[0] = O1_f[0];

    assign value_out_s0_t[1] = O0_t[1];
    assign value_out_s0_f[1] = O0_f[1];
    assign value_out_s1_t[1] = O1_t[1];
    assign value_out_s1_f[1] = O1_f[1];

    assign value_out_s0_t[2] = O0_t[2];
    assign value_out_s0_f[2] = O0_f[2];
    assign value_out_s1_t[2] = O1_t[2];
    assign value_out_s1_f[2] = O1_f[2];

    assign value_out_s0_t[3] = O0_t[3];
    assign value_out_s0_f[3] = O0_f[3];
    assign value_out_s1_t[3] = O1_t[3];
    assign value_out_s1_f[3] = O1_f[3];
    
    assign value_out_s0_t[4] = O0_t[4];
    assign value_out_s0_f[4] = O0_f[4];
    assign value_out_s1_t[4] = O1_t[4];
    assign value_out_s1_f[4] = O1_f[4];

    assign value_out_s0_t[5] = O0_t[5];
    assign value_out_s0_f[5] = O0_f[5];
    assign value_out_s1_t[5] = O1_t[5];
    assign value_out_s1_f[5] = O1_f[5];
    
    assign value_out_s0_t[6] = O0_t[6];
    assign value_out_s0_f[6] = O0_f[6];
    assign value_out_s1_t[6] = O1_t[6];
    assign value_out_s1_f[6] = O1_f[6];

    assign value_out_s0_t[7] = O0_t[7];
    assign value_out_s0_f[7] = O0_f[7];
    assign value_out_s1_t[7] = O1_t[7];
    assign value_out_s1_f[7] = O1_f[7];

//-----------


//  pre1, pre2, 1'b0  : to be discussed
    

    assign io_oeb = 21'b111111110000000000000;

endmodule
