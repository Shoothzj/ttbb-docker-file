# docker run -p 8080:8080 -p 11800:11800 -p 12800:12800 -it ttbb/skywalking:nake bash
# winpty docker run -p 8080:8080 -p 11800:11800 -p 12800:12800 -it ttbb/skywalking:nake bash
# docker run -e SW_STORAGE='elasticsearch7' -e SW_STORAGE_ES_CLUSTER_NODES='****:9200' -p 8080:8080 -p 11800:11800 -p 12800:12800 -d ttbb/skywalking:stand-alone-8-3-0
FROM ttbb/base:jdk11

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://archive.apache.org/dist/skywalking/8.3.0/apache-skywalking-apm-es7-8.3.0.tar.gz && \
mkdir skywalking && \
tar -xf apache-skywalking-apm-es7-8.3.0.tar.gz -C skywalking --strip-components 1 && \
rm -rf apache-skywalking-apm-es7-8.3.0.tar.gz

WORKDIR /opt/sh/skywalking

COPY source /opt/sh/skywalking/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/skywalking/hzj/scripts/start.sh"]