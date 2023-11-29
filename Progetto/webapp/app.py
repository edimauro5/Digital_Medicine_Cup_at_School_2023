from flask import Flask, render_template
import paho.mqtt.client as mqtt
import threading
import socket
import time
import sys

app = Flask(__name__)

client = mqtt.Client()
if client.connect("localhost", 1883, 60) != 0:
    print("Impossible to connect")
    sys.exit(-1)


@app.route('/')
def index():
    return render_template('index.html')


@app.route('/bpm')
def BPM():
    return render_template('BattitiPerMinuto.html')


@app.route('/rpm')
def RPM():
    return render_template('RespirazioniPerMinuto.html')


@app.route('/ecg')
def ECG():
    return render_template('ElettroCardioGramma.html')


@app.route('/overview')
def OVERVIEW():
    return render_template('Overview.html')


flag = True
def publish_ip():
    while flag:
        client.publish("unisadiem/dmcs/sensor/EXTRA/IP", str(ip))
        time.sleep(5)


if __name__ == '__main__':
    ip = [(s.connect(('8.8.8.8', 53)), s.getsockname()[0], s.close())
          for s in [socket.socket(socket.AF_INET, socket.SOCK_DGRAM)]][0][1]
    t1 = threading.Thread(target=publish_ip)
    t1.start()
    app.run(host='0.0.0.0', port='5000')
    try:
        while t1.is_alive():
            t1.join(1)
    except KeyboardInterrupt:
        print("Exiting program.")
        flag = False
        sys.exit(0)
