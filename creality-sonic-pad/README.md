# Creality Sonic Pad (Klipper)

Factory default root password is `cxsw-sonic_2023`

## Bypass new printer setup screen

Create a file called QtStorage.json in /mnt/UDISK
Add the following code to file and save

```json
{
    "isFirstBoot": false
}
```

Reboot pad

## Device Info

```plain
root@klipper:~# cat /etc/openwrt_release
Embedded Linux 1.0 (alive)
DISTRIB_ID='tina.yekaifeng.20230203.071229'
DISTRIB_RELEASE='Neptune'
DISTRIB_REVISION='5C1C9C53'
DISTRIB_TARGET='r818-sonic_lcd/generic v1.0'
DISTRIB_DESCRIPTION='tina.yekaifeng.20230203.071229 3.5.1'
DISTRIB_TAINTS='no-all glibc busybox'

root@klipper:~# cat /etc/openwrt_version
3.5.1

root@klipper:~# cat /proc/version
Linux version 4.9.191 (yekaifeng@ubuntu1804) (gcc version 6.4.1 (OpenWrt/Linaro GCC 6.4-2017.11 2017-11) ) #48 SMP PREEMPT Fri Feb 3 07:14:41 UTC 2023

root@klipper:~# cat /etc/device_info
DEVICE_MANUFACTURER='allwinnertech'
DEVICE_MANUFACTURER_URL='www.allwinnertech.com'
DEVICE_PRODUCT='v1.0'
DEVICE_REVISION='ver-a'

root@klipper:~# lsusb
Bus 002 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 004 Device 001: ID 1d6b:0001 Linux Foundation 1.1 root hub
Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. 4-port hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

root@klipper:~# lsmod
dc_sunxi                5759  0
exfat                  57506  0
fuse                   75690  0
pvrsrvkm             1134488  3 dc_sunxi
xr819_core            298312  1 xr819_wlan
xr819_mac             234992  1 xr819_core
xr819_wlan               886  0


root@klipper:~# mount
/dev/root on /rom type squashfs (ro,relatime)
devtmpfs on /dev type devtmpfs (rw,relatime,size=998752k,nr_inodes=249688,mode=755)
proc on /proc type proc (rw,nosuid,nodev,noexec,noatime)
sysfs on /sys type sysfs (rw,nosuid,nodev,noexec,noatime)
cgroup on /sys/fs/cgroup type cgroup (rw,nosuid,nodev,noexec,relatime,cpu)
pstore on /sys/fs/pstore type pstore (rw,relatime)
tmpfs on /tmp type tmpfs (rw,nosuid,nodev,noatime)
/dev/by-name/rootfs_data on /overlay type ext4 (rw,sync,relatime,data=ordered)
overlayfs:/overlay on / type overlay (rw,noatime,lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work)
devpts on /dev/pts type devpts (rw,nosuid,noexec,relatime,mode=600,ptmxmode=000)
debugfs on /sys/kernel/debug type debugfs (rw,noatime)
none on /sys/kernel/config type configfs (rw,relatime)
adb on /dev/usb-ffs/adb type functionfs (rw,relatime)
/dev/by-name/UDISK on /mnt/UDISK type ext4 (rw,relatime,data=ordered)

root@klipper:~# dmesg
[    2.593267] sunxi cedar version 0.1
[    2.597493] VE: install start!!!
[    2.597493]
[    2.603027] cedar_ve: cedar-ve the get irq is 344
[    2.608688] VE: line 1811 set the sram data
[    2.608688]
[    2.616023] VE: get debugfs_mpp_root is NULL, please check mpp
[    2.616023]
[    2.624274] VE: sunxi ve debug register driver failed!
[    2.624274]
[    2.631723] VE: install end!!!
[    2.631723]
[    2.638849] Bluetooth: HCI UART driver ver 2.2.74e8f89.20201026-111523
[    2.646231] Bluetooth: HCI UART protocol (null) registered
[    2.652410] Bluetooth: HCI H4 protocol initialized
[    2.657817] Bluetooth: XRadio Bluetooth LPM Mode Driver Ver 01.00.07
[    2.665581] bt_fdi debugfs_init
[    2.679555] sunxi-mmc sdc2: SD/MMC/SDIO Host Controller Driver(v3.48 2020-9-15 16:01)
[    2.688652] sunxi-mmc sdc2: ***ctl-spec-caps*** 8
[    2.694729] sunxi-mmc sdc2: No vdmmc regulator found
[    2.700360] sunxi-mmc sdc2: No vd33sw regulator found
[    2.706113] sunxi-mmc sdc2: No vd18sw regulator found
[    2.711811] sunxi-mmc sdc2: No vq33sw regulator found
[    2.717502] sunxi-mmc sdc2: No vq18sw regulator found
[    2.724107] sunxi-mmc sdc2: set host busy
[    2.728719] mmc:failed to get gpios
[    2.733439] sunxi-mmc sdc2: sdc set ios:clk 0Hz bm PP pm UP vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.761343] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm PP pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.789356] sunxi-mmc sdc2: detmode:alway in(non removable)
[    2.789377] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm PP pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.797779] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm PP pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.798868] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm OD pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.809748] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm OD pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.809836] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm OD pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.822771] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm OD pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.867977] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm PP pm ON vdd 22 width 1 timing LEGACY(SDR12) dt B
[    2.879104] sunxi-mmc sdc1: SD/MMC/SDIO Host Controller Driver(v3.48 2020-9-15 16:01)
[    2.879246] sunxi-mmc sdc1: ***ctl-spec-caps*** 8
[    2.879388] sunxi-mmc sdc1: No vmmc regulator found
[    2.879392] sunxi-mmc sdc1: No vqmmc regulator found
[    2.879397] sunxi-mmc sdc1: No vdmmc regulator found
[    2.879401] sunxi-mmc sdc1: No vd33sw regulator found
[    2.879406] sunxi-mmc sdc1: No vd18sw regulator found
[    2.879411] sunxi-mmc sdc1: No vq33sw regulator found
[    2.879415] sunxi-mmc sdc1: No vq18sw regulator found
[    2.880379] sunxi-mmc sdc1: set host busy
[    2.880479] mmc:failed to get gpios
[    2.881294] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm UP vdd 21 width 1 timing LEGACY(SDR12) dt B
[    2.881341] sunxi-mmc sdc1: no vqmmc,Check if there is regulator
[    2.901395] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    2.909336] usb 1-1.3: new full-speed USB device number 3 using sunxi-ehci
[    2.921398] sunxi-mmc sdc1: detmode:manually by software
[    2.925249] hidraw: raw HID events driver (C) Jiri Kosina
[    2.926068] usbcore: registered new interface driver usbhid
[    2.926070] usbhid: USB HID core driver
[    2.927803] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    2.931333] sun50iw10p1-pinctrl pio: expect_func as:pcm0, but muxsel(3) is func:h_i2s0
[    2.931341] sun50iw10p1-pinctrl pio: expect_func as:pcm0, but muxsel(3) is func:h_i2s0
[    2.931348] sun50iw10p1-pinctrl pio: expect_func as:pcm0, but muxsel(3) is func:h_i2s0
[    2.931355] sun50iw10p1-pinctrl pio: expect_func as:pcm0, but muxsel(3) is func:h_i2s0
[    2.931363] sun50iw10p1-pinctrl pio: expect_func as:pcm0, but muxsel(3) is func:h_i2s0
[    2.931748] sun50iw10p1-pinctrl pio: pin PB4 already requested by �X����; cannot claim for daudio0
[    2.931755] sun50iw10p1-pinctrl pio: pin-36 (daudio0) status -22
[    2.931762] sun50iw10p1-pinctrl pio: could not request pin 36 (PB4) from group PB4  on device pio
[    2.931767] sunxi-daudio daudio0: Error applying setting, reverse things back
[    2.931952] sunxi-daudio: probe of daudio0 failed with error -22
[    2.933537] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    2.933571] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    2.939120] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    2.942120] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    2.942886] sunxi-internal-codec codec: [sunxi_internal_codec_probe] codec probe finished.
[    2.944772] [sunxi_card_init] card init finished.
[    2.947214] sunxi-codec-machine sndcodec: sun50iw10codec <-> 5096000.cpudai-controller mapping ok
[    2.951442] sunxi-codec-machine sndcodec: [sunxi_card_dev_probe] register card finished.
[    2.952084] u32 classifier
[    2.952086]     Actions configured
[    2.952303] Initializing XFRM netlink socket
[    2.952451] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    2.958230] NET: Registered protocol family 10
[    2.959263] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    2.964868] NET: Registered protocol family 17
[    2.964961] NET: Registered protocol family 15
[    2.966008] 8021q: 802.1Q VLAN Support v1.8
[    2.970090] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    2.970122] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm OFF vdd 0 width 1 timing LEGACY(SDR12) dt B
[    2.971224] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm UP vdd 21 width 1 timing LEGACY(SDR12) dt B
[    2.971314] sunxi-mmc sdc1: no vqmmc,Check if there is regulator
[    2.993495] sunxi-mmc sdc1: sdc set ios:clk 300000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.010033] sid_rd_ver_reg()471 - ver >= 4, soc ver:4
[    3.015665] core: _opp_supported_by_regulators: OPP minuV: 0 maxuV: 0, not supported by regulator
[    3.015674] cpu cpu0: _opp_add: OPP not supported by regulators (1464000000)
[    3.016110] cpu cpu1: opp_list_debug_create_link: Failed to create link
[    3.016116] cpu cpu1: _add_opp_dev: Failed to register opp debugfs (-12)
[    3.016173] cpu cpu2: opp_list_debug_create_link: Failed to create link
[    3.016179] cpu cpu2: _add_opp_dev: Failed to register opp debugfs (-12)
[    3.016233] cpu cpu3: opp_list_debug_create_link: Failed to create link
[    3.016239] cpu cpu3: _add_opp_dev: Failed to register opp debugfs (-12)
[    3.024531] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    3.026944] ***CTP***GTP driver init
[    3.027054] sunxi_ctp_startup: ctp_power_io is invalid.
[    3.027105] deviceless supply  not found, using dummy regulator
[    3.027201] get ctp_screen_max_x is fail, -22
[    3.033440] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    3.033464] sunxi-mmc sdc1: sdc set ios:clk 300000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.041326] ***CTP***info.ctp_used:1
[    3.041328] ***CTP***info.twi_id:1
[    3.041330] ***CTP***info.screen_max_x:1024
[    3.041332] ***CTP***info.screen_max_y:600
[    3.041334] ***CTP***info.revert_x_flag:0
[    3.041335] ***CTP***info.revert_y_flag:0
[    3.041337] ***CTP***info.exchange_x_y_flag:0
[    3.041339] ***CTP***info.irq_gpio_number:166
[    3.041341] ***CTP***info.wakeup_gpio_number:161
[    3.041344] ***CTP******CTP*** ctp_wakeup:status:0,ms = 0
[    3.043310] sunxi-mmc sdc1: sdc set ios:clk 300000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.051162] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.061504] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.068256] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.078201] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.078215] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm OFF vdd 0 width 1 timing LEGACY(SDR12) dt B
[    3.079290] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm UP vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.079364] sunxi-mmc sdc1: no vqmmc,Check if there is regulator
[    3.092982] usb 1-1.3: New USB device found, idVendor=1a86, idProduct=7523
[    3.092987] usb 1-1.3: New USB device strings: Mfr=0, Product=2, SerialNumber=0
[    3.092990] usb 1-1.3: Product: USB Serial
[    3.099494] ch341 1-1.3:1.0: ch341-uart converter detected
[    3.101327] ***CTP******CTP*** ctp_wakeup:status:1,ms = 0
[    3.101339] sunxi-mmc sdc1: sdc set ios:clk 200000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.120346] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    3.126233] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    3.126353] sunxi-mmc sdc1: sdc set ios:clk 200000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.136614] sunxi-mmc sdc1: sdc set ios:clk 200000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.140778] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.150724] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.159797] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.162852] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.162964] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm OFF vdd 0 width 1 timing LEGACY(SDR12) dt B
[    3.164041] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm UP vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.164132] sunxi-mmc sdc1: no vqmmc,Check if there is regulator
[    3.181329] sunxi-mmc sdc1: sdc set ios:clk 100000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.182973] usb 1-1.3: ch341-uart converter now attached to ttyUSB0
[    3.198096] sunxi_i2c_drv_core_process()972 - [i2c6] Timeout when sending 9th SCL clk
[    3.198111] i2c_sunxi_drv_complete()1146 - [i2c6] incomplete xfer(status: 0x1, dev addr: 0x14)
[    3.198117] 0x07081600: 01011001 00000001 00002800 0001ffff
[    3.198122] 0x07081610: 00008040 00010004 00010010 00000000
[    3.202781] sunxi_i2c_drv_core_process()972 - [i2c6] Timeout when sending 9th SCL clk
[    3.202793] i2c_sunxi_drv_complete()1146 - [i2c6] incomplete xfer(status: 0x1, dev addr: 0x5d)
[    3.202799] 0x07081600: 11011001 00000001 0000bb00 00000001
[    3.202804] 0x07081610: 00008040 00010004 00010010 00000000
[    3.208636] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    3.218862] sunxi-mmc sdc1: smc 1 p1 err, cmd 52, RTO !!
[    3.218865] sunxi_i2c_do_xfer()1926 - [i2c1] incomplete xfer (status: 0x20, dev addr: 0x14)
[    3.218877] sunxi-mmc sdc1: sdc set ios:clk 100000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.230126] sunxi-mmc sdc1: sdc set ios:clk 100000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    3.235795] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.246496] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.246498] the adapter number is 1
[    3.246500] ctp_detect: addr = 5d
[    3.252156] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.262080] sunxi-mmc sdc1: smc 1 p1 err, cmd 5, RTO !!
[    3.262086] random: fast init done
[    3.262135] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm OFF vdd 0 width 1 timing LEGACY(SDR12) dt B
[    3.299800] detect ret 2
[    3.299802] ======detect ok !=====
[    3.405513] ***CTP***GTP Driver Version: V2.2<2014/01/14>***CTP***GTP I2C Address: 0x5d<<-GTP-INFO->> IC Version: 911_1060
[    3.405521] ***CTP***Config Groups Lengths: 186, 186, 186, 186, 186, 186, 186, 186
[    3.620120] ***CTP***Sensor_ID: 0
[    3.620122] ***CTP***CTP_CONFIG_GROUP1 used, config length: 186
[    3.721837] ***CTP***CFG_GROUP1 Config Version: 66, 0x42; IC Config Version: 83, 0x53
[    3.721841] <<-GTP-INFO->> Driver send config.
[    3.823537] <<-GTP-INFO->> X_MAX: 1024, Y_MAX: 600, TRIGGER: 0x01
[    3.831714] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm PP pm ON vdd 22 width 8 timing LEGACY(SDR12) dt B
[    3.845585] sunxi-mmc sdc2: sdc set ios:clk 400000Hz bm PP pm ON vdd 22 width 8 timing MMC-HS200 dt B
[    3.849353] <<-GTP-INFO->> create proc entry gt9xx_config success
[    3.850136] input: gt9xxnew_ts as /devices/virtual/input/input2
[    3.850863] <<-GTP-INFO->> GTP works in interrupt mode.
[    3.850877] <<-GTP-INFO->> Applied memory size:2562.
[    3.850881] <<-GTP-INFO->> I2C function: without pre and end cmd!
[    3.850907] <<-GTP-INFO->> Create proc entry success!
[    3.869366] sunxi_i2c_do_xfer()1926 - [i2c2] incomplete xfer (status: 0x20, dev addr: 0x14)
[    3.869581] twi_start()485 - [i2c2] START can't sendout!
[    3.869584] sunxi_i2c_do_xfer()1903 - [i2c2] twi_regulator:
[    3.880773] sunxi_i2c_do_xfer()1926 - [i2c2] incomplete xfer (status: 0x48, dev addr: 0x5d)
[    3.893250] sunxi_i2c_do_xfer()1926 - [i2c3] incomplete xfer (status: 0x20, dev addr: 0x14)
[    3.908572] sunxi_i2c_do_xfer()1926 - [i2c3] incomplete xfer (status: 0x48, dev addr: 0x5d)
[    3.914850] sunxi-rtc rtc: setting system clock to 2023-03-09 21:39:22 UTC (1678397962)
[    3.916241] usb0-vbus: disabling
[    3.916266] ALSA device list:
[    3.916268]   #0: audiocodec
[    3.962510] sunxi-mmc sdc2: sdc set ios:clk 100000000Hz bm PP pm ON vdd 22 width 8 timing MMC-HS200 dt B
[    3.962517] Waiting for root device /dev/mmcblk0p8...
[    3.980602] sunxi-mmc sdc2: sdc set ios:clk 100000000Hz bm PP pm ON vdd 22 width 8 timing MMC-HS(SDR20) dt B
[    3.991763] sunxi-mmc sdc2: sdc set ios:clk 52000000Hz bm PP pm ON vdd 22 width 8 timing MMC-HS(SDR20) dt B
[    4.004128] sunxi-mmc sdc2: sdc set ios:clk 50000000Hz bm PP pm ON vdd 22 width 8 timing MMC-HS400 dt B
[    4.014754] sunxi_mmc_get_hs400_cmd_dly,222
[    4.019442] sunxi-mmc sdc2: failed to get HS400_cmd used default
[    4.026196] sunxi-mmc sdc2: sdc set ios:clk 100000000Hz bm PP pm ON vdd 22 width 8 timing MMC-HS400 dt B
[    4.036923] sunxi_mmc_get_hs400_cmd_dly,222
[    4.041607] sunxi-mmc sdc2: failed to get HS400_cmd used default
[    4.050786] mmc0: new HS400 MMC card at address 0001
[    4.058114] mmcblk0: mmc0:0001 DG4008 7.28 GiB
[    4.063731] mmcblk0boot0: mmc0:0001 DG4008 partition 1 4.00 MiB
[    4.070897] mmcblk0boot1: mmc0:0001 DG4008 partition 2 4.00 MiB
[    4.078001] mmcblk0rpmb: mmc0:0001 DG4008 partition 3 4.00 MiB
[    4.088319]  mmcblk0: p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12
[    4.110857] pstore_zone: registered pstore_blk as backend for kmsg(Oops,panic_write) pmsg console
[    4.121061] pstore: Using crash dump compression: deflate
[    4.127972] console [pstore_blk-1] enabled
[    4.133276] pstore: Registered pstore_blk as persistent store backend
[    4.140485] pstore_blk: attached mmcblk0p11
[    4.182148] VFS: Mounted root (squashfs filesystem) readonly on device 259:0.
[    4.191254] devtmpfs: mounted
[    4.194870] Freeing unused kernel memory: 448K
[    4.304791] init: Console is alive
[    4.308890] init: - preinit -
[    4.392073] pvrsrvkm: loading out-of-tree module taints kernel.
[    4.407559] random: procd: uninitialized urandom read (4 bytes read)
[    4.412442] pvrsrvkm gpu: IC version: 0x00000004 , power_idle:0
[    4.412459] pvrsrvkm gpu: set gpu core rate:504000000 freq:504000000-950000uV dfs:0x00000001
[    4.412463] pvrsrvkm gpu: set gpu core rate:504000000 freq:472500000-950000uV dfs:0x00000002
[    4.412468] pvrsrvkm gpu: set gpu core rate:504000000 freq:441000000-950000uV dfs:0x00000004
[    4.412473] pvrsrvkm gpu: set gpu core rate:252000000 freq:252000000-950000uV dfs:0x00000001
[    4.412735] pvrsrvkm gpu: idle:0 dvfs:0 power:0 No mode:1 volt:0 core:504000000
[    4.412973] PVR_K:  957: Read BVNC 22.102.54.38 from HW device registers
[    4.412981] PVR_K:  957: RGX Device registered with BVNC 22.102.54.38
[    4.415998] [drm] Initialized pvr 1.11.5516664 20170530 on minor 0
[    4.489439] Found usable fbdev device ():
[    4.489439] range (physical) = 0xff800000-0xffcb0000
[    4.489439] size (bytes)     = 0x4b0000
[    4.489439] xres x yres      = 1024x600
[    4.489439] xres x yres (v)  = 1024x1200
[    4.489439] img pix fmt      = 89
[    4.489439] flipping?        = 1
[    4.595418] mount_root: loading kmods from internal overlay
[    4.648466] block: attempting to load /etc/config/fstab
[    4.795805] EXT4-fs (mmcblk0p9): mounted filesystem with ordered data mode. Opts:
[    4.810248] block: extroot: UUID mismatch (root: 18e3aa0f-f469739c-ba0370c7-23743501, overlay: f5e96013-5e62f4c9-da1a7ffb-3a186f92), but continue
[    4.854071] mount_root: switched to extroot
[    4.867826] procd: - early -
[    4.913734] random: procd: uninitialized urandom read (4 bytes read)
[    5.042530] procd: - ubus -
[    5.046974] procd (1): /proc/1205/oom_adj is deprecated, please use /proc/1205/oom_score_adj instead.
[    5.112296] random: ubusd: uninitialized urandom read (4 bytes read)
[    5.153255] procd: - init -
[    5.466867] fuse init (API version 7.26)
[    5.579817] ======== XRADIO WIFI OPEN ========
[    5.597099] [XRADIO] Driver Label:XR_V02.15.54  Jan  4 2023 07:25:30
[    5.620993] udevd[1372]: starting version 3.2.9
[    5.636525] udevd[1372]: specified group 'tty' unknown
[    5.636736] udevd[1372]: specified group 'dialout' unknown
[    5.636812] udevd[1372]: specified group 'kmem' unknown
[    5.636879] udevd[1372]: specified group 'input' unknown
[    5.636949] udevd[1372]: specified group 'video' unknown
[    5.637137] udevd[1372]: specified group 'lp' unknown
[    5.637229] udevd[1372]: specified group 'disk' unknown
[    5.637296] udevd[1372]: specified group 'cdrom' unknown
[    5.637451] udevd[1372]: specified group 'tape' unknown
[    5.660300] udevd[1394]: starting eudev-3.2.9
[    5.824881] [XRADIO] Allocated hw_priv @ ffffffc0781c1740
[    5.853290] sunxi-wlan soc@03000000:wlan@0: bus_index: 1
[    5.864412] sunxi-wlan soc@03000000:wlan@0: check wlan wlan_power voltage: 3300000
[    5.897224] sunxi-wlan soc@03000000:wlan@0: check wlan io_regulator voltage: 3300000
[    5.941282] file system registered
[    6.010019] configfs-gadget 5100000.udc-controller: failed to start g1: -19
[    6.079592] [XRADIO] Detect SDIO card 1
[    6.079629] sunxi-mmc sdc1: sdc set ios:clk 0Hz bm PP pm UP vdd 21 width 1 timing LEGACY(SDR12) dt B
[    6.079807] sunxi-mmc sdc1: no vqmmc,Check if there is regulator
[    6.097396] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    6.118049] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    6.120598] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing LEGACY(SDR12) dt B
[    6.156485] sunxi-mmc sdc1: sdc set ios:clk 400000Hz bm PP pm ON vdd 21 width 1 timing SD-HS(SDR25) dt B
[    6.165786] read descriptors
[    6.165801] read strings
[    6.181575] sunxi-mmc sdc1: sdc set ios:clk 50000000Hz bm PP pm ON vdd 21 width 1 timing SD-HS(SDR25) dt B
[    6.193421] sunxi-mmc sdc1: sdc set ios:clk 50000000Hz bm PP pm ON vdd 21 width 4 timing SD-HS(SDR25) dt B
[    6.210547] mmc1: new high speed SDIO card at address 0001
[    6.220817] [SBUS] XRadio Device:sdio clk=50000000
[    6.227692] [XRADIO] XRADIO_HW_REV 1.0 detected.
[    6.265733]
[    6.265733] insmod_host_driver
[    6.265733]
[    6.279568] [ehci0-controller]: sunxi_usb_enable_ehci
[    6.286723] [sunxi-ehci0]: probe, pdev->name: 5101000.ehci0-controller, sunxi_ehci: 0xffffff8008b291c0, 0x:ffffff8008b67000, irq_no:161
[    6.304702] sunxi-ehci 5101000.ehci0-controller: SW USB2.0 'Enhanced' Host Controller (EHCI) Driver
[    6.328943] sunxi-ehci 5101000.ehci0-controller: new USB bus registered, assigned bus number 3
[    6.346782] sunxi-ehci 5101000.ehci0-controller: irq 353, io mem 0x0000000c
[    6.369395] sunxi-ehci 5101000.ehci0-controller: USB 0.0 started, EHCI 1.00
[    6.378955] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002
[    6.386182] [XRADIO] Bootloader complete
[    6.410242] usb usb3: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    6.419783] usb usb3: Product: SW USB2.0 'Enhanced' Host Controller (EHCI) Driver
[    6.434550] usb usb3: Manufacturer: Linux 4.9.191 ehci_hcd
[    6.449437] usb usb3: SerialNumber: sunxi-ehci
[    6.466355] hub 3-0:1.0: USB hub found
[    6.483995] hub 3-0:1.0: 1 port detected
[    6.493509] [XRADIO] Firmware completed.
[    6.503391] [ohci0-controller]: sunxi_usb_enable_ohci
[    6.504140] [WSM] Firmware Label:XR_C01.08.52.11 Jan 24 2017 10:15:58
[    6.519934] [XRADIO] Firmware Startup Done.
debug2: channel 0: window 999098 sent adjust 49478
[    6.532084] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[    6.556207] [sunxi-ohci0]: probe, pdev->name: 5101000.ohci0-controller, sunxi_ohci: 0xffffff8008b29550
[    6.575318] sunxi-ohci 5101000.ohci0-controller: SW USB2.0 'Open' Host Controller (OHCI) Driver
[    6.586362] sunxi-ohci 5101000.ohci0-controller: new USB bus registered, assigned bus number 4
[    6.597843] sunxi-ohci 5101000.ohci0-controller: irq 354, io mem 0xffffff800808270c
[    6.609847] [STA] !!!xradio_vif_setup: id=0, type=2, p2p=0
[    6.632889] [AP_WRN] BSS_CHANGED_ASSOC but driver is unjoined.
[    6.659970] e2fsck 1.42.12 (29-Aug-2014)
[    6.669940] usb usb4: New USB device found, idVendor=1d6b, idProduct=0001
[    6.681445] usb usb4: New USB device strings: Mfr=3, Product=2, SerialNumber=1
[    6.689692] usb usb4: Product: SW USB2.0 'Open' Host Controller (OHCI) Driver
[    6.697812] usb usb4: Manufacturer: Linux 4.9.191 ohci_hcd
[    6.697833] /dev/by-name/UDISK: recovering journal
[    6.715645] usb usb4: SerialNumber: sunxi-ohci
[    6.732549] hub 4-0:1.0: USB hub found
[    6.736981] hub 4-0:1.0: 1 port detected
[    6.943915] IPv6: ADDRCONF(NETDEV_UP): lo: link is not ready
[    6.963278] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[    7.099973] libphy: gmac0: probed
[    7.221793] sunxi-gmac gmac0 eth0: eth0: Type(7) PHY ID 001cc916 at 0 IRQ poll (gmac0-0:00)
[    7.247582] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
[    7.319438] Setting free inodes count to 388998 (was 389098)
[    7.330490] Setting free
[    7.368206] EXT4-fs (mmcblk0p12): mounted filesystem with ordered data mode. Opts:
[    7.380808] S40fstab: 8 output lines suppressed due to ratelimiting
[    8.025426] [STA_WRN] !!! xradio_remove_interface: vif_id=0
[    8.067781] [STA] !!!xradio_vif_setup: id=0, type=2, p2p=0
[    8.090096] [AP_WRN] BSS_CHANGED_ASSOC but driver is unjoined.
[    8.511918] cedar_ve: VE real_fre=600000000
[    8.911784] PVR_K:  1575: RGX Firmware image 'rgx.fw.22.102.54.38' loaded
[   11.315291] [STA_WRN] Freq 2462 (wsm ch: 11) prev: 3.
[   11.321143] wlan0: authenticate with 78:45:58:ed:46:6a (try 1)
[   11.355187] wlan0: authenticated
[   11.359118] [STA_WRN] Freq 2422 (wsm ch: 3) prev: 11.
[   11.365499] [STA_WRN] Freq 2462 (wsm ch: 11) prev: 3.
[   11.373454] wlan0: associate with 78:45:58:ed:46:6a (try 1)
[   11.439798] wlan0: RX AssocResp from 78:45:58:ed:46:6a (capab=0x1431 status=0 aid=1)
[   11.448568] wlan0: associated
[   11.454890] [AP_WRN] [STA] ASSOC HTCAP 11N 58
[   11.461943] [TXRX_WRN] drop=1440, fctl=0x00d0.
[   14.203269] [TXRX_WRN] drop=1440, fctl=0x00d0.
[   21.479874] random: crng init done
[   21.483719] random: 7 urandom warning(s) missed due to ratelimiting
[   32.365010] VE: STOP_DEBUG_INFO, i = 0
[   32.365010]
```
