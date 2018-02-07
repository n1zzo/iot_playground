import utime
import machine

"""
Niccolò Izzo - 2018

Heart Rate Monitor
"""

adc = machine.ADC(machine.Pin(32)) 
max_value = 0.0
is_peak = False
beat_msec = 1
delay = 60
bpm = 60

def heartbeat_detected(delay):
    global max_value
    global is_peak
    result = False

    # Read data from the sensor
    raw_value = adc.read()
    raw_value *= (1000/delay)

    if raw_value * 4 < max_value:
        max_value = raw_value * 0.8
        print("RESET")

    # Peak detection
    if raw_value > max_value:
        max_value = 1.01 * raw_value
        return True
    else:
        max_value -= (1000/delay)
        return False

while True:

    # Reset sensor when no finger is detected
    if bpm > 250:
        bpm = 60

    if heartbeat_detected(delay):
        sampled_bpm = 60000/beat_msec
        bpm = 0.8 * bpm + 0.2 * sampled_bpm
        print("BPM: "+str(bpm))
        beat_msec = 0
    utime.sleep_ms(delay)
    beat_msec += delay
