onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib PID_DSP_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {PID_DSP.udo}

run -all

quit -force
