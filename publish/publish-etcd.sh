DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh etcd nake
bash $DIR/../build-push.sh etcd stand-alone
bash $DIR/../build-push.sh etcd pseudo