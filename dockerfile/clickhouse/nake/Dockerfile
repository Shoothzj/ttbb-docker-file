# ttbb/clickhouse:nake
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN yum install -y yum-utils && \
rpm --import https://repo.clickhouse.tech/CLICKHOUSE-KEY.GPG && \
yum-config-manager --add-repo https://repo.clickhouse.tech/rpm/clickhouse.repo && \
yum install -y clickhouse-server clickhouse-client && \
chown -R sh:sh /opt/sh

USER sh
