# docker run -p 27017:27017 -d ttbb/mongo:stand-alone
FROM ttbb/mongo:nake

LABEL maintainer="shoothzj@gmail.com"

COPY scripts /opt/sh/mongo/scripts

RUN chmod 755 /opt/sh/mongo/scripts/start.sh

CMD [ "/bin/bash", "-cx", "/opt/sh/mongo/scripts/start.sh" ]