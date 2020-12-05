bash ../build-push.sh emq stand-alone

bash ../build-push.sh filebeat nake
bash ../build-push.sh filebeat stand-alone

bash ../build-push.sh flink nake
bash ../build-push.sh flink stand-alone
bash ../build-push.sh flink master
bash ../build-push.sh flink worker

bash ../build-push.sh grafana nake
bash ../build-push.sh grafana stand-alone

bash ../build-push.sh hadoop nake
bash ../build-push.sh hadoop data
bash ../build-push.sh hadoop name
bash ../build-push.sh hadoop pseudo-distribute

bash ../build-push.sh hbase nake

bash ../build-push.sh influxdb nake
bash ../build-push.sh influxdb stand-alone
bash ../build-push.sh influxdb beta

bash ../build-push.sh kafka nake
bash ../build-push.sh kafka stand-alone
bash ../build-push.sh kafka cluster

bash ../build-push.sh kapacitor nake
bash ../build-push.sh kapacitor stand-alone

bash ../build-push.sh kibana nake
bash ../build-push.sh kibana stand-alone

bash ../build-push.sh mariadb stand-alone

bash ../build-push.sh metricbeat nake
bash ../build-push.sh metricbeat stand-alone

bash ../build-push.sh mongo nake
bash ../build-push.sh mongo stand-alone
bash ../build-push.sh mongo config
bash ../build-push.sh mongo router
bash ../build-push.sh mongo shard

bash ../build-push.sh mysql nake
bash ../build-push.sh mysql stand-alone
bash ../build-push.sh mysql stand-alone-5-6
bash ../build-push.sh mysql stand-alone-5-7

bash ../build-push.sh neo4j nake
bash ../build-push.sh neo4j stand-alone

bash ../build-push.sh node-exporter nake
bash ../build-push.sh node-exporter stand-alone

bash ../build-push.sh postgre nake

bash ../build-push.sh prometheus nake

bash ../build-push.sh pulsar nake
bash ../build-push.sh pulsar stand-alone
bash ../build-push.sh pulsar stand-alone-2-6-0
bash ../build-push.sh pulsar cluster
bash ../build-push.sh pulsar manager

bash ../build-push.sh rabbitmq nake
bash ../build-push.sh rabbitmq stand-alone

bash ../build-push.sh redis nake

bash ../build-push.sh skywalking nake
bash ../build-push.sh skywalking stand-alone
bash ../build-push.sh skywalking es7

bash ../build-push.sh spark stand-alone
bash ../build-push.sh spark py-learn

bash ../build-push.sh telegraf nake
bash ../build-push.sh telegraf stand-alone

bash ../build-push.sh zookeeper nake
bash ../build-push.sh zookeeper stand-alone
bash ../build-push.sh zookeeper cluster