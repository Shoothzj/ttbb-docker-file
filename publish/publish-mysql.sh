DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh mysql nake
bash $DIR/../build-push.sh mysql apollo
bash $DIR/../build-push.sh mysql stand-alone