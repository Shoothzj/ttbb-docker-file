import base64
import json
import sys
from urllib import request

username = "admin"
password = "grafana_pwd"
GRAFANA_DASHBOARD_DIR = sys.argv[1] + "/hzj/dashboard/"


def import_dashboard(dashboard):
    with open(GRAFANA_DASHBOARD_DIR + dashboard) as file:
        data = file.read()
    req = request.Request("http://localhost:3000/api/dashboards/db", )
    credentials = ('%s:%s' % (username, password))
    encoded_credentials = base64.b64encode(credentials.encode('ascii'))
    req.add_header('Authorization', 'Basic %s' % encoded_credentials.decode("ascii"))
    req.add_header('Content-Type', 'application/json')

    dumps = json.dumps({"dashboard": json.loads(data)})
    body = dumps.encode(encoding='utf-8')
    with request.urlopen(req, body) as f:
        pass
    print(f.status)
    print(f.reason)
    print(f.read().decode('utf-8'))


import_dashboard("zookeeper-by-prometheus_rev4.json")
