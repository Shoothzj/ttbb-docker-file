DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh elasticsearch nake
bash $DIR/../build-push.sh elasticsearch stand-alone
bash $DIR/../build-push.sh elasticsearch cluster