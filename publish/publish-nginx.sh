DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh nginx nake
bash $DIR/../build-push.sh nginx openresty
bash $DIR/../build-push.sh nginx print-body