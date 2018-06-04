onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /usb2_sdram_project_vhd_tst/CLK48M
add wave -noupdate /usb2_sdram_project_vhd_tst/Encode_A
add wave -noupdate /usb2_sdram_project_vhd_tst/Encode_B
add wave -noupdate /usb2_sdram_project_vhd_tst/i1/EN_Clr
add wave -noupdate /usb2_sdram_project_vhd_tst/i1/EN_DIV
add wave -noupdate -radix decimal /usb2_sdram_project_vhd_tst/i1/EN_Counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1350 ns} 0}
configure wave -namecolwidth 310
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
WaveRestoreZoom {0 ns} {8192 ns}
