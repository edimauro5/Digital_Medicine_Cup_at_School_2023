#!/bin/bash
# Prima di poter eseguire questo file devi assegnare i permessi di esecuzione da terminale con il seguente comando dopo esserti collocato nella cartella corretta
# chmod +x Pubblicazione_Automatica_Unix_Mac.sh

# Funzione per gestire l'interruzione (Ctrl + C)
function interrupt_handler() {
    echo "Interruzione ricevuta. Terminazione dei processi."
    pkill -P $$
    exit 0
}

# Assegna il gestore di segnale alla funzione interrupt_handler
trap interrupt_handler SIGINT

# In questo file shell vengono eseguiti tutti gli script python necessari alla pubblicazione nell'ordine corretto. Può essere utilizzato solo su sistemi Unix e MacOS
python webapp/app.py &
python playback/playback.py -t ACC_GYRO &
python playback/playback.py -t BATTERY_INFO &
python playback/playback.py -t BREATH_ANNOTATION &
python playback/playback.py -t ECG &
python playback/playback.py -t R2R &
python playback/playback.py -t SYSTEM_INFO