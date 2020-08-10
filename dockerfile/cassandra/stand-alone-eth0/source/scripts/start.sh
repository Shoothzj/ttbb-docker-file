# copy
cp /opt/sh/cassandra-stand-alone/conf/cassandra.yaml /opt/sh/cassandra/conf/cassandra.yaml

# 换行
echo "" >> /opt/sh/cassandra/conf/cassandra.yaml
echo "" >> /opt/sh/cassandra/conf/cassandra.yaml

## 修改seed
##           - seeds: "127.0.0.1:7000"



eth0_ip=`ifconfig eth0|grep inet|awk '{print $2}'`
echo -n '          - seeds: "' >> /opt/sh/cassandra/conf/cassandra.yaml
echo -n "$eth0_ip" >> /opt/sh/cassandra/conf/cassandra.yaml
echo -n ':7000"' >> /opt/sh/cassandra/conf/cassandra.yaml
/opt/sh/cassandra/bin/cassandra -R
tail -f /dev/null
