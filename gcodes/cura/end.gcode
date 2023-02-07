; --- END Gcode for Ender 3 v2 Neo ---

;-------------------------------------------
;*** Message
M117 Print Completed
;*** End Message
;-------------------------------------------

G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out

M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

G1 Z10 ;Raise Z more
G90 ;Absolute positioning

G1 X0 Y{machine_depth} ;Present print

M84 X Y E ;Disable all steppers but Z
