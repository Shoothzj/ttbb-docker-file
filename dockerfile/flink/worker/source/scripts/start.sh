cp /opt/sh/support/conf/flink.yaml /opt/sh/flink/conf/flink-conf.yaml

echo "" >> /opt/sh/flink/conf/flink-conf.yaml 

echo "jobmanager.rpc.address: flink-master" >> /opt/sh/flink/conf/flink-conf.yaml

bash /opt/sh/flink/bin/taskmanager.sh start
tail -f /dev/null