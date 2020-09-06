cd /opt/sh/grafana
/usr/local/bin/dumb-init /opt/sh/grafana/bin/grafana-server web
tail -f /dev/null