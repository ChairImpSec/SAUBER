#!/usr/bin/env bash
set -ex
DESIGN=AGEMA_AES_round_fatwire
BITSTREAM=test_design/${DESIGN}.bin
VERILOG=../../fabric_generator/verilog_output
MAX_BITBYTES=400180

rm -rf tmp
mkdir tmp
for i in $(find ../Tile -type f -name "*.v") $(find ../Fabric -type f -name "*.v")
do 
    cp $i tmp/
done

iverilog -D EMULATION -s fab_tb -o fab_tb.vvp test_design/${DESIGN}.vh tmp/* fabulous_tb.v 
vvp fab_tb.vvp -fst
rm -rf tmp