#docker run -p 9092:9092 -d ttbb/kafka:stand-alone
FROM ttbb/kafka:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/scripts/start.sh"]