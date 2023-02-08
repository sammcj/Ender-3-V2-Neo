# Rock Pi 4 SE

Used as OctoPrint host

## Armbian

```shell
apt install -y setserial irqtop borgmatic borgbackup firmware-brcm80211 hwinfo jq lshw usbutils v4l-utils zstd libzstd1 python3-zstd socat fzf

systemctl disable bluetooth.service vnstat.service console-getty.service

touch $HOME/.hushlogin
```

```shell
systemctl disable vnstat
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
