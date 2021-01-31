# docker run ttbb/apollo:admin
# docker run -it ttbb/apollo:admin bash
FROM ttbb/base:jdk8

WORKDIR /opt/sh/apollo-admin

COPY source /opt/sh/apollo-admin/hzj

RUN wget https://github.com/ctripcorp/apollo/releases/download/v1.7.2/apollo-adminservice-1.7.2-github.zip  && \
unzip apollo-adminservice-1.7.2-github.zip && \
rm -rf apollo-adminservice-1.7.2-github.zip && \
cp hzj/conf/apollo-admin.properties config/application-github.properties && \
cp hzj/conf/apollo-adminservice.conf apollo-adminservice.conf

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/apollo-admin/hzj/scripts/start.sh"]