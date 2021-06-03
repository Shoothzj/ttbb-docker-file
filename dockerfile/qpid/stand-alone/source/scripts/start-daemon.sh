#!/bin/bash

DIR="$( cd "$( dirname "$0"  )" && pwd  )"
QPID_HOME="$( cd "$DIR/../.." && pwd  )"

nohup $QPID_HOME/bin/qpid-server >$QPID_HOME/qpid.log 2>$QPID_HOME/qpid_error.log &