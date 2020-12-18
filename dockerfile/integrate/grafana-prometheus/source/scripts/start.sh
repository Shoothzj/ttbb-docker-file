cp -f /opt/sh/conf/* /opt/sh/prometheus
bash /opt/sh/prometheus/hzj/start-daemon.sh
grafana/bin/grafana-server -homepath grafana web