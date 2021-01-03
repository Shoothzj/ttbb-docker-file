# ttbb/mysql:exporter
FROM ttbb/base:goc AS compiler

LABEL maintainer="shoothzj@gmail.com"

RUN git clone https://github.com/oliver006/redis_exporter.git && \
cd redis_exporter && \
go build .

FROM ttbb/base

COPY --from=compiler /opt/sh/redis_exporter/redis_exporter /opt/sh/