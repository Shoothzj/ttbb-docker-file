DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh prometheus nake
bash $DIR/../build-push.sh prometheus stand-alone