#!/usr/bin/env bash
python3 $BOOKKEEPER_HOME/hzj/scripts/config_change.py $BOOKKEEPER_HOME

$BOOKKEEPER_HOME/bin/bookkeeper standalone >$BOOKKEEPER_HOME/bookkeeper-normal.log