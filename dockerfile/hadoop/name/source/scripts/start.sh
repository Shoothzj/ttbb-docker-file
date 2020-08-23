/usr/bin/sshd
sleep 3
source /etc/profile
cp /opt/sh/support/conf/core-site.xml /opt/sh/hadoop/etc/hadoop/core-site.xml

# 这个是集群搭建，并不满足HA，它给Hadoop集群引入了NameNode的单点故障
/opt/sh/hadoop/bin/hdfs namenode -format hadoop
/opt/sh/hadoop/bin/hdfs --daemon start namenode

tail -f /dev/null