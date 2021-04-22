DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh redis nake
bash $DIR/../build-push.sh redis stand-alone