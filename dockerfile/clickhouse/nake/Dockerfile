# ttbb/clickhouse:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN yum install -y yum-utils && \
rpm --import https://repo.clickhouse.tech/CLICKHOUSE-KEY.GPG && \
yum-config-manager --add-repo https://repo.clickhouse.tech/rpm/clickhouse.repo && \
yum install -y clickhouse-server clickhouse-client && \
rm -rf /opt/sh/elasticsearch-7.8.0-linux-x86_64.tar.gz && \
chown -R sh:sh /opt/sh

USER sh
