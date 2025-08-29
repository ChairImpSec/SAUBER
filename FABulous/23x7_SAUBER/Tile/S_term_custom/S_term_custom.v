module S_term_custom
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=0
    )
    (
 //Side.NORTH
        output [3:0] to_NA,        //Port(Name=to_NA, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_NB,        //Port(Name=to_NB, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_NC,        //Port(Name=to_NC, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_ND,        //Port(Name=to_ND, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [3:0] to_NF,        //Port(Name=to_NF, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=4, Side=NORTH)
        output [7:0] to_NG,        //Port(Name=to_NG, IO=OUTPUT, XOffset=0, YOffset=-2, WireCount=4, Side=NORTH)
        output [7:0] to_NH,        //Port(Name=to_NH, IO=OUTPUT, XOffset=0, YOffset=-2, WireCount=4, Side=NORTH)
        output [11:0] to_NI,        //Port(Name=to_NI, IO=OUTPUT, XOffset=0, YOffset=-3, WireCount=4, Side=NORTH)
        input [3:0] from_SA,        //Port(Name=from_SA, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SB,        //Port(Name=from_SB, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SC,        //Port(Name=from_SC, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SD,        //Port(Name=from_SD, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [3:0] from_SF,        //Port(Name=from_SF, IO=INPUT, XOffset=0, YOffset=1, WireCount=4, Side=NORTH)
        input [7:0] from_SG,        //Port(Name=from_SG, IO=INPUT, XOffset=0, YOffset=2, WireCount=4, Side=NORTH)
        input [7:0] from_SH,        //Port(Name=from_SH, IO=INPUT, XOffset=0, YOffset=2, WireCount=4, Side=NORTH)
        input [11:0] from_SI,        //Port(Name=from_SI, IO=INPUT, XOffset=0, YOffset=3, WireCount=4, Side=NORTH)
    //Tile IO ports from BELs
        input UserCLK,
        output UserCLKo,
        input rst,
        output rsto,
        input [MaxFramesPerCol -1:0] FrameStrobe,
        output [MaxFramesPerCol -1:0] FrameStrobe_O
    //global
);
 //signal declarations
 //BEL ports (e.g., slices)
 //Jump wires
 //internal configuration data signal to daisy-chain all BELs (if any and in the order they are listed in the fabric.csv)
wire[NoConfigBits-1:0] ConfigBits;
wire[NoConfigBits-1:0] ConfigBits_N;

 //Connection for outgoing wires
wire[FrameBitsPerRow-1:0] FrameData_i;
wire[FrameBitsPerRow-1:0] FrameData_O_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_i;
wire[MaxFramesPerCol-1:0] FrameStrobe_O_i;

assign FrameStrobe_O_i = FrameStrobe_i;

my_buf strobe_inbuf_0 (
    .A(FrameStrobe[0]),
    .X(FrameStrobe_i[0])
);

my_buf strobe_inbuf_1 (
    .A(FrameStrobe[1]),
    .X(FrameStrobe_i[1])
);

my_buf strobe_inbuf_2 (
    .A(FrameStrobe[2]),
    .X(FrameStrobe_i[2])
);

my_buf strobe_inbuf_3 (
    .A(FrameStrobe[3]),
    .X(FrameStrobe_i[3])
);

my_buf strobe_inbuf_4 (
    .A(FrameStrobe[4]),
    .X(FrameStrobe_i[4])
);

my_buf strobe_inbuf_5 (
    .A(FrameStrobe[5]),
    .X(FrameStrobe_i[5])
);

my_buf strobe_inbuf_6 (
    .A(FrameStrobe[6]),
    .X(FrameStrobe_i[6])
);

my_buf strobe_inbuf_7 (
    .A(FrameStrobe[7]),
    .X(FrameStrobe_i[7])
);

my_buf strobe_inbuf_8 (
    .A(FrameStrobe[8]),
    .X(FrameStrobe_i[8])
);

my_buf strobe_inbuf_9 (
    .A(FrameStrobe[9]),
    .X(FrameStrobe_i[9])
);

my_buf strobe_inbuf_10 (
    .A(FrameStrobe[10]),
    .X(FrameStrobe_i[10])
);

