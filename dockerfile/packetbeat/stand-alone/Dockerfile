FROM ttbb/packetbeat:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/packetbeat/hzj

ENV PACKETBEAT_HOME /opt/sh/packetbeat

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/packetbeat/hzj/scripts/start.sh"]