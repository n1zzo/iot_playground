import network
import urequests as requests


SSID = "64K-legacy"
PW = "sessantaquattrokappa"
URL = "https://iot.polifactory.it/"
HEADERS = {"Content-type": "application/json"}


class Net:
    sta_if = None
    service_name = None

    def __init__(self, service_name):
        self.service_name = service_name
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
        post = requests.post(URL+service_name, json=data, headers=HEADERS)
        print(post.content)
        post.close()

    def get(self):
        response = requests.get(URL+self.service_name, headers=HEADERS)
        return response.json()

