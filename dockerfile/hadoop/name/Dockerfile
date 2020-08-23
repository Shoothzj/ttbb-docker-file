FROM ttbb/hadoop:nake

COPY source /opt/sh/support

ENTRYPOINT ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/support/scripts/start.sh"]
