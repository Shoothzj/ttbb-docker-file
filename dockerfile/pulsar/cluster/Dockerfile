# docker run -e ZK_ADDR=172.16.0.56:2181,172.16.0.55:2181,172.16.0.54:2181 -d ttbb/pulsar:cluster
FROM ttbb/pulsar:nake

COPY source /opt/sh/pulsar-cluster

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/pulsar-cluster/scripts/start.sh"]