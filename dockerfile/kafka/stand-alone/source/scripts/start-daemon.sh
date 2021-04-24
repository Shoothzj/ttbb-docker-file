#!/usr/bin/env bash
python3 $KAFKA_HOME/hzj/scripts/config_change.py $KAFKA_HOME

$KAFKA_HOME/bin/zookeeper-server-start.sh $KAFKA_HOME/config/zookeeper.properties & >$KAFKA_HOME/zookeeper-normal.log
$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties >$KAFKA_HOME/kafka-normal.log