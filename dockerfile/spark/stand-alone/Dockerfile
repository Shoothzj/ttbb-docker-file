FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/support

RUN wget https://downloads.apache.org/spark/spark-3.0.0/spark-3.0.0-bin-hadoop3.2.tgz  && \
mkdir -p /opt/sh/spark && \
tar -xf spark-3.0.0-bin-hadoop3.2.tgz -C /opt/sh/spark --strip-components 1 && \
echo "export PATH=$PATH:/opt/sh/spark/bin" >> /etc/bashrc && \
rm -rf spark-3.0.0-bin-hadoop3.2.tgz

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/support/scripts/start.sh"]