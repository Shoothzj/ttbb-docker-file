FROM ttbb/pulsar:nake

COPY source /opt/sh/pulsar/hzj

RUN wget https://archive.apache.org/dist/pulsar/pulsar-2.7.1/connectors/pulsar-io-kafka-2.7.1.nar && \
dnf install -y tree && \
dnf clean all

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/pulsar/hzj/scripts/start.sh"]