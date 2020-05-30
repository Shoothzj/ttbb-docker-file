# docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -d ttbb/pulsar:stand-alone
# winpty docker run -p 6650:6650 -p 2181:2181 -p 3181:3181 -p 8080:8080 -p 4181:4181 -d ttbb/pulsar:stand-alone
FROM ttbb/mysql:nake

COPY scripts /opt/sh/scripts

RUN chmod 755 /opt/sh/scripts/start.sh

CMD [ "/bin/bash", "-cx", "/opt/sh/scripts/start.sh" ]