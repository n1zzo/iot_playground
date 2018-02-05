import utime
import machine

"""
Niccolò Izzo - 2018

Heart Rate Monitor
"""

adc = machine.ADC(machine.Pin(32)) 
old_value = 0.0
max_value = 0.0
alpha = 0.75

while True:

    # Read data from the sensor
    raw_value = adc.read()

    # Compute Exponential Moving Average
    value = alpha * old_value + (1-alpha) * raw_value
    change = value - old_value

    # Peak detection
    if change >= max_value:
        max_value = change
        print("  |")
    else:
        print("|")

    # Max value decay
    max_value = max_value * 0.98

    old_value = value
    utime.sleep_ms(50)
