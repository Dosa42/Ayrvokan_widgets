from pathlib import Path
import json
import os
import shlex
import socket
import subprocess
import time

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
connection_path = Path.home() / '.codex/android-adb/connection.json'
connection = json.loads(connection_path.read_text()) if connection_path.is_file() else {}
serial = os.environ.get('ANDROID_SERIAL') or connection.get('serial')
if not serial:
    raise RuntimeError('Set ANDROID_SERIAL or connect through phone-adb first')
base = ['adb', '-s', serial]
package = 'com.ayrvokan.widgets'

def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=20).strip()

configuration = json.loads(shell('run-as ' + package + ' cat files/runtime/network-shell.json'))
apk = shell('pm path ' + package).splitlines()[0].removeprefix('package:')

def snapshot(operation='snapshot'):
    with socket.create_connection(('127.0.0.1', configuration['port']), timeout=2) as connection:
        connection.settimeout(4)
        connection.sendall((json.dumps({'token': configuration['token'], 'op': operation}) + '\n').encode())
        return json.loads(connection.makefile('r').readline())

try:
    result = snapshot()
    if result.get('apk') != apk:
        snapshot('stop')
        time.sleep(0.5)
        raise ConnectionRefusedError('Previous APK collector stopped')
except OSError:
    argv = ['nohup', '/system/bin/env', 'CLASSPATH=' + apk, '/system/bin/app_process', '/system/bin', 'com.ayrvokan.widgets.NetworkShell', str(configuration['port']), configuration['token'], apk]
    command = shlex.join(argv) + ' > /data/local/tmp/ayrvokan-network-shell.log 2>&1 < /dev/null &'
    shell(command)
    deadline = time.monotonic() + 15
    while True:
        try:
            result = snapshot()
            break
        except OSError:
            if time.monotonic() > deadline:
                raise RuntimeError(shell('cat /data/local/tmp/ayrvokan-network-shell.log'))
            time.sleep(0.4)
assert result['ok'] and result['uid'] == 2000 and result['tables_read'] == 4, result
report = {'passed': True, 'source': result['source'], 'pid': result['pid'], 'uid': result['uid'], 'tables_read': result['tables_read'], 'port': configuration['port'], 'socket_count_at_start': len(result['connections']), 'apk': apk, 'lifecycle': 'Standalone Android app_process under paired ADB shell, no Termux runtime; exits when installed APK path disappears', 'token': 'Omitted from evidence'}
(root / 'evidence/network-shell.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report))
