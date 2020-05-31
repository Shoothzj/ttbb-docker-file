# docker run -p 4222:4222 -p 9999:9999 -it ttbb/influxdb:beta bash
FROM ttbb/base

WORKDIR /opt/sh

RUN wget https://dl.influxdata.com/influxdb/releases/influxdb_2.0.0-beta.10_linux_amd64.tar.gz  && \
mkdir -p /opt/sh/influxdb && \
tar -xf /opt/sh/influxdb_2.0.0-beta.10_linux_amd64.tar.gz -C /opt/sh/influxdb --strip-components 1 && \
chown -R sh:sh /opt/sh && \
rm -rf /opt/sh/influxdb_2.0.0-beta.10_linux_amd64.tar.gz && \
echo "export PATH=$PATH:/opt/sh/influxdb" >> /etc/bashrc