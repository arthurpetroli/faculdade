# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
    if {[string compare $quartus(project) "logisimTopLevelShell"]} {
        puts "Project logisimTopLevelShell is not open"
        set make_assignments 0
    }
} else {
    # Only open if not already open
    if {[project_exists logisimTopLevelShell]} {
        project_open -revision logisimTopLevelShell logisimTopLevelShell
    } else {
        project_new -revision logisimTopLevelShell logisimTopLevelShell
    }
    set need_to_close_project 1
}
# Make assignments
if {$make_assignments} {

   set_global_assignment -name FAMILY "MAX 10"
   set_global_assignment -name DEVICE 10M50DAF484C7G
   set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
   set_global_assignment -name DEVICE_FILTER_PIN_COUNT 484
   set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
   set_global_assignment -name FMAX_REQUIREMENT "50 MHz "
   set_global_assignment -name RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"
   set_global_assignment -name CYCLONEII_RESERVE_NCEO_AFTER_CONFIGURATION "USE AS REGULAR IO"

    # Include all entities and gates


    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/base/LogisimClockComponent_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/base/logisimTickGenerator_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/circuit/bcd_7seg_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/circuit/count4_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/circuit/main_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/toplevel/logisimTopLevelShell_entity.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/base/LogisimClockComponent_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/base/logisimTickGenerator_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/circuit/bcd_7seg_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/circuit/count4_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/circuit/main_behavior.vhd"
    set_global_assignment -name VHDL_FILE "C:/Users/a2408732/logisim_evolution_workspace/professoruim/main/vhdl/toplevel/logisimTopLevelShell_behavior.vhd"

    # Map fpga_clk and ionets to fpga pins
    set_location_assignment PIN_P11 -to fpgaGlobalClock
            set_location_assignment PIN_C14 -to L_7_Segment_Display_3_Segment_A
            set_location_assignment PIN_E15 -to L_7_Segment_Display_3_Segment_B
            set_location_assignment PIN_C15 -to L_7_Segment_Display_3_Segment_C
            set_location_assignment PIN_C16 -to L_7_Segment_Display_3_Segment_D
            set_location_assignment PIN_E16 -to L_7_Segment_Display_3_Segment_E
            set_location_assignment PIN_D17 -to L_7_Segment_Display_3_Segment_F
            set_location_assignment PIN_C17 -to L_7_Segment_Display_3_Segment_G
            set_location_assignment PIN_D15 -to L_7_Segment_Display_3_DecimalPoint
            set_location_assignment PIN_C18 -to L_7_Segment_Display_4_Segment_A
            set_location_assignment PIN_D18 -to L_7_Segment_Display_4_Segment_B
            set_location_assignment PIN_E18 -to L_7_Segment_Display_4_Segment_C
            set_location_assignment PIN_B16 -to L_7_Segment_Display_4_Segment_D
            set_location_assignment PIN_A17 -to L_7_Segment_Display_4_Segment_E
            set_location_assignment PIN_A18 -to L_7_Segment_Display_4_Segment_F
            set_location_assignment PIN_B17 -to L_7_Segment_Display_4_Segment_G
            set_location_assignment PIN_A16 -to L_7_Segment_Display_4_DecimalPoint
            set_location_assignment PIN_F21 -to L_7_Segment_Display_1_Segment_A
            set_location_assignment PIN_E22 -to L_7_Segment_Display_1_Segment_B
            set_location_assignment PIN_E21 -to L_7_Segment_Display_1_Segment_C
            set_location_assignment PIN_C19 -to L_7_Segment_Display_1_Segment_D
            set_location_assignment PIN_C20 -to L_7_Segment_Display_1_Segment_E
            set_location_assignment PIN_D19 -to L_7_Segment_Display_1_Segment_F
            set_location_assignment PIN_E17 -to L_7_Segment_Display_1_Segment_G
            set_location_assignment PIN_D22 -to L_7_Segment_Display_1_DecimalPoint
            set_location_assignment PIN_B20 -to L_7_Segment_Display_2_Segment_A
            set_location_assignment PIN_A20 -to L_7_Segment_Display_2_Segment_B
            set_location_assignment PIN_B19 -to L_7_Segment_Display_2_Segment_C
            set_location_assignment PIN_A21 -to L_7_Segment_Display_2_Segment_D
            set_location_assignment PIN_B21 -to L_7_Segment_Display_2_Segment_E
            set_location_assignment PIN_C22 -to L_7_Segment_Display_2_Segment_F
            set_location_assignment PIN_B22 -to L_7_Segment_Display_2_Segment_G
            set_location_assignment PIN_A19 -to L_7_Segment_Display_2_DecimalPoint
            set_location_assignment PIN_A8 -to PISCA_0
            set_location_assignment PIN_C10 -to RESET_0
    # Commit assignments
    export_assignments

    # Close project
    if {$need_to_close_project} {
        project_close
    }
}

