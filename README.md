# SAUBER

This repository contains the source code and hardware implementations (HDL files) for the paper [Design and Implementation of a Physically Secure Open-Source FPGA and Toolchain](https://tches.iacr.org/index.php/TCHES/article/view/12227).

- *Designs for our FPGA* includes designs mapped to gadgets which can be used for bitstream generation
- *FABulous* contains the adjusted FABulous framework for fabric generation as well as implementations of secure fabric scaled to 23x7, 60x34 and 60x77 (full-secure part).


## 

Based on [FABulous: an Embedded FPGA Framework](https://github.com/FPGA-Research/FABulous) 


## Prerequisites
- Python 3.9 or later
- Python dependencies:
````
    pip3 install -r requirements.txt
    sudo apt-get install python3-tk
````
- The following packages are requiered to be installed for the CAD toolchain
    - [Yosys](https://github.com/YosysHQ/yosys)
        - replace the "prims.v" file in $YOSYS_ROOT/techlibs/fabulous/ (or oss-cad-suite/share/yosys/fabulous/ if Yosys as part of oss-cad-suite) with the provided prims.v. 
    - [nextpnr-generic](https://github.com/YosysHQ/nextpnr#nextpnr-generic)


## HDL to Bitstream flow

1) Use [AGEMA](https://github.com/Chair-for-Security-Engineering/Agema) to map the design to SAUBER-gadgets
2) Use model of the fabric to place and route bundeled design in FABulous shell
````
#load fabric 23x7_* or 60x34_* or 60x77_SAUBER_model or your custom fabric
python3 FABulous.py 23x7_SAUBER 
load_fabric

#this step needs to be done once and can be skipped later
run_FABulous_fabric

run_FABulous_bitstream npnr ./user_design/<your_design>.v
exit
````
3) Use unbundle_routing.ipynb to create unbundeled bitstream for targeted fabric

## 
## Publications

S. Meschkov, D. Lammers, M. B. Tahoori, and A. Moradi, “[Design and Implementation of a Physically Secure Open-Source FPGA and Toolchain](https://tches.iacr.org/index.php/TCHES/article/view/12227)”, TCHES, vol. 2025, no. 3, pp. 542–582, Jun. 2025, doi: 10.46586/tches.v2025.i3.542-582.
