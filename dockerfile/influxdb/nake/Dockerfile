# docker run -p 8086:8086 -p 8088:8088 -it ttbb/influxdb:nake bash
FROM ttbb/base

WORKDIR /opt/sh

ARG download=2.0.4-linux-amd64

RUN wget https://dl.influxdata.com/influxdb/releases/influxdb2-$download.tar.gz  && \
mkdir -p /opt/sh/influxdb && \
tar -xf /opt/sh/influxdb2-$download.tar.gz -C /opt/sh/influxdb --strip-components 1 && \
chown -R sh:sh /opt/sh && \
rm -rf /opt/sh/influxdb2-$download.tar.gz && \
echo "export PATH=$PATH:/opt/sh/influxdb" >> /etc/bashrc

WORKDIR /opt/sh/influxdb