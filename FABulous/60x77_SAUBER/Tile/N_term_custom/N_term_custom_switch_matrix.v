 // NumberOfConfigBits: 0
module N_term_custom_switch_matrix
    #(
        parameter NoConfigBits=0
    )
    (
        input from_NA0,
        input from_NA1,
        input from_NA2,
        input from_NA3,
        input from_NB0,
        input from_NB1,
        input from_NB2,
        input from_NB3,
        input from_NC0,
        input from_NC1,
        input from_NC2,
        input from_NC3,
        input from_ND0,
        input from_ND1,
        input from_ND2,
        input from_ND3,
        input from_NF0,
        input from_NF1,
        input from_NF2,
        input from_NF3,
        input from_NG0,
        input from_NG1,
        input from_NG2,
        input from_NG3,
        input from_NG4,
        input from_NG5,
        input from_NG6,
        input from_NG7,
        input from_NH0,
        input from_NH1,
        input from_NH2,
        input from_NH3,
        input from_NH4,
        input from_NH5,
        input from_NH6,
        input from_NH7,
        input from_NI0,
        input from_NI1,
        input from_NI2,
        input from_NI3,
        input from_NI4,
        input from_NI5,
        input from_NI6,
        input from_NI7,
        input from_NI8,
        input from_NI9,
        input from_NI10,
        input from_NI11,
        output to_SA0,
        output to_SA1,
        output to_SA2,
        output to_SA3,
        output to_SB0,
        output to_SB1,
        output to_SB2,
        output to_SB3,
        output to_SC0,
        output to_SC1,
        output to_SC2,
        output to_SC3,
        output to_SD0,
        output to_SD1,
        output to_SD2,
        output to_SD3,
        output to_SF0,
        output to_SF1,
        output to_SF2,
        output to_SF3,
        output to_SG0,
        output to_SG1,
        output to_SG2,
        output to_SG3,
        output to_SG4,
        output to_SG5,
        output to_SG6,
        output to_SG7,
        output to_SH0,
        output to_SH1,
        output to_SH2,
        output to_SH3,
        output to_SH4,
        output to_SH5,
        output to_SH6,
        output to_SH7,
        output to_SI0,
        output to_SI1,
        output to_SI2,
        output to_SI3,
        output to_SI4,
        output to_SI5,
        output to_SI6,
        output to_SI7,
        output to_SI8,
        output to_SI9,
        output to_SI10,
        output to_SI11
 //global
);
parameter GND0 = 1'b0;
parameter GND = 1'b0;
parameter VCC0 = 1'b1;
parameter VCC = 1'b1;
parameter VDD0 = 1'b1;
parameter VDD = 1'b1;

wire[1-1:0] to_SA0_input;
wire[1-1:0] to_SA1_input;
wire[1-1:0] to_SA2_input;
wire[1-1:0] to_SA3_input;
wire[1-1:0] to_SB0_input;
wire[1-1:0] to_SB1_input;
wire[1-1:0] to_SB2_input;
wire[1-1:0] to_SB3_input;
wire[1-1:0] to_SC0_input;
wire[1-1:0] to_SC1_input;
wire[1-1:0] to_SC2_input;
wire[1-1:0] to_SC3_input;
wire[1-1:0] to_SD0_input;
wire[1-1:0] to_SD1_input;
wire[1-1:0] to_SD2_input;
wire[1-1:0] to_SD3_input;
wire[1-1:0] to_SF0_input;
wire[1-1:0] to_SF1_input;
wire[1-1:0] to_SF2_input;
wire[1-1:0] to_SF3_input;
wire[1-1:0] to_SG0_input;
wire[1-1:0] to_SG1_input;
wire[1-1:0] to_SG2_input;
wire[1-1:0] to_SG3_input;
wire[1-1:0] to_SG4_input;
wire[1-1:0] to_SG5_input;
wire[1-1:0] to_SG6_input;
wire[1-1:0] to_SG7_input;
wire[1-1:0] to_SH0_input;
wire[1-1:0] to_SH1_input;
wire[1-1:0] to_SH2_input;
wire[1-1:0] to_SH3_input;
wire[1-1:0] to_SH4_input;
wire[1-1:0] to_SH5_input;
wire[1-1:0] to_SH6_input;
wire[1-1:0] to_SH7_input;
wire[1-1:0] to_SI0_input;
wire[1-1:0] to_SI1_input;
wire[1-1:0] to_SI2_input;
wire[1-1:0] to_SI3_input;
wire[1-1:0] to_SI4_input;
wire[1-1:0] to_SI5_input;
wire[1-1:0] to_SI6_input;
wire[1-1:0] to_SI7_input;
wire[1-1:0] to_SI8_input;
wire[1-1:0] to_SI9_input;
wire[1-1:0] to_SI10_input;
wire[1-1:0] to_SI11_input;
 //The configuration bits (if any) are just a long shift register
 //This shift register is padded to an even number of flops/latches
 //switch matrix multiplexer to_SA0 MUX-1
