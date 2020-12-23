DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/publish-base.sh
bash $DIR/publish-apollo.sh
bash $DIR/publish-bookkeeper.sh
bash $DIR/publish-cassandra.sh
bash $DIR/publish-chronograf.sh
bash $DIR/publish-clickhouse.sh
bash $DIR/publish-compile.sh
bash $DIR/publish-coredns.sh
bash $DIR/publish-druid.sh
bash $DIR/publish-elasticsearch.sh
bash $DIR/publish-grafana.sh
bash $DIR/publish-nginx.sh
bash $DIR/publish-other.sh
bash $DIR/publish-python.sh