my_buf strobe_inbuf_11 (
    .A(FrameStrobe[11]),
    .X(FrameStrobe_i[11])
);

my_buf strobe_inbuf_12 (
    .A(FrameStrobe[12]),
    .X(FrameStrobe_i[12])
);

my_buf strobe_inbuf_13 (
    .A(FrameStrobe[13]),
    .X(FrameStrobe_i[13])
);

my_buf strobe_inbuf_14 (
    .A(FrameStrobe[14]),
    .X(FrameStrobe_i[14])
);

my_buf strobe_inbuf_15 (
    .A(FrameStrobe[15]),
    .X(FrameStrobe_i[15])
);

my_buf strobe_inbuf_16 (
    .A(FrameStrobe[16]),
    .X(FrameStrobe_i[16])
);

my_buf strobe_inbuf_17 (
    .A(FrameStrobe[17]),
    .X(FrameStrobe_i[17])
);

my_buf strobe_inbuf_18 (
    .A(FrameStrobe[18]),
    .X(FrameStrobe_i[18])
);

my_buf strobe_inbuf_19 (
    .A(FrameStrobe[19]),
    .X(FrameStrobe_i[19])
);

my_buf strobe_outbuf_0 (
    .A(FrameStrobe_O_i[0]),
    .X(FrameStrobe_O[0])
);

my_buf strobe_outbuf_1 (
    .A(FrameStrobe_O_i[1]),
    .X(FrameStrobe_O[1])
);

my_buf strobe_outbuf_2 (
    .A(FrameStrobe_O_i[2]),
    .X(FrameStrobe_O[2])
);

my_buf strobe_outbuf_3 (
    .A(FrameStrobe_O_i[3]),
    .X(FrameStrobe_O[3])
);

my_buf strobe_outbuf_4 (
    .A(FrameStrobe_O_i[4]),
    .X(FrameStrobe_O[4])
);

my_buf strobe_outbuf_5 (
    .A(FrameStrobe_O_i[5]),
    .X(FrameStrobe_O[5])
);

my_buf strobe_outbuf_6 (
    .A(FrameStrobe_O_i[6]),
    .X(FrameStrobe_O[6])
);

my_buf strobe_outbuf_7 (
    .A(FrameStrobe_O_i[7]),
    .X(FrameStrobe_O[7])
);

my_buf strobe_outbuf_8 (
    .A(FrameStrobe_O_i[8]),
    .X(FrameStrobe_O[8])
);

my_buf strobe_outbuf_9 (
    .A(FrameStrobe_O_i[9]),
    .X(FrameStrobe_O[9])
);

my_buf strobe_outbuf_10 (
    .A(FrameStrobe_O_i[10]),
    .X(FrameStrobe_O[10])
);

my_buf strobe_outbuf_11 (
    .A(FrameStrobe_O_i[11]),
    .X(FrameStrobe_O[11])
);

my_buf strobe_outbuf_12 (
    .A(FrameStrobe_O_i[12]),
    .X(FrameStrobe_O[12])
);

my_buf strobe_outbuf_13 (
    .A(FrameStrobe_O_i[13]),
    .X(FrameStrobe_O[13])
);

my_buf strobe_outbuf_14 (
    .A(FrameStrobe_O_i[14]),
    .X(FrameStrobe_O[14])
);

my_buf strobe_outbuf_15 (
    .A(FrameStrobe_O_i[15]),
    .X(FrameStrobe_O[15])
);

my_buf strobe_outbuf_16 (
    .A(FrameStrobe_O_i[16]),
    .X(FrameStrobe_O[16])
);

my_buf strobe_outbuf_17 (
    .A(FrameStrobe_O_i[17]),
    .X(FrameStrobe_O[17])
);

my_buf strobe_outbuf_18 (
    .A(FrameStrobe_O_i[18]),
    .X(FrameStrobe_O[18])
);

my_buf strobe_outbuf_19 (
    .A(FrameStrobe_O_i[19]),
    .X(FrameStrobe_O[19])
);

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);

my_buf inst_rst_buf (
    .A(rst),
    .X(rsto)
);


 //BEL component instantiations
