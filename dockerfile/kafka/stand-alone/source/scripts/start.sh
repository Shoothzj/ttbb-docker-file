cd "$(dirname "$0")"

cd ../kafka
# now current in /opt/sh/kafka

bin/zookeeper-server-start.sh config/zookeeper.properties &
bin/kafka-server-start.sh config/server.properties