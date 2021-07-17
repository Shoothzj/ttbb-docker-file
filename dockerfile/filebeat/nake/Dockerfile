# docker run -it ttbb/filebeat:nake bash
# docker run -it -v /:/hostfs ttbb/filebeat:nake bash
# docker run -it --network=host -v /:/hostfs ttbb/filebeat:nake bash
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

ARG download=7.13.3-linux-x86_64

RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-$download.tar.gz && \
mkdir /opt/sh/filebeat && \
tar -xf filebeat-$download.tar.gz -C /opt/sh/filebeat --strip-components 1 && \
rm -rf /opt/sh/filebeat-$download.tar.gz

WORKDIR /opt/sh/filebeat