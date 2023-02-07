; UBL (unified bed levelling) gcode for Ender 3 v2 Neo

G92 E0 ; Reset the extruder's origin
;*** Start Dual Nozzle/Bed Preheating ***
M140 S{material_bed_temperature_layer_0} ; start preheating the bed
M104 S{material_print_temperature_layer_0}  T0 ; start preheating hotend
M190 S{material_bed_temperature_layer_0} ; heat to Cura Bed setting
M109 S{material_print_temperature_layer_0}  T0 ; heat to Cura Hotend
;*** End Preheating ***

G28           ; Home XYZ (disables ABL)
G92 E0        ; Reset Extruder
G29           ; Auto bed-level (BL-Touch)
G29 P1        ; Do automated probing of the bed.
G29 P3        ; Smart Fill Repeat until all mesh points are filled in, Used to fill unreachable points.
@BEDLEVELVISUALIZER	; Tell the octoprint plugin to watch for reported mesh
G29 S0        ; Save UBL mesh points to slot 0 (EEPROM).
G29 F 10.0    ; Set Fade Height for correction at 10.0 mm.
G29 A         ; Activate the UBL System.
; M500        ; Save configuration to EEPROM. M502 followed by M500 is suggested post flash to wipe the eeprom of invalid old settings. ; DISABLED as could overwrite other things
