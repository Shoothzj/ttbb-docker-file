FROM ttbb/filebeat:nake

LABEL maintainer="shoothzj@gmail.com"

COPY source /opt/sh/filebeat/hzj

ENV FILEBEAT_HOME /opt/sh/filebeat

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/filebeat/hzj/scripts/start.sh"]