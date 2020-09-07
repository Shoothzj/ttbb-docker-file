# docker run -p 8086:8086 -p 8088:8088 -it ttbb/influxdb:nake bash
FROM ttbb/base

RUN wget https://dl.influxdata.com/kapacitor/releases/kapacitor-1.5.6_linux_amd64.tar.gz  && \
mkdir -p /opt/sh/kapacitor && \
tar -xf kapacitor-1.5.6_linux_amd64.tar.gz -C /opt/sh/kapacitor --strip-components 2 && \
rm -rf kapacitor-1.5.6_linux_amd64.tar.gz && \
echo "export PATH=$PATH:/opt/sh/kapacitor/usr/bin" >> /etc/bashrc

WORKDIR /opt/sh/kapacitor