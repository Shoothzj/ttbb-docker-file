# current version ttbb/rabbitmq:nake
# download url: https://www.rabbitmq.com/releases/rabbitmq-server/
FROM ttbb/base:erlang

LABEL maintainer="shoothzj@gmail.com"

RUN wget https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.8.7/rabbitmq-server-generic-unix-3.8.7.tar.xz && \
tar -xf rabbitmq-server-generic-unix-3.8.7.tar.xz && \
rm -rf /opt/sh/rabbitmq-server-generic-unix-3.8.7.tar.xz && \
echo "export RABBITMQ_HOME=$PATH:/opt/sh/rabbitmq_server-3.8.7" >> /etc/bashrc && \
echo "export PATH=$PATH:/opt/sh/rabbitmq_server-3.8.7/sbin" >> /etc/bashrc