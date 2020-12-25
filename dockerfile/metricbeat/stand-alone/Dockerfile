FROM ttbb/metricbeat:nake

COPY source /opt/sh/metricbeat/hzj

CMD ["/usr/local/bin/dumb-init", "bash", "-vx","/opt/sh/metricbeat/hzj/scripts/start.sh"]