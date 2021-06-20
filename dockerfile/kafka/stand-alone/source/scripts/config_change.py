import os
import sys
from configobj import ConfigObj

# 初始化文件
config_file_name = sys.argv[1] + "/config/server.properties"
config = ConfigObj(config_file_name)
config.filename = config_file_name

# stand-alone 专用逻辑
kafka_localhost = os.getenv("KAFKA_ADVERTISE_ADDRESS")
if kafka_localhost is not None:
    config['advertised.listeners'] = "PLAINTEXT://" + kafka_localhost + ":9092"

config.write()