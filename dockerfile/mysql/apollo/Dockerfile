# docker run -p 3306:3306 -d ttbb/mysql:apollo
# winpty docker run -p 3306:3306 -d ttbb/mysql:apollo
FROM ttbb/mysql:nake

COPY scripts /opt/sh/scripts

RUN chmod 755 /opt/sh/scripts/start.sh

CMD [ "/bin/bash", "-cx", "/opt/sh/scripts/start.sh" ]