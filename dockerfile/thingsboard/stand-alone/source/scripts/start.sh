#!/bin/bash
cat /opt/sh/conf/add.conf >> /etc/thingsboard/conf/thingsboard.conf
cp /opt/sh/conf/thingsboard.yml /etc/thingsboard/conf/thingsboard.yml
/usr/share/thingsboard/bin/install/install.sh --loadDemo

CONF_FOLDER=/usr/share/thingsboard/conf
configfile=thingsboard.conf
jarfile=/usr/share/thingsboard/bin/thingsboard.jar
installDir=/usr/share/thingsboard/data

source "${CONF_FOLDER}/${configfile}"

JVM_OPT="$JVM_OPT -Dsun.misc.URLClassPath.disableJarChecking=true -Dplatform=rpm"
JVM_OPT="$JVM_OPT -Dinstall.data_dir=/usr/share/thingsboard/data -Xloggc:/var/log/thingsboard/gc.log"
JVM_OPT="$JVM_OPT -XX:+IgnoreUnrecognizedVMOptions -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDetails"
JVM_OPT="$JVM_OPT -XX:+PrintGCDateStamps -XX:+PrintHeapAtGC -XX:+PrintTenuringDistribution"
JVM_OPT="$JVM_OPT -XX:+PrintGCApplicationStoppedTime -XX:+UseGCLogFileRotation -XX:NumberOfGCLogFiles=10"
JVM_OPT="$JVM_OPT -XX:GCLogFileSize=10M -XX:-UseBiasedLocking -XX:+UseTLAB -XX:+ResizeTLAB"
JVM_OPT="$JVM_OPT -XX:+PerfDisableSharedMem -XX:+UseCondCardMark -XX:CMSWaitDuration=10000"
JVM_OPT="$JVM_OPT -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled"
JVM_OPT="$JVM_OPT -XX:+CMSParallelInitialMarkEnabled -XX:+CMSEdenChunksRecordAlways"
JVM_OPT="$JVM_OPT -XX:CMSInitiatingOccupancyFraction=75 -XX:+UseCMSInitiatingOccupancyOnly"
java ${JVM_OPT} -jar /usr/share/thingsboard/bin/thingsboard.jar 1>normal.log 2>error.log

tail -f /dev/null