set projDir "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/vivado"
set projName "1D_ALU"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/au_top_0.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/reset_conditioner_1.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/button_conditioner_2.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/edge_detector_3.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/auto_test_4.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/manual_test_5.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/multi_seven_seg_6.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/pipeline_7.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/alu_8.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/external_error_9.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/counter_10.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/counter_11.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/seven_seg_12.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/decoder_13.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/comparator_14.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/adder_15.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/shifter_16.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/boolean_17.v" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/verilog/multiplier_18.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/constraint/alchitry.xdc" "C:/Users/dianm/Desktop/Alchitry/1D_ALU/work/constraint/io.xdc" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/au.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 16
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 16
wait_on_run impl_1
