create_clock -period 10.000 -name S_AXI_ACLK -waveform {0.000 5.000} [get_ports S_AXI_ACLK]
create_clock -period 10.000 -name CLK -waveform {0.000 5.000} [get_ports CLK]