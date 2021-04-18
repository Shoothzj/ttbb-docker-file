DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh apollo config
bash $DIR/../build-push.sh apollo admin
bash $DIR/../build-push.sh apollo portal