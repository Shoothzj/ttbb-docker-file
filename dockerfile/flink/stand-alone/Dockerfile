# docker run -p 6123:6123 -p 8081:8081 -d ttbb/flink:stand-alone
FROM ttbb/flink:nake

COPY scripts /opt/sh/scripts

ENTRYPOINT ["/usr/local/bin/dumb-init", "bash", "/opt/sh/scripts/start.sh"]
