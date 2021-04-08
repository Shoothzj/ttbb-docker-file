DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh servicecomb nake
bash $DIR/../build-push.sh servicecomb stand-alone