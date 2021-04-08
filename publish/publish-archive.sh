DIR="$( cd "$( dirname "$0"  )" && pwd  )"

bash $DIR/../build-push.sh mysql stand-alone-5-6
bash $DIR/../build-push.sh mysql stand-alone-5-7