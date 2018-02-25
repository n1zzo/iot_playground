# CRASH COURSE
### Physical Computing
### Coding - IoT

Niccolò Izzo

`izzo.niccolo@gmail.com`

Marco Attanasio

`marco.attanasio@mail.polimi.it`

![64K Logo](./img/64klogo.png)

---

## Cos'è l'IoT

- La moda corrente
- Distrubuzione dei compiti
- Interconnessione
- Ubiquitous computing

----

## Basso Consumo Energetico

- Essenziale per un mantenimento a basso costo
- Una batteria può durare diversi anni
- Minor generazione di potenza termica

----

## Energy Harvesting

- Riduce i costi di manutenzione
- Efficace in ambienti aspri
- Principalmente pannelli solari

----

## Wireless Protocols

| Protocol  | Bandwidth | Power Consumption | Range |
|-----------|-----------|-------------------|-------|
| Wi-Fi     | High      | High              | ~100m |
| Bluetooth | Medium    | Medium            | ~20m  |
| ZigBee    | Low       | Low               | ~20m  |
| LoRa      | Very Low  | Low               | ~10km |

----

## Middleware Technologies

- Utili per il controllo dei dataflow
- Modo più facile per attraversare i NAT
- Permettono di combinare dispositivi differenti

----

## Networks

| Topology | Cost   | Realiability | Performance |
|----------|--------|--------------|-------------|
| Bus      | Low    | Low          | Low         |
| Star     | Medium | Medium       | High        |
| Ring     | Medium | Higher       | Medium      |
| Mesh     | High   | Highest      | Medium      |

----

## CPU Architectures

- ARM
    - La CPU del tuo smartphone
    - Costo intermedio
    - Elevate prestazioni
- AVR
    - CPU dell'arduino
    - Basso costo
    - Prestazioni limitate
- x86
    - Una pessima idea per l'IoT

----

# Generico Dispositivo

![Schema Funzionale di un Generico Dispositivo](img/functional_scheme.svg)

---

# Python

----

# Perché Python?

- Ottimo per i principianti
- Facile da usare
- Estremamente diffuso
- Moduli per qualunque cosa

----

## Breve storia

- Nasce nel 1991 per mano di Guido van Rossum
- Prende il nome dai Monty Python
- È in continua evoluzione
- Convivono due versioni (2 e 3)
- Noi useremo Python 3
- Fatelo anche voi

----

## Interpretato vs. compilato

- Compilato: tradotto in linguaggio macchina
- Interpretato: eseguito da un altro programma
- Python è interpretato (circa)

Notes:
Python è compilato in quanto la sintassi Python è compilata in bytecode, ed
è interpretato in quanto il bytecode è eseguito da un altro programma, la VM
Python e non eseguito direttamente dal processore.

----

## Cosa serve

- Per scrivere il codice, un editor di testo:
  - Multipiattaforma: Atom
  - Windows: Notepad++
