FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/spark/spark-3.1.1/spark-3.1.1-bin-hadoop3.2.tgz  && \
mkdir -p /opt/sh/spark && \
tar -xf spark-3.1.1-bin-hadoop3.2.tgz -C /opt/sh/spark --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/spark/bin" >> /etc/bashrc && \
rm -rf spark-3.1.1-bin-hadoop3.2.tgz

COPY source /opt/sh/spark/hzj

WORKDIR /opt/sh/spark

ENV SPARK_HOME /opt/sh/spark

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/spark/hzj/scripts/start.sh"]