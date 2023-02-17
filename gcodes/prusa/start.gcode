; --- Prusa Slicer START Gcode for Ender 3 v2 Neo ---

;------------------------------------------
@BEDREADY ; Octoprint plugin that checks the bed
;------------------------------------------
;*** Start Dual Nozzle/Bed Preheating ***
;*** Start Nozzle/Bed Preheating ***
M140 S{first_layer_bed_temperature[0]} ; set final bed temp
M104 S150 ; set temporary nozzle temp to prevent oozing during homing and auto bed leveling

G28 ; home

M140 S{first_layer_bed_temperature[0]} ; set final bed temp
M104 S{first_layer_temperature[0]} ; set final nozzle temp
M190 S{first_layer_bed_temperature[0]} ; wait for bed temp to stabilize
M109 S{first_layer_temperature[0]} ; wait for nozzle temp to stabilize
;*** End Preheating ***
;--------------------------------------------
; Load UBL mesh and tilt
G29 A; Activate UBL
G29 L0; Load the mesh from slot 0
G29 J; Tilt the mesh after a three point probe
;--------------------------------------------
; Powerloss recovery (writes to SD)
M413    ; Get the current state
M413 S1 ; Enable powerloss recovery
;--------------------------------------------
;*** Draw a Nozzle Cleaning line on the Left Side of Bed
G28 ;Home
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X9.5 Y20 Z0.28 F5000.0 ;Move to start position
G1 X9.5 Y200.0 Z0.28 F1500.0 E15 ;Draw the first line
G1 X9.8 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X9.8 Y20 Z0.28 F1500.0 E30 ;Draw the second line
G1 X10.1 Y200.0 Z0.28 F5000.0 ;Move to side a little
G1 X10.1 Y20 Z0.28 F1500.0 E30 ;Draw the third line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish

