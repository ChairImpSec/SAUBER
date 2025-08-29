module ctrl_to_sec
    #(
`ifdef EMULATION
        parameter [639:0] Emulate_Bitstream=640'b0,
`endif
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32,
        parameter NoConfigBits=47
    )
    (
 //Side.NORTH
        output [0:0] to_NA,        //Port(Name=to_NA, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NB,        //Port(Name=to_NB, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NC,        //Port(Name=to_NC, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_ND,        //Port(Name=to_ND, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [0:0] to_NF,        //Port(Name=to_NF, IO=OUTPUT, XOffset=0, YOffset=-1, WireCount=1, Side=NORTH)
        output [1:0] to_NG,        //Port(Name=to_NG, IO=OUTPUT, XOffset=0, YOffset=-2, WireCount=1, Side=NORTH)
        output [1:0] to_NH,        //Port(Name=to_NH, IO=OUTPUT, XOffset=0, YOffset=-2, WireCount=1, Side=NORTH)
        output [2:0] to_NI,        //Port(Name=to_NI, IO=OUTPUT, XOffset=0, YOffset=-3, WireCount=1, Side=NORTH)
        input [0:0] from_SA,        //Port(Name=from_SA, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SB,        //Port(Name=from_SB, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SC,        //Port(Name=from_SC, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SD,        //Port(Name=from_SD, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [0:0] from_SF,        //Port(Name=from_SF, IO=INPUT, XOffset=0, YOffset=1, WireCount=1, Side=NORTH)
        input [1:0] from_SG,        //Port(Name=from_SG, IO=INPUT, XOffset=0, YOffset=2, WireCount=1, Side=NORTH)
        input [1:0] from_SH,        //Port(Name=from_SH, IO=INPUT, XOffset=0, YOffset=2, WireCount=1, Side=NORTH)
        input [2:0] from_SI,        //Port(Name=from_SI, IO=INPUT, XOffset=0, YOffset=3, WireCount=1, Side=NORTH)
 //Side.EAST
        input [0:0] from_WA_1s,        //Port(Name=from_WA_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WB_1s,        //Port(Name=from_WB_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WC_1s,        //Port(Name=from_WC_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WD_1s,        //Port(Name=from_WD_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WF_1s,        //Port(Name=from_WF_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WG_1s,        //Port(Name=from_WG_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WH_1s,        //Port(Name=from_WH_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
        input [0:0] from_WI_1s,        //Port(Name=from_WI_1s, IO=INPUT, XOffset=-1, YOffset=0, WireCount=1, Side=EAST)
 //Side.WEST
        input [0:0] from_EA,        //Port(Name=from_EA, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EB,        //Port(Name=from_EB, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EC,        //Port(Name=from_EC, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_ED,        //Port(Name=from_ED, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [0:0] from_EF,        //Port(Name=from_EF, IO=INPUT, XOffset=1, YOffset=0, WireCount=1, Side=WEST)
        input [1:0] from_EG,        //Port(Name=from_EG, IO=INPUT, XOffset=2, YOffset=0, WireCount=1, Side=WEST)
        input [1:0] from_EH,        //Port(Name=from_EH, IO=INPUT, XOffset=2, YOffset=0, WireCount=1, Side=WEST)
        input [2:0] from_EI,        //Port(Name=from_EI, IO=INPUT, XOffset=3, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WA,        //Port(Name=to_WA, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WB,        //Port(Name=to_WB, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WC,        //Port(Name=to_WC, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WD,        //Port(Name=to_WD, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [0:0] to_WF,        //Port(Name=to_WF, IO=OUTPUT, XOffset=-1, YOffset=0, WireCount=1, Side=WEST)
        output [1:0] to_WG,        //Port(Name=to_WG, IO=OUTPUT, XOffset=-2, YOffset=0, WireCount=1, Side=WEST)
        output [1:0] to_WH,        //Port(Name=to_WH, IO=OUTPUT, XOffset=-2, YOffset=0, WireCount=1, Side=WEST)
        output [2:0] to_WI,        //Port(Name=to_WI, IO=OUTPUT, XOffset=-3, YOffset=0, WireCount=1, Side=WEST)
 //Side.SOUTH
        input [0:0] from_NA,        //Port(Name=from_NA, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NB,        //Port(Name=from_NB, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NC,        //Port(Name=from_NC, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_ND,        //Port(Name=from_ND, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [0:0] from_NF,        //Port(Name=from_NF, IO=INPUT, XOffset=0, YOffset=-1, WireCount=1, Side=SOUTH)
        input [1:0] from_NG,        //Port(Name=from_NG, IO=INPUT, XOffset=0, YOffset=-2, WireCount=1, Side=SOUTH)
        input [1:0] from_NH,        //Port(Name=from_NH, IO=INPUT, XOffset=0, YOffset=-2, WireCount=1, Side=SOUTH)
        input [2:0] from_NI,        //Port(Name=from_NI, IO=INPUT, XOffset=0, YOffset=-3, WireCount=1, Side=SOUTH)
        output [0:0] to_SA,        //Port(Name=to_SA, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SB,        //Port(Name=to_SB, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SC,        //Port(Name=to_SC, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SD,        //Port(Name=to_SD, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [0:0] to_SF,        //Port(Name=to_SF, IO=OUTPUT, XOffset=0, YOffset=1, WireCount=1, Side=SOUTH)
        output [1:0] to_SG,        //Port(Name=to_SG, IO=OUTPUT, XOffset=0, YOffset=2, WireCount=1, Side=SOUTH)
        output [1:0] to_SH,        //Port(Name=to_SH, IO=OUTPUT, XOffset=0, YOffset=2, WireCount=1, Side=SOUTH)
        output [2:0] to_SI,        //Port(Name=to_SI, IO=OUTPUT, XOffset=0, YOffset=3, WireCount=1, Side=SOUTH)
    //Tile IO ports from BELs
        input UserCLK,
        output UserCLKo,
        input rst,
        output rsto,
        input [FrameBitsPerRow -1:0] FrameData, //CONFIG_PORT
        output [FrameBitsPerRow -1:0] FrameData_O,
        input [MaxFramesPerCol -1:0] FrameStrobe, //CONFIG_PORT
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
wire[1:0] from_NG_i;
wire[0:0] to_NG_i;
wire[1:0] from_NH_i;
wire[0:0] to_NH_i;
wire[2:0] from_NI_i;
wire[1:0] to_NI_i;
wire[1:0] from_SG_i;
wire[0:0] to_SG_i;
wire[1:0] from_SH_i;
wire[0:0] to_SH_i;
wire[2:0] from_SI_i;
wire[1:0] to_SI_i;

assign FrameData_O_i = FrameData_i;

my_buf data_inbuf_0 (
    .A(FrameData[0]),
    .X(FrameData_i[0])
);

my_buf data_inbuf_1 (
    .A(FrameData[1]),
    .X(FrameData_i[1])
);

my_buf data_inbuf_2 (
    .A(FrameData[2]),
    .X(FrameData_i[2])
);

my_buf data_inbuf_3 (
    .A(FrameData[3]),
    .X(FrameData_i[3])
);

my_buf data_inbuf_4 (
    .A(FrameData[4]),
    .X(FrameData_i[4])
);

my_buf data_inbuf_5 (
    .A(FrameData[5]),
    .X(FrameData_i[5])
);

my_buf data_inbuf_6 (
    .A(FrameData[6]),
    .X(FrameData_i[6])
);

my_buf data_inbuf_7 (
    .A(FrameData[7]),
    .X(FrameData_i[7])
);

my_buf data_inbuf_8 (
    .A(FrameData[8]),
    .X(FrameData_i[8])
);

my_buf data_inbuf_9 (
    .A(FrameData[9]),
    .X(FrameData_i[9])
);

my_buf data_inbuf_10 (
    .A(FrameData[10]),
    .X(FrameData_i[10])
);

my_buf data_inbuf_11 (
    .A(FrameData[11]),
    .X(FrameData_i[11])
);

my_buf data_inbuf_12 (
    .A(FrameData[12]),
    .X(FrameData_i[12])
);

my_buf data_inbuf_13 (
    .A(FrameData[13]),
    .X(FrameData_i[13])
);

my_buf data_inbuf_14 (
    .A(FrameData[14]),
    .X(FrameData_i[14])
);

my_buf data_inbuf_15 (
    .A(FrameData[15]),
    .X(FrameData_i[15])
);

my_buf data_inbuf_16 (
    .A(FrameData[16]),
    .X(FrameData_i[16])
);

my_buf data_inbuf_17 (
    .A(FrameData[17]),
    .X(FrameData_i[17])
);

my_buf data_inbuf_18 (
    .A(FrameData[18]),
    .X(FrameData_i[18])
);

my_buf data_inbuf_19 (
    .A(FrameData[19]),
    .X(FrameData_i[19])
);

my_buf data_inbuf_20 (
    .A(FrameData[20]),
    .X(FrameData_i[20])
);

my_buf data_inbuf_21 (
    .A(FrameData[21]),
    .X(FrameData_i[21])
);

my_buf data_inbuf_22 (
    .A(FrameData[22]),
    .X(FrameData_i[22])
);

my_buf data_inbuf_23 (
    .A(FrameData[23]),
    .X(FrameData_i[23])
);

my_buf data_inbuf_24 (
    .A(FrameData[24]),
    .X(FrameData_i[24])
);

my_buf data_inbuf_25 (
    .A(FrameData[25]),
    .X(FrameData_i[25])
);

my_buf data_inbuf_26 (
    .A(FrameData[26]),
    .X(FrameData_i[26])
);

my_buf data_inbuf_27 (
    .A(FrameData[27]),
    .X(FrameData_i[27])
);

my_buf data_inbuf_28 (
    .A(FrameData[28]),
    .X(FrameData_i[28])
);

my_buf data_inbuf_29 (
    .A(FrameData[29]),
    .X(FrameData_i[29])
);

my_buf data_inbuf_30 (
    .A(FrameData[30]),
    .X(FrameData_i[30])
);

my_buf data_inbuf_31 (
    .A(FrameData[31]),
    .X(FrameData_i[31])
);

my_buf data_outbuf_0 (
    .A(FrameData_O_i[0]),
    .X(FrameData_O[0])
);

my_buf data_outbuf_1 (
    .A(FrameData_O_i[1]),
    .X(FrameData_O[1])
);

my_buf data_outbuf_2 (
    .A(FrameData_O_i[2]),
    .X(FrameData_O[2])
);

my_buf data_outbuf_3 (
    .A(FrameData_O_i[3]),
    .X(FrameData_O[3])
);

my_buf data_outbuf_4 (
    .A(FrameData_O_i[4]),
    .X(FrameData_O[4])
);

my_buf data_outbuf_5 (
    .A(FrameData_O_i[5]),
    .X(FrameData_O[5])
);

my_buf data_outbuf_6 (
    .A(FrameData_O_i[6]),
    .X(FrameData_O[6])
);

my_buf data_outbuf_7 (
    .A(FrameData_O_i[7]),
    .X(FrameData_O[7])
);

my_buf data_outbuf_8 (
    .A(FrameData_O_i[8]),
    .X(FrameData_O[8])
);

my_buf data_outbuf_9 (
    .A(FrameData_O_i[9]),
    .X(FrameData_O[9])
);

my_buf data_outbuf_10 (
    .A(FrameData_O_i[10]),
    .X(FrameData_O[10])
);

my_buf data_outbuf_11 (
    .A(FrameData_O_i[11]),
    .X(FrameData_O[11])
);

my_buf data_outbuf_12 (
    .A(FrameData_O_i[12]),
    .X(FrameData_O[12])
);

my_buf data_outbuf_13 (
    .A(FrameData_O_i[13]),
    .X(FrameData_O[13])
);

my_buf data_outbuf_14 (
    .A(FrameData_O_i[14]),
    .X(FrameData_O[14])
);

my_buf data_outbuf_15 (
    .A(FrameData_O_i[15]),
    .X(FrameData_O[15])
);

my_buf data_outbuf_16 (
    .A(FrameData_O_i[16]),
    .X(FrameData_O[16])
);

my_buf data_outbuf_17 (
    .A(FrameData_O_i[17]),
    .X(FrameData_O[17])
);

my_buf data_outbuf_18 (
    .A(FrameData_O_i[18]),
    .X(FrameData_O[18])
);

my_buf data_outbuf_19 (
    .A(FrameData_O_i[19]),
    .X(FrameData_O[19])
);

my_buf data_outbuf_20 (
    .A(FrameData_O_i[20]),
    .X(FrameData_O[20])
);

my_buf data_outbuf_21 (
    .A(FrameData_O_i[21]),
    .X(FrameData_O[21])
);

my_buf data_outbuf_22 (
    .A(FrameData_O_i[22]),
    .X(FrameData_O[22])
);

my_buf data_outbuf_23 (
    .A(FrameData_O_i[23]),
    .X(FrameData_O[23])
);

my_buf data_outbuf_24 (
    .A(FrameData_O_i[24]),
    .X(FrameData_O[24])
);

my_buf data_outbuf_25 (
    .A(FrameData_O_i[25]),
    .X(FrameData_O[25])
);

my_buf data_outbuf_26 (
    .A(FrameData_O_i[26]),
    .X(FrameData_O[26])
);

my_buf data_outbuf_27 (
    .A(FrameData_O_i[27]),
    .X(FrameData_O[27])
);

my_buf data_outbuf_28 (
    .A(FrameData_O_i[28]),
    .X(FrameData_O[28])
);

my_buf data_outbuf_29 (
    .A(FrameData_O_i[29]),
    .X(FrameData_O[29])
);

my_buf data_outbuf_30 (
    .A(FrameData_O_i[30]),
    .X(FrameData_O[30])
);

my_buf data_outbuf_31 (
    .A(FrameData_O_i[31]),
    .X(FrameData_O[31])
);

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

assign to_NG_i[1-1:0] = from_NG_i[1:1];

my_buf from_NG_inbuf_0 (
    .A(from_NG[1]),
    .X(from_NG_i[1])
);

my_buf to_NG_outbuf_0 (
    .A(to_NG_i[0]),
    .X(to_NG[0])
);

assign to_NH_i[1-1:0] = from_NH_i[1:1];

my_buf from_NH_inbuf_0 (
    .A(from_NH[1]),
    .X(from_NH_i[1])
);

my_buf to_NH_outbuf_0 (
    .A(to_NH_i[0]),
    .X(to_NH[0])
);

assign to_NI_i[2-1:0] = from_NI_i[2:1];

my_buf from_NI_inbuf_0 (
    .A(from_NI[1]),
    .X(from_NI_i[1])
);

my_buf from_NI_inbuf_1 (
    .A(from_NI[2]),
    .X(from_NI_i[2])
);

my_buf to_NI_outbuf_0 (
    .A(to_NI_i[0]),
    .X(to_NI[0])
);

my_buf to_NI_outbuf_1 (
    .A(to_NI_i[1]),
    .X(to_NI[1])
);

assign to_SG_i[1-1:0] = from_SG_i[1:1];

my_buf from_SG_inbuf_0 (
    .A(from_SG[1]),
    .X(from_SG_i[1])
);

my_buf to_SG_outbuf_0 (
    .A(to_SG_i[0]),
    .X(to_SG[0])
);

assign to_SH_i[1-1:0] = from_SH_i[1:1];

my_buf from_SH_inbuf_0 (
    .A(from_SH[1]),
    .X(from_SH_i[1])
);

my_buf to_SH_outbuf_0 (
    .A(to_SH_i[0]),
    .X(to_SH[0])
);

assign to_SI_i[2-1:0] = from_SI_i[2:1];

my_buf from_SI_inbuf_0 (
    .A(from_SI[1]),
    .X(from_SI_i[1])
);

my_buf from_SI_inbuf_1 (
    .A(from_SI[2]),
    .X(from_SI_i[2])
);

my_buf to_SI_outbuf_0 (
    .A(to_SI_i[0]),
    .X(to_SI[0])
);

my_buf to_SI_outbuf_1 (
    .A(to_SI_i[1]),
    .X(to_SI[1])
);

clk_buf inst_clk_buf (
    .A(UserCLK),
    .X(UserCLKo)
);

my_buf inst_rst_buf (
    .A(rst),
    .X(rsto)
);


 //configuration storage latches
ctrl_to_sec_ConfigMem
`ifdef EMULATION
    #(
    .Emulate_Bitstream(Emulate_Bitstream)
    )
`endif
    Inst_ctrl_to_sec_ConfigMem
    (
    .FrameData(FrameData),
    .FrameStrobe(FrameStrobe),
    .ConfigBits(ConfigBits),
    .ConfigBits_N(ConfigBits_N)
);

 //BEL component instantiations
ctrl_to_sec_switch_matrix Inst_ctrl_to_sec_switch_matrix (
    .from_EA0(from_EA[0]),
    .from_EB0(from_EB[0]),
    .from_EC0(from_EC[0]),
    .from_ED0(from_ED[0]),
    .from_EF0(from_EF[0]),
    .from_EG0(from_EG[0]),
    .from_EG1(from_EG[1]),
    .from_EH0(from_EH[0]),
    .from_EH1(from_EH[1]),
    .from_EI0(from_EI[0]),
    .from_EI1(from_EI[1]),
    .from_EI2(from_EI[2]),
    .from_WA_1s0(from_WA_1s[0]),
    .from_WB_1s0(from_WB_1s[0]),
    .from_WC_1s0(from_WC_1s[0]),
    .from_WD_1s0(from_WD_1s[0]),
    .from_WF_1s0(from_WF_1s[0]),
    .from_WG_1s0(from_WG_1s[0]),
    .from_WH_1s0(from_WH_1s[0]),
    .from_WI_1s0(from_WI_1s[0]),
    .from_NA0(from_NA[0]),
    .from_NB0(from_NB[0]),
    .from_NC0(from_NC[0]),
    .from_ND0(from_ND[0]),
    .from_NF0(from_NF[0]),
    .from_NG0(from_NG[0]),
    .from_NH0(from_NH[0]),
    .from_NI0(from_NI[0]),
    .from_SA0(from_SA[0]),
    .from_SB0(from_SB[0]),
    .from_SC0(from_SC[0]),
    .from_SD0(from_SD[0]),
    .from_SF0(from_SF[0]),
    .from_SG0(from_SG[0]),
    .from_SH0(from_SH[0]),
    .from_SI0(from_SI[0]),
    .to_WA0(to_WA[0]),
    .to_WB0(to_WB[0]),
    .to_WC0(to_WC[0]),
    .to_WD0(to_WD[0]),
    .to_WF0(to_WF[0]),
    .to_WG0(to_WG[0]),
    .to_WG1(to_WG[1]),
    .to_WH0(to_WH[0]),
    .to_WH1(to_WH[1]),
    .to_WI0(to_WI[0]),
    .to_WI1(to_WI[1]),
    .to_WI2(to_WI[2]),
    .to_NA0(to_NA[0]),
    .to_NB0(to_NB[0]),
    .to_NC0(to_NC[0]),
    .to_ND0(to_ND[0]),
    .to_NF0(to_NF[0]),
    .to_NG0(to_NG[1]),
    .to_NH0(to_NH[1]),
    .to_NI0(to_NI[2]),
    .to_SA0(to_SA[0]),
    .to_SB0(to_SB[0]),
    .to_SC0(to_SC[0]),
    .to_SD0(to_SD[0]),
    .to_SF0(to_SF[0]),
    .to_SG0(to_SG[1]),
    .to_SH0(to_SH[1]),
    .to_SI0(to_SI[2]),
    .ConfigBits(ConfigBits[47-1:0]),
    .ConfigBits_N(ConfigBits_N[47-1:0])
);

endmodule