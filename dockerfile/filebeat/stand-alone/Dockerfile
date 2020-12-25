FROM ttbb/filebeat:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/filebeat/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/filebeat/hzj/scripts/start.sh"]