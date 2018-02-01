# IoT Playground
## Experiment with ESP32 and Micropython

## Setup instructions

### How to flash a board

```
esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 ~/Downloads/esp32-20180201-v1.9.3-263-gdb702ba7.bin
```
