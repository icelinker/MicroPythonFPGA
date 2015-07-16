# MicroPythonFPGA

## RocketBoards Tutorials
http://rocketboards.org/foswiki/view/Documentation/WS1IntroToAlteraSoCDevices

### Software Installation
* Quartus II
* SoC EDS
* Serial terminal: Putty / screen

### SD Card Image
It creates 3 partitions: a FAT, a EXT3, and a 0xA2 partition.

### Preloader
The hardware BootROM finds and runs the preloader on the 0xA2 partition.

You can generate a preloader with bsp-editor, which needs a `hps_isw_handoff` folder.

### Tips
You can boot the target board into Linux and transfer file into the FAT partition without a SD card reader. Just mount it.
```
mount /dev/mmcblk0p1 /mnt
```
Notice that some time you will get an error as it is not properly unmounted. Try this:
```
echo -n "/dev/mmcblk0p1" > /sys/devices/sopc.0/ffb40000.usb/gadget/lun0/file
cat /sys/devices/sopc.0/ffb40000.usb/gadget/lun0/file
```
