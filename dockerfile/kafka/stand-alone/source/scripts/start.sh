cd "$(dirname "$0")"

$KAFKA_HOME/bin/zookeeper-server-start.sh config/zookeeper.properties &
$KAFKA_HOME/kafka-server-start.sh config/server.properties