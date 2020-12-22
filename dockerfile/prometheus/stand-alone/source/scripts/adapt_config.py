import json
import os
import sys

PROM_DIR = sys.argv[1]
PROM_CONFIG = PROM_DIR + "/" + "prometheus.yml"


def common_static(service, env_service):
    print("common static")
    with open(PROM_CONFIG, "a") as file:
        file.write('  - job_name: "' + service + '"')
        file.write("\n")
        file.write('    file_sd_configs:')
        file.write("\n")
        file.write('      - files:')
        file.write("\n")
        file.write('          - "/opt/sh/prometheus/' + service + '.json"')
        file.write("\n")
        file.write('        refresh_interval: 10s')
        file.write("\n")
    hosts = os.getenv(env_service + "_HOSTS")
    host_array = hosts.split(',')
    one_target = {"targets": host_array}
    targets = [one_target]
    with open(PROM_DIR + "/" + service + ".json", "w") as file:
        file.write(json.dumps(targets))


def zookeeper_static():
    print("zookeeper static")
    common_static("zookeeper", "ZOOKEEPER")


def bookkeeper_static():
    print("bookkeeper static")
    common_static("bookkeeper", "BOOKKEEPER")


def pulsar_dns():
    print("pulsar dns")
    with open(PROM_CONFIG, "a") as file:
        file.write('  - job_name: "pulsar"')
        file.write("\n")
        file.write('    dns_sd_configs:')
        file.write("\n")
        file.write('      - names:')
        file.write("\n")
        pulsar_hosts = os.getenv("PULSAR_DOMAINS")
        pulsar_host_array = pulsar_hosts.split(',')
        for host in pulsar_host_array:
            file.write('          - "' + host + '"')
            file.write("\n")
        file.write('        type: "A"')
        file.write("\n")
        file.write('        port: 8080')
        file.write("\n")
        file.write('        refresh_interval: 10s')
        file.write("\n")


def pulsar_static():
    print("pulsar static")
    common_static("pulsar", "PULSAR")


zookeeper_type = os.getenv('ZOOKEEPER_TYPE')
if zookeeper_type == 'static':
    zookeeper_static()
else:
    zookeeper_static()
bookkeeper_type = os.getenv('BOOKKEEPER_TYPE')
if bookkeeper_type == 'static':
    bookkeeper_static()
else:
    bookkeeper_static()
pulsar_type = os.getenv('PULSAR_TYPE')
if pulsar_type == 'dns':
    pulsar_dns()
elif pulsar_type == 'static':
    pulsar_static()
