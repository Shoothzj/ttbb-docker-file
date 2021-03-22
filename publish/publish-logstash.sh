DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh logstash nake
bash $DIR/../build-push.sh logstash stand-alone