# diff

## Configuration.h

```diff
diff Marlin/Configuration.h ../Special_Configurations/Ender3V2-422-BLTUBL-MPC/Configuration.h
66c66
66c66
< #define STRING_CONFIG_H_AUTHOR "Sam McLeod (sammcj)" // Who made the changes.
---
> #define STRING_CONFIG_H_AUTHOR "Miguel A. Risco-Castillo (MRiscoC)" // Who made the changes.
118c118
< #define BAUDRATE 500000  // MRiscoC increase serial performace // sammcj increased from 250000 as the v2 neo seems to handle it absolutely fine
---
> #define BAUDRATE 250000  // MRiscoC increase serial performace
142c142
< #define CUSTOM_MACHINE_NAME "Ender3V2-422-BLTUBL-IS-MPC-SAM"
---
> #define CUSTOM_MACHINE_NAME "Ender3V2-422-BLTUBL-MPC"
626,633c626,633
< #define HEATER_0_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_1_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_2_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_3_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_4_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_5_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_6_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
< #define HEATER_7_MAXTEMP 300  // sammcj changed for Creality Spider All-Metal Hotend
---
> #define HEATER_0_MAXTEMP 275
> #define HEATER_1_MAXTEMP 275
> #define HEATER_2_MAXTEMP 275
> #define HEATER_3_MAXTEMP 275
> #define HEATER_4_MAXTEMP 275
> #define HEATER_5_MAXTEMP 275
> #define HEATER_6_MAXTEMP 275
> #define HEATER_7_MAXTEMP 275
689,690c689,690
<   // #define MPC_EDIT_MENU                             // Add MPC editing to the "Advanced Settings" menu. (~1300 bytes of flash)
<   // #define MPC_AUTOTUNE_MENU                         // Add MPC auto-tuning to the "Advanced Settings" menu. (~350 bytes of flash)
---
>   //#define MPC_EDIT_MENU                             // Add MPC editing to the "Advanced Settings" menu. (~1300 bytes of flash)
>   //#define MPC_AUTOTUNE_MENU                         // Add MPC auto-tuning to the "Advanced Settings" menu. (~350 bytes of flash)
817,818c817,818
<   // #define PID_EDIT_MENU         // Add PID editing to the "Advanced Settings" menu. (~700 bytes of flash)
<   // #define PID_AUTOTUNE_MENU     // Add PID auto-tuning to the "Advanced Settings" menu. (~250 bytes of flash)
---
>   //#define PID_EDIT_MENU         // Add PID editing to the "Advanced Settings" menu. (~700 bytes of flash)
>   //#define PID_AUTOTUNE_MENU     // Add PID auto-tuning to the "Advanced Settings" menu. (~250 bytes of flash)
1175c1175
< #define DEFAULT_AXIS_STEPS_PER_UNIT   { 80, 80, 400, 95.7 }  // Ender Configs // sammcj after running calibration
---
> #define DEFAULT_AXIS_STEPS_PER_UNIT   { 80, 80, 400, 93 }  // Ender Configs
1195c1195
< #define DEFAULT_MAX_ACCELERATION      { 550, 550, 100, 1000 }  // Ender Configs // sammcj increased X/Y by 50
---
> #define DEFAULT_MAX_ACCELERATION      { 500, 500, 100, 1000 }  // Ender Configs
1224,1225c1224,1225
<   #define DEFAULT_XJERK 10  // Ender Configs // sammcj increased from 8
<   #define DEFAULT_YJERK 10  // Ender Configs // sammcj increased from 8
---
>   #define DEFAULT_XJERK 8.0  // Ender Configs
>   #define DEFAULT_YJERK 8.0  // Ender Configs
1242,1246c1242
< #if ENABLED(LIN_ADVANCE)
<   #define DEFAULT_EJERK    15.0  // Set high for Linear Advance // sammcj added
< #else
<   #define DEFAULT_EJERK     5.0  // Ender Configs
< #endif
---
> #define DEFAULT_EJERK    5.0  // May be used by Linear Advance  // Ender Configs
1256c1252
<   #define JUNCTION_DEVIATION_MM 0.1 // (mm) Distance from real junction edge // sammcj TODO: where did this value come from?
---
>   #define JUNCTION_DEVIATION_MM 0.013 // (mm) Distance from real junction edge
1494,1495c1490
< // #define NOZZLE_TO_PROBE_OFFSET { -41.5, -7, 0 }  // MRiscoC BLTouch offset for support: https://www.thingiverse.com/thing:4605354 (z-offset = -1.80 mm)
< #define NOZZLE_TO_PROBE_OFFSET { -37, -12.2, -1.47 }  // sammcj CR-Touch Ender 3 v2 Neo - https://github.com/Lash-L/Ender-3-V2-Neo-Setup/wiki/Updating-Firmware
---
> #define NOZZLE_TO_PROBE_OFFSET { -41.5, -7, 0 }  // MRiscoC BLTouch offset for support: https://www.thingiverse.com/thing:4605354 (z-offset = -1.80 mm)
1689c1684
< #define Z_AFTER_HOMING  5      // (mm) Height to move to after homing Z  // MRiscoC Crearance over the bed // sammcj Enabled
---
> //#define Z_AFTER_HOMING  5      // (mm) Height to move to after homing Z  // MRiscoC Crearance over the bed
1902c1897
<   // #define LEVELING_NOZZLE_TEMP   0   // (°C) Only applies to E0 at this time  // MRiscoC No necessary for BLTouch
---
>   #define LEVELING_NOZZLE_TEMP   0   // (°C) Only applies to E0 at this time  // MRiscoC No necessary for BLTouch
2038c2033
< // #define LCD_BED_TRAMMING
---
> //#define LCD_BED_TRAMMING
2227,2228c2222,2223
< #define PREHEAT_1_TEMP_HOTEND 200
< #define PREHEAT_1_TEMP_BED     65
---
> #define PREHEAT_1_TEMP_HOTEND 195
> #define PREHEAT_1_TEMP_BED     60
2309c2304
< #define NOZZLE_CLEAN_FEATURE // sammcj Enabled
---
> //#define NOZZLE_CLEAN_FEATURE
2572c2567
< #define SPEAKER // sammcj Enabled
---
> //#define SPEAKER
```

