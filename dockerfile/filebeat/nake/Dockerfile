FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.7.1-x86_64.rpm && \
rpm -i filebeat-7.7.1-x86_64.rpm && \
rm -rf filebeat-7.7.1-x86_64.rpm