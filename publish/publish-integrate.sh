DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh integrate apisix
bash $DIR/../build-push.sh integrate apollo
bash $DIR/../build-push.sh integrate elasticsearch-kibana
bash $DIR/../build-push.sh integrate mysql-exporter