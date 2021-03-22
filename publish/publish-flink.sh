DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh flink nake
bash $DIR/../build-push.sh flink stand-alone
bash $DIR/../build-push.sh flink master
bash $DIR/../build-push.sh flink worker