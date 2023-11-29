#!/bin/bash
sudo -S <<< p3pp3r123! apt-get -y update
sudo -S <<< p3pp3r123! apt-get -y upgrade
sudo -S <<< p3pp3r123! apt-get -y install python3-pip
echo "fatto"
pip install paho.mqtt
pip install flask
pip install bleak
sudo -S <<< p3pp3r123! apt-get -y update
sudo -S <<< p3pp3r123! apt-get -y upgrade
sudo -S <<< p3pp3r123! rm -rf /etc/mosquitto/mosquitto.conf || true
pwd
sudo -S <<< p3pp3r123! cp mosquitto.conf /etc/mosquitto/mosquitto.conf
sudo -S <<< p3pp3r123! chmod a+rw /var/log/mosquitto/mosquitto.log
mosquitto -c /etc/mosquitto/mosquitto.conf
mosquitto &