bash -vx /opt/sh/mysql/hzj/scripts/start-daemon.sh
export DATA_SOURCE_NAME='exporter:export_pwd@(localhost:3306)/'
tail -f /dev/null