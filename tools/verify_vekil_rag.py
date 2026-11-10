from pathlib import Path
import json
import os
import shlex
import subprocess

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'


def shell(command, timeout=25):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=timeout).strip()


app = shell('run-as ' + package + ' pwd')
files = app + '/files'
native = shell('run-as ' + package + ' readlink files/runtime/lib/libtalloc.so.2').rsplit('/', 1)[0]
kernel = shell('uname -r')
linux_root = '/root/.vekil-rag-check'
stage = files + '/KaliMinimal' + linux_root
shell('run-as ' + package + ' mkdir -p ' + stage + '/evidence')
for name in ['rag_client.py', 'rag_gemma.py']:
    source = (Path('/data/data/com.termux/files/home/nomone-custom/vekil-kaan-rust/tests') / name).read_text()
    copy = ['run-as', package, '/system/bin/sh', '-c', 'cat > "$1"', 'vekil-rag-check', stage + '/' + name]
    subprocess.run(base + ['shell', shlex.join(copy)], env=environment, input=source, text=True, check=True, timeout=25)
argv = ['run-as', package, '/system/bin/env', '-i', 'PATH=/system/bin', 'HOME=' + files, 'TMPDIR=' + files + '/runtime/tmp', 'PROOT_TMP_DIR=' + files + '/runtime/tmp', 'PROOT_LOADER=' + native + '/libprootloader.so', 'LD_LIBRARY_PATH=' + files + '/runtime/lib', 'ANDROID_ROOT=/system', 'ANDROID_DATA=/data', '/system/bin/sh', '-c', 'exec "$@"', 'vekil-native', native + '/libproot.so', '-0', '-r', files + '/KaliMinimal', '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '-b', files + '/runtime/tmp:/tmp', '--sysvipc', '-H', '-L', '-p', '--ashmem-memfd', '--kernel-release=' + kernel, '--link2symlink', '--kill-on-exit', '-w', '/root', '/usr/bin/env', '-i', 'HOME=/root', 'USER=root', 'LOGNAME=root', 'LANG=C.UTF-8', 'LC_ALL=C.UTF-8', 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', 'VEKIL_TEST_ROOT=' + linux_root, 'VEKIL_TEST_BINARY=/usr/local/bin/vekil-kaan', '/usr/bin/python3', linux_root + '/rag_gemma.py']
try:
    result = subprocess.run(base + ['shell', shlex.join(argv)], env=environment, text=True, capture_output=True, timeout=240)
    (root / 'evidence/vekil-rag-gemma.log').write_text(result.stdout + result.stderr)
    report = json.loads(shell('run-as ' + package + ' cat ' + stage + '/evidence/rag-gemma-verification.json'))
    report['execution'] = 'Actual installed ARM64 Rust RAG in embedded Kali plus actual EmbeddingGemma-2 270M INT4 native LiteRT-LM service in the same APK; AI response fixture is not live AI'
    (root / 'evidence/vekil-rag-gemma.json').write_text(json.dumps(report, indent=2) + '\n')
    assert result.returncode == 0 and report['passed'], report
    expected = json.loads((root / 'assets/vekil/version.json').read_text())['sha256']
    actual = shell('run-as ' + package + ' sha256sum files/KaliMinimal/usr/local/bin/vekil-kaan').split()[0]
    assert expected == actual
    print(json.dumps({'passed': True, 'checks': len(report['checks']), 'installed_native_sha256': actual}))
finally:
    shell('run-as ' + package + ' rm -rf ' + stage)
