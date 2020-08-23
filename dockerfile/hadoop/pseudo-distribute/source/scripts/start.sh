/usr/bin/sshd
source /etc/profile
cp /opt/sh/support/conf/core-site.xml /opt/sh/hadoop/etc/hadoop/core-site.xml
cp /opt/sh/support/conf/hdfs-site.xml /opt/sh/hadoop/etc/hadoop/hdfs-site.xml
/opt/sh/hadoop/bin/hdfs namenode -format
/opt/sh/hadoop/sbin/start-dfs.sh
tail -f /dev/null