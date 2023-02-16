; Recover / resume from a failed / parital print.
;
; This GCODE is a TEMPLATE - It MUST be modified based on the print that failed.
; --------------------------------------------
; 0. Check the origional GCODE for any special settings that differ from below
; 1. Figure out what the last GCODE command was that was sent to the printer
; 2. Copy the GCODE from that point to the end of this file
; 3. Modify the GCODE to match the print that failed (temprature, fan speed, etc...)
; 4. With the head in a safe position pre-heat the printer, and load filament to prime the nozzle
; 5. Disable the motors and move the head to the location and z height where it failed
; 6. Move the head up just enough to clear the print when it homes the X/Y
; 7. Move the bed to the start location (usually back on the limit switch)
; 8. Print the new GCODE - while it's heating clear the nozzle of any ooze
; 9. Watch carefully as it restarts the print and adjust the z offset on the LCD if needed
; --------------------------------------------
;
; Leave this as is unless you want to change the printer settings
M73 P0 R338
M73 C75
M201 X500 Y500 Z100 E5000 ; sets maximum accelerations, mm/sec^2
M203 X500 Y500 Z25 E60 ; sets maximum feedrates, mm / sec
M204 P500 R1000 T500 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X10.00 Y10.00 Z0.40 E5.00 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
M107
;TYPE:Custom
;
;--------------------------------------------
;*** Start Dual Nozzle/Bed Preheating ***
M106 S255 ; turn fan on full
M140 S70 ; start preheating the bed
M104 S210  T0 ; start preheating hotend
M190 S70 ; heat bed TODO: Set this to the correct temperature
M109 S210  T0 ; heat hotend TODO: Set this to the correct temperature
;*** End Preheating ***
;--------------------------------------------
;
; Load UBL mesh
G29 A; Activate UBL
G29 L0; Load the mesh from slot 0
G21 ; set units to millimeters
G90 ; use absolute coordinates
M83 ; use relative distances for extrusion
M107 ; Filament gcode TODO: Update this if the failed GCODE has a different fFilament gcode
;
; TODO: Add the rest of the GCODE below
