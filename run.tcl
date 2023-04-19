database load Adder -autocreate -technology HAPS-100

report rtl_diagnostics -srclist Adder/vlog_inputs.txt -top_module adder_four_bit -out rd0

source Adder/option.tcl

launch uc -utf Adder/uc_compile.utf -ucdb adder_four_bit_ucdb -v 2.0

run compile -ucdb adder_four_bit_ucdb -out c0

run pre_partition -tss Adder/board.tss -fdc Adder/df.fdc -area_est 1 -out pp0

export file adder_four_bit.est -path pp0_area

run partition -pcf Adder/partition.pcf -out pa0

run system_route -pcf Adder/partition.pcf -fdc Adder/design.fdc -optimization_priority multi_hop_path -estimate_timing 1 -out sr0

message_override -warning DE107
run system_generate -fdc Adder/design.fdc -path synthesis_files -out sg0

launch protocompiler -script ./synthesis_files/FB1_uA/FB1_uA_srs.tcl -script ./synthesis_files/FB1_uB/FB1_uB_srs.tcl

launch vivado -script ./synthesis_files/FB1_uA/vivado_srs/run_vivado_haps.tcl -script ./synthesis_files/FB1_uB/vivado_srs/run_vivado_haps.tcl



