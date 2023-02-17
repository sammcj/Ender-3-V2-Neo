; Prusa Slicer END GCODE for Ender 3 v2 Neo
;-------------------------------------------
;*** Message
M117 Print Completed
;*** End Message
;-------------------------------------------

G91 ;Relative positioning
G1 E2 F2700 ;Retract a bit
G1 E2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out

; Cooldown
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

; Present print
G1 Z10 ;Raise Z more
G90 ;Absolute positioning
G1 F2500; Set speed to 2500mm/min
G0 X0 Y235 F2500 ; Present print

; Power off motors
M84 X Y E ;Disable all steppers but Z
