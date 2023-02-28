# Rock Pi 4 SE

Used as OctoPrint host

## Armbian

```shell
apt install -y setserial irqtop borgmatic borgbackup firmware-brcm80211 hwinfo jq lshw usbutils v4l-utils zstd libzstd1 python3-zstd socat fzf aria2 nullmailer

systemctl disable bluetooth.service vnstat.service console-getty.service
systemctl enable nullmailer


touch $HOME/.hushlogin
```                                          1

### Nullmailer

```plain
smtp.fastmail.com smtp --port=587 --starttls --user=user@fastmail.com --pass=password
```

### Octoprint

- OctoPrint install script <https://github.com/paukstelis/octoprint_install>
- [octoprint.service](octoprint.service)
- [ustreamer.service](ustreamer.service)

## Wifi Fix

Because Broadcom is terrible

```shell
git checkout --depth=1 https://github.com/radxa/rkwifibt.git
cp -a ./rkwifibt/firmware/broadcom/AP6256/wifi/ /lib/firmware/brcm/
```

Create `/etc/initramfs-tools/hooks/fix_brcm_missing_firmware.sh` with:

```shell
#!/bin/sh -e
# Copy missing firmware files for brcmfmac driver
PREREQ=""
prereqs () { echo "${PREREQ}"; }
case "${1}" in prereqs) prereqs; exit 0 ;; esac ;
. /usr/share/initramfs-tools/hook-functions
echo "Copying missing firmware files for brcmfmac..."

cp /lib/firmware/brcm/fw_bcm43456c5_ag_apsta.bin ${DESTDIR}/lib/firmware/brcm/
cp /lib/firmware/brcm/fw_bcm43456c5_ag.bin ${DESTDIR}/lib/firmware/brcm/
cp /lib/firmware/brcm/fw_bcm43456c5_ag_mfg.bin ${DESTDIR}/lib/firmware/brcm/
cp /lib/firmware/brcm/fw_bcm43456c5_ag_p2p.bin ${DESTDIR}/lib/firmware/brcm/
```

Reboot.

## Calibration

Following <https://makershop.co/how-to-calibrate-esteps-ender-3/>

Measured 3 lengths of 100mm from the extruder:

(95.5+96.2+96.4)/3=96.033mm

- Calculated extrusion multiplier: `1.04`

Current E Step: 93

- Calculated new E Step value: `96.7`

Store E Steps per mm.

Repeat:

Measured 3 lengths of 100mm from the extruder:

(100.5+101.8+101.5)/3=101.266mm

- Calculated extrusion multiplier: `0.99`

Current E Step: 96.7

- Calculated new E Step value: `95.7`

Do flow rate test such as <https://www.thingiverse.com/thing:4810337>

### Titan Direct Drive Extruder Calibration

ESteps: 405.9
