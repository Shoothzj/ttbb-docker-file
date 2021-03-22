# ttbb/flink:nake
FROM ttbb/base:jdk11

RUN wget https://downloads.apache.org/flink/flink-1.12.2/flink-1.12.2-bin-scala_2.12.tgz  && \
mkdir -p /opt/sh/flink && \
tar -xf flink-1.12.2-bin-scala_2.12.tgz -C /opt/sh/flink --strip-components 1 && \
rm -rf flink-1.12.2-bin-scala_2.12.tgz

WORKDIR /opt/sh/flink