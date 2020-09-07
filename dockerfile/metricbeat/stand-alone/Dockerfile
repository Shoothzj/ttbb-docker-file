FROM ttbb/metricbeat:nake

COPY source /opt/sh

CMD ["/usr/local/bin/dumb-init", "bash", "-vx", "/opt/sh/scripts/start.sh"]