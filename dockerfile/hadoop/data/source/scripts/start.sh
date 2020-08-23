/usr/bin/sshd
sleep 3
source /etc/profile
cp /opt/sh/support/conf/core-site.xml /opt/sh/hadoop/etc/hadoop/core-site.xml
cp /opt/sh/support/conf/hdfs-site.xml /opt/sh/hadoop/etc/hadoop/hdfs-site.xml
/opt/sh/hadoop/bin/hdfs --daemon start datanode
tail -f /dev/null