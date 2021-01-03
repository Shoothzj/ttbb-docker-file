# ttbb/mysql:exporter
FROM ttbb/base:goc AS compiler

LABEL maintainer="shoothzj@gmail.com"

RUN git clone https://github.com/prometheus/mysqld_exporter.git && \
cd mysqld_exporter && \
make

FROM ttbb/base

COPY --from=compiler /opt/sh/mysqld_exporter/mysqld_exporter /opt/sh/