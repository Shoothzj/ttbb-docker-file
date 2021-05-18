#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"
bash $DIR/../build-push.sh minio nake
bash $DIR/../build-push.sh minio stand-alone