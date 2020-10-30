onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Comparator_4_bit_tb_Vector/Input_A
add wave -noupdate /Comparator_4_bit_tb_Vector/Input_B
add wave -noupdate /Comparator_4_bit_tb_Vector/A_Greater
add wave -noupdate /Comparator_4_bit_tb_Vector/Equal
add wave -noupdate /Comparator_4_bit_tb_Vector/B_Greater
add wave -noupdate /Comparator_4_bit_tb_Vector/A_Greater_tb
add wave -noupdate /Comparator_4_bit_tb_Vector/Equal_tb
add wave -noupdate /Comparator_4_bit_tb_Vector/B_Greater_tb
add wave -noupdate /Comparator_4_bit_tb_Vector/i
add wave -noupdate /Comparator_4_bit_tb_Vector/error
add wave -noupdate /Comparator_4_bit_tb_Vector/file_id
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 277
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {289004 ps}
