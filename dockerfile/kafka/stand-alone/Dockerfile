# docker run -d ttbb/kafka:stand-alone
# docker run -p 9092:9092 -d ttbb/kafka:stand-alone
# docker run -p 9092:9092 -it ttbb/kafka:stand-alone bash
# docker run -e KAFKA_ADVERTISE_ADDRESS=localhost -p 9092:9092 -d ttbb/kafka:stand-alone
FROM ttbb/kafka:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/kafka/hzj

WORKDIR /opt/sh/kafka

ENV KAFKA_HOME /opt/sh/kafka

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/kafka/hzj/scripts/start.sh"]