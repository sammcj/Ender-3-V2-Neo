# Ender-3-V2-Neo

My Documentation, Configuration and Scripts for the Ender 3 V2 Neo 3d Printer.

- [Ender-3-V2-Neo](#ender-3-v2-neo)
- [Sam's Ender 3 V2 Neo Setup](#sams-ender-3-v2-neo-setup)
  - [Hardware](#hardware)
    - [Upgrades](#upgrades)
    - [Connectivity](#connectivity)
  - [Firmware](#firmware)
    - [Custom Firmware Further Customisations](#custom-firmware-further-customisations)
    - [Formatting SD Cards](#formatting-sd-cards)
  - [Slicing](#slicing)
    - [Cura](#cura)
  - [Materials](#materials)
  - [GCode scripts](#gcode-scripts)
  - [Octoprint](#octoprint)
    - [Octoprint Docker](#octoprint-docker)
    - [Webcam](#webcam)
  - [Links](#links)
  - [Author](#author)
  - [Images](#images)

# Sam's Ender 3 V2 Neo Setup

## Hardware

- Ender 3 v2 Neo

### Upgrades

- Hotend is a Creality Spider (300)
- Upgraded hotend fan to a 4020.
- Hero Me Gen 7 (Work In Progress - Not yet in use!)
  - 2x 5015 Blower fans for part cooling.
  - 1x 4020 Fan for the hotend.
  - 1x 80mm Fan for the PSU.

### Connectivity

- Home server (running Fedora Server)
- OctoPrint running in a container
- Webcam running with ustreamer
- Printer connected via USB
  - I did try removing the USB 5v pin as per <https://community.octoprint.org/t/put-tape-on-the-5v-pin-why-and-how/13574> but it caused the printer to not be detected, I ended up getting an adapter that removes the 5v pin cleanly.
  - udev rules for consistent USB device naming - when you reconnect a USB device it might get a different device name (e.g. `/dev/ttyUSB0` > `/dev/ttyUSB1` etc...) - this is annoying if you've configured your software such as Octoprint to use a specific device.

As such you can create udev rules to ensure both the printer and any related webcams are always named consistently (e.g. `/dev/3dprinter`, `/dev/webcam` etc...).

- See [octoprint/`99-3d-printer.rules`](octoprint/99-3d-printer.rules)

## Firmware

I have settled on using @mriscoc's Firmware for the Ender 3 V2.

It is based on the Marlin firmware but has a number of optimisations for the Ender 3 V2 Neo and is well suited to Octoprint.

- [mriscoc/Ender3V2S1](https://github.com/mriscoc/Ender3V2S1)
- [How to install the firmware](https://github.com/mriscoc/Ender3V2S1/wiki/How-to-install-the-firmware)

Note: To store the mesh and other settings on the printer you must leave a SD plugged in, otherwise when you restart the printer it will return to the firmware defaults.

### Custom Firmware Further Customisations

Configuration.h

```diff
66c66
< #define STRING_CONFIG_H_AUTHOR "Sam McLeod (sammcj)" // Who made the changes.
---
> #define STRING_CONFIG_H_AUTHOR "Miguel A. Risco-Castillo (MRiscoC)" // Who made the changes.
118,120c118
< // #define BAUDRATE 250000  // MRiscoC increase serial performace
< #define BAUDRATE 500000  // MRiscoC increase serial performance // sammcj enabled MOAR SPEED!!?!
< // M575 B500000
---
> #define BAUDRATE 250000  // MRiscoC increase serial performace
144c142
< #define CUSTOM_MACHINE_NAME "Ender3V2-422-MM"
---
> #define CUSTOM_MACHINE_NAME "Ender3V2-422-BLTUBL-MPC"
628,635c626,633
< #define HEATER_0_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_1_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_2_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_3_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_4_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_5_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_6_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
< #define HEATER_7_MAXTEMP 300  // sammcj Enabled - Creality Spider All-Metal Hotend
---
> #define HEATER_0_MAXTEMP 275
> #define HEATER_1_MAXTEMP 275
> #define HEATER_2_MAXTEMP 275
> #define HEATER_3_MAXTEMP 275
> #define HEATER_4_MAXTEMP 275
> #define HEATER_5_MAXTEMP 275
> #define HEATER_6_MAXTEMP 275
> #define HEATER_7_MAXTEMP 275
657,658c655,656
< #define PIDTEMP          // See the PID Tuning Guide at https://reprap.org/wiki/PID_Tuning
< //#define MPCTEMP        // ** EXPERIMENTAL **
---
> //#define PIDTEMP          // See the PID Tuning Guide at https://reprap.org/wiki/PID_Tuning
> #define MPCTEMP        // ** EXPERIMENTAL **
700,702c698,700
<   #define MPC_BLOCK_HEAT_CAPACITY { 16.7f }           // (J/K) Heat block heat capacities.
<   #define MPC_SENSOR_RESPONSIVENESS { 0.22f }         // (K/s per ∆K) Rate of change of sensor temperature from heat block.
<   #define MPC_AMBIENT_XFER_COEFF { 0.068f }           // (W/K) Heat transfer coefficients from heat block to room air with fan off.
---
>   #define MPC_BLOCK_HEAT_CAPACITY { 14.40 }           // (J/K) Heat block heat capacities.
>   #define MPC_SENSOR_RESPONSIVENESS { 0.2187 }         // (K/s per ∆K) Rate of change of sensor temperature from heat block.
>   #define MPC_AMBIENT_XFER_COEFF { 0.1257 }           // (W/K) Heat transfer coefficients from heat block to room air with fan off.
704c702
<     #define MPC_AMBIENT_XFER_COEFF_FAN255 { 0.097f }  // (W/K) Heat transfer coefficients from heat block to room air with fan on full.
---
>     #define MPC_AMBIENT_XFER_COEFF_FAN255 { 0.1315 }  // (W/K) Heat transfer coefficients from heat block to room air with fan on full.
1177c1175
< #define DEFAULT_AXIS_STEPS_PER_UNIT   { 80, 80, 400, 95.7 }  // Ender Configs -> Sam's calibrated results 2023-02-11 Ender 3 v2 Neo, stock extruder
---
> #define DEFAULT_AXIS_STEPS_PER_UNIT   { 80, 80, 400, 93 }  // Ender Configs
1283c1281
< #define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN
---
> //#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN  // Probe connected to BLTouch port
1286c1284
< //#define USE_PROBE_FOR_Z_HOMING  // Manual mesh not have a probe
---
> #define USE_PROBE_FOR_Z_HOMING
1317c1315
< #define PROBE_MANUALLY  // Manual mesh version
---
> //#define PROBE_MANUALLY
1340c1338
< //#define BLTOUCH
---
> #define BLTOUCH  // 3D/CR/BLTouch version
1492c1490
< #define NOZZLE_TO_PROBE_OFFSET { 0, 0, 0 }  // MRiscoC BLTouch offset for support: https://www.thingiverse.com/thing:4605354 (z-offset = -1.80 mm)  // Manual mesh use the nozzle as probe
---
> #define NOZZLE_TO_PROBE_OFFSET { -41.5, -7, 0 }  // MRiscoC BLTouch offset for support: https://www.thingiverse.com/thing:4605354 (z-offset = -1.80 mm)
1552,1553c1550,1551
< //#define MULTIPLE_PROBING 2
< //#define EXTRA_PROBING    1
---
> #define MULTIPLE_PROBING 2  // MRiscoC Enabled
> #define EXTRA_PROBING    1  // MRiscoC Enabled
1569,1571c1567,1569
< #define Z_CLEARANCE_DEPLOY_PROBE   10 // Z Clearance for Deploy/Stow
< #define Z_CLEARANCE_BETWEEN_PROBES  5 // Z Clearance between probe points
< #define Z_CLEARANCE_MULTI_PROBE     5 // Z Clearance between multiple probes
---
> #define Z_CLEARANCE_DEPLOY_PROBE   10 // Z Clearance for Deploy/Stow  // MRiscoC Increase speed
> #define Z_CLEARANCE_BETWEEN_PROBES  5 // Z Clearance between probe points  // MRiscoC Increase probe compatibility
> #define Z_CLEARANCE_MULTI_PROBE     5 // Z Clearance between multiple probes  // MRiscoC Increase speed
1574c1572
< #define Z_PROBE_LOW_POINT          -2 // Farthest distance below the trigger-point to go before stopping
---
> #define Z_PROBE_LOW_POINT          -3 // Farthest distance below the trigger-point to go before stopping  // MRiscoC allows reach lower points
1581c1579
< //#define Z_MIN_PROBE_REPEATABILITY_TEST
---
> #define Z_MIN_PROBE_REPEATABILITY_TEST  // MRiscoC Enable M48 repeatability test
1601c1599
< //#define PROBING_FANS_OFF          // Turn fans off when probing
---
> #define PROBING_FANS_OFF          // Turn fans off when probing  // MRiscoC Turn fans off for avoid vibrations and interference
1604c1602
< //#define DELAY_BEFORE_PROBING 200  // (ms) To prevent vibrations from triggering piezo sensors
---
> #define DELAY_BEFORE_PROBING 200  // (ms) To prevent vibrations from triggering piezo sensors  // MRiscoC Wait for stability
1686c1684
< #define Z_AFTER_HOMING  5      // (mm) Height to move to after homing Z  // MRiscoC Crearance over the bed
---
> //#define Z_AFTER_HOMING  5      // (mm) Height to move to after homing Z  // MRiscoC Crearance over the bed
1882,1884c1880,1882
< //#define AUTO_BED_LEVELING_BILINEAR
< //#define AUTO_BED_LEVELING_UBL
< #define MESH_BED_LEVELING  // Manual Mesh
---
> //#define AUTO_BED_LEVELING_BILINEAR  // MRiscoC BLTouch auto level  // Disabled for UBL
> #define AUTO_BED_LEVELING_UBL  // MRiscoC UBL
> //#define MESH_BED_LEVELING
1899c1897
<   #define LEVELING_NOZZLE_TEMP 175   // (°C) Only applies to E0 at this time  // Preheat nozzle without oozing
---
>   #define LEVELING_NOZZLE_TEMP   0   // (°C) Only applies to E0 at this time  // MRiscoC No necessary for BLTouch
2099c2097
< //#define Z_SAFE_HOMING
---
> #define Z_SAFE_HOMING  // MRiscoC Homing Z at center of bed
2306c2304
< #define NOZZLE_CLEAN_FEATURE  // sammcj Enabled
---
> //#define NOZZLE_CLEAN_FEATURE
```

Configuration_adv.h

```diff
958c958
<   //#define BLTOUCH_HS_MODE true
---
>   #define BLTOUCH_HS_MODE true
1085,1086c1085,1086
< #define INPUT_SHAPING_X  // sammcj Enabled
< #define INPUT_SHAPING_Y  // sammcj Enabled
---
> //#define INPUT_SHAPING_X
> //#define INPUT_SHAPING_Y
1098c1098
<   #define SHAPING_MENU                // Add a menu to the LCD to set shaping parameters. // sammcj Enabled
---
>   //#define SHAPING_MENU                // Add a menu to the LCD to set shaping parameters.
1730c1730
<     #define CUSTOM_FIRMWARE_UPLOAD  // MRiscoC Enabled for easy firmware upgrade // sammcj Enabled
---
>     //#define CUSTOM_FIRMWARE_UPLOAD  // MRiscoC Enabled for easy firmware upgrade
2088c2088
<   //#define BABYSTEP_ZPROBE_OFFSET          // Combine M851 Z and Babystepping
---
>   #define BABYSTEP_ZPROBE_OFFSET          // Combine M851 Z and Babystepping
2191c2191
<   //#define OPTIMIZED_MESH_STORAGE  // Store mesh with less precision to save EEPROM space
---
>   #define OPTIMIZED_MESH_STORAGE  // Store mesh with less precision to save EEPROM space
2198c2198
< //#define G29_RETRY_AND_RECOVER
---
> //#define G29_RETRY_AND_RECOVER  // Disabled for UBL
3612c3612
< #define AUTO_REPORT_POSITION // sammcj Enabled
---
> //#define AUTO_REPORT_POSITION
3685c3685
< #define GCODE_CASE_INSENSITIVE  // Accept G-code sent to the firmware in lowercase // sammcj Enabled
---
> //#define GCODE_CASE_INSENSITIVE  // Accept G-code sent to the firmware in lowercase
```

### Formatting SD Cards

Make sure you format your SD card with 4096 byte sector size or it may not flash correctly.

Format a SDCard with 4096 byte sector size in macOS

```shell
diskutil list # Find the SDCard you want to format

diskutil info disk4s1 # Get the current SDCard info, assuming the disk is disk4s1
sudo newfs_msdos -F 32 -b 4096 disk4s1 # Format the SDCard as FAT32 with a 4096 byte sector size, assuming the disk is disk4s1
```

## Slicing

### Cura

- [Ultimaker Cura](https://ultimaker.com/software/ultimaker-cura).
- See [cura/profiles](cura/profiles)

_Note: Creality's own '[Creality Slicer](https://www.creality.com/pages/download-ender-3-v2-neo)' software is a fork of [Cura](https://ultimaker.com/software/ultimaker-cura) and is often lagging behind Cura versions._

## Materials

- See [cura/materials](cura/materials)

- PLA+ (eSun)
  - Extruder Temperature: 208°C
    - Initial Layer Temperature: 210°C
  - Platform Temperature: 68°C
    - Initial Layer Temperature: 75°C

## GCode scripts

- See [gcodes](gcodes)

## Octoprint

### Octoprint Docker

- See [octoprint/docker-compose.yml](octoprint/docker-compose.yml)

### Webcam

Octoprint Webcam Settings

- Stream URL: `/webcam/?action=stream`
- Snapshot URL: `http://<host-ip>:9876/?action=snapshot`
- Path to FFMPEG: `/usr/bin/ffmpeg`

URLs for reaching the camera from outside the container are:

- Stream: `http://<your-server-ip>:7126/webcam/?action=stream`
- Snapshot: `http://<your-server-ip>:7126/webcam/?action=snapshot`

## Links

- <https://github.com/mriscoc/Ender3V2S1>
- <https://github.com/Lash-L/Ender-3-V2-Neo-Setup>

## Author

Sam McLeod

[smcleod.net](https://smcleod.net)

## Images

v4.2.2 (and v4.2.7) motherboard diagram (upscaled using ML Super Resolution)

![](images/V422andV427moboupscaled.jpg)
