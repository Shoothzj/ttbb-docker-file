FROM ttbb/base:jdk11-ssh

RUN wget https://mirror.bit.edu.cn/apache/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz  && \
mkdir -p /opt/sh/hadoop && \
tar -xf hadoop-3.3.0.tar.gz -C /opt/sh/hadoop --strip-components 1 && \
rm -rf hadoop-3.3.0.tar.gz && \
rm -rf /opt/sh/hadoop/share/doc