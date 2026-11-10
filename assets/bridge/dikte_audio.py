import os
import socket
import sys

try:
    with socket.create_connection(('127.0.0.1', int(os.environ['DIKTE_ANDROID_AUDIO_PORT'])), timeout=10) as channel:
        channel.settimeout(None)
        channel.sendall(b'DIKTE_PCM16_16000_MONO\n')
        while True:
            data = channel.recv(8192)
            if not data:
                break
            sys.stdout.buffer.write(data)
            sys.stdout.buffer.flush()
except KeyboardInterrupt:
    pass
