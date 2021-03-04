# ttbb/clickhouse:nake
# curl https://api.github.com/repos/ClickHouse/ClickHouse/tags 2>/dev/null | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | head -n 1
# now version 21.3.1.6159
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN mkdir -p /opt/sh/clickhouse/common-static && \
mkdir -p /opt/sh/clickhouse/client && \
mkdir -p /opt/sh/clickhouse/server && \
curl -OL https://github.com/ClickHouse/ClickHouse/releases/download/v20.8.14.4-lts/clickhouse-common-static-20.8.14.4.tgz && \
curl -OL https://github.com/ClickHouse/ClickHouse/releases/download/v20.8.14.4-lts/clickhouse-client-20.8.14.4.tgz && \
curl -OL https://github.com/ClickHouse/ClickHouse/releases/download/v20.8.14.4-lts/clickhouse-server-20.8.14.4.tgz && \
tar -xf clickhouse-common-static-20.8.14.4.tgz -C /opt/sh/clickhouse/common-static --strip-components 2 && \
/opt/sh/clickhouse/common-static/install/doinst.sh && \
tar -xf clickhouse-client-20.8.14.4.tgz -C /opt/sh/clickhouse/client --strip-components 2 && \
/opt/sh/clickhouse/client/install/doinst.sh && \
tar -xf clickhouse-server-20.8.14.4.tgz -C /opt/sh/clickhouse/server --strip-components 2 && \
/opt/sh/clickhouse/server/install/doinst.sh && \
rm -rf clickhouse-common-static-20.8.14.4.tgz && \
rm -rf clickhouse-client-20.8.14.4.tgz && \
rm -rf clickhouse-server-20.8.14.4.tgz

WORKDIR /opt/sh/clickhouse