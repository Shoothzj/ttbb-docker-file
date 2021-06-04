#!/bin/bash

mkdir $TRINO_HOME/etc
cp $TRINO_HOME/hzj/config/* $TRINO_HOME/etc

$TRINO_HOME/bin/launcher start