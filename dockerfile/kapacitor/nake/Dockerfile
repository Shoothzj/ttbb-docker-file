# docker run -p 8086:8086 -p 8088:8088 -it ttbb/influxdb:nake bash
FROM ttbb/base

ARG download=1.5.9_linux_amd64

RUN wget https://dl.influxdata.com/kapacitor/releases/kapacitor-$download.tar.gz  && \
mkdir -p /opt/sh/kapacitor && \
tar -xf kapacitor-$download.tar.gz -C /opt/sh/kapacitor --strip-components 2 && \
rm -rf kapacitor-$download.tar.gz && \
echo "export PATH=$PATH:/opt/sh/kapacitor/usr/bin" >> /etc/bashrc

WORKDIR /opt/sh/kapacitor