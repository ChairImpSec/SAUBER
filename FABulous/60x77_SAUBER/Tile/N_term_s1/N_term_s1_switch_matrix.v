 // NumberOfConfigBits: 0
module N_term_s1_switch_matrix
    #(
        parameter NoConfigBits=0
    )
    (
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
        output to_SI_1s1
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[1-1:0] to_SA_1s0_input;
wire[1-1:0] to_SA_1s1_input;
wire[1-1:0] to_SB_1s0_input;
wire[1-1:0] to_SB_1s1_input;
wire[1-1:0] to_SC_1s0_input;
wire[1-1:0] to_SC_1s1_input;
wire[1-1:0] to_SD_1s0_input;
wire[1-1:0] to_SD_1s1_input;
wire[1-1:0] to_SF_1s0_input;
wire[1-1:0] to_SF_1s1_input;
wire[1-1:0] to_SG_1s0_input;
wire[1-1:0] to_SG_1s1_input;
wire[1-1:0] to_SH_1s0_input;
wire[1-1:0] to_SH_1s1_input;
wire[1-1:0] to_SI_1s0_input;
wire[1-1:0] to_SI_1s1_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_SA_1s0 MUX-1
assign to_SA_1s0 = from_NA_1s0;

 //switch matrix multiplexer to_SA_1s1 MUX-1
assign to_SA_1s1 = from_NA_1s1;

 //switch matrix multiplexer to_SB_1s0 MUX-1
assign to_SB_1s0 = from_NB_1s0;

 //switch matrix multiplexer to_SB_1s1 MUX-1
assign to_SB_1s1 = from_NB_1s1;

 //switch matrix multiplexer to_SC_1s0 MUX-1
assign to_SC_1s0 = from_NC_1s0;

 //switch matrix multiplexer to_SC_1s1 MUX-1
assign to_SC_1s1 = from_NC_1s1;

 //switch matrix multiplexer to_SD_1s0 MUX-1
assign to_SD_1s0 = from_ND_1s0;

 //switch matrix multiplexer to_SD_1s1 MUX-1
assign to_SD_1s1 = from_ND_1s1;

 //switch matrix multiplexer to_SF_1s0 MUX-1
assign to_SF_1s0 = from_NF_1s0;

 //switch matrix multiplexer to_SF_1s1 MUX-1
assign to_SF_1s1 = from_NF_1s1;

 //switch matrix multiplexer to_SG_1s0 MUX-1
assign to_SG_1s0 = from_NG_1s0;

 //switch matrix multiplexer to_SG_1s1 MUX-1
assign to_SG_1s1 = from_NG_1s1;

 //switch matrix multiplexer to_SH_1s0 MUX-1
assign to_SH_1s0 = from_NH_1s0;

 //switch matrix multiplexer to_SH_1s1 MUX-1
assign to_SH_1s1 = from_NH_1s1;

 //switch matrix multiplexer to_SI_1s0 MUX-1
assign to_SI_1s0 = from_NI_1s0;

 //switch matrix multiplexer to_SI_1s1 MUX-1
assign to_SI_1s1 = from_NI_1s1;

endmodule