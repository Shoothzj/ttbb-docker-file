# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -d ttbb/pulsar:stand-alone
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -d ttbb/pulsar:stand-alone
FROM ttbb/skywalking:nake

COPY source /opt/sh/skywalking/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/skywalking/hzj/scripts/start.sh"]