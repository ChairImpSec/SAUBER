`timescale 1ps/1ps
module fab_tb;
    parameter input_w = 22;

    wire [91:0] A_cfg, B_cfg;

    wire [input_w:0] I_top_0_t, I_top_0_f, I_top_1_t, I_top_1_f, ctrl_I_top_0_t, ctrl_I_top_0_f, O_top_0_f, O_top_1_f, ctrl_O_top_0_f, T_top, ctrl_T_top;
    reg  [input_w:0] O_top_0_t, O_top_1_t, ctrl_O_top_0_t;

    assign O_top_0_f = ~O_top_0_t;
    assign O_top_1_f = ~O_top_1_t;
    assign ctrl_O_top_0_f = ~ctrl_O_top_0_t;

    wire [input_w:0] unmasked_out;
    assign unmasked_out = I_top_0_t ^ I_top_1_t;
    
    reg  rst_sync_rng = 1'b1, rst_sync_fabric = 1'b1, rst_async_full = 1'b1;
    wire f_detected, prech1, prech2;


    reg  [79:0] key_t, iv_t;
    wire [79:0] key_f, iv_f;
    assign key_f = ~key_t;
    assign iv_f  = ~iv_t;


    reg CLK = 1'b0;
    reg resetn = 1'b1;
    reg SelfWriteStrobe = 1'b0;
    reg [31:0] SelfWriteData = 1'b0;
    reg Rx = 1'b1;
    wire ComActive;
    wire ReceiveLED;
    reg s_clk = 1'b0;
    reg s_data = 1'b0;

    // Instantiate both the fabric and the reference DUT
    eFPGA_top2 top_i (
        .I_top_0_t(I_top_0_t),
        .I_top_0_f(I_top_0_f),
        .I_top_1_t(I_top_1_t),
        .I_top_1_f(I_top_1_f),
        .T_top(T_top),
        .O_top_0_t(O_top_0_t),
        .O_top_0_f(O_top_0_f),
        .O_top_1_t(O_top_1_t),
        .O_top_1_f(O_top_1_f),
        .ctrl_I_top_0_t(ctrl_I_top_0_t),
        .ctrl_I_top_0_f(ctrl_I_top_0_f),
        .ctrl_T_top(ctrl_T_top),
        .ctrl_O_top_0_t(ctrl_O_top_0_t),
        .ctrl_O_top_0_f(ctrl_O_top_0_f),


        .A_config_C(A_cfg), .B_config_C(B_cfg),
        .CLK(CLK), .resetn(resetn),
        .SelfWriteStrobe(SelfWriteStrobe), .SelfWriteData(SelfWriteData),
        .Rx(Rx),
        .ComActive(ComActive),
        .ReceiveLED(ReceiveLED),
        .s_clk(s_clk),
        .s_data(s_data),

        .f_detected(f_detected),
        .rst_async_full(rst_async_full),
        .rst_sync_fabric(rst_sync_fabric),
        .rst_sync_rng(rst_sync_rng),
        .prech1(prech1),
        .prech2(prech2),
        .key_t(key_t),
        .key_f(key_f),
        .iv_t(iv_t),
        .iv_f(iv_f)
    );

    integer idx;

    localparam MAX_BITBYTES = 21140;
    reg [7:0] bitstream[0:MAX_BITBYTES-1];

    always #5000 CLK = (CLK === 1'b0);

    integer i;
    reg have_errors = 1'b0;


/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

initial begin



`ifndef EMULATION
        $display("writing bitstream ...");   
        $readmemh("bitstream.hex", bitstream);
        #100;
        resetn = 1'b0;
        #10000;
        resetn = 1'b1;
        #10000;
        repeat (20) @(posedge CLK);
        #2500;
        for (i = 0; i < MAX_BITBYTES; i = i + 4) begin
            SelfWriteData <= {bitstream[i], bitstream[i+1], bitstream[i+2], bitstream[i+3]};
            repeat (2) @(posedge CLK);
            SelfWriteStrobe <= 1'b1;
            @(posedge CLK);
            SelfWriteStrobe <= 1'b0;
            repeat (2) @(posedge CLK);
        end
        $display("writing bitstream done"); 
`endif

    $dumpfile("fab_tb2.fst");
    $dumpvars(0, fab_tb);
    rst_sync_fabric <= 1'b0;
    rst_sync_rng <= 1'b0;

    repeat (10) @(posedge CLK); 




    O_top_0_t       <= 0;
    O_top_1_t       <= 0;
    ctrl_O_top_0_t  <= 0;
    key_t <= 80'h20a66cfb0a4516cf5e25;
    iv_t  <= 80'hf25dec3fd703b7213f16;


    rst_async_full <= 1'b1;
    rst_sync_fabric <= 1'b0;
    repeat (10) @(posedge CLK);
    $display("start sim"); 

/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
repeat (1) @(posedge CLK);
repeat (1) @(posedge CLK);
/////////////////////////////////////////////////////////////////////////////////////////////////////
rst_async_full <= 1'b0;
repeat (3) @(posedge CLK);

rst_sync_fabric <= 1'b1;
repeat (4) @(posedge CLK);

key_t <= 80'hd78b1bbaa4fd57b52a7f;
iv_t <= 80'h9dc951fcd39c6136184a;

ctrl_O_top_0_t[4:0] <= 5'b01110;
O_top_0_t[7:0]  <= 8'h2b;



repeat (1) @(posedge CLK);
rst_sync_fabric <= 1'b0;

$display("reset fabric1");


repeat (3) @(posedge CLK);
ctrl_O_top_0_t[4] <= 1'b1;


$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);

$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);

rst_sync_fabric <= 1'b1;
repeat (1) @(posedge CLK);

$display("reset fabric2");
rst_sync_fabric <= 1'b0;
repeat (1) @(posedge CLK);


$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);

repeat (1) @(posedge CLK);
rst_sync_fabric <= 1'b1;
repeat (1) @(posedge CLK);

$display("reset fabric2");
rst_sync_fabric <= 1'b0;

$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);
repeat (2) @(posedge CLK);
$display("time=%0t Output= %h", $time, unmasked_out[19:12]);




/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////

$display("sim complete");

        if (have_errors)
            $fatal;
        else
            $finish;
    end

endmodule


/*
module clk_buf(input A, output X);
assign X = A;
endmodule

module break_comb_loop(input A, output X);
assign X = A;
endmodule*/
