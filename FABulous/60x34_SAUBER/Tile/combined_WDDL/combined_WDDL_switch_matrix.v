 // NumberOfConfigBits: 168
module combined_WDDL_switch_matrix
    #(
        parameter NoConfigBits=168
    )
    (
        input from_EA_1s0,
        input from_EA_1s1,
        input from_EB_1s0,
        input from_EB_1s1,
        input from_EC_1s0,
        input from_EC_1s1,
        input from_ED_1s0,
        input from_ED_1s1,
        input from_EF_1s0,
        input from_EF_1s1,
        input from_EG_1s0,
        input from_EG_1s1,
        input from_EH_1s0,
        input from_EH_1s1,
        input from_EI_1s0,
        input from_EI_1s1,
        input from_WA_1s0,
        input from_WA_1s1,
        input from_WB_1s0,
        input from_WB_1s1,
        input from_WC_1s0,
        input from_WC_1s1,
        input from_WD_1s0,
        input from_WD_1s1,
        input from_WF_1s0,
        input from_WF_1s1,
        input from_WG_1s0,
        input from_WG_1s1,
        input from_WH_1s0,
        input from_WH_1s1,
        input from_WI_1s0,
        input from_WI_1s1,
        input from_NA_1s0,
        input from_NA_1s1,
        input from_NB_1s0,
        input from_NB_1s1,
        input from_NC_1s0,
        input from_NC_1s1,
        input from_ND_1s0,
        input from_ND_1s1,
        input from_NF_1s0,
        input from_NF_1s1,
        input from_NG_1s0,
        input from_NG_1s1,
        input from_NH_1s0,
        input from_NH_1s1,
        input from_NI_1s0,
        input from_NI_1s1,
        input from_SA_1s0,
        input from_SA_1s1,
        input from_SB_1s0,
        input from_SB_1s1,
        input from_SC_1s0,
        input from_SC_1s1,
        input from_SD_1s0,
        input from_SD_1s1,
        input from_SF_1s0,
        input from_SF_1s1,
        input from_SG_1s0,
        input from_SG_1s1,
        input from_SH_1s0,
        input from_SH_1s1,
        input from_SI_1s0,
        input from_SI_1s1,
        input Z0_t,
        input Z0_f,
        input from_J_IA1_1s0,
        input from_J_IA1_1s1,
        input from_J_IA2_1s0,
        input from_J_IA2_1s1,
        input from_J_IB1_1s0,
        input from_J_IB1_1s1,
        input from_J_IB2_1s0,
        input from_J_IB2_1s1,
        output to_EA_1s0,
        output to_EA_1s1,
        output to_EB_1s0,
        output to_EB_1s1,
        output to_EC_1s0,
        output to_EC_1s1,
        output to_ED_1s0,
        output to_ED_1s1,
        output to_EF_1s0,
        output to_EF_1s1,
        output to_EG_1s0,
        output to_EG_1s1,
        output to_EH_1s0,
        output to_EH_1s1,
        output to_EI_1s0,
        output to_EI_1s1,
        output to_WA_1s0,
        output to_WA_1s1,
        output to_WB_1s0,
        output to_WB_1s1,
        output to_WC_1s0,
        output to_WC_1s1,
        output to_WD_1s0,
        output to_WD_1s1,
        output to_WF_1s0,
        output to_WF_1s1,
        output to_WG_1s0,
        output to_WG_1s1,
        output to_WH_1s0,
        output to_WH_1s1,
        output to_WI_1s0,
        output to_WI_1s1,
        output to_NA_1s0,
        output to_NA_1s1,
        output to_NB_1s0,
        output to_NB_1s1,
        output to_NC_1s0,
        output to_NC_1s1,
        output to_ND_1s0,
        output to_ND_1s1,
        output to_NF_1s0,
        output to_NF_1s1,
        output to_NG_1s0,
        output to_NG_1s1,
        output to_NH_1s0,
        output to_NH_1s1,
        output to_NI_1s0,
        output to_NI_1s1,
        output to_SA_1s0,
        output to_SA_1s1,
        output to_SB_1s0,
        output to_SB_1s1,
        output to_SC_1s0,
        output to_SC_1s1,
        output to_SD_1s0,
        output to_SD_1s1,
        output to_SF_1s0,
        output to_SF_1s1,
        output to_SG_1s0,
        output to_SG_1s1,
        output to_SH_1s0,
        output to_SH_1s1,
        output to_SI_1s0,
        output to_SI_1s1,
        output A0_t,
        output B0_t,
        output A0_f,
        output B0_f,
        output to_J_IA1_1s0,
        output to_J_IA1_1s1,
        output to_J_IA2_1s0,
        output to_J_IA2_1s1,
        output to_J_IB1_1s0,
        output to_J_IB1_1s1,
        output to_J_IB2_1s0,
        output to_J_IB2_1s1,
 //global
        input [NoConfigBits-1:0] ConfigBits,
        input [NoConfigBits-1:0] ConfigBits_N
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[4-1:0] to_EA_1s0_input;
wire[4-1:0] to_EA_1s1_input;
wire[4-1:0] to_EB_1s0_input;
wire[4-1:0] to_EB_1s1_input;
wire[4-1:0] to_EC_1s0_input;
wire[4-1:0] to_EC_1s1_input;
wire[4-1:0] to_ED_1s0_input;
wire[4-1:0] to_ED_1s1_input;
wire[4-1:0] to_EF_1s0_input;
wire[4-1:0] to_EF_1s1_input;
wire[4-1:0] to_EG_1s0_input;
wire[4-1:0] to_EG_1s1_input;
wire[4-1:0] to_EH_1s0_input;
wire[4-1:0] to_EH_1s1_input;
wire[4-1:0] to_EI_1s0_input;
wire[4-1:0] to_EI_1s1_input;
wire[4-1:0] to_WA_1s0_input;
wire[4-1:0] to_WA_1s1_input;
wire[4-1:0] to_WB_1s0_input;
wire[4-1:0] to_WB_1s1_input;
wire[4-1:0] to_WC_1s0_input;
wire[4-1:0] to_WC_1s1_input;
wire[4-1:0] to_WD_1s0_input;
wire[4-1:0] to_WD_1s1_input;
wire[4-1:0] to_WF_1s0_input;
wire[4-1:0] to_WF_1s1_input;
wire[4-1:0] to_WG_1s0_input;
wire[4-1:0] to_WG_1s1_input;
wire[4-1:0] to_WH_1s0_input;
wire[4-1:0] to_WH_1s1_input;
wire[4-1:0] to_WI_1s0_input;
wire[4-1:0] to_WI_1s1_input;
wire[4-1:0] to_NA_1s0_input;
wire[4-1:0] to_NA_1s1_input;
wire[4-1:0] to_NB_1s0_input;
wire[4-1:0] to_NB_1s1_input;
wire[4-1:0] to_NC_1s0_input;
wire[4-1:0] to_NC_1s1_input;
wire[4-1:0] to_ND_1s0_input;
wire[4-1:0] to_ND_1s1_input;
wire[4-1:0] to_NF_1s0_input;
wire[4-1:0] to_NF_1s1_input;
wire[4-1:0] to_NG_1s0_input;
wire[4-1:0] to_NG_1s1_input;
wire[4-1:0] to_NH_1s0_input;
wire[4-1:0] to_NH_1s1_input;
wire[4-1:0] to_NI_1s0_input;
wire[4-1:0] to_NI_1s1_input;
wire[4-1:0] to_SA_1s0_input;
wire[4-1:0] to_SA_1s1_input;
wire[4-1:0] to_SB_1s0_input;
wire[4-1:0] to_SB_1s1_input;
wire[4-1:0] to_SC_1s0_input;
wire[4-1:0] to_SC_1s1_input;
wire[4-1:0] to_SD_1s0_input;
wire[4-1:0] to_SD_1s1_input;
wire[4-1:0] to_SF_1s0_input;
wire[4-1:0] to_SF_1s1_input;
wire[4-1:0] to_SG_1s0_input;
wire[4-1:0] to_SG_1s1_input;
wire[4-1:0] to_SH_1s0_input;
wire[4-1:0] to_SH_1s1_input;
wire[4-1:0] to_SI_1s0_input;
wire[4-1:0] to_SI_1s1_input;
wire[4-1:0] A0_t_input;
wire[4-1:0] B0_t_input;
wire[4-1:0] A0_f_input;
wire[4-1:0] B0_f_input;
wire[16-1:0] to_J_IA1_1s0_input;
wire[16-1:0] to_J_IA1_1s1_input;
wire[16-1:0] to_J_IA2_1s0_input;
wire[16-1:0] to_J_IA2_1s1_input;
wire[16-1:0] to_J_IB1_1s0_input;
wire[16-1:0] to_J_IB1_1s1_input;
wire[16-1:0] to_J_IB2_1s0_input;
wire[16-1:0] to_J_IB2_1s1_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_EA_1s0 MUX-4
assign to_EA_1s0_input = {Z0_t,from_SA_1s0,from_NA_1s0,from_EA_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EA_1s0 (
    .A0(to_EA_1s0_input[0]),
    .A1(to_EA_1s0_input[1]),
    .A2(to_EA_1s0_input[2]),
    .A3(to_EA_1s0_input[3]),
    .S0(ConfigBits[0+0]),
    .S0N(ConfigBits_N[0+0]),
    .S1(ConfigBits[0+1]),
    .S1N(ConfigBits_N[0+1]),
    .X(to_EA_1s0)
);

 //switch matrix multiplexer to_EA_1s1 MUX-4
assign to_EA_1s1_input = {Z0_f,from_SA_1s1,from_NA_1s1,from_EA_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EA_1s1 (
    .A0(to_EA_1s1_input[0]),
    .A1(to_EA_1s1_input[1]),
    .A2(to_EA_1s1_input[2]),
    .A3(to_EA_1s1_input[3]),
    .S0(ConfigBits[2+0]),
    .S0N(ConfigBits_N[2+0]),
    .S1(ConfigBits[2+1]),
    .S1N(ConfigBits_N[2+1]),
    .X(to_EA_1s1)
);

 //switch matrix multiplexer to_EB_1s0 MUX-4
assign to_EB_1s0_input = {Z0_t,from_SB_1s0,from_NB_1s0,from_EB_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EB_1s0 (
    .A0(to_EB_1s0_input[0]),
    .A1(to_EB_1s0_input[1]),
    .A2(to_EB_1s0_input[2]),
    .A3(to_EB_1s0_input[3]),
    .S0(ConfigBits[4+0]),
    .S0N(ConfigBits_N[4+0]),
    .S1(ConfigBits[4+1]),
    .S1N(ConfigBits_N[4+1]),
    .X(to_EB_1s0)
);

 //switch matrix multiplexer to_EB_1s1 MUX-4
assign to_EB_1s1_input = {Z0_f,from_SB_1s1,from_NB_1s1,from_EB_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EB_1s1 (
    .A0(to_EB_1s1_input[0]),
    .A1(to_EB_1s1_input[1]),
    .A2(to_EB_1s1_input[2]),
    .A3(to_EB_1s1_input[3]),
    .S0(ConfigBits[6+0]),
    .S0N(ConfigBits_N[6+0]),
    .S1(ConfigBits[6+1]),
    .S1N(ConfigBits_N[6+1]),
    .X(to_EB_1s1)
);

 //switch matrix multiplexer to_EC_1s0 MUX-4
assign to_EC_1s0_input = {Z0_t,from_SC_1s0,from_NC_1s0,from_EC_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EC_1s0 (
    .A0(to_EC_1s0_input[0]),
    .A1(to_EC_1s0_input[1]),
    .A2(to_EC_1s0_input[2]),
    .A3(to_EC_1s0_input[3]),
    .S0(ConfigBits[8+0]),
    .S0N(ConfigBits_N[8+0]),
    .S1(ConfigBits[8+1]),
    .S1N(ConfigBits_N[8+1]),
    .X(to_EC_1s0)
);

 //switch matrix multiplexer to_EC_1s1 MUX-4
assign to_EC_1s1_input = {Z0_f,from_SC_1s1,from_NC_1s1,from_EC_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EC_1s1 (
    .A0(to_EC_1s1_input[0]),
    .A1(to_EC_1s1_input[1]),
    .A2(to_EC_1s1_input[2]),
    .A3(to_EC_1s1_input[3]),
    .S0(ConfigBits[10+0]),
    .S0N(ConfigBits_N[10+0]),
    .S1(ConfigBits[10+1]),
    .S1N(ConfigBits_N[10+1]),
    .X(to_EC_1s1)
);

 //switch matrix multiplexer to_ED_1s0 MUX-4
assign to_ED_1s0_input = {Z0_t,from_SD_1s0,from_ND_1s0,from_ED_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_ED_1s0 (
    .A0(to_ED_1s0_input[0]),
    .A1(to_ED_1s0_input[1]),
    .A2(to_ED_1s0_input[2]),
    .A3(to_ED_1s0_input[3]),
    .S0(ConfigBits[12+0]),
    .S0N(ConfigBits_N[12+0]),
    .S1(ConfigBits[12+1]),
    .S1N(ConfigBits_N[12+1]),
    .X(to_ED_1s0)
);

 //switch matrix multiplexer to_ED_1s1 MUX-4
assign to_ED_1s1_input = {Z0_f,from_SD_1s1,from_ND_1s1,from_ED_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_ED_1s1 (
    .A0(to_ED_1s1_input[0]),
    .A1(to_ED_1s1_input[1]),
    .A2(to_ED_1s1_input[2]),
    .A3(to_ED_1s1_input[3]),
    .S0(ConfigBits[14+0]),
    .S0N(ConfigBits_N[14+0]),
    .S1(ConfigBits[14+1]),
    .S1N(ConfigBits_N[14+1]),
    .X(to_ED_1s1)
);

 //switch matrix multiplexer to_EF_1s0 MUX-4
assign to_EF_1s0_input = {Z0_t,from_SF_1s0,from_NF_1s0,from_EF_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EF_1s0 (
    .A0(to_EF_1s0_input[0]),
    .A1(to_EF_1s0_input[1]),
    .A2(to_EF_1s0_input[2]),
    .A3(to_EF_1s0_input[3]),
    .S0(ConfigBits[16+0]),
    .S0N(ConfigBits_N[16+0]),
    .S1(ConfigBits[16+1]),
    .S1N(ConfigBits_N[16+1]),
    .X(to_EF_1s0)
);

 //switch matrix multiplexer to_EF_1s1 MUX-4
assign to_EF_1s1_input = {Z0_f,from_SF_1s1,from_NF_1s1,from_EF_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EF_1s1 (
    .A0(to_EF_1s1_input[0]),
    .A1(to_EF_1s1_input[1]),
    .A2(to_EF_1s1_input[2]),
    .A3(to_EF_1s1_input[3]),
    .S0(ConfigBits[18+0]),
    .S0N(ConfigBits_N[18+0]),
    .S1(ConfigBits[18+1]),
    .S1N(ConfigBits_N[18+1]),
    .X(to_EF_1s1)
);

 //switch matrix multiplexer to_EG_1s0 MUX-4
assign to_EG_1s0_input = {Z0_t,from_SG_1s0,from_NG_1s0,from_EG_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EG_1s0 (
    .A0(to_EG_1s0_input[0]),
    .A1(to_EG_1s0_input[1]),
    .A2(to_EG_1s0_input[2]),
    .A3(to_EG_1s0_input[3]),
    .S0(ConfigBits[20+0]),
    .S0N(ConfigBits_N[20+0]),
    .S1(ConfigBits[20+1]),
    .S1N(ConfigBits_N[20+1]),
    .X(to_EG_1s0)
);

 //switch matrix multiplexer to_EG_1s1 MUX-4
assign to_EG_1s1_input = {Z0_f,from_SG_1s1,from_NG_1s1,from_EG_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EG_1s1 (
    .A0(to_EG_1s1_input[0]),
    .A1(to_EG_1s1_input[1]),
    .A2(to_EG_1s1_input[2]),
    .A3(to_EG_1s1_input[3]),
    .S0(ConfigBits[22+0]),
    .S0N(ConfigBits_N[22+0]),
    .S1(ConfigBits[22+1]),
    .S1N(ConfigBits_N[22+1]),
    .X(to_EG_1s1)
);

 //switch matrix multiplexer to_EH_1s0 MUX-4
assign to_EH_1s0_input = {Z0_t,from_SH_1s0,from_NH_1s0,from_EH_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EH_1s0 (
    .A0(to_EH_1s0_input[0]),
    .A1(to_EH_1s0_input[1]),
    .A2(to_EH_1s0_input[2]),
    .A3(to_EH_1s0_input[3]),
    .S0(ConfigBits[24+0]),
    .S0N(ConfigBits_N[24+0]),
    .S1(ConfigBits[24+1]),
    .S1N(ConfigBits_N[24+1]),
    .X(to_EH_1s0)
);

 //switch matrix multiplexer to_EH_1s1 MUX-4
assign to_EH_1s1_input = {Z0_f,from_SH_1s1,from_NH_1s1,from_EH_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EH_1s1 (
    .A0(to_EH_1s1_input[0]),
    .A1(to_EH_1s1_input[1]),
    .A2(to_EH_1s1_input[2]),
    .A3(to_EH_1s1_input[3]),
    .S0(ConfigBits[26+0]),
    .S0N(ConfigBits_N[26+0]),
    .S1(ConfigBits[26+1]),
    .S1N(ConfigBits_N[26+1]),
    .X(to_EH_1s1)
);

 //switch matrix multiplexer to_EI_1s0 MUX-4
assign to_EI_1s0_input = {Z0_t,from_SI_1s0,from_NI_1s0,from_EI_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_EI_1s0 (
    .A0(to_EI_1s0_input[0]),
    .A1(to_EI_1s0_input[1]),
    .A2(to_EI_1s0_input[2]),
    .A3(to_EI_1s0_input[3]),
    .S0(ConfigBits[28+0]),
    .S0N(ConfigBits_N[28+0]),
    .S1(ConfigBits[28+1]),
    .S1N(ConfigBits_N[28+1]),
    .X(to_EI_1s0)
);

 //switch matrix multiplexer to_EI_1s1 MUX-4
assign to_EI_1s1_input = {Z0_f,from_SI_1s1,from_NI_1s1,from_EI_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_EI_1s1 (
    .A0(to_EI_1s1_input[0]),
    .A1(to_EI_1s1_input[1]),
    .A2(to_EI_1s1_input[2]),
    .A3(to_EI_1s1_input[3]),
    .S0(ConfigBits[30+0]),
    .S0N(ConfigBits_N[30+0]),
    .S1(ConfigBits[30+1]),
    .S1N(ConfigBits_N[30+1]),
    .X(to_EI_1s1)
);

 //switch matrix multiplexer to_WA_1s0 MUX-4
assign to_WA_1s0_input = {Z0_t,from_SA_1s0,from_NA_1s0,from_WA_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WA_1s0 (
    .A0(to_WA_1s0_input[0]),
    .A1(to_WA_1s0_input[1]),
    .A2(to_WA_1s0_input[2]),
    .A3(to_WA_1s0_input[3]),
    .S0(ConfigBits[32+0]),
    .S0N(ConfigBits_N[32+0]),
    .S1(ConfigBits[32+1]),
    .S1N(ConfigBits_N[32+1]),
    .X(to_WA_1s0)
);

 //switch matrix multiplexer to_WA_1s1 MUX-4
assign to_WA_1s1_input = {Z0_f,from_SA_1s1,from_NA_1s1,from_WA_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WA_1s1 (
    .A0(to_WA_1s1_input[0]),
    .A1(to_WA_1s1_input[1]),
    .A2(to_WA_1s1_input[2]),
    .A3(to_WA_1s1_input[3]),
    .S0(ConfigBits[34+0]),
    .S0N(ConfigBits_N[34+0]),
    .S1(ConfigBits[34+1]),
    .S1N(ConfigBits_N[34+1]),
    .X(to_WA_1s1)
);

 //switch matrix multiplexer to_WB_1s0 MUX-4
assign to_WB_1s0_input = {Z0_t,from_SB_1s0,from_NB_1s0,from_WB_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WB_1s0 (
    .A0(to_WB_1s0_input[0]),
    .A1(to_WB_1s0_input[1]),
    .A2(to_WB_1s0_input[2]),
    .A3(to_WB_1s0_input[3]),
    .S0(ConfigBits[36+0]),
    .S0N(ConfigBits_N[36+0]),
    .S1(ConfigBits[36+1]),
    .S1N(ConfigBits_N[36+1]),
    .X(to_WB_1s0)
);

 //switch matrix multiplexer to_WB_1s1 MUX-4
assign to_WB_1s1_input = {Z0_f,from_SB_1s1,from_NB_1s1,from_WB_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WB_1s1 (
    .A0(to_WB_1s1_input[0]),
    .A1(to_WB_1s1_input[1]),
    .A2(to_WB_1s1_input[2]),
    .A3(to_WB_1s1_input[3]),
    .S0(ConfigBits[38+0]),
    .S0N(ConfigBits_N[38+0]),
    .S1(ConfigBits[38+1]),
    .S1N(ConfigBits_N[38+1]),
    .X(to_WB_1s1)
);

 //switch matrix multiplexer to_WC_1s0 MUX-4
assign to_WC_1s0_input = {Z0_t,from_SC_1s0,from_NC_1s0,from_WC_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WC_1s0 (
    .A0(to_WC_1s0_input[0]),
    .A1(to_WC_1s0_input[1]),
    .A2(to_WC_1s0_input[2]),
    .A3(to_WC_1s0_input[3]),
    .S0(ConfigBits[40+0]),
    .S0N(ConfigBits_N[40+0]),
    .S1(ConfigBits[40+1]),
    .S1N(ConfigBits_N[40+1]),
    .X(to_WC_1s0)
);

 //switch matrix multiplexer to_WC_1s1 MUX-4
assign to_WC_1s1_input = {Z0_f,from_SC_1s1,from_NC_1s1,from_WC_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WC_1s1 (
    .A0(to_WC_1s1_input[0]),
    .A1(to_WC_1s1_input[1]),
    .A2(to_WC_1s1_input[2]),
    .A3(to_WC_1s1_input[3]),
    .S0(ConfigBits[42+0]),
    .S0N(ConfigBits_N[42+0]),
    .S1(ConfigBits[42+1]),
    .S1N(ConfigBits_N[42+1]),
    .X(to_WC_1s1)
);

 //switch matrix multiplexer to_WD_1s0 MUX-4
assign to_WD_1s0_input = {Z0_t,from_SD_1s0,from_ND_1s0,from_WD_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WD_1s0 (
    .A0(to_WD_1s0_input[0]),
    .A1(to_WD_1s0_input[1]),
    .A2(to_WD_1s0_input[2]),
    .A3(to_WD_1s0_input[3]),
    .S0(ConfigBits[44+0]),
    .S0N(ConfigBits_N[44+0]),
    .S1(ConfigBits[44+1]),
    .S1N(ConfigBits_N[44+1]),
    .X(to_WD_1s0)
);

 //switch matrix multiplexer to_WD_1s1 MUX-4
assign to_WD_1s1_input = {Z0_f,from_SD_1s1,from_ND_1s1,from_WD_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WD_1s1 (
    .A0(to_WD_1s1_input[0]),
    .A1(to_WD_1s1_input[1]),
    .A2(to_WD_1s1_input[2]),
    .A3(to_WD_1s1_input[3]),
    .S0(ConfigBits[46+0]),
    .S0N(ConfigBits_N[46+0]),
    .S1(ConfigBits[46+1]),
    .S1N(ConfigBits_N[46+1]),
    .X(to_WD_1s1)
);

 //switch matrix multiplexer to_WF_1s0 MUX-4
assign to_WF_1s0_input = {Z0_t,from_SF_1s0,from_NF_1s0,from_WF_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WF_1s0 (
    .A0(to_WF_1s0_input[0]),
    .A1(to_WF_1s0_input[1]),
    .A2(to_WF_1s0_input[2]),
    .A3(to_WF_1s0_input[3]),
    .S0(ConfigBits[48+0]),
    .S0N(ConfigBits_N[48+0]),
    .S1(ConfigBits[48+1]),
    .S1N(ConfigBits_N[48+1]),
    .X(to_WF_1s0)
);

 //switch matrix multiplexer to_WF_1s1 MUX-4
assign to_WF_1s1_input = {Z0_f,from_SF_1s1,from_NF_1s1,from_WF_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WF_1s1 (
    .A0(to_WF_1s1_input[0]),
    .A1(to_WF_1s1_input[1]),
    .A2(to_WF_1s1_input[2]),
    .A3(to_WF_1s1_input[3]),
    .S0(ConfigBits[50+0]),
    .S0N(ConfigBits_N[50+0]),
    .S1(ConfigBits[50+1]),
    .S1N(ConfigBits_N[50+1]),
    .X(to_WF_1s1)
);

 //switch matrix multiplexer to_WG_1s0 MUX-4
assign to_WG_1s0_input = {Z0_t,from_SG_1s0,from_NG_1s0,from_WG_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WG_1s0 (
    .A0(to_WG_1s0_input[0]),
    .A1(to_WG_1s0_input[1]),
    .A2(to_WG_1s0_input[2]),
    .A3(to_WG_1s0_input[3]),
    .S0(ConfigBits[52+0]),
    .S0N(ConfigBits_N[52+0]),
    .S1(ConfigBits[52+1]),
    .S1N(ConfigBits_N[52+1]),
    .X(to_WG_1s0)
);

 //switch matrix multiplexer to_WG_1s1 MUX-4
assign to_WG_1s1_input = {Z0_f,from_SG_1s1,from_NG_1s1,from_WG_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WG_1s1 (
    .A0(to_WG_1s1_input[0]),
    .A1(to_WG_1s1_input[1]),
    .A2(to_WG_1s1_input[2]),
    .A3(to_WG_1s1_input[3]),
    .S0(ConfigBits[54+0]),
    .S0N(ConfigBits_N[54+0]),
    .S1(ConfigBits[54+1]),
    .S1N(ConfigBits_N[54+1]),
    .X(to_WG_1s1)
);

 //switch matrix multiplexer to_WH_1s0 MUX-4
assign to_WH_1s0_input = {Z0_t,from_SH_1s0,from_NH_1s0,from_WH_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WH_1s0 (
    .A0(to_WH_1s0_input[0]),
    .A1(to_WH_1s0_input[1]),
    .A2(to_WH_1s0_input[2]),
    .A3(to_WH_1s0_input[3]),
    .S0(ConfigBits[56+0]),
    .S0N(ConfigBits_N[56+0]),
    .S1(ConfigBits[56+1]),
    .S1N(ConfigBits_N[56+1]),
    .X(to_WH_1s0)
);

 //switch matrix multiplexer to_WH_1s1 MUX-4
assign to_WH_1s1_input = {Z0_f,from_SH_1s1,from_NH_1s1,from_WH_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WH_1s1 (
    .A0(to_WH_1s1_input[0]),
    .A1(to_WH_1s1_input[1]),
    .A2(to_WH_1s1_input[2]),
    .A3(to_WH_1s1_input[3]),
    .S0(ConfigBits[58+0]),
    .S0N(ConfigBits_N[58+0]),
    .S1(ConfigBits[58+1]),
    .S1N(ConfigBits_N[58+1]),
    .X(to_WH_1s1)
);

 //switch matrix multiplexer to_WI_1s0 MUX-4
assign to_WI_1s0_input = {Z0_t,from_SI_1s0,from_NI_1s0,from_WI_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_WI_1s0 (
    .A0(to_WI_1s0_input[0]),
    .A1(to_WI_1s0_input[1]),
    .A2(to_WI_1s0_input[2]),
    .A3(to_WI_1s0_input[3]),
    .S0(ConfigBits[60+0]),
    .S0N(ConfigBits_N[60+0]),
    .S1(ConfigBits[60+1]),
    .S1N(ConfigBits_N[60+1]),
    .X(to_WI_1s0)
);

 //switch matrix multiplexer to_WI_1s1 MUX-4
assign to_WI_1s1_input = {Z0_f,from_SI_1s1,from_NI_1s1,from_WI_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_WI_1s1 (
    .A0(to_WI_1s1_input[0]),
    .A1(to_WI_1s1_input[1]),
    .A2(to_WI_1s1_input[2]),
    .A3(to_WI_1s1_input[3]),
    .S0(ConfigBits[62+0]),
    .S0N(ConfigBits_N[62+0]),
    .S1(ConfigBits[62+1]),
    .S1N(ConfigBits_N[62+1]),
    .X(to_WI_1s1)
);

 //switch matrix multiplexer to_NA_1s0 MUX-4
assign to_NA_1s0_input = {Z0_t,from_NA_1s0,from_WA_1s0,from_EA_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NA_1s0 (
    .A0(to_NA_1s0_input[0]),
    .A1(to_NA_1s0_input[1]),
    .A2(to_NA_1s0_input[2]),
    .A3(to_NA_1s0_input[3]),
    .S0(ConfigBits[64+0]),
    .S0N(ConfigBits_N[64+0]),
    .S1(ConfigBits[64+1]),
    .S1N(ConfigBits_N[64+1]),
    .X(to_NA_1s0)
);

 //switch matrix multiplexer to_NA_1s1 MUX-4
assign to_NA_1s1_input = {Z0_f,from_NA_1s1,from_WA_1s1,from_EA_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NA_1s1 (
    .A0(to_NA_1s1_input[0]),
    .A1(to_NA_1s1_input[1]),
    .A2(to_NA_1s1_input[2]),
    .A3(to_NA_1s1_input[3]),
    .S0(ConfigBits[66+0]),
    .S0N(ConfigBits_N[66+0]),
    .S1(ConfigBits[66+1]),
    .S1N(ConfigBits_N[66+1]),
    .X(to_NA_1s1)
);

 //switch matrix multiplexer to_NB_1s0 MUX-4
assign to_NB_1s0_input = {Z0_t,from_NB_1s0,from_WB_1s0,from_EB_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NB_1s0 (
    .A0(to_NB_1s0_input[0]),
    .A1(to_NB_1s0_input[1]),
    .A2(to_NB_1s0_input[2]),
    .A3(to_NB_1s0_input[3]),
    .S0(ConfigBits[68+0]),
    .S0N(ConfigBits_N[68+0]),
    .S1(ConfigBits[68+1]),
    .S1N(ConfigBits_N[68+1]),
    .X(to_NB_1s0)
);

 //switch matrix multiplexer to_NB_1s1 MUX-4
assign to_NB_1s1_input = {Z0_f,from_NB_1s1,from_WB_1s1,from_EB_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NB_1s1 (
    .A0(to_NB_1s1_input[0]),
    .A1(to_NB_1s1_input[1]),
    .A2(to_NB_1s1_input[2]),
    .A3(to_NB_1s1_input[3]),
    .S0(ConfigBits[70+0]),
    .S0N(ConfigBits_N[70+0]),
    .S1(ConfigBits[70+1]),
    .S1N(ConfigBits_N[70+1]),
    .X(to_NB_1s1)
);

 //switch matrix multiplexer to_NC_1s0 MUX-4
assign to_NC_1s0_input = {Z0_t,from_NC_1s0,from_WC_1s0,from_EC_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NC_1s0 (
    .A0(to_NC_1s0_input[0]),
    .A1(to_NC_1s0_input[1]),
    .A2(to_NC_1s0_input[2]),
    .A3(to_NC_1s0_input[3]),
    .S0(ConfigBits[72+0]),
    .S0N(ConfigBits_N[72+0]),
    .S1(ConfigBits[72+1]),
    .S1N(ConfigBits_N[72+1]),
    .X(to_NC_1s0)
);

 //switch matrix multiplexer to_NC_1s1 MUX-4
assign to_NC_1s1_input = {Z0_f,from_NC_1s1,from_WC_1s1,from_EC_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NC_1s1 (
    .A0(to_NC_1s1_input[0]),
    .A1(to_NC_1s1_input[1]),
    .A2(to_NC_1s1_input[2]),
    .A3(to_NC_1s1_input[3]),
    .S0(ConfigBits[74+0]),
    .S0N(ConfigBits_N[74+0]),
    .S1(ConfigBits[74+1]),
    .S1N(ConfigBits_N[74+1]),
    .X(to_NC_1s1)
);

 //switch matrix multiplexer to_ND_1s0 MUX-4
assign to_ND_1s0_input = {Z0_t,from_ND_1s0,from_WD_1s0,from_ED_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_ND_1s0 (
    .A0(to_ND_1s0_input[0]),
    .A1(to_ND_1s0_input[1]),
    .A2(to_ND_1s0_input[2]),
    .A3(to_ND_1s0_input[3]),
    .S0(ConfigBits[76+0]),
    .S0N(ConfigBits_N[76+0]),
    .S1(ConfigBits[76+1]),
    .S1N(ConfigBits_N[76+1]),
    .X(to_ND_1s0)
);

 //switch matrix multiplexer to_ND_1s1 MUX-4
assign to_ND_1s1_input = {Z0_f,from_ND_1s1,from_WD_1s1,from_ED_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_ND_1s1 (
    .A0(to_ND_1s1_input[0]),
    .A1(to_ND_1s1_input[1]),
    .A2(to_ND_1s1_input[2]),
    .A3(to_ND_1s1_input[3]),
    .S0(ConfigBits[78+0]),
    .S0N(ConfigBits_N[78+0]),
    .S1(ConfigBits[78+1]),
    .S1N(ConfigBits_N[78+1]),
    .X(to_ND_1s1)
);

 //switch matrix multiplexer to_NF_1s0 MUX-4
assign to_NF_1s0_input = {Z0_t,from_NF_1s0,from_WF_1s0,from_EF_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NF_1s0 (
    .A0(to_NF_1s0_input[0]),
    .A1(to_NF_1s0_input[1]),
    .A2(to_NF_1s0_input[2]),
    .A3(to_NF_1s0_input[3]),
    .S0(ConfigBits[80+0]),
    .S0N(ConfigBits_N[80+0]),
    .S1(ConfigBits[80+1]),
    .S1N(ConfigBits_N[80+1]),
    .X(to_NF_1s0)
);

 //switch matrix multiplexer to_NF_1s1 MUX-4
assign to_NF_1s1_input = {Z0_f,from_NF_1s1,from_WF_1s1,from_EF_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NF_1s1 (
    .A0(to_NF_1s1_input[0]),
    .A1(to_NF_1s1_input[1]),
    .A2(to_NF_1s1_input[2]),
    .A3(to_NF_1s1_input[3]),
    .S0(ConfigBits[82+0]),
    .S0N(ConfigBits_N[82+0]),
    .S1(ConfigBits[82+1]),
    .S1N(ConfigBits_N[82+1]),
    .X(to_NF_1s1)
);

 //switch matrix multiplexer to_NG_1s0 MUX-4
assign to_NG_1s0_input = {Z0_t,from_NG_1s0,from_WG_1s0,from_EG_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NG_1s0 (
    .A0(to_NG_1s0_input[0]),
    .A1(to_NG_1s0_input[1]),
    .A2(to_NG_1s0_input[2]),
    .A3(to_NG_1s0_input[3]),
    .S0(ConfigBits[84+0]),
    .S0N(ConfigBits_N[84+0]),
    .S1(ConfigBits[84+1]),
    .S1N(ConfigBits_N[84+1]),
    .X(to_NG_1s0)
);

 //switch matrix multiplexer to_NG_1s1 MUX-4
assign to_NG_1s1_input = {Z0_f,from_NG_1s1,from_WG_1s1,from_EG_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NG_1s1 (
    .A0(to_NG_1s1_input[0]),
    .A1(to_NG_1s1_input[1]),
    .A2(to_NG_1s1_input[2]),
    .A3(to_NG_1s1_input[3]),
    .S0(ConfigBits[86+0]),
    .S0N(ConfigBits_N[86+0]),
    .S1(ConfigBits[86+1]),
    .S1N(ConfigBits_N[86+1]),
    .X(to_NG_1s1)
);

 //switch matrix multiplexer to_NH_1s0 MUX-4
assign to_NH_1s0_input = {Z0_t,from_NH_1s0,from_WH_1s0,from_EH_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NH_1s0 (
    .A0(to_NH_1s0_input[0]),
    .A1(to_NH_1s0_input[1]),
    .A2(to_NH_1s0_input[2]),
    .A3(to_NH_1s0_input[3]),
    .S0(ConfigBits[88+0]),
    .S0N(ConfigBits_N[88+0]),
    .S1(ConfigBits[88+1]),
    .S1N(ConfigBits_N[88+1]),
    .X(to_NH_1s0)
);

 //switch matrix multiplexer to_NH_1s1 MUX-4
assign to_NH_1s1_input = {Z0_f,from_NH_1s1,from_WH_1s1,from_EH_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NH_1s1 (
    .A0(to_NH_1s1_input[0]),
    .A1(to_NH_1s1_input[1]),
    .A2(to_NH_1s1_input[2]),
    .A3(to_NH_1s1_input[3]),
    .S0(ConfigBits[90+0]),
    .S0N(ConfigBits_N[90+0]),
    .S1(ConfigBits[90+1]),
    .S1N(ConfigBits_N[90+1]),
    .X(to_NH_1s1)
);

 //switch matrix multiplexer to_NI_1s0 MUX-4
assign to_NI_1s0_input = {Z0_t,from_NI_1s0,from_WI_1s0,from_EI_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_NI_1s0 (
    .A0(to_NI_1s0_input[0]),
    .A1(to_NI_1s0_input[1]),
    .A2(to_NI_1s0_input[2]),
    .A3(to_NI_1s0_input[3]),
    .S0(ConfigBits[92+0]),
    .S0N(ConfigBits_N[92+0]),
    .S1(ConfigBits[92+1]),
    .S1N(ConfigBits_N[92+1]),
    .X(to_NI_1s0)
);

 //switch matrix multiplexer to_NI_1s1 MUX-4
assign to_NI_1s1_input = {Z0_f,from_NI_1s1,from_WI_1s1,from_EI_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_NI_1s1 (
    .A0(to_NI_1s1_input[0]),
    .A1(to_NI_1s1_input[1]),
    .A2(to_NI_1s1_input[2]),
    .A3(to_NI_1s1_input[3]),
    .S0(ConfigBits[94+0]),
    .S0N(ConfigBits_N[94+0]),
    .S1(ConfigBits[94+1]),
    .S1N(ConfigBits_N[94+1]),
    .X(to_NI_1s1)
);

 //switch matrix multiplexer to_SA_1s0 MUX-4
assign to_SA_1s0_input = {Z0_t,from_SA_1s0,from_WA_1s0,from_EA_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SA_1s0 (
    .A0(to_SA_1s0_input[0]),
    .A1(to_SA_1s0_input[1]),
    .A2(to_SA_1s0_input[2]),
    .A3(to_SA_1s0_input[3]),
    .S0(ConfigBits[96+0]),
    .S0N(ConfigBits_N[96+0]),
    .S1(ConfigBits[96+1]),
    .S1N(ConfigBits_N[96+1]),
    .X(to_SA_1s0)
);

 //switch matrix multiplexer to_SA_1s1 MUX-4
assign to_SA_1s1_input = {Z0_f,from_SA_1s1,from_WA_1s1,from_EA_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SA_1s1 (
    .A0(to_SA_1s1_input[0]),
    .A1(to_SA_1s1_input[1]),
    .A2(to_SA_1s1_input[2]),
    .A3(to_SA_1s1_input[3]),
    .S0(ConfigBits[98+0]),
    .S0N(ConfigBits_N[98+0]),
    .S1(ConfigBits[98+1]),
    .S1N(ConfigBits_N[98+1]),
    .X(to_SA_1s1)
);

 //switch matrix multiplexer to_SB_1s0 MUX-4
assign to_SB_1s0_input = {Z0_t,from_SB_1s0,from_WB_1s0,from_EB_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SB_1s0 (
    .A0(to_SB_1s0_input[0]),
    .A1(to_SB_1s0_input[1]),
    .A2(to_SB_1s0_input[2]),
    .A3(to_SB_1s0_input[3]),
    .S0(ConfigBits[100+0]),
    .S0N(ConfigBits_N[100+0]),
    .S1(ConfigBits[100+1]),
    .S1N(ConfigBits_N[100+1]),
    .X(to_SB_1s0)
);

 //switch matrix multiplexer to_SB_1s1 MUX-4
assign to_SB_1s1_input = {Z0_f,from_SB_1s1,from_WB_1s1,from_EB_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SB_1s1 (
    .A0(to_SB_1s1_input[0]),
    .A1(to_SB_1s1_input[1]),
    .A2(to_SB_1s1_input[2]),
    .A3(to_SB_1s1_input[3]),
    .S0(ConfigBits[102+0]),
    .S0N(ConfigBits_N[102+0]),
    .S1(ConfigBits[102+1]),
    .S1N(ConfigBits_N[102+1]),
    .X(to_SB_1s1)
);

 //switch matrix multiplexer to_SC_1s0 MUX-4
assign to_SC_1s0_input = {Z0_t,from_SC_1s0,from_WC_1s0,from_EC_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SC_1s0 (
    .A0(to_SC_1s0_input[0]),
    .A1(to_SC_1s0_input[1]),
    .A2(to_SC_1s0_input[2]),
    .A3(to_SC_1s0_input[3]),
    .S0(ConfigBits[104+0]),
    .S0N(ConfigBits_N[104+0]),
    .S1(ConfigBits[104+1]),
    .S1N(ConfigBits_N[104+1]),
    .X(to_SC_1s0)
);

 //switch matrix multiplexer to_SC_1s1 MUX-4
assign to_SC_1s1_input = {Z0_f,from_SC_1s1,from_WC_1s1,from_EC_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SC_1s1 (
    .A0(to_SC_1s1_input[0]),
    .A1(to_SC_1s1_input[1]),
    .A2(to_SC_1s1_input[2]),
    .A3(to_SC_1s1_input[3]),
    .S0(ConfigBits[106+0]),
    .S0N(ConfigBits_N[106+0]),
    .S1(ConfigBits[106+1]),
    .S1N(ConfigBits_N[106+1]),
    .X(to_SC_1s1)
);

 //switch matrix multiplexer to_SD_1s0 MUX-4
assign to_SD_1s0_input = {Z0_t,from_SD_1s0,from_WD_1s0,from_ED_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SD_1s0 (
    .A0(to_SD_1s0_input[0]),
    .A1(to_SD_1s0_input[1]),
    .A2(to_SD_1s0_input[2]),
    .A3(to_SD_1s0_input[3]),
    .S0(ConfigBits[108+0]),
    .S0N(ConfigBits_N[108+0]),
    .S1(ConfigBits[108+1]),
    .S1N(ConfigBits_N[108+1]),
    .X(to_SD_1s0)
);

 //switch matrix multiplexer to_SD_1s1 MUX-4
assign to_SD_1s1_input = {Z0_f,from_SD_1s1,from_WD_1s1,from_ED_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SD_1s1 (
    .A0(to_SD_1s1_input[0]),
    .A1(to_SD_1s1_input[1]),
    .A2(to_SD_1s1_input[2]),
    .A3(to_SD_1s1_input[3]),
    .S0(ConfigBits[110+0]),
    .S0N(ConfigBits_N[110+0]),
    .S1(ConfigBits[110+1]),
    .S1N(ConfigBits_N[110+1]),
    .X(to_SD_1s1)
);

 //switch matrix multiplexer to_SF_1s0 MUX-4
assign to_SF_1s0_input = {Z0_t,from_SF_1s0,from_WF_1s0,from_EF_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SF_1s0 (
    .A0(to_SF_1s0_input[0]),
    .A1(to_SF_1s0_input[1]),
    .A2(to_SF_1s0_input[2]),
    .A3(to_SF_1s0_input[3]),
    .S0(ConfigBits[112+0]),
    .S0N(ConfigBits_N[112+0]),
    .S1(ConfigBits[112+1]),
    .S1N(ConfigBits_N[112+1]),
    .X(to_SF_1s0)
);

 //switch matrix multiplexer to_SF_1s1 MUX-4
assign to_SF_1s1_input = {Z0_f,from_SF_1s1,from_WF_1s1,from_EF_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SF_1s1 (
    .A0(to_SF_1s1_input[0]),
    .A1(to_SF_1s1_input[1]),
    .A2(to_SF_1s1_input[2]),
    .A3(to_SF_1s1_input[3]),
    .S0(ConfigBits[114+0]),
    .S0N(ConfigBits_N[114+0]),
    .S1(ConfigBits[114+1]),
    .S1N(ConfigBits_N[114+1]),
    .X(to_SF_1s1)
);

 //switch matrix multiplexer to_SG_1s0 MUX-4
assign to_SG_1s0_input = {Z0_t,from_SG_1s0,from_WG_1s0,from_EG_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SG_1s0 (
    .A0(to_SG_1s0_input[0]),
    .A1(to_SG_1s0_input[1]),
    .A2(to_SG_1s0_input[2]),
    .A3(to_SG_1s0_input[3]),
    .S0(ConfigBits[116+0]),
    .S0N(ConfigBits_N[116+0]),
    .S1(ConfigBits[116+1]),
    .S1N(ConfigBits_N[116+1]),
    .X(to_SG_1s0)
);

 //switch matrix multiplexer to_SG_1s1 MUX-4
assign to_SG_1s1_input = {Z0_f,from_SG_1s1,from_WG_1s1,from_EG_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SG_1s1 (
    .A0(to_SG_1s1_input[0]),
    .A1(to_SG_1s1_input[1]),
    .A2(to_SG_1s1_input[2]),
    .A3(to_SG_1s1_input[3]),
    .S0(ConfigBits[118+0]),
    .S0N(ConfigBits_N[118+0]),
    .S1(ConfigBits[118+1]),
    .S1N(ConfigBits_N[118+1]),
    .X(to_SG_1s1)
);

 //switch matrix multiplexer to_SH_1s0 MUX-4
assign to_SH_1s0_input = {Z0_t,from_SH_1s0,from_WH_1s0,from_EH_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SH_1s0 (
    .A0(to_SH_1s0_input[0]),
    .A1(to_SH_1s0_input[1]),
    .A2(to_SH_1s0_input[2]),
    .A3(to_SH_1s0_input[3]),
    .S0(ConfigBits[120+0]),
    .S0N(ConfigBits_N[120+0]),
    .S1(ConfigBits[120+1]),
    .S1N(ConfigBits_N[120+1]),
    .X(to_SH_1s0)
);

 //switch matrix multiplexer to_SH_1s1 MUX-4
assign to_SH_1s1_input = {Z0_f,from_SH_1s1,from_WH_1s1,from_EH_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SH_1s1 (
    .A0(to_SH_1s1_input[0]),
    .A1(to_SH_1s1_input[1]),
    .A2(to_SH_1s1_input[2]),
    .A3(to_SH_1s1_input[3]),
    .S0(ConfigBits[122+0]),
    .S0N(ConfigBits_N[122+0]),
    .S1(ConfigBits[122+1]),
    .S1N(ConfigBits_N[122+1]),
    .X(to_SH_1s1)
);

 //switch matrix multiplexer to_SI_1s0 MUX-4
assign to_SI_1s0_input = {Z0_t,from_SI_1s0,from_WI_1s0,from_EI_1s0};
cus_mux41_buf inst_cus_mux41_buf_to_SI_1s0 (
    .A0(to_SI_1s0_input[0]),
    .A1(to_SI_1s0_input[1]),
    .A2(to_SI_1s0_input[2]),
    .A3(to_SI_1s0_input[3]),
    .S0(ConfigBits[124+0]),
    .S0N(ConfigBits_N[124+0]),
    .S1(ConfigBits[124+1]),
    .S1N(ConfigBits_N[124+1]),
    .X(to_SI_1s0)
);

 //switch matrix multiplexer to_SI_1s1 MUX-4
assign to_SI_1s1_input = {Z0_f,from_SI_1s1,from_WI_1s1,from_EI_1s1};
cus_mux41_buf inst_cus_mux41_buf_to_SI_1s1 (
    .A0(to_SI_1s1_input[0]),
    .A1(to_SI_1s1_input[1]),
    .A2(to_SI_1s1_input[2]),
    .A3(to_SI_1s1_input[3]),
    .S0(ConfigBits[126+0]),
    .S0N(ConfigBits_N[126+0]),
    .S1(ConfigBits[126+1]),
    .S1N(ConfigBits_N[126+1]),
    .X(to_SI_1s1)
);

 //switch matrix multiplexer A0_t MUX-4
assign A0_t_input = {VCC0,GND0,from_J_IA2_1s0,from_J_IA1_1s0};
cus_mux41_buf inst_cus_mux41_buf_A0_t (
    .A0(A0_t_input[0]),
    .A1(A0_t_input[1]),
    .A2(A0_t_input[2]),
    .A3(A0_t_input[3]),
    .S0(ConfigBits[128+0]),
    .S0N(ConfigBits_N[128+0]),
    .S1(ConfigBits[128+1]),
    .S1N(ConfigBits_N[128+1]),
    .X(A0_t)
);

 //switch matrix multiplexer B0_t MUX-4
assign B0_t_input = {VCC0,GND0,from_J_IB2_1s0,from_J_IB1_1s0};
cus_mux41_buf inst_cus_mux41_buf_B0_t (
    .A0(B0_t_input[0]),
    .A1(B0_t_input[1]),
    .A2(B0_t_input[2]),
    .A3(B0_t_input[3]),
    .S0(ConfigBits[130+0]),
    .S0N(ConfigBits_N[130+0]),
    .S1(ConfigBits[130+1]),
    .S1N(ConfigBits_N[130+1]),
    .X(B0_t)
);

 //switch matrix multiplexer A0_f MUX-4
assign A0_f_input = {VCC0,GND0,from_J_IA2_1s1,from_J_IA1_1s1};
cus_mux41_buf inst_cus_mux41_buf_A0_f (
    .A0(A0_f_input[0]),
    .A1(A0_f_input[1]),
    .A2(A0_f_input[2]),
    .A3(A0_f_input[3]),
    .S0(ConfigBits[132+0]),
    .S0N(ConfigBits_N[132+0]),
    .S1(ConfigBits[132+1]),
    .S1N(ConfigBits_N[132+1]),
    .X(A0_f)
);

 //switch matrix multiplexer B0_f MUX-4
assign B0_f_input = {VCC0,GND0,from_J_IB2_1s1,from_J_IB1_1s1};
cus_mux41_buf inst_cus_mux41_buf_B0_f (
    .A0(B0_f_input[0]),
    .A1(B0_f_input[1]),
    .A2(B0_f_input[2]),
    .A3(B0_f_input[3]),
    .S0(ConfigBits[134+0]),
    .S0N(ConfigBits_N[134+0]),
    .S1(ConfigBits[134+1]),
    .S1N(ConfigBits_N[134+1]),
    .X(B0_f)
);

 //switch matrix multiplexer to_J_IA1_1s0 MUX-16
assign to_J_IA1_1s0_input = {from_NI_1s0,from_NH_1s0,from_NG_1s0,from_NF_1s0,from_ND_1s0,from_NC_1s0,from_NB_1s0,from_NA_1s0,from_EI_1s0,from_EH_1s0,from_EG_1s0,from_EF_1s0,from_ED_1s0,from_EC_1s0,from_EB_1s0,from_EA_1s0};
cus_mux161_buf inst_cus_mux161_buf_to_J_IA1_1s0 (
    .A0(to_J_IA1_1s0_input[0]),
    .A1(to_J_IA1_1s0_input[1]),
    .A2(to_J_IA1_1s0_input[2]),
    .A3(to_J_IA1_1s0_input[3]),
    .A4(to_J_IA1_1s0_input[4]),
    .A5(to_J_IA1_1s0_input[5]),
    .A6(to_J_IA1_1s0_input[6]),
    .A7(to_J_IA1_1s0_input[7]),
    .A8(to_J_IA1_1s0_input[8]),
    .A9(to_J_IA1_1s0_input[9]),
    .A10(to_J_IA1_1s0_input[10]),
    .A11(to_J_IA1_1s0_input[11]),
    .A12(to_J_IA1_1s0_input[12]),
    .A13(to_J_IA1_1s0_input[13]),
    .A14(to_J_IA1_1s0_input[14]),
    .A15(to_J_IA1_1s0_input[15]),
    .S0(ConfigBits[136+0]),
    .S0N(ConfigBits_N[136+0]),
    .S1(ConfigBits[136+1]),
    .S1N(ConfigBits_N[136+1]),
    .S2(ConfigBits[136+2]),
    .S2N(ConfigBits_N[136+2]),
    .S3(ConfigBits[136+3]),
    .S3N(ConfigBits_N[136+3]),
    .X(to_J_IA1_1s0)
);

 //switch matrix multiplexer to_J_IA1_1s1 MUX-16
assign to_J_IA1_1s1_input = {from_NI_1s1,from_NH_1s1,from_NG_1s1,from_NF_1s1,from_ND_1s1,from_NC_1s1,from_NB_1s1,from_NA_1s1,from_EI_1s1,from_EH_1s1,from_EG_1s1,from_EF_1s1,from_ED_1s1,from_EC_1s1,from_EB_1s1,from_EA_1s1};
cus_mux161_buf inst_cus_mux161_buf_to_J_IA1_1s1 (
    .A0(to_J_IA1_1s1_input[0]),
    .A1(to_J_IA1_1s1_input[1]),
    .A2(to_J_IA1_1s1_input[2]),
    .A3(to_J_IA1_1s1_input[3]),
    .A4(to_J_IA1_1s1_input[4]),
    .A5(to_J_IA1_1s1_input[5]),
    .A6(to_J_IA1_1s1_input[6]),
    .A7(to_J_IA1_1s1_input[7]),
    .A8(to_J_IA1_1s1_input[8]),
    .A9(to_J_IA1_1s1_input[9]),
    .A10(to_J_IA1_1s1_input[10]),
    .A11(to_J_IA1_1s1_input[11]),
    .A12(to_J_IA1_1s1_input[12]),
    .A13(to_J_IA1_1s1_input[13]),
    .A14(to_J_IA1_1s1_input[14]),
    .A15(to_J_IA1_1s1_input[15]),
    .S0(ConfigBits[140+0]),
    .S0N(ConfigBits_N[140+0]),
    .S1(ConfigBits[140+1]),
    .S1N(ConfigBits_N[140+1]),
    .S2(ConfigBits[140+2]),
    .S2N(ConfigBits_N[140+2]),
    .S3(ConfigBits[140+3]),
    .S3N(ConfigBits_N[140+3]),
    .X(to_J_IA1_1s1)
);

 //switch matrix multiplexer to_J_IA2_1s0 MUX-16
assign to_J_IA2_1s0_input = {from_SI_1s0,from_SH_1s0,from_SG_1s0,from_SF_1s0,from_SD_1s0,from_SC_1s0,from_SB_1s0,from_SA_1s0,from_WI_1s0,from_WH_1s0,from_WG_1s0,from_WF_1s0,from_WD_1s0,from_WC_1s0,from_WB_1s0,from_WA_1s0};
cus_mux161_buf inst_cus_mux161_buf_to_J_IA2_1s0 (
    .A0(to_J_IA2_1s0_input[0]),
    .A1(to_J_IA2_1s0_input[1]),
    .A2(to_J_IA2_1s0_input[2]),
    .A3(to_J_IA2_1s0_input[3]),
    .A4(to_J_IA2_1s0_input[4]),
    .A5(to_J_IA2_1s0_input[5]),
    .A6(to_J_IA2_1s0_input[6]),
    .A7(to_J_IA2_1s0_input[7]),
    .A8(to_J_IA2_1s0_input[8]),
    .A9(to_J_IA2_1s0_input[9]),
    .A10(to_J_IA2_1s0_input[10]),
    .A11(to_J_IA2_1s0_input[11]),
    .A12(to_J_IA2_1s0_input[12]),
    .A13(to_J_IA2_1s0_input[13]),
    .A14(to_J_IA2_1s0_input[14]),
    .A15(to_J_IA2_1s0_input[15]),
    .S0(ConfigBits[144+0]),
    .S0N(ConfigBits_N[144+0]),
    .S1(ConfigBits[144+1]),
    .S1N(ConfigBits_N[144+1]),
    .S2(ConfigBits[144+2]),
    .S2N(ConfigBits_N[144+2]),
    .S3(ConfigBits[144+3]),
    .S3N(ConfigBits_N[144+3]),
    .X(to_J_IA2_1s0)
);

 //switch matrix multiplexer to_J_IA2_1s1 MUX-16
assign to_J_IA2_1s1_input = {from_SI_1s1,from_SH_1s1,from_SG_1s1,from_SF_1s1,from_SD_1s1,from_SC_1s1,from_SB_1s1,from_SA_1s1,from_WI_1s1,from_WH_1s1,from_WG_1s1,from_WF_1s1,from_WD_1s1,from_WC_1s1,from_WB_1s1,from_WA_1s1};
cus_mux161_buf inst_cus_mux161_buf_to_J_IA2_1s1 (
    .A0(to_J_IA2_1s1_input[0]),
    .A1(to_J_IA2_1s1_input[1]),
    .A2(to_J_IA2_1s1_input[2]),
    .A3(to_J_IA2_1s1_input[3]),
    .A4(to_J_IA2_1s1_input[4]),
    .A5(to_J_IA2_1s1_input[5]),
    .A6(to_J_IA2_1s1_input[6]),
    .A7(to_J_IA2_1s1_input[7]),
    .A8(to_J_IA2_1s1_input[8]),
    .A9(to_J_IA2_1s1_input[9]),
    .A10(to_J_IA2_1s1_input[10]),
    .A11(to_J_IA2_1s1_input[11]),
    .A12(to_J_IA2_1s1_input[12]),
    .A13(to_J_IA2_1s1_input[13]),
    .A14(to_J_IA2_1s1_input[14]),
    .A15(to_J_IA2_1s1_input[15]),
    .S0(ConfigBits[148+0]),
    .S0N(ConfigBits_N[148+0]),
    .S1(ConfigBits[148+1]),
    .S1N(ConfigBits_N[148+1]),
    .S2(ConfigBits[148+2]),
    .S2N(ConfigBits_N[148+2]),
    .S3(ConfigBits[148+3]),
    .S3N(ConfigBits_N[148+3]),
    .X(to_J_IA2_1s1)
);

 //switch matrix multiplexer to_J_IB1_1s0 MUX-16
assign to_J_IB1_1s0_input = {from_NI_1s0,from_NH_1s0,from_NG_1s0,from_NF_1s0,from_ND_1s0,from_NC_1s0,from_NB_1s0,from_NA_1s0,from_EI_1s0,from_EH_1s0,from_EG_1s0,from_EF_1s0,from_ED_1s0,from_EC_1s0,from_EB_1s0,from_EA_1s0};
cus_mux161_buf inst_cus_mux161_buf_to_J_IB1_1s0 (
    .A0(to_J_IB1_1s0_input[0]),
    .A1(to_J_IB1_1s0_input[1]),
    .A2(to_J_IB1_1s0_input[2]),
    .A3(to_J_IB1_1s0_input[3]),
    .A4(to_J_IB1_1s0_input[4]),
    .A5(to_J_IB1_1s0_input[5]),
    .A6(to_J_IB1_1s0_input[6]),
    .A7(to_J_IB1_1s0_input[7]),
    .A8(to_J_IB1_1s0_input[8]),
    .A9(to_J_IB1_1s0_input[9]),
    .A10(to_J_IB1_1s0_input[10]),
    .A11(to_J_IB1_1s0_input[11]),
    .A12(to_J_IB1_1s0_input[12]),
    .A13(to_J_IB1_1s0_input[13]),
    .A14(to_J_IB1_1s0_input[14]),
    .A15(to_J_IB1_1s0_input[15]),
    .S0(ConfigBits[152+0]),
    .S0N(ConfigBits_N[152+0]),
    .S1(ConfigBits[152+1]),
    .S1N(ConfigBits_N[152+1]),
    .S2(ConfigBits[152+2]),
    .S2N(ConfigBits_N[152+2]),
    .S3(ConfigBits[152+3]),
    .S3N(ConfigBits_N[152+3]),
    .X(to_J_IB1_1s0)
);

 //switch matrix multiplexer to_J_IB1_1s1 MUX-16
assign to_J_IB1_1s1_input = {from_NI_1s1,from_NH_1s1,from_NG_1s1,from_NF_1s1,from_ND_1s1,from_NC_1s1,from_NB_1s1,from_NA_1s1,from_EI_1s1,from_EH_1s1,from_EG_1s1,from_EF_1s1,from_ED_1s1,from_EC_1s1,from_EB_1s1,from_EA_1s1};
cus_mux161_buf inst_cus_mux161_buf_to_J_IB1_1s1 (
    .A0(to_J_IB1_1s1_input[0]),
    .A1(to_J_IB1_1s1_input[1]),
    .A2(to_J_IB1_1s1_input[2]),
    .A3(to_J_IB1_1s1_input[3]),
    .A4(to_J_IB1_1s1_input[4]),
    .A5(to_J_IB1_1s1_input[5]),
    .A6(to_J_IB1_1s1_input[6]),
    .A7(to_J_IB1_1s1_input[7]),
    .A8(to_J_IB1_1s1_input[8]),
    .A9(to_J_IB1_1s1_input[9]),
    .A10(to_J_IB1_1s1_input[10]),
    .A11(to_J_IB1_1s1_input[11]),
    .A12(to_J_IB1_1s1_input[12]),
    .A13(to_J_IB1_1s1_input[13]),
    .A14(to_J_IB1_1s1_input[14]),
    .A15(to_J_IB1_1s1_input[15]),
    .S0(ConfigBits[156+0]),
    .S0N(ConfigBits_N[156+0]),
    .S1(ConfigBits[156+1]),
    .S1N(ConfigBits_N[156+1]),
    .S2(ConfigBits[156+2]),
    .S2N(ConfigBits_N[156+2]),
    .S3(ConfigBits[156+3]),
    .S3N(ConfigBits_N[156+3]),
    .X(to_J_IB1_1s1)
);

 //switch matrix multiplexer to_J_IB2_1s0 MUX-16
assign to_J_IB2_1s0_input = {from_SI_1s0,from_SH_1s0,from_SG_1s0,from_SF_1s0,from_SD_1s0,from_SC_1s0,from_SB_1s0,from_SA_1s0,from_WI_1s0,from_WH_1s0,from_WG_1s0,from_WF_1s0,from_WD_1s0,from_WC_1s0,from_WB_1s0,from_WA_1s0};
cus_mux161_buf inst_cus_mux161_buf_to_J_IB2_1s0 (
    .A0(to_J_IB2_1s0_input[0]),
    .A1(to_J_IB2_1s0_input[1]),
    .A2(to_J_IB2_1s0_input[2]),
    .A3(to_J_IB2_1s0_input[3]),
    .A4(to_J_IB2_1s0_input[4]),
    .A5(to_J_IB2_1s0_input[5]),
    .A6(to_J_IB2_1s0_input[6]),
    .A7(to_J_IB2_1s0_input[7]),
    .A8(to_J_IB2_1s0_input[8]),
    .A9(to_J_IB2_1s0_input[9]),
    .A10(to_J_IB2_1s0_input[10]),
    .A11(to_J_IB2_1s0_input[11]),
    .A12(to_J_IB2_1s0_input[12]),
    .A13(to_J_IB2_1s0_input[13]),
    .A14(to_J_IB2_1s0_input[14]),
    .A15(to_J_IB2_1s0_input[15]),
    .S0(ConfigBits[160+0]),
    .S0N(ConfigBits_N[160+0]),
    .S1(ConfigBits[160+1]),
    .S1N(ConfigBits_N[160+1]),
    .S2(ConfigBits[160+2]),
    .S2N(ConfigBits_N[160+2]),
    .S3(ConfigBits[160+3]),
    .S3N(ConfigBits_N[160+3]),
    .X(to_J_IB2_1s0)
);

 //switch matrix multiplexer to_J_IB2_1s1 MUX-16
assign to_J_IB2_1s1_input = {from_SI_1s1,from_SH_1s1,from_SG_1s1,from_SF_1s1,from_SD_1s1,from_SC_1s1,from_SB_1s1,from_SA_1s1,from_WI_1s1,from_WH_1s1,from_WG_1s1,from_WF_1s1,from_WD_1s1,from_WC_1s1,from_WB_1s1,from_WA_1s1};
cus_mux161_buf inst_cus_mux161_buf_to_J_IB2_1s1 (
    .A0(to_J_IB2_1s1_input[0]),
    .A1(to_J_IB2_1s1_input[1]),
    .A2(to_J_IB2_1s1_input[2]),
    .A3(to_J_IB2_1s1_input[3]),
    .A4(to_J_IB2_1s1_input[4]),
    .A5(to_J_IB2_1s1_input[5]),
    .A6(to_J_IB2_1s1_input[6]),
    .A7(to_J_IB2_1s1_input[7]),
    .A8(to_J_IB2_1s1_input[8]),
    .A9(to_J_IB2_1s1_input[9]),
    .A10(to_J_IB2_1s1_input[10]),
    .A11(to_J_IB2_1s1_input[11]),
    .A12(to_J_IB2_1s1_input[12]),
    .A13(to_J_IB2_1s1_input[13]),
    .A14(to_J_IB2_1s1_input[14]),
    .A15(to_J_IB2_1s1_input[15]),
    .S0(ConfigBits[164+0]),
    .S0N(ConfigBits_N[164+0]),
    .S1(ConfigBits[164+1]),
    .S1N(ConfigBits_N[164+1]),
    .S2(ConfigBits[164+2]),
    .S2N(ConfigBits_N[164+2]),
    .S3(ConfigBits[164+3]),
    .S3N(ConfigBits_N[164+3]),
    .X(to_J_IB2_1s1)
);

endmodule