DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh skywalking nake
bash $DIR/../build-push.sh skywalking stand-alone
bash $DIR/../build-push.sh skywalking debug