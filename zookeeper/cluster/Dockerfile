# docker run -e ZOOKEEPER_NUM=3 -e HOSTNAME=test-zookeeper-0 -d ttbb/zookeeper:cluster
FROM ttbb/zookeeper:nake

COPY source /opt/sh/zk-cluster

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/zk-cluster/scripts/start.sh"]