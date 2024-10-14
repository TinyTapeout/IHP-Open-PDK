# Process node
set ::env(PROCESS) 130
set ::env(DEF_UNITS_PER_MICRON) 1000

if { ![info exist ::env(STD_CELL_LIBRARY)] } {
	set ::env(STD_CELL_LIBRARY) sg13g2_stdcell
}

# Tools
set ::env(PRIMARY_GDSII_STREAMOUT_TOOL) "klayout"

# Placement site for core cells
# This can be found in the technology lef
set ::env(VDD_PIN) "VPWR"
set ::env(GND_PIN) "VGND"

set ::env(VDD_PIN_VOLTAGE) "1.20"
set ::env(GND_PIN_VOLTAGE) "0.00"

set ::env(STD_CELL_POWER_PINS) "VDD"
set ::env(STD_CELL_GROUND_PINS) "VSS"

# Technology LEF
set ::env(TECH_LEF) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lef/sg13g2_tech.lef"
set ::env(TECH_LEF_MIN) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lef/sg13g2_tech.lef"
set ::env(TECH_LEF_MAX) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lef/sg13g2_tech.lef"

set ::env(CELL_LEFS) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/lef/$::env(STD_CELL_LIBRARY).lef"
set ::env(CELL_GDS) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/gds/$::env(STD_CELL_LIBRARY).gds"
set ::env(CELL_SPICE_MODELS) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/spice/$::env(STD_CELL_LIBRARY).spice"
set ::env(CELL_CDLS) "$::env(PDK_ROOT)/$::env(PDK)/libs.ref/$::env(STD_CELL_LIBRARY)/cdl/$::env(STD_CELL_LIBRARY).cdl"

set ::env(GPIO_PADS_LEF) "\
	$::env(PDK_ROOT)/$::env(PDK)/libs.ref/sg13g2_io/lef/sg13g2_io.lef\
	$::env(PDK_ROOT)/$::env(PDK)/libs.ref/sg13g2_io/lef/sg13g2_io_notracks.lef\
"

set ::env(GPIO_PADS_VERILOG) "\
	$::env(PDK_ROOT)/$::env(PDK)/libs.ref/sg13g2_io/verilog/sg13g2_io.v
"

# FIXME ???
#set ::env(GPIO_PADS_PREFIX) "sg13g2_IO"

## magic setup
#set ::env(MAGIC_MAGICRC) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/sg13g2.magicrc"
#set ::env(MAGIC_TECH_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/magic/sg13g2.tech"

# Klayout setup
set ::env(KLAYOUT_TECH) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/sg13g2.lyt"
set ::env(KLAYOUT_PROPERTIES) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/sg13g2.lyp"
set ::env(KLAYOUT_DEF_LAYER_MAP) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/sg13g2.map"
set ::env(KLAYOUT_DRC_RUNSET) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/drc/sg13g2_maximal.lydrc"
set ::env(KLAYOUT_DRC_OPTIONS) [dict create density 0 ]
set ::env(KLAYOUT_LVS_SCRIPT) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/klayout/tech/lvs/sg13g2_full.lylvs"
set ::env(KLAYOUT_LVS_OPTIONS) [dict create run_mode deep ]

# netgen setup
set ::env(NETGEN_SETUP_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/netgen/sg13g2_setup.tcl"

# No tap cells
set ::env(FP_TAPCELL_DIST) 0

# Tracks info
set ::env(FP_TRACKS_INFO) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/tracks.info"

# Default Synth Exclude List
set ::env(SYNTH_EXCLUDED_CELL_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/synth_exclude.cells"

# Default PNR Exclude List
set ::env(PNR_EXCLUDED_CELL_FILE) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY)/pnr_exclude.cells"

## DRC Exclude List for Optimization library
#set ::env(DRC_EXCLUDE_CELL_LIST_OPT) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/$::env(STD_CELL_LIBRARY_OPT)/drc_exclude.cells"

# Open-RCX Rules File
set ::env(RCX_RULES) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/IHP_rcx_patterns.rules"
#set ::env(RCX_RULES_MIN) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/rules.openrcx.$::env(PDK).min.spef_extractor"
#set ::env(RCX_RULES_MAX) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/rules.openrcx.$::env(PDK).max.spef_extractor"

# Extra PDN configs
set ::env(FP_PDN_RAIL_LAYER) Metal1
set ::env(FP_PDN_RAIL_OFFSET) 0

set ::env(FP_PDN_VERTICAL_LAYER) Metal5
set ::env(FP_PDN_HORIZONTAL_LAYER) TopMetal1

set ::env(FP_PDN_VWIDTH) 2.2
set ::env(FP_PDN_VSPACING) 4.0
set ::env(FP_PDN_VPITCH) 75.6
set ::env(FP_PDN_VOFFSET) 13.6

set ::env(FP_PDN_HWIDTH) 1.8
set ::env(FP_PDN_HSPACING) 4.0
set ::env(FP_PDN_HPITCH) 75.6
set ::env(FP_PDN_HOFFSET) 13.57


# Core Ring PDN defaults
set ::env(FP_PDN_CORE_RING_VWIDTH) 5.0
set ::env(FP_PDN_CORE_RING_HWIDTH) 5.0
set ::env(FP_PDN_CORE_RING_VSPACING) 2.0
set ::env(FP_PDN_CORE_RING_HSPACING) 2.0
set ::env(FP_PDN_CORE_RING_VOFFSET) 4.5
set ::env(FP_PDN_CORE_RING_HOFFSET) 4.5

# PDN Macro blockages list
set ::env(MACRO_BLOCKAGES_LAYER) "Metal1 Metal2 Metal3 Metal4 Metal5"

# Used for parasitics estimation, IR drop analysis, etc
set ::env(LAYERS_RC) "Metal1 3.49E-05 0.135e-03,Metal2 1.81E-05 0.103e-03,Metal3 2.14962E-04 0.103e-03,Metal4 1.48128E-04 0.103e-03,Metal5 1.54087E-04 0.103e-03,TopMetal1 1.54087E-04 0.021e-03,TopMetal2 1.54087E-04 0.0145e-03"
set ::env(VIAS_RC) "Via1 2.0E-3,Via2 2.0E-3,Via3 2.0E-3,Via4 2.0E-3,TopVia1  0.4E-3,TopVia2  0.22E-3"

set ::env(DATA_WIRE_RC_LAYER) "Metal2"
set ::env(CLOCK_WIRE_RC_LAYER) "Metal5"

# I/O Layer info
set ::env(FP_IO_HLAYER) "Metal2"
set ::env(FP_IO_VLAYER) "Metal3"

# Routing Layer Info
set ::env(GRT_LAYER_ADJUSTMENTS) "0.00,0.05,0.05,0.05,0.05,0.00,0.00"

set ::env(RT_MIN_LAYER) "Metal2"
set ::env(RT_MAX_LAYER) "Metal5"

#set ::env(RT_CLOCK_MIN_LAYER) "met3"

## CVC
#set ::env(CVC_SCRIPTS_DIR) "$::env(PDK_ROOT)/$::env(PDK)/libs.tech/openlane/cvc"
