DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh kafka nake
bash $DIR/../build-push.sh kafka stand-alone
bash $DIR/../build-push.sh kafka cluster