import paho.mqtt.client as mqtt

topic_base = 'unisadiem/dmcs/sensor/'
topics = ['R2R', 'ECG', 'BREATH_ANNOTATION', 'ACC_GYRO', 'SYSTEM_INFO', 'BATTERY_INFO']

# Callback function for when a message is received
def on_message(client, userdata, message):
    # Extract the topic and message from the received message
    topic = message.topic.split('/')[-1]
    payload = str(message.payload.decode())

    # Append the message to the file
    with open(topic + '.txt', 'a') as file:
        file.write(payload + '\n')
    with open('stream.txt', 'a') as file:
        file.write(topic + '-->' + payload + '\n')
    print(f'Received message on topic {topic}: {payload}')


# Create an MQTT client object
client = mqtt.Client()

# Connect to the MQTT broker
client.connect('localhost', 1883, 60)
client.on_message = on_message

# Subscribe to the topic
for topic in topics:
    client.subscribe(topic_base + topic)
client.loop_forever()