# Configuration_adv.h

```diff
diff Marlin/Configuration_adv.h ../Special_Configurations/Ender3V2-422-BLTUBL-MPC/Configuration_adv.h
958c958
958c958
<   // #define BLTOUCH_HS_MODE true // sammcj disabled - sounds scary
---
>   #define BLTOUCH_HS_MODE true
1058c1058
<   #define TRAMMING_SCREW_THREAD 30 // sammcj The ender 3 v2 Neo uses M3 screws
---
>   #define TRAMMING_SCREW_THREAD 40
1085,1086c1085,1086
< #define INPUT_SHAPING_X // sammcj Enabled
< #define INPUT_SHAPING_Y // sammcj Enabled
---
> //#define INPUT_SHAPING_X
> //#define INPUT_SHAPING_Y
1098c1098
<   #define SHAPING_MENU                // Add a menu to the LCD to set shaping parameters. // sammcj Enabled
---
>   //#define SHAPING_MENU                // Add a menu to the LCD to set shaping parameters.
1380c1380
<   #define PROBE_OFFSET_WIZARD       // Add a Probe Z Offset calibration option to the LCD menu // sammcj Enabled
---
>   //#define PROBE_OFFSET_WIZARD       // Add a Probe Z Offset calibration option to the LCD menu
1387c1387
<     #define PROBE_OFFSET_WIZARD_START_Z -2.0 // sammcj (safer / less likely to hit bed)
---
>     //#define PROBE_OFFSET_WIZARD_START_Z -4.0
1390c1390
<     #define PROBE_OFFSET_WIZARD_XY_POS { X_CENTER, Y_CENTER } // sammcj enabled
---
>     //#define PROBE_OFFSET_WIZARD_XY_POS { X_CENTER, Y_CENTER }
1657c1657
<   #define AUTO_REPORT_SD_STATUS         // Auto-report media status with 'M27 S<seconds>' // sammcj Enabled
---
>   //#define AUTO_REPORT_SD_STATUS         // Auto-report media status with 'M27 S<seconds>'
1730c1730
<     #define CUSTOM_FIRMWARE_UPLOAD  // MRiscoC Enabled for easy firmware upgrade . // sammcj Enabled
---
>     //#define CUSTOM_FIRMWARE_UPLOAD  // MRiscoC Enabled for easy firmware upgrade
2191c2191
<   // #define OPTIMIZED_MESH_STORAGE  // Store mesh with less precision to save EEPROM space // sammcj Disabled
---
>   #define OPTIMIZED_MESH_STORAGE  // Store mesh with less precision to save EEPROM space
2503c2503
< #define EXTRA_FAN_SPEED // sammcj Enabled
---
> //#define EXTRA_FAN_SPEED
2526c2526
<   #define RETRACT_LENGTH                5.75   // (mm) Default retract length (positive value)  // MRiscoC Bowden // sammcj
---
>   #define RETRACT_LENGTH                5   // (mm) Default retract length (positive value)  // MRiscoC Bowden
2528,2529c2528,2529
<   #define RETRACT_FEEDRATE             50   // (mm/s) Default feedrate for retracting  // MRiscoC Bowden // sammcj
<   #define RETRACT_ZRAISE                0.24   // (mm) Default retract Z-raise  // MRiscoC Bowden // sammcj
---
>   #define RETRACT_FEEDRATE             40   // (mm/s) Default feedrate for retracting  // MRiscoC Bowden
>   #define RETRACT_ZRAISE                0.2   // (mm) Default retract Z-raise  // MRiscoC Bowden
3612c3612
< #define AUTO_REPORT_POSITION // sammcj Enabled
---
> //#define AUTO_REPORT_POSITION
3685c3685
< #define GCODE_CASE_INSENSITIVE  // Accept G-code sent to the firmware in lowercase // sammcj Enabled
---
> //#define GCODE_CASE_INSENSITIVE  // Accept G-code sent to the firmware in lowercase
3859c3859
<   #define HOST_START_MENU_ITEM          // Add a menu item that tells the host to start // sammcj Enabled
---
>   //#define HOST_START_MENU_ITEM          // Add a menu item that tells the host to start
```
