DIR="$( cd "$( dirname "$0"  )" && pwd  )"
GRAFANA_HOME="$( cd "$DIR/../.." && pwd  )"

nohup $GRAFANA_HOME/bin/grafana-server --homepath $GRAFANA_HOME web >$GRAFANA_HOME/grafana.log 2>$GRAFANA_HOME/grafana_error.log &

sleep 5

curl -X PUT -H 'Content-Type: application/json' 'http://admin:admin@127.0.0.1:3000/api/user/password' -d '{"oldPassword" : "admin", "newPassword" : "grafana_pwd","confirmNew":"grafana_pwd"}'

curl -X POST -H 'Content-Type: application/json' 'http://admin:grafana_pwd@127.0.0.1:3000/api/datasources' -d '{"name":"Prometheus", "type":"prometheus", "url":"http://localhost:9090", "access":"proxy"}'
python3 $GRAFANA_HOME/hzj/scripts/adopt_config.py $GRAFANA_HOME


