nohup prometheus/prometheus --config.file=prometheus/prometheus.yml >prometheus.log 2>prometheus_error.log &
grafana/bin/grafana-server -homepath grafana web