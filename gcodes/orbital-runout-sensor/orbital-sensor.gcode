; https://orbiterprojects.com/orbiter-filament-sensor/
; Untested and likely needs some tweaking to work with Marlin
; This may also now be provided by Marlins FILAMENT_CHANGE_RESUME_ON_INSERT

;Autoload filament macro
T0                                                            ; select tool 0
M300 S2000 P100                                  ; play beep sound
M291 P"Filament autoloading!" S0 T3   ; display message
M302 P1                                                 ; enable cold extrusion
G4 S1                                                     ; wait for one second
G1 E15 F500                                          ; load filament inside the gears
M109 S235 T0                                        ; set hotend temperature and wait
G1 E200 F500                                        ; extrude 200mm, you may need to reduce speed for very soft TPU
M104 S0 T0                                            ; set hotend temperature to 0
M302 P0                                                 ; disable cold extrusion
M291 P"Filament autoload complete!" S0 T3    ; display message


;Auto unload filament macro
T0                                                         ; select tool 0
M300 S4000 P100                               ; play beep sound
M291 P"Filament unloading!" S0 T3   ; display message
M109 S235 T0                                     ; set hotend temperature to 235 and wait
G0 E-5 F3600                                      ; extract filament to cold end
G4 S3                                                  ; wait for 3 seconds
G0 E5 F3600                                       ; push back the filament to strive stringing
G0 E-15 F3600                                    ; Extract fast in the cold zone
G0 E-70 F300                                      ; continue extraction slow allow filament to be cooled enough before reaches the gears
M104 S0 T0                                         ; set hotend temperature to 0
M291 P"Filament unload complete!" S0 T3   ; display message


