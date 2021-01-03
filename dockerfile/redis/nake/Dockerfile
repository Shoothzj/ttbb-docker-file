# ttbb/redis:nake
FROM ttbb/compile:c AS compiler

LABEL maintainer="shoothzj@gmail.com"

WORKDIR /opt/sh

RUN wget http://download.redis.io/releases/redis-6.0.9.tar.gz && \
mkdir redis && \
tar -xf redis-6.0.9.tar.gz -C redis --strip-components 1 && \
cd redis && \
make


FROM ttbb/base

COPY --from=compiler /opt/sh/redis/src/redis-sentinel /opt/sh/redis
COPY --from=compiler /opt/sh/redis/src/redis-cli /opt/sh/redis
COPY --from=compiler /opt/sh/redis/src/redis-benchmark /opt/sh/redis
COPY --from=compiler /opt/sh/redis/src/redis-check-rdb /opt/sh/redis
COPY --from=compiler /opt/sh/redis/src/redis-check-aof /opt/sh/redis