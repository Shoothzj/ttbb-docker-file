# docker run -p 8086:8086 -p 8088:8088 -it ttbb/servicecomb:nake bash
FROM ttbb/base

RUN wget https://downloads.apache.org/servicecomb/servicecomb-service-center/1.3.0/apache-servicecomb-service-center-1.3.0-linux-amd64.tar.gz  && \
mkdir -p /opt/sh/servicecomb && \
tar -xf apache-servicecomb-service-center-1.3.0-linux-amd64.tar.gz -C /opt/sh/servicecomb --strip-components 1

WORKDIR /opt/sh/servicecomb