# docker run -p 8086:8086 -p 8088:8088 -it ttbb/chronograf:nake bash
FROM ttbb/base

ARG download=1.8.10_linux_amd64

RUN wget https://dl.influxdata.com/chronograf/releases/chronograf-$download.tar.gz  && \
mkdir -p /opt/sh/chronograf && \
tar -xf chronograf-$download.tar.gz -C /opt/sh/chronograf --strip-components 2 && \
rm -rf chronograf-$download.tar.gz && \
echo "export PATH=$PATH:/opt/sh/chronograf/usr/bin" >> /etc/bashrc

WORKDIR /opt/sh/chronograf