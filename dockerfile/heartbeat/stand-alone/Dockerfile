FROM ttbb/heartbeat:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/heartbeat/hzj

ENV HEARTBEAT_HOME /opt/sh/heartbeat

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/heartbeat/hzj/scripts/start.sh"]