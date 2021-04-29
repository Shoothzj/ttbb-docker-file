DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh hadoop nake
bash $DIR/../build-push.sh hadoop data
bash $DIR/../build-push.sh hadoop name
bash $DIR/../build-push.sh hadoop pseudo-distribute