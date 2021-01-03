import json
import os
import sys

PROM_DIR = sys.argv[1]
PROM_CONFIG = PROM_DIR + "/" + "prometheus.yml"


def common_static(service, env_service_prefix):
    print("common static " + service + " " + env_service_prefix)
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
    hosts = os.getenv(env_service_prefix + "_HOSTS")
    host_array = hosts.split(',')
    one_target = {"targets": host_array}
    targets = [one_target]
    with open(PROM_DIR + "/" + service + ".json", "w") as file:
        file.write(json.dumps(targets))


def common_dns(service, env_service_prefix, port):
    print("common dns " + service + " " + env_service_prefix + " " + port)
    with open(PROM_CONFIG, "a") as file:
        file.write('  - job_name: "' + service + '"')
        file.write("\n")
        file.write('    dns_sd_configs:')
        file.write("\n")
        file.write('      - names:')
        file.write("\n")
        pulsar_hosts = os.getenv(env_service_prefix + "_DOMAINS")
        pulsar_host_array = pulsar_hosts.split(',')
        for host in pulsar_host_array:
            file.write('          - "' + host + '"')
            file.write("\n")
        file.write('        type: "A"')
        file.write("\n")
        file.write('        port: ' + port)
        file.write("\n")
        file.write('        refresh_interval: 10s')
        file.write("\n")


def common(service, env_service_prefix, port):
    grab_type = os.getenv(env_service_prefix + "_TYPE")
    if grab_type == 'dns':
        common_dns(service, env_service_prefix, port)
    else:
        common_static(service, env_service_prefix)


common('zookeeper', "ZOOKEEPER", "7000")
common('bookkeeper', "BOOKKEEPER", "8080")
common('pulsar', "PULSAR", "8080")
common('pulsar_proxy', "PULSAR_PROXY", "8080")
common('mysql', "MYSQL", "9104")
common('redis', "REDIS", "9121")
