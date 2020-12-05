# docker run ttbb/apollo:admin
FROM ttbb/base:jdk8

COPY source /opt/sh

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.7.1/apollo-adminservice-1.7.1-github.zip  && \
unzip apollo-adminservice-1.7.1-github.zip && \
rm -rf apollo-adminservice-1.7.1-github.zip && \
cp /opt/sh/conf/apollo-admin.properties /opt/sh/config/application-github.properties

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]