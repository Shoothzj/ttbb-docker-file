cd "$(dirname "$0")"

cd ../kafka
# now current in /opt/sh/kafka

cp /opt/sh/conf/server.properties config/server.properties

echo "" >> config/server.properties

echo "broker.id=$[`echo $HOSTNAME|awk -F '-' '{print $NF}'`+1]" >> config/server.properties

echo "zookeeper.connect=$ZK_ADDR" >> config/server.properties

KAFKA_ADDR=$HOSTNAME.kafka

echo "listeners=PLAINTEXT://$KAFKA_ADDR:9092" >> config/server.properties

bin/kafka-server-start.sh config/server.properties