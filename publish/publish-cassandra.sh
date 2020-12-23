DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh cassandra nake
bash $DIR/../build-push.sh cassandra stand-alone
bash $DIR/../build-push.sh cassandra stand-alone-eth0