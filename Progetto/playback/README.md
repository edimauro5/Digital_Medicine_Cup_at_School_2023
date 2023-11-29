# ISTRUZIONI REC_PUB

#### --- REQUISITI ---

- **PYTHON** (il programma è stato testato su versione 3.11, ma dovrebbe funzionare a partire dalla 3.8)
- **PAHO.MQTT** da installare attraverso il comando `pip install paho.mqtt`

***ATTENZIONE*** la struttura dei file non deve essere modificata

## PLAYBACK

### Generico

Utilizzare il comando `python .\playback.py -p` in modo da avviare il **playback** di tutte i messaggi appartenenti a tutti i topic. I messaggi vengono prelevati dal file stream.txt ed hanno un rate di **1 messaggio** ogni **1 secondo**

### Specifico

Utilizzare il comando `python .\playback.py -t [nome_topic]` in modo da avviare il **playback** dei messaggi relativi al topic specificato. I messaggi vengono prelevati dal file "nome_topic.txt" ed hanno un rate di **1 messaggio** ogni **2 secondi**