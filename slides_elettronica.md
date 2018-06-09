-----

**L293D MOTOR DRIVER**

- Interface between the microcontroller and the motors: the ESP32 **cannot** supply a sufficient current to the motors; 

- 4 mos transistors are employed to provide more current to the motors;'''--

----

**PINOUT L293D**

- **Enable** pins: enable or disable the inputs and outputs of each side;

- **Input** pins: controlled by the ESP32, 
if set **HIGH** the corresponding   output pin is fed 6V by the battery,
if set **LOW** the corresponding output is at 0V;

- **Output** pins: employed to supply the motors with 6V or 0V;

- Depending on the sign of the voltage difference between two output pins, the car moves **forwards** or **backwards**;


----

**MPU6050**

- Inertial sensor of movement: the measurement is carried out **without** a GPS;

- accelerations are sensed thanks to the inner mechanical **capacitance variation**;



----

**PINOUT MPU6050**
 
- **Vcc** and **GND**

- **SCL** and **SDA**: clock line to allow a synchronized transmission of data and data line to transfer the actual data;

- **INT**: interrupt pin



----

**Accelerometro: base principle** 

- definition of **capacitance**: **C=Q/V**

- the acceleration makes the capacitance vary and a signal is generated;



----

**I2C**

- **serial** protocol of communication;

- one **master** and one (or more) **slave(s)**;

- only two lines are employed: **Clock(SCL)** e **Data(SDA)**: the clock is set by the master;

- line typically **HIGH** by means of a pull up resistor, pulled down by the master/slave;

- standard speed of **100kbit/s**



----

**HOW DOES I^2C WORK?**

- communication starts with a **start bit** (S);

- the **slave address** follows (B1,...,B7);

- **transfer** or **receive** bit;

- **ACK** bit;

- communication happens;

- end of communication with a **stop bit** (P);


