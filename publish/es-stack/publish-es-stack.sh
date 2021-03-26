DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../../build-push.sh filebeat nake
bash $DIR/../../build-push.sh filebeat stand-alone

bash $DIR/../../build-push.sh metricbeat nake
bash $DIR/../../build-push.sh metricbeat stand-alone

bash $DIR/../../build-push.sh heartbeat nake
bash $DIR/../../build-push.sh heartbeat stand-alone

bash $DIR/../../build-push.sh elasticsearch nake
bash $DIR/../../build-push.sh elasticsearch stand-alone
bash $DIR/../../build-push.sh elasticsearch cluster

bash $DIR/../../build-push.sh kibana nake
bash $DIR/../../build-push.sh kibana stand-alone

bash $DIR/../../build-push.sh logstash nake
bash $DIR/../../build-push.sh logstash stand-alone