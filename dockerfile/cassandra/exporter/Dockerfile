# ttbb/mysql:exporter
FROM ttbb/compile:jdk8 AS compiler

LABEL maintainer="shoothzj@gmail.com"

RUN git clone https://github.com/criteo/cassandra_exporter.git && \
cd cassandra_exporter && \
gradle build

FROM ttbb/base

COPY --from=compiler /opt/sh/cassandra_exporter/build/libs/cassandra_exporter-2.3.5.jar /opt/sh/