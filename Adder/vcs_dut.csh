#!/bin/csh
 

#fail
vlogan -full64 -work work -top adder_four_bit -f vlog2.txt -sverilog +incdir+./ "+define+synthesis" "+define+SYNTHESIS" -full64
vcs -full64  work.adder_four_bit -top work.adder_four_bit -hw_top=adder_four_bit

#ok
#vlogan -full64 -work work -sverilog -f file.txt -l vlogan.log
#vcs -full64 -timescale=1ns/1ns -top top -hw_top=top 



