from pathlib import Path
import hashlib
import json
import os
import platform
import shutil
import subprocess
import zipfile

root = Path(__file__).resolve().parent.parent
sdk_root = Path(os.environ.get('ANDROID_SDK_ROOT') or os.environ.get('ANDROID_HOME') or '/data/data/com.termux/files/home/android-sdk')
platform_version = os.environ.get('ANDROID_PLATFORM', '35')
build_tools_version = os.environ.get('ANDROID_BUILD_TOOLS', '35.0.0')
minimum_api = os.environ.get('ANDROID_MIN_API', '29')
android_jar = sdk_root / 'platforms' / ('android-' + platform_version) / 'android.jar'
build_tools = sdk_root / 'build-tools' / build_tools_version
build = root / 'build'
evidence = root / 'evidence'
for directory in ['generated', 'classes', 'dex']:
    (build / directory).mkdir(parents=True, exist_ok=True)
evidence.mkdir(parents=True, exist_ok=True)


def executable(name, configured=None):
    if configured:
        path = Path(configured)
        if path.is_file():
            return str(path)
        found = shutil.which(configured)
        if found:
            return found
    bundled = build_tools / name
    if bundled.is_file():
        return str(bundled)
    found = shutil.which(name)
    if found:
        return found
    raise FileNotFoundError(name)


def android_compiler():
    configured = os.environ.get('ANDROID_CC')
    if configured:
        return executable('clang', configured), []
    ndk_value = os.environ.get('ANDROID_NDK_HOME') or os.environ.get('ANDROID_NDK_ROOT')
    if ndk_value:
        prebuilt = Path(ndk_value) / 'toolchains' / 'llvm' / 'prebuilt'
        hosts = sorted(path for path in prebuilt.iterdir() if path.is_dir())
        if not hosts:
            raise FileNotFoundError(prebuilt)
        compiler = hosts[0] / 'bin' / ('aarch64-linux-android' + minimum_api + '-clang')
        if not compiler.is_file():
            raise FileNotFoundError(compiler)
        return str(compiler), []
    include = Path(os.environ.get('PREFIX', '/data/data/com.termux/files/usr')) / 'include'
    arguments = ['-I' + str(include)] if include.is_dir() else []
    return executable('clang'), arguments


def run(arguments):
    subprocess.run([str(value) for value in arguments], cwd=root, check=True)


if not android_jar.is_file():
    raise FileNotFoundError(android_jar)
cc, cc_arguments = android_compiler()
aapt = executable('aapt')
d8 = executable('d8')
zipalign = executable('zipalign')
apksigner = executable('apksigner')
patchelf = executable('patchelf')
javac = executable('javac')
jar = executable('jar')

run([cc, '-shared', '-fPIC', '-O2', '-Wl,-z,max-page-size=16384', *cc_arguments, 'src/widgetpty.c', '-o', 'lib/arm64-v8a/libwidgetpty.so'])
run([patchelf, '--remove-rpath', 'lib/arm64-v8a/libwidgetpty.so'])
run([aapt, 'package', '-f', '-M', 'AndroidManifest.xml', '-S', 'res', '-I', android_jar, '-J', build / 'generated', '-F', build / 'resources.apk'])
sources = sorted((root / 'src').rglob('*.java')) + sorted((build / 'generated').rglob('*.java'))
libraries = sorted((root / 'vendor/litertlm-0.18.1/libs').glob('*.jar'))
classpath = str(android_jar) + os.pathsep + str(root / 'vendor/litertlm-0.18.1/libs/*')
run([javac, '--release', '8', '-cp', classpath, '-d', build / 'classes', *sources])
run([jar, 'cf', build / 'classes.jar', '-C', build / 'classes', '.'])
run([d8, '--min-api', minimum_api, '--lib', android_jar, '--output', build / 'dex', build / 'classes.jar', *libraries])
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
run([zipalign, '-f', '-P', '16', '4', build / 'unsigned.apk', build / 'aligned.apk'])
apk = root / 'dist/ayrvokan-widgets-0.12.3.apk'
apk.parent.mkdir(parents=True, exist_ok=True)
keystore = Path(os.environ.get('APK_KEYSTORE', str(Path.home() / '.android/debug.keystore')))
store_password = os.environ.get('APK_KS_PASS', 'android')
key_password = os.environ.get('APK_KEY_PASS', store_password)
key_alias = os.environ.get('APK_KEY_ALIAS')
signing = [apksigner, 'sign', '--v4-signing-enabled', 'true', '--ks', keystore, '--ks-pass', 'pass:' + store_password, '--key-pass', 'pass:' + key_password]
if key_alias:
    signing.extend(['--ks-key-alias', key_alias])
signing.extend(['--out', apk, build / 'aligned.apk'])
run(signing)
run([apksigner, 'verify', '--verbose', '--print-certs', apk])
run([zipalign, '-c', '-P', '16', '4', apk])
digest = hashlib.sha256()
with apk.open('rb') as stream:
    for block in iter(lambda: stream.read(1048576), b''):
        digest.update(block)
report = {'apk': str(apk), 'bytes': apk.stat().st_size, 'sha256': digest.hexdigest(), 'package': 'com.ayrvokan.widgets', 'version': '0.12.3', 'termux_included': False, 'runtime': 'Embedded Kali ARM64 with PRoot', 'terminal_renderer': 'Locally bundled xterm.js', 'agent': 'Independent native Rust agent widget, direct /bin/bash stdio, native TUI interface'}
report['build'] = {'host': platform.platform(), 'android_platform': platform_version, 'android_build_tools': build_tools_version, 'minimum_api': minimum_api, 'compiler': cc}
report['agent_core'] = json.loads((root / 'assets/agent/version.json').read_text())
report['console'] = json.loads((root / 'assets/console/version.json').read_text())
report['rag'] = {'engine': 'native-rust', 'embedding': 'EmbeddingGemma-2 270M INT4, LiteRT-LM 0.18.1 native Android service inside the same APK', 'dimensions': 768, 'profile': 'embeddinggemma-2-270m-int4-retrieval-l2-768-v1'}
report['vekil'] = json.loads((root / 'assets/vekil/version.json').read_text())
report['network'] = {'version': '0.4.0', 'plugin': 'Network HQ', 'shell_collector': 'Standalone Android app_process via paired ADB', 'mcp_transports': ['stdio', 'Streamable HTTP'], 'backend_sha256': hashlib.sha256((root / 'assets/bridge/network_hq.py').read_bytes()).hexdigest()}
report['dikte'] = json.loads((root / 'assets/dikte/version.json').read_text())
report['cliproxy'] = json.loads((root / 'assets/cliproxy/version.json').read_text())
(evidence / 'build-report.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report))
