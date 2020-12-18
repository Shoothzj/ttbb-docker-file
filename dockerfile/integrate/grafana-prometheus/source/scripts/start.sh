cp -f /opt/sh/conf/* /opt/sh/prometheus
nohup prometheus/prometheus --config.file=prometheus/prometheus.yml >prometheus.log 2>prometheus_error.log &
grafana/bin/grafana-server -homepath grafana web