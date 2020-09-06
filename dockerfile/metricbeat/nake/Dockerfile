FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.9.1-linux-x86_64.tar.gz && \
mkdir /opt/sh/metricbeat && \
tar -xf metricbeat-7.9.1-linux-x86_64.tar.gz -C /opt/sh/metricbeat --strip-components 1 && \
rm -rf /opt/sh/metricbeat-7.9.1-linux-x86_64.tar.gz

WORKDIR /opt/sh/metricbeat