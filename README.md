# Ender-3-V2-Neo

My Documentation, Configuration and Scripts for the Ender 3 V2 Neo 3d Printer.

## GCodes

# Sam's Ender 3 V2 Neo Setup

## USB Connectivity

### 5v Pin

I did try removing the USB 5v pin as per <https://community.octoprint.org/t/put-tape-on-the-5v-pin-why-and-how/13574> but it caused the printer to not be detected.

- TODO: look into why this is and if the 5v still needs to be removed.

### Consistent USB device naming

When you reconnect a USB device it might get a different device name (e.g. `/dev/ttyUSB0` > `/dev/ttyUSB1` etc...) - this is annoying if you've configured your software such as Octoprint to use a specific device.

As such you can create udev rules to ensure both the printer and any related webcams are always named consistently (e.g. `/dev/3dprinter`, `/dev/webcam` etc...).

- See [octoprint/`99-3d-printer.rules`](octoprint/99-3d-printer.rules)

## Firmware

I have settled on using @mriscoc's Firmware for the Ender 3 V2.

It is based on the Marlin firmware but has a number of optimisations for the Ender 3 V2 Neo and is well suited to Octoprint.

- [mriscoc/Ender3V2S1](https://github.com/mriscoc/Ender3V2S1)
- [How to install the firmware](https://github.com/mriscoc/Ender3V2S1/wiki/How-to-install-the-firmware)

## SD Cards

Note: To store the mesh and other settings on the printer you must leave a SD plugged in, otherwise when you restart the printer it will return to the firmware defaults.

### Formatting SD Cards

Make sure you format your SD card with 4096 byte sector size or it may not flash correctly.

Format a SDCard with 4096 byte sector size in macOS

```shell
diskutil list # Find the SDCard you want to format

diskutil info disk4s1 # Get the current SDCard info, assuming the disk is disk4s1
sudo newfs_msdos -F 32 -b 4096 disk4s1 # Format the SDCard as FAT32 with a 4096 byte sector size, assuming the disk is disk4s1
```

## Octoprint

### Octoprint Docker

### Webcam

Octoprint Webcam Settings

- Stream URL: `/webcam/?action=stream`
- Snapshot URL: `http://localhost:8080/?action=snapshot`
- Path to FFMPEG: `/usr/bin/ffmpeg`

URLs for reaching the camera from outside the container are:

- Stream: `http://<your-server-ip>:7126/webcam/?action=stream`
- Snapshot: `http://<your-server-ip>:7126/webcam/?action=snapshot`

## Slicing

### Cura

I am mainly using Ultimaker's [Cura](https://ultimaker.com/software/ultimaker-cura).

There is also a headless version of Cura call [CuraEngine](https://github.com/Ultimaker/CuraEngine)

_Note: Creality's own '[Creality Slicer](https://www.creality.com/pages/download-ender-3-v2-neo)' software is a fork of [Cura](https://ultimaker.com/software/ultimaker-cura) and is often lagging behind Cura versions._

### PrusaSlicer

- TODO: look into this.

### SuperSlicer

[SuperSlicer](https://github.com/supermerill/SuperSlicer) is a PrusaSlicer fork (which is a slic3r fork).

- TODO: look into this.

#### Extensions

- Octoprint

#### Profiles

## General Settings

### Temperatures

- TODO: look into this further.

- PLA+ (eSun)
  - Extruder Temperature: 205°C
    - Initial Layer Temperature: 215°C
  - Platform Temperature: 60°C
    - Initial Layer Temperature: 70°C

## GCode scripts

Before print job starts

```gcode
M75 {{ event.name | truncate:85:... }}
```

After print job completes

```gcode
M77 ; End print screen
;disable motors
M84
;disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}
;disable fan
M106 S0
```

After print job is cancelled

```gcode
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
```

After print job is paused

```gcode
M76 ; Pause print screen
M117 Print was paused
```

Before print job is resumed

```gcode
M75 {{ event.name | truncate:85:... }}
M117 Print was resumed
```

After connection to printer is established

```gcode
M117 Octoprint is connected
```

Before connection to printer is closed

```gcode
M117 Octoprint was disconnected
```

## Author

Sam McLeod

[smcleod.net](https://smcleod.net)
