# docker run -p 8086:8086 -p 8088:8088 -it ttbb/influxdb:nake bash
FROM ttbb/base

COPY source /opt/sh/influxdb/hzj

ARG download=1.8.5_linux_amd64

RUN wget https://dl.influxdata.com/influxdb/releases/influxdb-$download.tar.gz  && \
mkdir -p /opt/sh/influxdb && \
tar -xf influxdb-$download.tar.gz -C /opt/sh/influxdb --strip-components 2 && \
rm -rf influxdb-$download.tar.gz && \
echo "export PATH=$PATH:/opt/sh/influxdb/usr/bin" >> /etc/bashrc

WORKDIR /opt/sh/influxdb

ENV INFLUX_HOME /opt/sh/influxdb

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/influxdb/hzj/scripts/start.sh"]