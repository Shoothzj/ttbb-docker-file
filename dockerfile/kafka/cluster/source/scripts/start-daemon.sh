#!/bin/bash

cp /opt/sh/kafka/hzj/conf/server.properties $KAFKA_HOME/config/server.properties

echo "" >> $KAFKA_HOME/config/server.properties

echo "broker.id=$[`echo $HOSTNAME|awk -F '-' '{print $NF}'`+1]" >> $KAFKA_HOME/config/server.properties

echo "zookeeper.connect=$ZK_ADDR" >> config/server.properties
# python更改配置
python3 $KAFKA_HOME/hzj/scripts/common_config.py $KAFKA_HOME
python3 $KAFKA_HOME/hzj/scripts/cluster_config_change.py $KAFKA_HOME

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/server.properties