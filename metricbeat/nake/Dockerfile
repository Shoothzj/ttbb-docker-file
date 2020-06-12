FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-7.7.1-x86_64.rpm && \
rpm -i metricbeat-7.7.1-x86_64.rpm && \
rm -rf metricbeat-7.7.1-x86_64.rpm