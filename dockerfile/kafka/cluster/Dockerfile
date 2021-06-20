#docker run -p 9092:9092 -d ttbb/kafka:stand-alone
FROM ttbb/kafka:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/kafka/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/kafka/hzj/scripts/start.sh"]