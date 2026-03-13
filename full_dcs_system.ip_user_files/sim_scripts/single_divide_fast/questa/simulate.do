onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib single_divide_fast_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {single_divide_fast.udo}

run -all

quit -force
