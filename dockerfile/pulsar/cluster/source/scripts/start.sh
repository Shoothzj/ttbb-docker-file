source /etc/profile

cp /opt/sh/pulsar-cluster/conf/broker.conf /opt/sh/pulsar/conf/broker.conf

# 换行
echo "" >> /opt/sh/pulsar/conf/broker.conf


### --- General broker settings --- ###

eth0_ip=`ifconfig eth0|grep inet|awk '{print $2}'`

echo "advertisedAddress=$eth0_ip" >> /opt/sh/pulsar/conf/broker.conf

echo "zookeeperServers=$ZK_ADDR" >> /opt/sh/pulsar/conf/broker.conf

echo "configurationStoreServers=$ZK_ADDR" >> /opt/sh/pulsar/conf/broker.conf

cat /opt/sh/pulsar/conf/broker.conf

/opt/sh/pulsar/bin/pulsar-daemon start broker

tail -f /dev/null
