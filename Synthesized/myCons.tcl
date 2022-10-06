set timing_enable_multiple_clocks_per_reg  true
set clk_margin 1.0
set max_fanout 10
create_clock -period 18 -waveform {0 9} [get_ports {sClk}]
create_clock -period 1302 -waveform {0 651} [get_ports {dClk}]
set_input_transition 0.2 [get_ports sClk]
set_input_transition 0.2 [get_ports dClk]
set_input_delay 1.0 -clock sClk  [get_ports reset_n]
set_input_delay 1.0 -clock sClk  [get_ports start]
set_input_delay 1.0 -clock dClk  [get_ports inDataL]
set_input_delay 1.0 -clock dClk  [get_ports inDataR]
set_input_delay 1.0 -clock dClk  [get_ports frame]
set_output_delay 1.0  -clock sClk [get_ports outDataL]
set_output_delay 1.0  -clock sClk [get_ports outDataR]
set_output_delay 1.0  -clock sClk [get_ports inReady]
set_output_delay 1.0  -clock dClk [get_ports outReadyToTB]
