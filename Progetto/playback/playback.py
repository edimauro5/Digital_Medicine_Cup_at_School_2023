import paho.mqtt.client as mqtt
import argparse
import time
import sys
import os

topic_base = 'unisadiem/dmcs/sensor/'
topics = ['R2R', 'ECG', 'BREATH_ANNOTATION', 'ACC_GYRO', 'SYSTEM_INFO', 'BATTERY_INFO']

# Create an MQTT client object
client = mqtt.Client()

# Connect to the MQTT broker
client.connect('localhost', 1883, 60)

parser = argparse.ArgumentParser()
parser.add_argument('-p', '--publish', action='store_true', help='Publish as playback')
parser.add_argument('-t', '--topic', choices=topics, help='Topic to publish', default=None)
args = parser.parse_args()

# Publish the list of messages
if args.publish:
    file_path = os.path.join(os.path.dirname(__file__), 'stream.txt')
    with open(file_path, 'r') as file:
        while True:
            line = file.readline()
            if not line:
                file.seek(0)
                continue
            elems = line.split('-->')
            client.publish(topic_base + elems[0], elems[1][:-1])
            time.sleep(1)
            print(f'Send message on topic {topic_base + elems[0]}: {elems[1][:-1]}')

# Publish the specified topic messages
elif args.topic in topics:
    file_path = os.path.join(os.path.dirname(__file__), args.topic + '.txt')
    with open(file_path, 'r') as file:
        while True:
            line = file.readline()
            if not line:
                file.seek(0)
                continue
            client.publish(topic_base + args.topic, line[:-1])
            time.sleep(2)
            print(f'Send message on topic {topic_base + args.topic}: {line}')