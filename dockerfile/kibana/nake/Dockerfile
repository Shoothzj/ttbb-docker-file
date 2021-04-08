#current version ttbb/kibana:nake
# docker run -it ttbb/kibana:nake bash
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-7.12.0-linux-x86_64.tar.gz && \
mkdir /opt/sh/kibana && \
tar -xf kibana-7.12.0-linux-x86_64.tar.gz -C /opt/sh/kibana --strip-components 1 && \
rm -rf kibana-7.12.0-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

WORKDIR /opt/sh/kibana