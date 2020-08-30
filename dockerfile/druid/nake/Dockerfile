# docker run -p 8888:8888 -it ttbb/base:jdk8 bash
# ttbb/druid:nake
FROM ttbb/base:jdk8

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://downloads.apache.org/druid/0.19.0/apache-druid-0.19.0-bin.tar.gz && \
mkdir /opt/sh/druid && \
tar -xf apache-druid-0.19.0-bin.tar.gz -C /opt/sh/druid --strip-components 1 && \
rm -rf /opt/sh/apache-druid-0.19.0-bin.tar.gz

WORKDIR /opt/sh/druid
