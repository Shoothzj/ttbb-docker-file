FROM ttbb/flink:nake

COPY source /opt/sh/support

ENTRYPOINT ["/usr/local/bin/dumb-init", "bash", "/opt/sh/support/scripts/start.sh"]
