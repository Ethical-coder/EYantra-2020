onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Mux_tb_Vector/A
add wave -noupdate /Mux_tb_Vector/B
add wave -noupdate /Mux_tb_Vector/C
add wave -noupdate /Mux_tb_Vector/D
add wave -noupdate /Mux_tb_Vector/Output
add wave -noupdate /Mux_tb_Vector/Expected_Output
add wave -noupdate /Mux_tb_Vector/i
add wave -noupdate /Mux_tb_Vector/error
add wave -noupdate /Mux_tb_Vector/file_id
add wave -noupdate /Mux_tb_Vector/file_id_en
add wave -noupdate /Mux_tb_Vector/file_id_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {152535 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {159050 ps} {160050 ps}
