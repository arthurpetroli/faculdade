onerror {exit -code 1}
vlib work
vcom -work work Atividad8.vho
vcom -work work Waveform.vwf.vht
vcd file -direction Atividad8.msim.vcd
vcd add -internal Atividad8_vhd_vec_tst/*
vcd add -internal Atividad8_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
