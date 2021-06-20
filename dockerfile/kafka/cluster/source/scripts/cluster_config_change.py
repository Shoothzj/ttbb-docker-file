import os
import sys
from configobj import ConfigObj

# 初始化文件
config_file_name = sys.argv[1] + "/config/server.properties"
config = ConfigObj(config_file_name)
config.filename = config_file_name

# cluster 独占
config['listeners'] = "PLAINTEXT://" + os.getenv("HOSTNAME") + ".kafka:9092"

config.write()