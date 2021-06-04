# docker run -p 27017:27017 ttbb/mongo:stand-alone
# docker run -p 27017:27017 -d ttbb/mongo:stand-alone
FROM ttbb/mongo:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/mongo/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/mongo/hzj/scripts/start.sh"]