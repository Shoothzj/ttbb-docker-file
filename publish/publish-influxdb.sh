DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh influxdb nake
bash $DIR/../build-push.sh influxdb stand-alone
bash $DIR/../build-push.sh influxdb stand-alone-1-8