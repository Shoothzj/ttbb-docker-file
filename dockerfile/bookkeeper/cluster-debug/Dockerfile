# docker run -p 3181:3181 -p 4181:4181 -p30301:30301 -d ttbb/bookkeeper:cluster-debug
FROM ttbb/bookkeeper:nake

RUN echo "advertisedAddress=127.0.0.1" >> /opt/sh/bookkeeper/conf/bk_server.conf

COPY source /opt/sh/bookkeeper/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/bookkeeper/hzj/scripts/start.sh"]
