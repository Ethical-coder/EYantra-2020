transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {UART.vo}

vlog -vlog01compat -work work +incdir+C:/Quartus/UART {C:/Quartus/UART/UART_TEST_BENCH.v}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  TestBench

add wave *
view structure
view signals
run -all
