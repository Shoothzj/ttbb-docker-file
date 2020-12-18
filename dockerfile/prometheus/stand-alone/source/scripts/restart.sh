kill -15 `ps -ef|grep prometheus|grep -v grep|awk '{print $2}'`

/opt/sh/prometheus/prometheus --config.file=/opt/sh/prometheus/prometheus.yml