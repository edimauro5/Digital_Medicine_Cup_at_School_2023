REM In questo file batch vengono eseguiti tutti gli script python necessari alla pubblicazione nell'ordine corretto. Può essere utilizzato solo su sistemi Windows
start "Flask" /b python webapp/app.py
start "gyro" /b python playback/playback.py -t ACC_GYRO &
start "battery" /b python playback/playback.py	-t BATTERY_INFO &
start "breath" /b python playback/playback.py -t BREATH_ANNOTATION &
start "ecg" /b python playback/playback.py -t ECG &
start "bpm" /b python playback/playback.py -t R2R &
start "system" /b python playback/playback.py -t SYSTEM_INFO