# ISTRUZIONI REC_PUB

#### --- REQUISITI ---

- **PYTHON** (il programma è stato testato su versione 3.11, ma dovrebbe funzionare a partire dalla 3.8)
- **PAHO.MQTT** da installare attraverso il comando `pip install paho.mqtt`

## REGISTRAZIONE

Utilizzare il comando `python .\record.py -r` in modo da avviare la **registrazione**
In questo modo vengono generati i file in base ai topic che si vogliono monitorare
Viene generato anche il file "stream.txt" che contiene tutti i messaggi appartenenti a tutti i topic

***ATTENZIONE*** la struttura dei file non deve essere modificata