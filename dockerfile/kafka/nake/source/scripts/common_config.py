import os
import sys
from configobj import ConfigObj

# 初始化文件
config_file_name = sys.argv[1] + "/config/server.properties"
config = ConfigObj(config_file_name)
config.filename = config_file_name

# socket send buffer
socket_send_buffer_bytes = os.getenv("SOCKET_SEND_BUFFER_BYTES")
if socket_send_buffer_bytes is not None:
    config['socket.send.buffer.bytes'] = socket_send_buffer_bytes
# socket receive buffer
socket_receive_buffer_bytes = os.getenv("SOCKET_RECEIVE_BUFFER_BYTES")
if socket_receive_buffer_bytes is not None:
    config['socket.receive.buffer.bytes'] = socket_receive_buffer_bytes
# broker message max bytes
message_max_bytes = os.getenv("MESSAGE_MAX_BYTES")
print(message_max_bytes)
if message_max_bytes is not None:
    config['message.max.bytes'] = message_max_bytes

config.write()