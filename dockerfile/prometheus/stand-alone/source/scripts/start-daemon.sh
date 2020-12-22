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

if [ $STORAGE_TSDB_RETENTION_TIME ]; then
    PROM_PARAM="$PROM_PARAM --storage.tsdb.retention.time=$STORAGE_TSDB_RETENTION_TIME"
else
    PROM_PARAM="$PROM_PARAM --storage.tsdb.retention.time=1d"
fi
if [ $STORAGE_TSDB_RETENTION_SIZE ]; then
    PROM_PARAM="$PROM_PARAM --storage.tsdb.retention.size=$STORAGE_TSDB_RETENTION_SIZE"
else
    PROM_PARAM="$PROM_PARAM --storage.tsdb.retention.size=5GB"
fi


nohup $PROM_HOME/prometheus $PROM_PARAM --config.file=$PROM_HOME/prometheus.yml >$PROM_HOME/prometheus.log 2>$PROM_HOME/prometheus_error.log &