- In quanto linguaggio interpretato, l'interprete Python
  - Linux: generalmente preinstallato, altrimenti utilizzare il package manager
  - macOS: [Installer](https://www.python.org/ftp/python/3.6.1/python-3.6.1-macosx10.6.pkg)
  - Windows: [32bit](https://www.python.org/ftp/python/3.6.1/python-3.6.1.exe)
    o [64bit](https://www.python.org/ftp/python/3.6.1/python-3.6.1-amd64.exe)

---

# Il linguaggio

----

## REPL

**R**ead, **E**val, **P**rint **L**oop

```
$ python3
Python 3.6.1 (default, Mar 27 2017, 00:27:06)
[GCC 6.3.1 20170306] on linux
Type "help", "copyright", "credits" or "license" for more info...
>>> print('Hello, world!')
Hello world!
```

Per uscire: `quit()`

Notes:
Mostrare la differenza tra interprete (il software che converte le istruzioni
in bytecode e poi esegue quest'ultimo) e l'interfaccia REPL Python (il
software che si interfaccia con l'utente).

----

## Espressioni

```
>>> 2 + 2
4
```

```
>>> 3 * 3
9
```

```
>>> 4 < 5
True
```

----

## Commenti

Tutto ciò posto dopo il cancelletto (`#`) non è interpretato.

```
>>> 1 + 1  # qui posso scrivere quello che voglio
2
```

----

## Errori

```
>>> 3 / 0
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ZeroDivisionError: division by zero
```

Il segreto degli hacker? Leggere le scritte!

([Lettura consigliata](http://www.girodivite.it/Diario-di-un-aspirante-hacker.html))

----

## Variabili

```
>>> x = 6
>>> y = 2
>>> x
6
>>> y
2
```

```
>>> 2 * y
4
>>> x + y
8
```

```
>>> z = x + y
>>> z
8
```

---

# Tipi

----

## Cosa ho di fronte?

```
>>> type(3)
<class 'int'>
```

```
>>> type(3.14)
<class 'float'>
```

----

## Interi (`int`)

Cifre senza punto

```
12       # notazione decimale
0xAB     # notazione esadecimale
0b101    # notazione binaria
```

----

## Decimali (`float`)

Cifre con punto

```
>>> 3.14 + 1.234
4.3740000000000006
```

```
>>> 100 / 3
33.333333333333336
```

```
>>> 100 // 3
33
```

----

## Casting

- È l'azione di conversione del tipo
- Si usa il nome del tipo destinazione

```
>>> int(4.20)
4
```

```
>>> x = float(13)
>>> x
13.0
```

```
>>> type(x)
float
>>> type(13)
int
```

----

## Booleani (`bool`)

- Possono assumere due valori: `True` o `False`
- Supportano operazioni logiche (`and`, `or`, `not`)
- Sono il risultato delle operazioni di confronto

----

```
>>> 4 < 5
True
```

```
>>> 3.14 < 2
False
```

```
>>> (4 < 5) or (3.14 < 2)
True
```

```
>>> (4 < 5) and (3.14 < 2)
False
```

----

```
>>> (3.14 < 2) or print('Hello world!')
Hello world!
```

```
>>> (3.14 < 2) and print('Hello world!')
False
```

- È necessario che il valore di solo un membro dell'espressione sia falso per
  rendere tutta l'espressione falsa. Tutti gli altri termini non vengono
  valutati.
- Python valuta i membri di una espressione finché ritiene sia necessario
  per la corretta esecuzione del codice

---

# Collezioni

----

## Stringhe (`str`)

- Testo
- Racchiuse tra singoli apici (`'`) o virgolette (`"`)
- Per stringhe su più righe racchiuse tra tripli apici (`'''`) o virgolette (`"""`)
- Sono *immutabili*

```
>>> a = "Hello"
>>> b = "World"
>>> a + ' ' + b
'Hello World'
```

----

## Liste (`list`)

- Collezione **ordinata** di elementi, anche di tipi diversi
- Si definiscono ponendo all'interno di parentesi quadre gli elementi
  intervallati da una virgola

```
lista = [False, 1, "due", 3.0, 4, 5]
```

- Il primo elemento ha indice 0 (zero-based)
- Si accede a un elemento della lista aggiungendo l'indice dell'elemento
  desiderato tra parentesi quadre

```
>>> lista[2]
'due'
```

----

```
>>> lista = [False, 1, "due", 3.0, 4, 5]
>>> lista
[False, 1, 'due', 3.0, 4, 5]
```

```
>>> lista[0] = 0.0
>>> lista
[0.0, 1, 'due', 3.0, 4, 5]
```

```
>>> lista.append('sei')
>>> lista
[0.0, 1, "due", 3.0, 4, 5, 'sei']
```

```
>>> lista.remove('sei')
>>> lista
[0.0, 1, "due", 3.0, 4, 5]
```

```
>>> lista.reverse()
>>> lista
[5, 4, 3.0, 'due', 1, 0.0]
```

```
>>> len(lista)
6
```

----

### Slicing

- Permette di formare sottoinsiemi di elementi contigui
- Bisogna indicare un intervallo di indici, separando inizio e fine con
  due punti (`:`)
- L'elemento finale non è incluso

```
>>> lista = [0.0, 1, "due", 3.0, 4, 5, 'sei']
```

```
>>> lista[2:5]
['due', 3.0, 4]
```

- È possibile indicare tutti gli elementi dall'inizio o fino alla fine di una
  lista omettendone l'indice

```
>>> lista[:4]
[0.0, 1, 'due', 3.0]
>>> lista[4:]
[4, 5, 'sei']
```

----

### Unpacking

Estrarre valori da un contenitore

```
>>> t = (1, 2)
```

```
>>> a, b = t
>>> b
2
```

```
>>> a, b = b, a
>>> a
2
```

```
>>> c, _ = t
>>> c
1
```

----

### L'operatore `in`

Valuta l'appartenenza di un elemento ad una collezione

```
>>> lista = ['a', 'b', 'c']
>>> 'c' in lista
True
```

- È un'espressione booleana
- Si può usare con l'operatore `not`

```
>>> lista = ['a', 'b', 'c']
>>> 'c' not in lista
False
```

----

## Tuple (`tuple`)

- Esattamente come le liste, ma **immutabili**
- Sono quindi anche **ordinate**
- Si definiscono con le parentesi tonde

```python
tupla = ('a', 1, 2, '3.0')
```

```
>>> tupla[1] = 1.0
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'tuple' object does not support item assignment
```

```
>>> tupla.append('sei')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'tuple' object has no attribute 'append'
```

----

## Riferimenti

- Quando assegniamo un oggetto ad una variabile, la variabile contiene solo un
  *riferimento* all'oggetto
- **Non** l'oggetto stesso.

```
>>> spesa_a = ['mela', 'mango']
```

```
>>> spesa_b = spesa_a
>>> spesa_b.append('carota')
>>> spesa_b
['mela', 'mango', 'carota']
```

```
>>> spesa_a
['mela', 'mango', 'carota']
```

----

## Insiemi (`set`)

- Come gli insiemi matematici
- **Non sono ordinati**
- Non contengono elementi duplicati

```
>>> frutta = {"mele", "pere", "zucchine", "mele"}
>>> frutta
{'mele', 'arance', 'pere'}
```

----

Supportano le operazioni insiemistiche

```
>>> frutta = {"mele", "pere", "zucchine", "mele"}
>>> verdure = {"zucchine", "verze", "coste", "porri"}
```

```
>>> frutta.union(verdure)
{'porri', 'verze', 'pere', 'zucchine', 'coste', 'mele'}
```

```
>>> frutta.intersection(verdure)
{'zucchine'}
```

```
>>> frutta.difference(verdure)
{'pere', 'mele'}
```

```
>>> verdure.difference(frutta)
{'verze', 'coste', 'porri'}
```

----

La sintesi è anche espressività

```
>>> frutta = {"mele", "pere", "zucchine", "mele"}
>>> verdure = {"zucchine", "verze", "coste", "porri"}
```

```
>>> frutta | verdure
{'porri', 'verze', 'pere', 'zucchine', 'coste', 'mele'}
```

```
>>> frutta & verdure
{'zucchine'}
```

```
>>> frutta - verdure
{'pere', 'mele'}
```

```
>>> verdure - frutta
{'verze', 'coste', 'porri'}
```

----

## Dizionari (`dict`)

- Associano ogni chiave ad un valore
- Le chiavi devono essere immutabili (stringhe, tuple)

```python
d = {
    "chiave": "valore",
    "nome":"Marco",
    "cognome":"Attanasio",
    ('immutable', 'types'): ['are', 'cool']
    }
```

Si accede ai campi come si accede agli elementi di una lista, usando la chiave
al posto dell'indice.

```
>>> d['nome']
'Tancredi'
```

```
>>> print('these things ' + ' '.join(d[('immutable', 'types')])
these things are cool
```

---

# Controllo del flusso

----

## `if`

Se una condizione è vera esegue un blocco di codice.

```python
if 3 > 2:
    print('Condizione vera')
```

## Blocchi

- Sono corpi di codice allineati con una spaziatura multipla coerente
- Per bontà agli dèi usate quattro spazi ed evitate le tabulazioni come la peste

Notes:
Dire perché qua stiamo usando `print` e non scrivendo il valore e basta come
prima.

----

## `else`

- Se la condizione di una istruzione `if` è falsa viene eseguito il blocco
  della istruzione `else` (se presente)

```python
if 3 > 2:
    print('Condizione vera')
else:
    print('Condizione falsa')
```

----

## `while`

- Valuta una espressione
- Se è vera esegue un blocco di codice
- Vai al primo punto

```
>>> x = 0
>>> while x < 3:
...     x = x + 1
...     print("ora x vale", x)
...
ora x vale 1
ora x vale 2
ora x vale 3
```

----

## `for`

- Esegue un blocco per ogni elemento di una sequenza

```
>>> for i in [0, 1, 2, 3, 4]:
...     print(i)
0 1 2 3 4
```

- La funzione `range()` genera sequenze da usare all'interno di istruzioni
  `for`

```
>>> for i in range(0, 5):
...    print(i)
0 1 2 3 4
```

----

## `break` e `continue`

- Sono entrambe istruzioni da usare all'interno di un ciclo, `while` o `for`
- Dopo una istruzione `break` tutto il ciclo è interrotto e la condizione non
  sarà più valutata
- Dopo una istruzione `continue` solo l'iterazione corrente è interrotta, il
  ciclo ripende a partire dalla valutazione della condizione

```
>>> for i in [0, 1, 2, 3, 4, 5, 6, 7]:
...     if i == 2:
...         continue
...     if i == 6:
...         break
...     print(i)
0 1 3 4 5
```

---

# Funzioni

----

- Sono porzioni di codice a cui è assegnato un nome
- È possibile eseguire il codice di una funzione similmente a come si ottiene
  il valore contenuto da una variabile
- Permettono di riutilizzare il codice che scriviamo
- Si definiscono con l'istruzione `def`

```
>>> def say_hello():
...     print('Hello world!')
```

```
>>> say_hello()  # chiama la funzione
Hello world!
>>> say_hello()  # chiama la funzione nuovamente
Hello world!
```

- Le funzioni possono ottenere dati in ingresso, e fornire dati in uscita
- Per tale capacità permettono la riusabilità del codice

----

## Parametri

- La funzione può essere "predisposta" per ricevere parametri
- I parametri sono i dati in ingresso di una funzione
- I parametri diventano variabili visibili all'interno della funzione per essere
  usati

----

## Valore di ritorno

- Il valore di ritorno è ciò che fornisce in uscita la funzione, il proprio
  risultato
- Lo si specifica inserendo l'istruzione `return` seguita dal valore di ritorno
- La funzione termina subito dopo l'istruzione return

----

```
>>> def somma(a, b):
...     return a + b
```

```
>>> somma(1, 2)
3
```

```
>>> a, b = 3, 14
>>> c = somma(a, b)
>>> c
17
```

----

## Parametri di default

- Alcuni parametri possono essere opzionali
- Se non specificati assumono un valore di default

```
def f(a, b=3, c=6):
    print(a, b, c)
```

```
>>> f(1)
1 3 6

>>> f(1, 2)
1 2 6

>>> f(1, c=4)
1 3 4
```

----

## None

- Equivale al `NULL` di C
- Una funzione ritorna `None` se priva di `return`
- Una variabile si può confrontare a None con l'istruzione di comparazione `is`

```
>>> def f():
...     print('funzione')
...     return None
```

```
>>> f()
funzione
>>> x = f()
>>> x
None
```

```
>>> if x is None:
...    print('esatto!')
esatto!
```

---

# Moduli

----

- I file contenenti codice Python hanno estensione `.py`
- Ogni file è un **modulo**
- È possibile importare variabili, funzioni e classi da altri moduli con
  l'istruzione `import`

- modulo.py
  ```
  default_lim = 3
  def conta(lim=default_lim):
      for x in range(lim):
          print(x)
  ```
- programma.py
  ```
  import modulo
  x = modulo.default_lim + 2
  modulo.conta(x)
  ```

----

- È possibile importare solo alcuni elementi da un modulo con la sintassi
  `from <modulo> import <oggetto>`
- Aiuta la leggibilità del codice
- Si omette il modulo di provenienza

- modulo.py
  ```
  default_lim = 3
  def conta(lim=default_lim):
      for x in range(lim):
          print(x)
  ```
- programma.py
  ```
  from modulo import default_lim, conta
  x = default_lim + 2
  conta(x)
  ```

----

Il codice posto nello scope del modulo è comunque eseguito, anche se sono
importati alcuni elementi con la sintassi `from ... import`.

- modulo.py
  ```
  a = 'variabile'
  def f():
      print('funzione')
  print('modulo')
  ```
- dalla REPL
  ```
  >>> from modulo import f
  modulo
  >>> f()
  funzione
  ```

----

È possibile eseguire del codice solo se il modulo è eseguito direttamente
e non è stato importato (o il contrario)

```python
if __name__ == '__main__':
    print('Programma eseguito direttamente')
else:
    print('Questo modulo è stato importato')
```

- La variabile `__name__` contiene il nome del modulo corrente
- Se un modulo è eseguito direttamente la variabile `__name__` assume valore
  ‘`__main__`’

---

# Input e Output

----

- Purtroppo a volte è necessario interagire con l'utente
- È possibile ottenere un valore dall'utente
- È possibile accedere a un file presente sul disco

----

## Formattazione dell'output

```
>>> s = 'Corsi {} {}'
>>> s.format('Python', '2017')
'Corsi Python 2017'
>>> s.format('Linux', 'base')
'Corsi Linux base'
```

```
>>> s = 'Corsi {argomento} {tipo}'
>>> s.format(tipo='avanzati', argomento='antani')
'Corsi antani avanzati'
```

----

## Input dall'utente

```
>>> a = input()
asd
>>> a
'asd'
```

```
>>> nome = input("Inserisci il tuo nome: ")
Gattuso
>>> 'Il tuo nome è {}.'.format(nome)
'Il tuo nonme è Gattuso.'
```

----

## `import this`

---

# Sending and visualizing data

----

## Wi-Fi

- Chiamato anche **IEEE 802.11** (a, b, g, n, ac)
- Lavora su frequenze 2.4GHz e 5GHz
- Access Point creano reti con nome (**SSID**) e **password**
- Client si connettono tramite SSID e password

----

## REST

**REpresentational State Transfer**, è un'architettura software
per la comunicazione su internet.

- Due metodi:
    - **GET** per richiedere dati
    - **POST** per inviare dati

- Invio di dati sotto forma di **JSON**

----

## JSON

È un **formato testuale** di interscambio di dati, simile ad un **dizionario** Python


```
{
	"key": "value",
	"active": true,
	"theAnswer": 42,
	"time": {
		"hours": 10,
		"minutes": 22,
	},
	"exampleList": [ "it", "en" ]
}
```

Per crearne uno in Python

```
import json
json.dumps(content)
```

----

## Risposte HTTP

- Ad ogni richiesta segue una risposta:
    - **200 OK**
    - **301 Moved Permanently**
    - **404 Not Found**
    - **500 Internal Server Error**
    - Trovate l'elenco completo [qui](https://it.wikipedia.org/wiki/Codici_di_stato_HTTP)

----

## Node-RED

**Flow-based programming for the IoT**

- Creato da IBM
- Open-source
- Lo trovate su [iot.polifactory.it](https://iot.polifactory.it)

Lo useremo per creare le interfacce web dei vostri progetti

----

## Patch Example

![Nodered Example](img/nodered.png)

---

# Electronics 101

----

## Voltage and Current

Due punti di un circuito sono ad un diverso **voltaggio(o potenziale)** se, rispetto ad un riferimento, possiedono un diverso accumulo di carica.  
Se due punti a differente voltaggio sono collegati tra di loro si genera un movimento di cariche che tende ad annullare la loro differenza di potenziale, ossia, si genera una **corrente**.

----

![V_&_I](img/voltage.png)

----

## Basic elements

Alcuni degli elementi che utilizzeremo durante il laboratorio sono:


- resistors
- leds
- lasers
- photoresistors 
- ADC
- GPIO
- PWM

----

## Resistors and photoresistors

Il resistore è l'elemento più semplice presente in un circuito; la sua caratteristica principale è la "resistenza" (**R**) definita come il rapporto tra la tensione applicata ai suoi capi e la corrispondente corrente generata: **R=V/I**   
Un photoresistor è un resistore che modifica la sua **R** in funzione della luce a cui è esposto:   
**maggiore intensità luminosa = minore R**

----

![resistor](img/resistor.svg)

----

## LEDs

I Light Emitting Diodes sono dispositivi realizzati attraverso la giunzione tra due blocchi di particolari materiali chiamati "semiconduttori a gap diretto"(come il GaAs).  
La particolarità di tali dispositivi è quella di emettere fotoni(luce) se alimentati da una determinata potenza( nel nostro caso, circa 2V ai loro capi e una corrente di qualche milliAmpere).  
**La luce di un LED non presenta una direzione predominante di emissione.**

----

![led](img/LED.svg)

----

## Lasers

Il principio secono il quale un laser emette luce è molto simile a quello di un LED, tuttavia, grazie a particolari accorgimenti di carattere geometrico nella loro struttura interna, la luce da loro emessa risulta essere ben definita in termini di lunghezze d'onda(colore) e **possiede una direzione preferenziale molto marcata.**

----

## ADC

Gli **A**nalog-to-**D**igital **C**onverter sono gli strumenti che permettono la comunicazione tra dispositivi che utilizzano il linguaggio digitale(binario) e il mondo esterno, in cui l'informazione non si limita ad assumere valori discreti ma può, potenzialmente, assumere qualsiasi valore in qualsiasi istante di tempo.  
Alcuni pin del modulo che utilizzeremo sono dotati di questi dispositivi.  

----

## Funzionamento ADC
  
Il funzionamento di un ADC può essere essenzialmente scomposto in due operazioni fondamentali:

1. Campionamento del segnale
2. Quantizzazione delle ampiezze  
  
----

### Campionamento del segnale

Dato in ingresso un segnale tempo variabile, il primo passo da fare è quello di prelevarne dei campioni in modo da trasformarlo nel suo equivalente a tempo discreto, tale operazione corrisponde a "salvare" il suo valore ogni **T** secondi.  
In questo caso **T** è chiamato "Periodo di Campionamento" e il suo inverso **F=1/T** "Frequenza di campionamento";  
Si dimotra che, per non avere perdita di informazione, si deve campionare ad una frequenza almeno doppia rispetto a quella del segnale in ingresso.

----

![camp_signal](img/campionament.png)

----

### Quantizzazione delle ampiezze

Per fare in modo che il nostro segnale campionato possa effettivamente essere interpretato da un dispositivo digitale, come il nostro modulo ESP32, ciascun campione deve essere convertito in una "parola digitale", ossia, un numero il cui valore è proporzionale al segnale "fisico" di ingresso.
   
----

![quantizzazione](img7adc_quant.png)

----

## GPIO 

Ogni microcontrollore fornisce un certo numero di porte(pin) esposte, tuttavia, non tutte le porte possono svolgere le stesse funzioni.  
I pin **G**eneral **P**urpose **I**nput/**O**utput possono essere utilizzati sia come input per segnali digitali provenienti da una periferica o un dispositivo esterno, sia come output per controllare tali dispositivi.

----

## PWM 

Per capire in cosa consiste un segnale PWM partiamo dalla definizione di "duty cycle":  
Data un'onda quadra periodica di periodo T, il duty cycle corrisponde alla percentuale di tale periodo in cui il segnale assume il valore "alto"

![duty_cycle](img/duty_cycle.svg)

----
   
**Un segnale PWM è un'onda quadra con duty cycle variabile.**   
Alcuni pin del nostro modulo hanno tale funzione implementata via hardware e possono, quindi, simulare un segnale di questo tipo.  

----

### LED RGB e PWM

Un LED RGB è composto da tre unità che emettono rispettivamente luce rossa, verde e blu.  
Assegnando ad ognuna di queste unità un segnale di controllo PWM, variamo nel tempo la percentuale di rosso, verde e blu emessa dal LED; possiamo quindi emettere un'intera gamma di colori diversi, ciascuno corrispondente ad una diversa combinazione dei tre fondamentali.   
      

----

# Useful advices
 
- **collegamento di un led ad un pin del modulo:**  
 il nostro modulo fornisce in uscita dai sui pin 3.3V ma i nostri led sviluppano ai loro capi solo (circa) 2V, è quindi necessario interporre un resistore tra il pin e il LED per evitare un sovraccarico di corrente.  
- **collegamento dei sensori al modulo:**    
 per motivi del tutto analoghi, quando si connette uno dei sensori all'alimentazione, occorre assicurarsi che in esso siano già integrate delle resistenze e, in caso contrario, aggiungerle esternamente.

---

# Hands On

----

# Setup Windows

- Aprire "Gestione dispositivi"
- Selezionare il gruppo "Porte (COM e LPT)"
- Prendere nota del numero di porta COM e.g. COM7
- Aprire termite
- Aprire il tasto "Settings"
- Selezionare la porta corretta
- Inserire 115200 nel campo "Baud rate"
- Selezionare "Append CR-LF" nel campo "Transmitted test"
- Deselezionare Local echo
- Premere OK

----
