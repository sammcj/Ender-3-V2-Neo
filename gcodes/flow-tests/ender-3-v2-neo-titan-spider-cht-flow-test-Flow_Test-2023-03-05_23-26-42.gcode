; Printer hardware when this was generated
; Ender 3 v2 Neo
; e3d Titan Extruder (direct drive)
; creality spider hot end (I think v3?)
; stock titan/spider cooling at present
; knock-off aliexpress CHT high flow nozzle with 0.6mm hole (not that it should matter for this)
; 1.75mm filament

; *** FlowTestGenerator.js (v0.4.6) by iFallUpHill
; *** https://github.com/iFallUpHill/flow-calculator
; *** Based on CNCKitchen's ExtrusionSystemBenchmark by Stefan Hermann
; *** https://github.com/CNCKitchen/ExtrusionSystemBenchmark

;####### Settings
; bedWidth = 220
; bedLength = 220
; bedMargin = 5
; safeZPark = 10
; filamentDiameter = 1.75
; travelSpeed = 100
; dwellTime = 20
; bedTemp = 70
; fanSpeed = 0
; primeLength = 25
; primeAmount = 20
; primeSpeed = 5
; wipeLength = 15
; retractionDistance = 3
; retractionSpeed = 40
; blobHeight = 10
; extrusionAmount = 200
; direction = 1
; flowSpacing = 50
; tempSpacing = 38
; flowStart = 8
; flowOffset = 2
; flowSteps = 4
; flowEnd = 14
; tempStart = 200
; tempOffset = 10
; tempSteps = 3
; tempEnd = 220

;####### Start Gcode
M104 S200 ; Set Nozzle Temperature
M140 S70 ; Set Bed Temperature

G29 A; Activate UBL
G29 L0; Load the mesh from slot 0

G90 ; Absolute positioning
G28 ; Move to home position
G0 Z10 ; Lift nozzle
G21 ; unit in mm
G92 E0 ; reset extruder
M83 ; set extruder to relative mode
M190 S70 ; Wait for Bed Temperature
M106 S0 ; Set Fan Speed
; M203 I0.1 ; Uncomment for Duet/RRF (slow z-moves)
; PRINT_START
; PRINT_START EXTRUDER=200 BED=70

; [SAFETY] Force Relative Extrusion
M83 ; set extruder to relative mode

;####### 200°C
G4 S0; Dwell
M109 S200

;####### 200°C // 8mm3/s
M117 200C // 8mm3/s
G0 X5 Y5 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X30 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X45 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F9.98 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X5 Y5 F6000
G92 E0 ; Reset Extruder

;####### 200°C // 10mm3/s
M117 200C // 10mm3/s
G0 X5 Y55 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X30 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X45 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F12.47 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X5 Y55 F6000
G92 E0 ; Reset Extruder

;####### 200°C // 12mm3/s
M117 200C // 12mm3/s
G0 X5 Y105 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X30 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X45 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F14.97 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X5 Y105 F6000
G92 E0 ; Reset Extruder

;####### 200°C // 14mm3/s
M117 200C // 14mm3/s
G0 X5 Y155 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X30 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X45 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F17.46 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X5 Y155 F6000
G92 E0 ; Reset Extruder

;####### 210°C
G4 S0; Dwell
M109 S210

;####### 210°C // 8mm3/s
M117 210C // 8mm3/s
G0 X83 Y5 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X108 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X123 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F9.98 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X83 Y5 F6000
G92 E0 ; Reset Extruder

;####### 210°C // 10mm3/s
M117 210C // 10mm3/s
G0 X83 Y55 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X108 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X123 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F12.47 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X83 Y55 F6000
G92 E0 ; Reset Extruder

;####### 210°C // 12mm3/s
M117 210C // 12mm3/s
G0 X83 Y105 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X108 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X123 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F14.97 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X83 Y105 F6000
G92 E0 ; Reset Extruder

;####### 210°C // 14mm3/s
M117 210C // 14mm3/s
G0 X83 Y155 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X108 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X123 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F17.46 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X83 Y155 F6000
G92 E0 ; Reset Extruder

;####### 220°C
G4 S0; Dwell
M109 S220

;####### 220°C // 8mm3/s
M117 220C // 8mm3/s
G0 X161 Y5 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X186 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X201 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F9.98 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X161 Y5 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 10mm3/s
M117 220C // 10mm3/s
G0 X161 Y55 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X186 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X201 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F12.47 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X161 Y55 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 12mm3/s
M117 220C // 12mm3/s
G0 X161 Y105 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X186 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X201 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F14.97 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X161 Y105 F6000
G92 E0 ; Reset Extruder

;####### 220°C // 14mm3/s
M117 220C // 14mm3/s
G0 X161 Y155 Z15.5 F6000
G4 S20 ; Dwell
G0 Z0.3 ; Drop down
G1 X186 E20 F300 ; Prime
G1 E-3 F2400 ; Retract
G0 X201 F6000 ; Wipe
G0 Z0.5 ; Lift
G1 E3 F2400 ; Undo Retract
G1 Z10.5 E200 F17.46 ; Extrude
G1 E-3 F2400 ; Retract
G0 Z15.5; Lift
G0 X161 Y155 F6000
G92 E0 ; Reset Extruder

;####### End Gcode
G4 ; Wait for buffer to clear
G0 X215 Y215 ; Move to Corner
M104 S0 T0 ; Turn Off Hotend
M106 S0 ;Turn-off fan
M140 S0 ; Turn Off Bed
M84 ; Disable Steppers

; PRINT_END
