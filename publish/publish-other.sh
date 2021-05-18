#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh bfe nake

bash $DIR/../build-push.sh grafana nake
bash $DIR/../build-push.sh grafana stand-alone

bash $DIR/../build-push.sh hbase nake

bash $DIR/../build-push.sh kafka nake
bash $DIR/../build-push.sh kafka stand-alone
bash $DIR/../build-push.sh kafka cluster

bash $DIR/../build-push.sh kapacitor nake
bash $DIR/../build-push.sh kapacitor stand-alone

bash $DIR/../build-push.sh keepalived nake

bash $DIR/../build-push.sh mariadb nake

bash $DIR/../build-push.sh mongo nake
bash $DIR/../build-push.sh mongo stand-alone
bash $DIR/../build-push.sh mongo config
bash $DIR/../build-push.sh mongo router
bash $DIR/../build-push.sh mongo shard

bash $DIR/../build-push.sh nifi nake

bash $DIR/../build-push.sh pravega nake

bash $DIR/../build-push.sh neo4j nake
bash $DIR/../build-push.sh neo4j stand-alone

bash $DIR/../build-push.sh node-exporter nake
bash $DIR/../build-push.sh node-exporter stand-alone

bash $DIR/../build-push.sh rabbitmq nake
bash $DIR/../build-push.sh rabbitmq stand-alone

bash $DIR/../build-push.sh spark stand-alone
bash $DIR/../build-push.sh spark py-learn

bash $DIR/../build-push.sh telegraf nake
bash $DIR/../build-push.sh telegraf stand-alone

bash $DIR/../build-push.sh etcd nake

bash $DIR/../build-push.sh sysbench nake