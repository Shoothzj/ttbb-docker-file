DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh base latest
bash $DIR/../build-push.sh base ubuntu
bash $DIR/../build-push.sh base erlang
bash $DIR/../build-push.sh base go
bash $DIR/../build-push.sh base goc
bash $DIR/../build-push.sh base jdk8
bash $DIR/../build-push.sh base jdk11
bash $DIR/../build-push.sh base jdk11-ssh
bash $DIR/../build-push.sh base node
bash $DIR/../build-push.sh base network