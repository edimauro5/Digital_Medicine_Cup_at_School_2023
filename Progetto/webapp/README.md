# ISTRUZIONI WEBAPP

#### --- REQUISITI ---

- **PYTHON** (il programma è stato testato su versione 3.11, ma dovrebbe funzionare a partire dalla 3.8)
- **FLASK** da installare attraverso il comando `pip install flask`
- Collegarsi alla **stessa rete** sul quale è collegato il computer che deve visualizzare la pagina (in questo caso il robot Pepper)
- (Solo per utenti Windows) **Disabilitare il firewall** della rete pubblica

## AVVIO

Utilizzare il comando `python .\app.py` ed utilizzare il secondo **link** che viene mostrato sul terminale. Tale link deve essere inserito all'interno del browser o all'interno dei blocchetti "ShowWebView" del robot Pepper. E' possibile ottenere il link tramite MQTT sottoscrivendosi al topic *unisadiem/dmcs/sensor/EXTRA/IP*

***ATTENZIONE*** per poter accedere alle pagine corrette serve seguire la seguente legenda:

|         PAGINA        |        URL       |
|:---------------------:|:----------------:|
|        HelpPage       |       Link       |
|    BattitiPerMinuto   |    Link + /bpm   |
| RespirazioniPerMinuto |    Link + /rpm   |
|  ElettroCardioGramma  |    Link + /ecg   |
|        Overview       | Link + /overview |