### hub-mqtt
```
假设主题为/geektime/iot

hbmqtt_sub --url mqtt://mqtt.eclipse.org:1883 -t /geektime/iot

hbmqtt_pub --url mqtt://mqtt.eclipse.org:1883 -t /geektime/iot -m Hello,World!
```