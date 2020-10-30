onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Binary_to_Ascii_tb_Vector/clk
add wave -noupdate /Binary_to_Ascii_tb_Vector/int_part
add wave -noupdate /Binary_to_Ascii_tb_Vector/dec_part
add wave -noupdate /Binary_to_Ascii_tb_Vector/int_ascii
add wave -noupdate /Binary_to_Ascii_tb_Vector/dec_ascii
add wave -noupdate /Binary_to_Ascii_tb_Vector/Expected_Output_int
add wave -noupdate /Binary_to_Ascii_tb_Vector/Expected_Output_dec
add wave -noupdate /Binary_to_Ascii_tb_Vector/i
add wave -noupdate /Binary_to_Ascii_tb_Vector/error_int
add wave -noupdate /Binary_to_Ascii_tb_Vector/error_dec
add wave -noupdate /Binary_to_Ascii_tb_Vector/file_id
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {151107 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 332
configure wave -valuecolwidth 214
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
WaveRestoreZoom {0 ps} {141620 ps}
