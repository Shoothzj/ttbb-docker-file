cp /opt/sh/conf/* /opt/sh/prometheus
/opt/sh/prometheus/prometheus --config.file=/opt/sh/prometheus/prometheus.yml
tail -f /dev/null