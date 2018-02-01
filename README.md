# IoT Playground
## Experiment with ESP32 and Micropython

## Setup instructions

### How to flash a board

Install esptool
```
pip install esptool
```

Erase the board
```
esptool.py --port /dev/ttyUSB0 erase_flash
```

Download the micropython binary image
```
wget http://micropython.org/resources/firmware/esp32-20180201-v1.9.3-263-gdb702ba7.bin
```

Flash the image on the board
```
esptool.py --chip esp32 --port /dev/ttyUSB0 write_flash -z 0x1000 ~/Downloads/esp32-20180201-v1.9.3-263-gdb702ba7.bin
```

### Communication

The boards communicates on the USB-to-serial adapter, with a baud rate of
115200 8N1 with CR-LF newlines.

To use minicom on Linux and macOS
```
minicom --baudrate 115200 --device /dev/ttyUSB0
```

To load a script at boot, install ampy
```
pip install adafruit-ampy
```

Load a script
```
cp <script_name> main.py
ampy --port /dev/ttyUSB0 put main.py
```
