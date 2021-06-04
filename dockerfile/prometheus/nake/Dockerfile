# ttbb/prometheus:nake
# docker run -p 9090:9090 -it ttbb/prometheus:nake bash
FROM ttbb/base

WORKDIR /opt/sh

ARG version=2.27.1

RUN wget https://github.com/prometheus/prometheus/releases/download/v$version/prometheus-$version.linux-amd64.tar.gz  && \
mkdir -p prometheus && \
tar -xf prometheus-$version.linux-amd64.tar.gz -C prometheus --strip-components 1 && \
rm -rf prometheus-$version.linux-amd64.tar.gz

WORKDIR /opt/sh/prometheus