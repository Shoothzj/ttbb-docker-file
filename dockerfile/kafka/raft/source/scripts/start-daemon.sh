#!/bin/bash
python3 $KAFKA_HOME/hzj/scripts/common_config.py $KAFKA_HOME
python3 $KAFKA_HOME/hzj/scripts/config_change.py $KAFKA_HOME


uuid=`bash $KAFKA_HOME/bin/kafka-storage.sh random-uuid`
bash $KAFKA_HOME/bin/kafka-storage.sh format -t $uuid $KAFKA_HOME/config/kraft/server.properties

$KAFKA_HOME/bin/kafka-server-start.sh $KAFKA_HOME/config/kraft/server.properties >$KAFKA_HOME/kafka-normal.log