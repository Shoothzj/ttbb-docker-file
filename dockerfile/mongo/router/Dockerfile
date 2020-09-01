# nohup /opt/sh/mongo/bin/mongod --config config/config.yaml  &
FROM ttbb/mongo:nake

COPY source /opt/sh/support

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/support/scripts/start.sh"]