/usr/sbin/sshd
source /etc/profile
cp $HADOOP_HOME/hzj/conf/core-site.xml $HADOOP_HOME/etc/hadoop/core-site.xml
cp $HADOOP_HOME/hzj/conf/hdfs-site.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml
$HADOOP_HOME/bin/hdfs namenode -format
$HADOOP_HOME/sbin/start-dfs.sh
tail -f /dev/null