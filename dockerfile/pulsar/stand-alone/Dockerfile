# docker run -d ttbb/pulsar:stand-alone
# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -m 4G -d ttbb/pulsar:stand-alone
# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -p 30302:30302 -m 4G -d ttbb/pulsar:stand-alone
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -d ttbb/pulsar:stand-alone
FROM ttbb/pulsar:nake

COPY source /opt/sh/pulsar/hzj

# 低内存占用运行
ENV PULSAR_MEM "-Xms128M -Xmx128M -XX:MaxDirectMemorySize=128M"

ENV OPTS "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:30302"

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/pulsar/hzj/scripts/start.sh"]