from utime import sleep_ms
import machine


led = machine.Pin(32, machine.Pin.OUT)

state = False
while True:
    led.value(state)
    state = not state
    sleep_ms(500)
