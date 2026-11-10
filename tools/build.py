from pathlib import Path
import hashlib
import json
import shutil
import subprocess
import zipfile

root = Path(__file__).resolve().parent.parent
sdk = Path('/data/data/com.termux/files/home/android-sdk/platforms/android-35/android.jar')
key = Path('/data/data/com.termux/files/home/.android/debug.keystore')
build = root / 'build'
for directory in ['generated', 'classes', 'dex']:
    (build / directory).mkdir(parents=True, exist_ok=True)

def run(arguments):
    subprocess.run([str(value) for value in arguments], cwd=root, check=True)

run(['clang', '-shared', '-fPIC', '-O2', '-Wl,-z,max-page-size=16384', '-I/data/data/com.termux/files/usr/include', 'src/widgetpty.c', '-o', 'lib/arm64-v8a/libwidgetpty.so'])
run(['patchelf', '--remove-rpath', 'lib/arm64-v8a/libwidgetpty.so'])
run(['aapt', 'package', '-f', '-M', 'AndroidManifest.xml', '-S', 'res', '-I', sdk, '-J', build / 'generated', '-F', build / 'resources.apk'])
sources = sorted((root / 'src').rglob('*.java')) + sorted((build / 'generated').rglob('*.java'))
run(['javac', '--release', '8', '-cp', str(sdk) + ':' + str(root / 'vendor/litertlm-0.18.1/libs/*'), '-d', build / 'classes', *sources])
run(['jar', 'cf', build / 'classes.jar', '-C', build / 'classes', '.'])
run(['java', '-Xmx512m', '-cp', root / 'vendor/litertlm-0.18.1/r8.jar', 'com.android.tools.r8.D8', '--min-api', '29', '--lib', sdk, '--output', build / 'dex', build / 'classes.jar', *sorted((root / 'vendor/litertlm-0.18.1/libs').glob('*.jar'))])
with zipfile.ZipFile(build / 'unsigned.apk', 'w', strict_timestamps=False) as output:
    with zipfile.ZipFile(build / 'resources.apk') as resources:
        for entry in resources.infolist():
            output.writestr(entry, resources.read(entry.filename))
    for directory in ['assets', 'lib']:
        for path in sorted((root / directory).rglob('*')):
            if path.is_file():
                output.write(path, str(path.relative_to(root)), compress_type=zipfile.ZIP_STORED if path.suffix in ['.so', '.gz', '.litertlm'] else zipfile.ZIP_DEFLATED)
    for path in (build / 'dex').glob('*.dex'):
        output.write(path, path.name, compress_type=zipfile.ZIP_DEFLATED)
run(['zipalign', '-f', '-P', '16', '4', build / 'unsigned.apk', build / 'aligned.apk'])
apk = root / 'dist/ayrvokan-widgets-0.12.3.apk'
run(['apksigner', 'sign', '--ks', key, '--ks-pass', 'pass:android', '--key-pass', 'pass:android', '--out', apk, build / 'aligned.apk'])
run(['apksigner', 'verify', '--verbose', apk])
run(['zipalign', '-c', '-P', '16', '4', apk])
digest = hashlib.sha256()
with apk.open('rb') as stream:
    for block in iter(lambda: stream.read(1048576), b''):
        digest.update(block)
report = {'apk': str(apk), 'bytes': apk.stat().st_size, 'sha256': digest.hexdigest(), 'package': 'com.ayrvokan.widgets', 'version': '0.12.3', 'termux_included': False, 'runtime': 'Embedded Kali ARM64 with PRoot', 'terminal_renderer': 'Locally bundled xterm.js', 'agent': 'Independent native Rust agent widget, direct /bin/bash stdio, native TUI interface'}
report['agent_core'] = json.loads((root / 'assets/agent/version.json').read_text())
report['console'] = json.loads((root / 'assets/console/version.json').read_text())
report['rag'] = {'engine': 'native-rust', 'embedding': 'EmbeddingGemma-2 270M INT4, LiteRT-LM 0.18.1 native Android service inside the same APK', 'dimensions': 768, 'profile': 'embeddinggemma-2-270m-int4-retrieval-l2-768-v1'}
report['vekil'] = json.loads((root / 'assets/vekil/version.json').read_text())
report['network'] = {'version': '0.4.0', 'plugin': 'Network HQ', 'shell_collector': 'Standalone Android app_process via paired ADB', 'mcp_transports': ['stdio', 'Streamable HTTP'], 'backend_sha256': hashlib.sha256((root / 'assets/bridge/network_hq.py').read_bytes()).hexdigest()}
report['dikte'] = json.loads((root / 'assets/dikte/version.json').read_text())
report['cliproxy'] = json.loads((root / 'assets/cliproxy/version.json').read_text())
(root / 'evidence/build-report.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report))
