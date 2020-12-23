DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh bookkeeper nake
bash $DIR/../build-push.sh bookkeeper stand-alone
bash $DIR/../build-push.sh bookkeeper cluster