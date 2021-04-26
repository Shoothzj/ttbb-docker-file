import os
import sys
from configobj import ConfigObj

config_file_name = sys.argv[1] + "/conf/bk_server.conf"
config = ConfigObj(config_file_name)
config.filename = config_file_name

bk_advertised_address = os.getenv("BOOKKEEPER_ADVERTISED_ADDRESS")
if bk_advertised_address is None:
    print("bk advertiesd address not config do nothing")
else:
    config['advertisedAddress'] = bk_advertised_address

config.write()