S_term_custom_switch_matrix Inst_S_term_custom_switch_matrix (
    .from_SA0(from_SA[0]),
    .from_SA1(from_SA[1]),
    .from_SA2(from_SA[2]),
    .from_SA3(from_SA[3]),
    .from_SB0(from_SB[0]),
    .from_SB1(from_SB[1]),
    .from_SB2(from_SB[2]),
    .from_SB3(from_SB[3]),
    .from_SC0(from_SC[0]),
    .from_SC1(from_SC[1]),
    .from_SC2(from_SC[2]),
    .from_SC3(from_SC[3]),
    .from_SD0(from_SD[0]),
    .from_SD1(from_SD[1]),
    .from_SD2(from_SD[2]),
    .from_SD3(from_SD[3]),
    .from_SF0(from_SF[0]),
    .from_SF1(from_SF[1]),
    .from_SF2(from_SF[2]),
    .from_SF3(from_SF[3]),
    .from_SG0(from_SG[0]),
    .from_SG1(from_SG[1]),
    .from_SG2(from_SG[2]),
    .from_SG3(from_SG[3]),
    .from_SG4(from_SG[4]),
    .from_SG5(from_SG[5]),
    .from_SG6(from_SG[6]),
    .from_SG7(from_SG[7]),
    .from_SH0(from_SH[0]),
    .from_SH1(from_SH[1]),
    .from_SH2(from_SH[2]),
    .from_SH3(from_SH[3]),
    .from_SH4(from_SH[4]),
    .from_SH5(from_SH[5]),
    .from_SH6(from_SH[6]),
    .from_SH7(from_SH[7]),
    .from_SI0(from_SI[0]),
    .from_SI1(from_SI[1]),
    .from_SI2(from_SI[2]),
    .from_SI3(from_SI[3]),
    .from_SI4(from_SI[4]),
    .from_SI5(from_SI[5]),
    .from_SI6(from_SI[6]),
    .from_SI7(from_SI[7]),
    .from_SI8(from_SI[8]),
    .from_SI9(from_SI[9]),
    .from_SI10(from_SI[10]),
    .from_SI11(from_SI[11]),
    .to_NA0(to_NA[0]),
    .to_NA1(to_NA[1]),
    .to_NA2(to_NA[2]),
    .to_NA3(to_NA[3]),
    .to_NB0(to_NB[0]),
    .to_NB1(to_NB[1]),
    .to_NB2(to_NB[2]),
    .to_NB3(to_NB[3]),
    .to_NC0(to_NC[0]),
    .to_NC1(to_NC[1]),
    .to_NC2(to_NC[2]),
    .to_NC3(to_NC[3]),
    .to_ND0(to_ND[0]),
    .to_ND1(to_ND[1]),
    .to_ND2(to_ND[2]),
    .to_ND3(to_ND[3]),
    .to_NF0(to_NF[0]),
    .to_NF1(to_NF[1]),
    .to_NF2(to_NF[2]),
    .to_NF3(to_NF[3]),
    .to_NG0(to_NG[0]),
    .to_NG1(to_NG[1]),
    .to_NG2(to_NG[2]),
    .to_NG3(to_NG[3]),
    .to_NG4(to_NG[4]),
    .to_NG5(to_NG[5]),
    .to_NG6(to_NG[6]),
    .to_NG7(to_NG[7]),
    .to_NH0(to_NH[0]),
    .to_NH1(to_NH[1]),
    .to_NH2(to_NH[2]),
    .to_NH3(to_NH[3]),
    .to_NH4(to_NH[4]),
    .to_NH5(to_NH[5]),
    .to_NH6(to_NH[6]),
    .to_NH7(to_NH[7]),
    .to_NI0(to_NI[0]),
    .to_NI1(to_NI[1]),
    .to_NI2(to_NI[2]),
    .to_NI3(to_NI[3]),
    .to_NI4(to_NI[4]),
    .to_NI5(to_NI[5]),
    .to_NI6(to_NI[6]),
    .to_NI7(to_NI[7]),
    .to_NI8(to_NI[8]),
    .to_NI9(to_NI[9]),
    .to_NI10(to_NI[10]),
    .to_NI11(to_NI[11])
);

endmodule