# HAPS_project
#### HAPS Protocompiler Project of NTHU CoSR course 11120CSR530600
#### by Pin-Yuan Yang, 111501544, VLSI/CAD SCLab, College of Semiconductor Research, NTHU, Taiwan 


## Introduction

#### I create a netlist of Synchronous 4-bit Adder, and convert their input with clock input.

## Block diagram

![alt text](https://github.com/PYang03/HAPS_project/blob/6af9bd62f7cbbad7b2f6a66bd2d591baa4a0f90d/images/block_diagram.png)
![alt text](https://github.com/PYang03/HAPS_project/blob/6af9bd62f7cbbad7b2f6a66bd2d591baa4a0f90d/images/block_diagram_1.png)

## The schematic of FPGA1 & FPGA2

![alt text](https://github.com/PYang03/HAPS_project/blob/6af9bd62f7cbbad7b2f6a66bd2d591baa4a0f90d/images/FB1_uA.png)
![alt text](https://github.com/PYang03/HAPS_project/blob/6af9bd62f7cbbad7b2f6a66bd2d591baa4a0f90d/images/FB1_uB.png)

## Timing budget reports

![alt text](https://github.com/PYang03/HAPS_project/blob/6653286cd6bf4cf5afe2bb47cded1364f161251f/images/timing.png)
![alt text](https://github.com/PYang03/HAPS_project/blob/6653286cd6bf4cf5afe2bb47cded1364f161251f/images/timing_min.png)

## Conclution

#### Personally, I don't have any experience of verilog, therefore it is very challenging for me to finish this project. It's a simple netlist, however it still makes me learned to do a full flow of FPGA implement with HAPS Protocompiler & vivado.
    
## Files contain in this repo
```
HAPS_proj
│
│   README.md
│   run.tcl   
│
│───Adder
│   │───src
│   │   │   adder_four_bit.v
│   │   │   full_3.v
│   │
│   │  board.tss
│   │  df.fdc
│   │  option.tcl
│   │  partition.pcf
│   │  uc_compile.utf
│   │  vcs_dut.csh
│   │  vlog_inputs.txt
│   │  vlog2.txt
│   
└───Adder_reports
│   │   #full-reports-folder
│   
└───synthesis_files
│   └───FB1_uA
│       └───vivado_srs
│           │   area.txt
│           │   clock_utilization.txt
│           │   FB1_uA_timing_summary.txt
│           │   FB1_uA_timing_summary_Min.txt
│   └───FB1_uB
│       └───vivado_srs
│           │   area.txt
│           │   clock_utilization.txt
│           │   FB1_uB_timing_summary.txt
│           │   FB1_uB_timing_summary_Min.txt
```

