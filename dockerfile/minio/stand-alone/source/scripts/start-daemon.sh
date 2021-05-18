#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"
MINIO_HOME="$( cd "$DIR/../.." && pwd  )"

nohup $MINIO_HOME/minio server $MINIO_HOME/data >$MINIO_HOME/minio.log 2>$MINIO_HOME/minio_error.log &