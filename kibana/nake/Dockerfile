#current version ttbb/kibana:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch

COPY kibana.repo /etc/yum.repos.d/kibana.repo

RUN dnf -y install kibana