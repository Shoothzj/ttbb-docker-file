bash -vx /opt/sh/pulsar-cluster/scripts/config.sh

source /etc/profile

/opt/sh/pulsar/bin/pulsar initialize-cluster-metadata --cluster $CLUSTER_NAME --zookeeper $ZK_ADDR --configuration-store $ZK_ADDR --web-service-url $PULSAR_HTTP_ADDR --broker-service-url $PULSAR_TCP_ADDR
