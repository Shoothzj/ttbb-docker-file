DIR="$( cd "$( dirname "$0"  )" && pwd  )"
PROM_HOME="$( cd "$DIR/../.." && pwd  )"
nohup $PROM_HOME/prometheus --config.file=$PROM_HOME/prometheus.yml >$PROM_HOME/prometheus.log 2>$PROM_HOME/prometheus_error.log &