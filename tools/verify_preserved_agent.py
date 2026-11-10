from pathlib import Path
import json
import os
import shlex
import subprocess

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'

def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=20).strip()

app = shell('run-as ' + package + ' pwd')
files = app + '/files'
native = shell('run-as ' + package + ' readlink files/runtime/lib/libtalloc.so.2').rsplit('/', 1)[0]
kernel = shell('uname -r')
argv = ['run-as', package, '/system/bin/env', '-i', 'PATH=/system/bin', 'HOME=' + files, 'TMPDIR=' + files + '/runtime/tmp', 'PROOT_TMP_DIR=' + files + '/runtime/tmp', 'PROOT_LOADER=' + native + '/libprootloader.so', 'LD_LIBRARY_PATH=' + files + '/runtime/lib', 'ANDROID_ROOT=/system', 'ANDROID_DATA=/data', '/system/bin/sh', '-c', 'exec "$@"', 'ayrvokan-native', native + '/libproot.so', '-0', '-r', files + '/KaliMinimal', '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '-b', files + '/runtime/tmp:/tmp', '--sysvipc', '-H', '-L', '-p', '--ashmem-memfd', '--kernel-release=' + kernel, '--link2symlink', '--kill-on-exit', '-w', '/root', '/usr/bin/env', '-i', 'HOME=/root', 'USER=root', 'LOGNAME=root', 'LANG=C.UTF-8', 'LC_ALL=C.UTF-8', 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', '/usr/local/bin/ayrvokan-agent', 'status']
status = json.loads(subprocess.check_output(base + ['shell', shlex.join(argv)], env=environment, text=True, timeout=20))
account = status['provider']['account']
assert account['connected'] and account['sharing']
report = {'passed': True, 'native_agent_version': status['version'], 'checks': {'native_agent_runs_after_widget_update': True, 'existing_chatgpt_connection_and_plan_permission_preserved': True}, 'live_inference_evidence': 'live-agent-verification.json'}
(root / 'evidence/preserved-agent-verification.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report))
