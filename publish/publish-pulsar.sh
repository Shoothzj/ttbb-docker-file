DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh pulsar nake
bash $DIR/../build-push.sh pulsar stand-alone
bash $DIR/../build-push.sh pulsar cluster
bash $DIR/../build-push.sh pulsar function
bash $DIR/../build-push.sh pulsar manager