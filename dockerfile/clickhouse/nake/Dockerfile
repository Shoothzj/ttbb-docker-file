# ttbb/clickhouse:nake
# export LATEST_VERSION=`curl https://api.github.com/repos/ClickHouse/ClickHouse/tags 2>/dev/null | grep -Eo '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | head -n 1`
# curl -O https://repo.clickhouse.tech/tgz/clickhouse-common-static-dbg-$LATEST_VERSION.tgz && \
# https://repo.clickhouse.tech/tgz/
# now version 20.2.1.2183
FROM ttbb/base

LABEL maintainer="shoothzj@gmail.com"

RUN export LATEST_VERSION=20.2.1.2183 && \
mkdir -p /opt/sh/clickhouse-common-static && \
mkdir -p /opt/sh/clickhouse-client && \
mkdir -p /opt/sh/clickhouse-server && \
curl -O https://repo.clickhouse.tech/tgz/clickhouse-common-static-$LATEST_VERSION.tgz && \
curl -O https://repo.clickhouse.tech/tgz/clickhouse-server-$LATEST_VERSION.tgz && \
curl -O https://repo.clickhouse.tech/tgz/clickhouse-client-$LATEST_VERSION.tgz && \
tar -xf clickhouse-common-static-$LATEST_VERSION.tgz -C /opt/sh/clickhouse-common-static --strip-components 2 && \
/opt/sh/clickhouse-common-static/install/doinst.sh && \
tar -xf clickhouse-client-$LATEST_VERSION.tgz -C /opt/sh/clickhouse-client --strip-components 2 && \
/opt/sh/clickhouse-client/install/doinst.sh && \
tar -xf clickhouse-server-$LATEST_VERSION.tgz -C /opt/sh/clickhouse-server --strip-components 2 && \
/opt/sh/clickhouse-server/install/doinst.sh