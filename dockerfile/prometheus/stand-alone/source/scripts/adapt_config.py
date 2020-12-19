import json
import os
import sys

PROM_DIR = sys.argv[1]
PROM_CONFIG = PROM_DIR + "/" + "prometheus.yml"


def zookeeper_static():
    print("zookeeper static")
    with open(PROM_CONFIG, "a") as file:
        file.write('  - job_name: "zookeeper"')
        file.write("\n")
        file.write('    file_sd_configs:')
        file.write("\n")
        file.write('      - files:')
        file.write("\n")
        file.write('          - "/opt/sh/prometheus/zookeeper.json"')
        file.write("\n")
        file.write('        refresh_interval: 10s')
        file.write("\n")
    zookeeper_hosts = os.getenv("ZOOKEEPER_HOSTS")
    zookeeper_host_array = zookeeper_hosts.split(',')
    one_target = {"targets": zookeeper_host_array}
    targets = [one_target]
    with open(PROM_DIR + "/" + "zookeeper.json", "w") as file:
        file.write(json.dumps(targets))


def bookkeeper_static():
    print("bookkeeper static")
    with open(PROM_CONFIG, "a") as file:
        file.write('  - job_name: "bookkeeper"')
        file.write("\n")
        file.write('    file_sd_configs:')
        file.write("\n")
        file.write('      - files:')
        file.write("\n")
        file.write('          - "/opt/sh/prometheus/bookkeeper.json"')
        file.write("\n")
        file.write('        refresh_interval: 10s')
        file.write("\n")
    bookkeeper_hosts = os.getenv("BOOKKEEPER_HOSTS")
    zookeeper_host_array = bookkeeper_hosts.split(',')
    one_target = {"targets": zookeeper_host_array}
    targets = [one_target]
    with open(PROM_DIR + "/" + "bookkeeper.json", "w") as file:
        file.write(json.dumps(targets))


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
