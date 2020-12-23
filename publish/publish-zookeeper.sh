DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh zookeeper nake
bash $DIR/../build-push.sh zookeeper stand-alone
bash $DIR/../build-push.sh zookeeper cluster