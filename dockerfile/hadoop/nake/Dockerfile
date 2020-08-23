FROM ttbb/base:jdk11-ssh

RUN wget https://downloads.apache.org/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz  && \
mkdir -p /opt/sh/hadoop && \
tar -xf hadoop-3.3.0.tar.gz -C /opt/sh/hadoop --strip-components 1 && \
rm -rf hadoop-3.3.0.tar.gz && \
rm -rf /opt/sh/hadoop/share/doc && \
echo "export HADOOP_HOME='/opt/sh/hadoop'" >> /etc/profile && \
echo "export HDFS_NAMENODE_USER=root" >> /etc/profile && \
echo "export HDFS_DATANODE_USER=root" >> /etc/profile && \
echo "export HDFS_SECONDARYNAMENODE_USER=root" >> /etc/profile && \
echo "export YARN_RESOURCEMANAGER_USER=root" >> /etc/profile && \
echo "export YARN_NODEMANAGER_USER=root" >> /etc/profile

WORKDIR /opt/sh/hadoop