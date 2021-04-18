# docker run ttbb/apollo:config
FROM ttbb/base:jdk8

WORKDIR /opt/sh/apollo-config

COPY source /opt/sh/apollo-config/hzj

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.8.1/apollo-configservice-1.8.1-github.zip  && \
unzip apollo-configservice-1.8.1-github.zip && \
rm -rf apollo-configservice-1.8.1-github.zip && \
cp hzj/conf/apollo-config.properties config/application-github.properties && \
cp hzj/conf/apollo-configservice.conf apollo-configservice.conf

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo-config/hzj/scripts/start.sh"]
