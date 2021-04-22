# docker run -p 7070:8080 -p 11800:11800 -p 12800:12800 -d ttbb/skywalking:debug
# winpty docker run -p 7070:8080 -p 11800:11800 -p 12800:12800 -d ttbb/skywalking:debug
FROM ttbb/skywalking:stand-alone

COPY source/conf/application.yaml /opt/sh/skywalking/config/application.yaml
COPY source/conf/log4j2.xml /opt/sh/skywalking/config/log4j2.xml

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/skywalking/hzj/scripts/start.sh"]