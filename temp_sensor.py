import utime
import machine
data=[]
p32 = machine.Pin(32, machine.Pin.OUT)


def main():
    while True:
        start_meas()
        print ("umidita:")
        print (data[0])
        print (",")
        print (data[1])
        print ("%")
        print ("temperatura:")
        print (data[2])
        print (",")
        print (data[3])
        print ("°")
        utime.sleep_ms(700)


def start_meas():
    p32.mode(p32.OUT)
    p32.value(0)
    sleep_ms(30)
    p32.value(1)
    sleep_us(40)

    p32.mode(p32.IN)

    while p32.value():
        sleep_us(80)

    if p32.value()==0:
        sleep_us(80)

    for i in range(4):
        p32.mode(p32.IN)
        data.append(p32.value())
        p32.mode(p32.OUT)
        p32.value(1)


if __name__ == '__main__':
    main()
