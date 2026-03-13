onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib single_multiply_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {single_multiply.udo}

run -all

quit -force
