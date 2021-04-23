import sys
from configobj import ConfigObj

config_file_name = sys.argv[1] + "/config/server.properties"
config = ConfigObj(config_file_name)
config.filename = config_file_name
config['advertised.listeners'] = "PLAINTEXT://localhost:9092"
config.write()