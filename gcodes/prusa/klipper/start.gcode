; --- Prusa Slicer START Gcode for Ender 3 v2 Neo ---

;--------
; KLIPPER
START_PRINT BED_TEMP=[first_layer_bed_temperature] EXTRUDER_TEMP=[first_layer_temperature[initial_extruder]] AREA_START={first_layer_print_min[0]},{first_layer_print_min[1]} AREA_END={first_layer_print_max[0]},{first_layer_print_max[1]}
;--------
