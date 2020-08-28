# ttbb/prometheus:nake
# docker run -p 9090:9090 -it ttbb/prometheus:nake bash
FROM ttbb/base

RUN wget https://github.com/prometheus/prometheus/releases/download/v2.20.1/prometheus-2.20.1.linux-amd64.tar.gz  && \
mkdir -p /opt/sh/prometheus && \
tar -xf prometheus-2.20.1.linux-amd64.tar.gz -C /opt/sh/prometheus --strip-components 1 && \
rm -rf prometheus-2.20.1.linux-amd64.tar.gz

WORKDIR /opt/sh/prometheus