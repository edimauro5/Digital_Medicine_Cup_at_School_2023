# ISTRUZIONI CONFIGURAZIONE VM

Tramite il file `configurazione.sh` viene eseguito uno script in grado di installare tutto il necessario sulla macchina virtuale Linux da utilizzare.
In particolare:

- vengono installati, tramite python, `paho-mqtt` `flask` `bleak`
- viene sostituito il file di configurazione di mosquitto con quello presente all'interno di questa cartella in modo da abilitare la trasmissione di pacchetti tramite internet
