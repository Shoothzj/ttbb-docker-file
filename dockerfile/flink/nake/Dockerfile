# ttbb/flink:nake
FROM ttbb/base:jdk14

RUN wget https://apache.website-solution.net/flink/flink-1.10.1/flink-1.10.1-bin-scala_2.12.tgz  && \
mkdir -p /opt/sh/flink && \
tar -xf flink-1.10.1-bin-scala_2.12.tgz -C /opt/sh/flink --strip-components 1 && \
rm -rf flink-1.10.1-bin-scala_2.12.tgz