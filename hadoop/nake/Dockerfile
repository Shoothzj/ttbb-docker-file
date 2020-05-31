FROM ttbb/base:jdk8

RUN wget https://mirror.bit.edu.cn/apache/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz  && \
mkdir -p /opt/sh/hadoop && \
tar -xf hadoop-3.2.1.tar.gz -C /opt/sh/hadoop --strip-components 1 && \
rm -rf hadoop-3.2.1.tar.gz