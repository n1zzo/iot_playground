import machine
import utime
import struct

#pin di start: si accende quando è alto e si spegne quando torna alto
pStart = machine.Pin(??, machine.Pin.IN)

#pin per comandare il motore
pEn1 = machine.Pin(32, machine.Pin.OUT) #deve essere pwm
pwmEn1 = machine.PWM(pEn1)

pEn2 = machine.Pin(33, machine.Pin.OUT) #deve essere pwm
pwmEn2 = machine.PWM(pEn2)

pIn1 = machine.Pin(34, machine.Pin.OUT)
pIn2 = machine.Pin(35, machine.Pin.OUT)
pIn3 = machine.Pin(25, machine.Pin.OUT)
pIn4 = machine.Pin(26, machine.Pin.OUT)

#dati dai sensori di contrasto
Pcolor1 = machine.Pin(??, machine.Pin.IN)
Pcolor2 = machine.Pin(??, machine.Pin.IN)

#strutture di supporto per la lettura dei dati da MPU6050
dataX = bytearray(2)
dataY = bytearray(2)
dataZ = bytearray(2)
dataTemp = bytearray(2)



def data_from_acc(): #la mettiamo annidata nelle funz. comando del motore, in modo da mandare dati senza uscire dal loopdi controllo
    dataX = i2c.readfrom_mem(104, 59, 2)
    dataY = i2c.readfrom_mem(104, 61, 2)
    dataZ = i2c.readfrom_mem(104, 63, 2)
    dataTemp = i2c.readfrom_mem(104, 65, 2)
    #faccio l'unpack dei dati
    x = struct.unpack(">h", dataX)[0]
    y = struct.unpack(">h", dataY)[0]
    z = struct.unpack(">h", dataZ)[0]
    t = struct.unpack(">h", dataTemp)[0]
    #trasformo prima le tuple in float per poter poi trasformare tali numeri in gradi °C\g

    Accx = x/16500
    Accy = y/16500
    Accz = z/16500
    Temp = (t/340.00) + 36
    send_track_data(Accx, Accy, Accz, Temp, ....)

def send_track_data(accx, accy, accz, temp, gyrx, gyry, gyrz): #la mettiamo annidata in data_f



def turnleft():
    while Pcolor2 not True:
        pwmEn1.duty(int(1023*0.3))
        pwmEn2.duty(int(1023))
        #contrllare che sia la giusta convenzione
        pIn1.value(True)
        pIn2.value(False)
        pIn3.value(True)
        pIn4.value(False)
        data_from_acc()


def turnright():
    while Pcolor1 not True:
        #controllo convenzioni
        pwmEn1.duty(int(1023))
        pwmEn2.duty(int(1023*0.3))
        #contrllare che sia la giusta convenzione
        pIn1.value(True)
        pIn2.value(False)
        pIn3.value(True)
        pIn4.value(False)
        data_from_acc()




def go_straight():
    while Pcolor1 and Pcolor2:
        pwmEn1.duty(1023)
        pwmEn1.duty(1023)
        #contrllare che sia la giusta convenzione
        pIn1.value(True)
        pIn2.value(False)
        pIn3.value(True)
        pIn4.value(False)
        data_from_acc()


def backwards():
    while Pcolor1 not True and Pcolor2 not true:
        pwmEn1.duty(1023)
        pwmEn2.duty(1023)
        pIn1.value(False)
        pIn2.value(True)
        pIn3.value(False)
        pIn4.value(True)
        data_from_acc()
    if Pcolor1 True :
        while Pcolor2 not True:
            #torno indietro girando leggermente finche non torno all'interno della pista


def main():
    pwmEn1.freq(500)
    pwmEn2.freq(500)
    while pStart.value() != True:
        utime.sleep_ms(200)

    #attivo l' MPU6050

    i2c = machine.I2C(-1, scl=machine.Pin(22), sda=machine.Pin(21))
    i2c.writeto_mem(104, 0x6b, bytearray([0x00]))

    while True:

        if Pcolor1 and Pcolor2:
            go_straight()

        if Pcolor1 not True and Pcolor2 not True:
            backwards()

        if Pcolor1 == True and Pcolor2 not True: #vuol dire che Pcolor1==1 e Pcolor2==False
            turnleft()

        if Pcolor2 == True and Pcolor1 not True:
            turnright()


if __name__ == '__main__':
    main()
