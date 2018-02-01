import utime
import machine

adc = machine.ADC(machine.Pin(32)) 
while True:
    print(adc.read())
    utime.sleep_ms(500)
