FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.9.1-linux-x86_64.tar.gz && \
mkdir /opt/sh/filebeat && \
tar -xf filebeat-7.9.1-linux-x86_64.tar.gz -C /opt/sh/filebeat --strip-components 1 && \
rm -rf /opt/sh/filebeat-7.9.1-linux-x86_64.tar.gz

WORKDIR /opt/sh/filebeat