assign to_SA0 = from_NA0;

 //switch matrix multiplexer to_SA1 MUX-1
assign to_SA1 = from_NA1;

 //switch matrix multiplexer to_SA2 MUX-1
assign to_SA2 = from_NA2;

 //switch matrix multiplexer to_SA3 MUX-1
assign to_SA3 = from_NA3;

 //switch matrix multiplexer to_SB0 MUX-1
assign to_SB0 = from_NB0;

 //switch matrix multiplexer to_SB1 MUX-1
assign to_SB1 = from_NB1;

 //switch matrix multiplexer to_SB2 MUX-1
assign to_SB2 = from_NB2;

 //switch matrix multiplexer to_SB3 MUX-1
assign to_SB3 = from_NB3;

 //switch matrix multiplexer to_SC0 MUX-1
assign to_SC0 = from_NC0;

 //switch matrix multiplexer to_SC1 MUX-1
assign to_SC1 = from_NC1;

 //switch matrix multiplexer to_SC2 MUX-1
assign to_SC2 = from_NC2;

 //switch matrix multiplexer to_SC3 MUX-1
assign to_SC3 = from_NC3;

 //switch matrix multiplexer to_SD0 MUX-1
assign to_SD0 = from_ND0;

 //switch matrix multiplexer to_SD1 MUX-1
assign to_SD1 = from_ND1;

 //switch matrix multiplexer to_SD2 MUX-1
assign to_SD2 = from_ND2;

 //switch matrix multiplexer to_SD3 MUX-1
assign to_SD3 = from_ND3;

 //switch matrix multiplexer to_SF0 MUX-1
assign to_SF0 = from_NF0;

 //switch matrix multiplexer to_SF1 MUX-1
assign to_SF1 = from_NF1;

 //switch matrix multiplexer to_SF2 MUX-1
assign to_SF2 = from_NF2;

 //switch matrix multiplexer to_SF3 MUX-1
assign to_SF3 = from_NF3;

 //switch matrix multiplexer to_SG0 MUX-1
assign to_SG0 = from_NG0;

 //switch matrix multiplexer to_SG1 MUX-1
assign to_SG1 = from_NG1;

 //switch matrix multiplexer to_SG2 MUX-1
assign to_SG2 = from_NG2;

 //switch matrix multiplexer to_SG3 MUX-1
assign to_SG3 = from_NG3;

 //switch matrix multiplexer to_SG4 MUX-1
assign to_SG4 = from_NG4;

 //switch matrix multiplexer to_SG5 MUX-1
assign to_SG5 = from_NG5;

 //switch matrix multiplexer to_SG6 MUX-1
assign to_SG6 = from_NG6;

 //switch matrix multiplexer to_SG7 MUX-1
assign to_SG7 = from_NG7;

 //switch matrix multiplexer to_SH0 MUX-1
assign to_SH0 = from_NH0;

 //switch matrix multiplexer to_SH1 MUX-1
assign to_SH1 = from_NH1;

 //switch matrix multiplexer to_SH2 MUX-1
assign to_SH2 = from_NH2;

 //switch matrix multiplexer to_SH3 MUX-1
assign to_SH3 = from_NH3;

 //switch matrix multiplexer to_SH4 MUX-1
assign to_SH4 = from_NH4;

 //switch matrix multiplexer to_SH5 MUX-1
assign to_SH5 = from_NH5;

 //switch matrix multiplexer to_SH6 MUX-1
assign to_SH6 = from_NH6;

 //switch matrix multiplexer to_SH7 MUX-1
assign to_SH7 = from_NH7;

 //switch matrix multiplexer to_SI0 MUX-1
assign to_SI0 = from_NI0;

 //switch matrix multiplexer to_SI1 MUX-1
assign to_SI1 = from_NI1;

 //switch matrix multiplexer to_SI2 MUX-1
assign to_SI2 = from_NI2;

 //switch matrix multiplexer to_SI3 MUX-1
assign to_SI3 = from_NI3;

 //switch matrix multiplexer to_SI4 MUX-1
assign to_SI4 = from_NI4;

 //switch matrix multiplexer to_SI5 MUX-1
assign to_SI5 = from_NI5;

 //switch matrix multiplexer to_SI6 MUX-1
assign to_SI6 = from_NI6;

 //switch matrix multiplexer to_SI7 MUX-1
assign to_SI7 = from_NI7;

 //switch matrix multiplexer to_SI8 MUX-1
assign to_SI8 = from_NI8;

 //switch matrix multiplexer to_SI9 MUX-1
assign to_SI9 = from_NI9;

 //switch matrix multiplexer to_SI10 MUX-1
assign to_SI10 = from_NI10;

 //switch matrix multiplexer to_SI11 MUX-1
assign to_SI11 = from_NI11;

endmodule