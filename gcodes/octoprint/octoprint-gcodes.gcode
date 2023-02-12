; DO NOT USE ALL OF THESE GCODES AT ONCE! They're intended to be each added to Octoprint in the correct section

;----------------------------
; Before print starts
;----------------------------
M75 {{ event.name | truncate:85:... }}

;;; These are now all provided by Cura during slicing ;;;
; G29 A ;Automatic Bed Levelling (ABL) Activate
; G29 F 10.0 ;Automatic Bed Levelling (ABL) Set fade to 10
; G29 L0 ;Automatic Bed Levelling (ABL) Load mesh 0
; G29 J; Tilt the mesh after a three point probe


;----------------------------
; After print finishes
;----------------------------
M77 ; End print screen
;disable motors
M84
;disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}
;disable fan
M106 S0


;----------------------------
; After print is cancelled
;----------------------------
M77 ; End print screen
; Added by samm 2023-01-14
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positioning
G1 X0 Y{machine_depth} ;Present print
; end add
;disable motors
M84
;disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}
;disable fan
M106 S0
M117 Print was cancelled


;----------------------------
; When print is paused
;----------------------------
M76 ; Pause print screen
M600 ; Smart Pause
M117 Print was paused

;----------------------------
; When print is resumed
;----------------------------
M75 {{ event.name | truncate:85:... }}
M117 Print was resumed
