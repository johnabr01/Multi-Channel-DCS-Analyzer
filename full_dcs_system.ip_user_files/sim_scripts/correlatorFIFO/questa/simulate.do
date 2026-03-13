onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib correlatorFIFO_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {correlatorFIFO.udo}

run -all

quit -force
