DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh compile c
bash $DIR/../build-push.sh compile jdk8
bash $DIR/../build-push.sh compile jdk11
bash $DIR/../build-push.sh compile jdk11-git