DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh grafana nake
bash $DIR/../build-push.sh grafana stand-alone