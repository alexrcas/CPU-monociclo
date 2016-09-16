onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /cpu/clk
add wave -noupdate /cpu/reset
add wave -noupdate -radix decimal /cpu/e0
add wave -noupdate /cpu/e1
add wave -noupdate /cpu/e2
add wave -noupdate -radix unsigned /cpu/pc_out
add wave -noupdate -radix decimal /cpu/s0
add wave -noupdate -radix unsigned /cpu/micro1/registros/ra1
add wave -noupdate -radix unsigned /cpu/micro1/registros/ra2
add wave -noupdate -radix unsigned /cpu/micro1/registros/wa3
add wave -noupdate -radix decimal /cpu/micro1/registros/wd3
add wave -noupdate -radix decimal /cpu/micro1/registros/rd1
add wave -noupdate -radix decimal /cpu/micro1/registros/rd2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3143 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 203
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {3808 ps}
