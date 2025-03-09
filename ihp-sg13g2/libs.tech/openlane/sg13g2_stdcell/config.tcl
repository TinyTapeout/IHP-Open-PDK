set current_folder [file dirname [file normalize [info script]]]

# Technology lib
set ::env(LIB) [dict create]
dict set ::env(LIB) nom_typ_1p20V_25C "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sg13g2_stdcell_typ_1p20V_25C.lib"
dict set ::env(LIB) nom_fast_1p32V_m40C "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sg13g2_stdcell_fast_1p32V_m40C.lib"
dict set ::env(LIB) nom_slow_1p08V_125C "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lib/sg13g2_stdcell_slow_1p08V_125C.lib"

# Corners
set ::env(STA_CORNERS) "\
nom_fast_1p32V_m40C \
nom_slow_1p08V_125C \
nom_typ_1p20V_25C \
"

set ::env(DEFAULT_CORNER) "nom_typ_1p20V_25C"

# Synthesis mapping
 # Latch mapping
set ::env(SYNTH_LATCH_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/latch_map.v"

 # MUX4 mapping
set ::env(SYNTH_MUX4_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/mux4_map.v"

 # MUX2 mapping
set ::env(SYNTH_MUX_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/mux2_map.v"

# Tri-state buffer mapping
set ::env(TRISTATE_BUFFER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/tribuff_map.v"

# Placement site for core cells
# This can be found in the technology lef
set ::env(PLACE_SITE) "CoreSite"
set ::env(PLACE_SITE_WIDTH) 0.48
set ::env(PLACE_SITE_HEIGHT) 3.78

# welltap and endcap cells
# FIXME: There are no Endcap and Welltie cells in this PDK, so just put dummy values
set ::env(FP_WELLTAP_CELL) "sg13g2_fill_1"
set ::env(FP_ENDCAP_CELL) "sg13g2_decap_4"

# defaults (can be overridden by designs):
set ::env(SYNTH_DRIVING_CELL) "sg13g2_buf_4"
set ::env(SYNTH_DRIVING_CELL_PIN) "X"
set ::env(OUTPUT_CAP_LOAD) "6.0"
set ::env(SYNTH_MIN_BUF_PORT) "sg13g2_buf_1 A X"
set ::env(SYNTH_TIEHI_PORT) "sg13g2_tiehi L_HI"
set ::env(SYNTH_TIELO_PORT) "sg13g2_tielo L_LO"

## cts defaults
#set ::env(CTS_ROOT_BUFFER) sky130_fd_sc_hd__clkbuf_16
#set ::env(CELL_CLK_PORT) CLK

## Placement defaults
#set ::env(PL_LIB) $::env(LIB_TYPICAL)

# Fillcell insertion
set ::env(FILL_CELL) "sg13g2_fill_1 sg13g2_fill_2"
set ::env(DECAP_CELL) "sg13g2_decap_*"
#set ::env(RE_BUFFER_CELL) "sky130_fd_sc_hd__buf_4"

## Diode insertaion
#set ::env(DIODE_CELL) "sky130_fd_sc_hd__diode_2"
#set ::env(FAKEDIODE_CELL) "sky130_ef_sc_hd__fakediode_2"
#set ::env(DIODE_CELL_PIN) "DIODE"

set ::env(GPL_CELL_PADDING) {0}
set ::env(DPL_CELL_PADDING) {0}

set ::env(CELL_PAD_EXCLUDE) "sg13g2_fill_* sg13g2_decap_*"

# PDN
set ::env(FP_PDN_RAIL_WIDTH) 0.44

## Clk Buffers info CTS data
#set ::env(ROOT_CLK_BUFFER) sky130_fd_sc_hd__clkbuf_16
#set ::env(CTS_CLK_BUFFER_LIST) "sky130_fd_sc_hd__clkbuf_8 sky130_fd_sc_hd__clkbuf_4 sky130_fd_sc_hd__clkbuf_2"
## Determined from https://github.com/google/skywater-pdk-libs-sky130_fd_sc_hd/blob/ac7fb61f06e6470b94e8afdf7c25268f62fbd7b1/cells/clkbuf/sky130_fd_sc_hd__clkbuf_16__tt_025C_1v80.lib.json
#set ::env(CTS_MAX_CAP) 1.53169
#set ::env(MAX_TRANSITION_CONSTRAINT) 0.75
#set ::env(MAX_CAPACITANCE_CONSTRAINT) 0.2

# FIXME: A bit random ... from sky130
set ::env(MAX_FANOUT_CONSTRAINT) 10
set ::env(CLOCK_UNCERTAINTY_CONSTRAINT) 0.25
set ::env(CLOCK_TRANSITION_CONSTRAINT) 0.15
set ::env(TIME_DERATING_CONSTRAINT) 5
set ::env(IO_DELAY_CONSTRAINT) 20


#set ::env(TRISTATE_CELL_PREFIX) "$::env(STD_CELL_LIBRARY)__ebuf"
