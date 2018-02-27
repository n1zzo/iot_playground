from net import Net
from utime import sleep_ms

net = Net("test")

while not net.is_connected():
    sleep_ms(100)

while True:
    dati = { "nome": "fotoresistore",
             "valore": 77,
             "timestamp": "10:53" }
    net.send(dati)
