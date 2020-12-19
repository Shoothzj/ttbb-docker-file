DIR="$( cd "$( dirname "$0"  )" && pwd  )"
PROM_HOME="$( cd "$DIR/../.." && pwd  )"
PROM_CONFIG="$PROM_HOME/prometheus.yml"
>$PROM_CONFIG
echo "global:" >> $PROM_CONFIG
if [ $GLOBAL_SCRAPE_INTERVAL ]; then
    echo "  scrape_interval: $GLOBAL_SCRAPE_INTERVAL" >> $PROM_CONFIG
else
    echo "  scrape_interval: 15s" >> $PROM_CONFIG
fi
if [ $GLOBAL_EVALUATION_INTERVAL ]; then
    echo "  evaluation_interval: $GLOBAL_EVALUATION_INTERVAL" >> $PROM_CONFIG
else
    echo "  evaluation_interval: 15s" >> $PROM_CONFIG
fi
if [ $GLOBAL_SCRAPE_TIMEOUT ]; then
    echo "  scrape_timeout: $GLOBAL_SCRAPE_TIMEOUT" >> $PROM_CONFIG
else
    echo "  scrape_timeout: 10s" >> $PROM_CONFIG
fi
echo 'scrape_configs:' >> $PROM_CONFIG
echo '  - job_name: "prometheus"' >> $PROM_CONFIG
echo '    static_configs:' >> $PROM_CONFIG
echo '      - targets: ["localhost:9090"]' >> $PROM_CONFIG

python3 $PROM_HOME/hzj/scripts/adapt_config.py $PROM_HOME

nohup $PROM_HOME/prometheus --config.file=$PROM_HOME/prometheus.yml >$PROM_HOME/prometheus.log 2>$PROM_HOME/prometheus_error.log &