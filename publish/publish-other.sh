DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh emq stand-alone

bash $DIR/../build-push.sh filebeat nake
bash $DIR/../build-push.sh filebeat stand-alone

bash $DIR/../build-push.sh flink nake
bash $DIR/../build-push.sh flink stand-alone
bash $DIR/../build-push.sh flink master
bash $DIR/../build-push.sh flink worker

bash $DIR/../build-push.sh grafana nake
bash $DIR/../build-push.sh grafana stand-alone

bash $DIR/../build-push.sh hadoop nake
bash $DIR/../build-push.sh hadoop data
bash $DIR/../build-push.sh hadoop name
bash $DIR/../build-push.sh hadoop pseudo-distribute

bash $DIR/../build-push.sh hbase nake

bash $DIR/../build-push.sh influxdb nake
bash $DIR/../build-push.sh influxdb stand-alone
bash $DIR/../build-push.sh influxdb beta

bash $DIR/../build-push.sh kafka nake
bash $DIR/../build-push.sh kafka stand-alone
bash $DIR/../build-push.sh kafka cluster

bash $DIR/../build-push.sh kapacitor nake
bash $DIR/../build-push.sh kapacitor stand-alone

bash $DIR/../build-push.sh mariadb stand-alone

bash $DIR/../build-push.sh metricbeat nake
bash $DIR/../build-push.sh metricbeat stand-alone

bash $DIR/../build-push.sh mongo nake
bash $DIR/../build-push.sh mongo stand-alone
bash $DIR/../build-push.sh mongo config
bash $DIR/../build-push.sh mongo router
bash $DIR/../build-push.sh mongo shard

bash $DIR/../build-push.sh neo4j nake
bash $DIR/../build-push.sh neo4j stand-alone

bash $DIR/../build-push.sh node-exporter nake
bash $DIR/../build-push.sh node-exporter stand-alone

bash $DIR/../build-push.sh postgre nake

bash $DIR/../build-push.sh pulsar nake
bash $DIR/../build-push.sh pulsar stand-alone
bash $DIR/../build-push.sh pulsar stand-alone-2-6-0
bash $DIR/../build-push.sh pulsar cluster
bash $DIR/../build-push.sh pulsar manager

bash $DIR/../build-push.sh rabbitmq nake
bash $DIR/../build-push.sh rabbitmq stand-alone

bash $DIR/../build-push.sh redis nake
bash $DIR/../build-push.sh redis exporter

bash $DIR/../build-push.sh skywalking nake
bash $DIR/../build-push.sh skywalking stand-alone
bash $DIR/../build-push.sh skywalking es7

bash $DIR/../build-push.sh spark stand-alone
bash $DIR/../build-push.sh spark py-learn

bash $DIR/../build-push.sh telegraf nake
bash $DIR/../build-push.sh telegraf stand-alone

bash $DIR/../build-push.sh apisix nake

bash $DIR/../build-push.sh etcd nake

bash $DIR/../build-push.sh sysbench nake