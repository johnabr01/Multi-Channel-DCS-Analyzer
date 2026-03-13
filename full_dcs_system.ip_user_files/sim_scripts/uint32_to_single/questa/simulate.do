onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uint32_to_single_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {uint32_to_single.udo}

run -all

quit -force
