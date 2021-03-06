#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/publish-base.sh
bash $DIR/publish-apollo.sh
bash $DIR/publish-beats.sh
bash $DIR/publish-bookkeeper.sh
bash $DIR/publish-cassandra.sh
bash $DIR/publish-chronograf.sh
bash $DIR/publish-clickhouse.sh
bash $DIR/publish-compile.sh
bash $DIR/publish-coredns.sh
bash $DIR/publish-druid.sh
bash $DIR/publish-elasticsearch.sh
bash $DIR/publish-emq.sh
bash $DIR/publish-etcd.sh
bash $DIR/publish-flink.sh
bash $DIR/publish-grafana.sh
bash $DIR/publish-hadoop.sh
bash $DIR/publish-influxdb.sh
bash $DIR/publish-integrate.sh
bash $DIR/publish-kafka.sh
bash $DIR/publish-kibana.sh
bash $DIR/publish-kong.sh
bash $DIR/publish-logstash.sh
bash $DIR/publish-minio.sh
bash $DIR/publish-mysql.sh
bash $DIR/publish-nginx.sh
bash $DIR/publish-other.sh
bash $DIR/publish-postgre.sh
bash $DIR/publish-prometheus.sh
bash $DIR/publish-pulsar.sh
bash $DIR/publish-python.sh
bash $DIR/publish-redis.sh
bash $DIR/publish-skywalking.sh
bash $DIR/publish-trino.sh
bash $DIR/publish-zookeeper.sh