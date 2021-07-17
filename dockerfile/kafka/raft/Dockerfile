# docker run -d ttbb/kafka:raft
# docker run -p 9092:9092 -d ttbb/kafka:raft
# docker run -p 9092:9092 -it ttbb/kafka:raft bash
# docker run -e KAFKA_ADVERTISE_ADDRESS=localhost -p 9092:9092 -d ttbb/kafka:raft
FROM ttbb/kafka:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/kafka/hzj

WORKDIR /opt/sh/kafka

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/kafka/hzj/scripts/start.sh"]