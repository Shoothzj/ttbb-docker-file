# docker run -e ZK_ADDR=172.16.0.56:2181,172.16.0.55:2181,172.16.0.54:2181 -e HOSTNAME=test-bookkeeper-0 -d ttbb/bookkeeper:cluster
FROM ttbb/bookkeeper:nake

COPY source /opt/sh/bk-cluster

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/bk-cluster/scripts/start.sh"]