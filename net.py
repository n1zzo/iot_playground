import network
import urequests as requests


SSID = "wifissid"
PW = "wifipassword"
URL = "https://iot.polifactory.it/hr"
HEADERS = {"Content-type": "application/json"}


class Net:
    sta_if = None

    def __init__(self):
        self.sta_if = network.WLAN(network.STA_IF)
        self.sta_if.active(True)
        self.connect(SSID, PW)

    def connect(self, SSID, password):
        if not self.is_connected():
            self.sta_if.connect(SSID, password)

    def is_connected(self):
        return self.sta_if.isconnected()

    def ip(self):
        return self.sta_if.ifconfig()

    def send(self, data):
        post = requests.post(URL, json=data, headers=HEADERS)
        print(post.content)
        post.close()
