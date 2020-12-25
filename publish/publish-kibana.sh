DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh kibana nake
bash $DIR/../build-push.sh kibana stand-alone