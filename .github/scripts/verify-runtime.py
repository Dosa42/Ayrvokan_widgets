import hashlib
import json
from pathlib import Path
import subprocess
import sys
import xml.etree.ElementTree as ET
import zipfile

root = Path(__file__).resolve().parents[2]
record = json.loads((root / 'native/build.json').read_text())
source = root / 'native/pty.c'
native = root / 'lib/arm64-v8a/libnomone_pty.so'
if hashlib.sha256(source.read_bytes()).hexdigest() != record['source_sha256']:
    raise RuntimeError('PTY native source identity mismatch')
if hashlib.sha256(native.read_bytes()).hexdigest() != record['binary_sha256']:
    raise RuntimeError('PTY native binary identity mismatch')
dynamic = subprocess.check_output(['readelf', '-d', native], text=True)
if 'RPATH' in dynamic or 'RUNPATH' in dynamic:
    raise RuntimeError('PTY library must not depend on build-host search paths')
header = subprocess.check_output(['readelf', '-h', native], text=True)
if 'AArch64' not in header:
    raise RuntimeError('PTY APK library is not ARM64')
manifest = ET.parse(root / 'AndroidManifest.xml').getroot()
android = '{http://schemas.android.com/apk/res/android}'
service = next(node for node in manifest.findall('application/service') if node.get(android + 'name') == 'com.nomone.vr_desktop.runtime.UbuntuRuntimeService')
expected = {'process': ':ubuntu', 'exported': 'false', 'stopWithTask': 'false', 'foregroundServiceType': 'specialUse'}
if any(service.get(android + key) != value for key, value in expected.items()):
    raise RuntimeError('Ubuntu runtime process ownership mismatch')
activity = (root / 'smali_classes2/com/nomone/vr_desktop/LaunchActivity.smali').read_text()
destroy = activity.split('.method public final onDestroy()V', 1)[1].split('.end method', 1)[0]
if 'Lo0/a;' in destroy or 'System;->exit' in destroy:
    raise RuntimeError('Activity still schedules process exit')
linux = (root / 'smali_classes2/com/nomone/vr_desktop/Applications/Linux/LinuxApplication.smali').read_text()
if 'UbuntuRuntime;->startIfBare' not in linux:
    raise RuntimeError('Linux click does not start runtime service')
if len(sys.argv) > 1:
    with zipfile.ZipFile(sys.argv[1]) as apk:
        if apk.read('lib/arm64-v8a/libnomone_pty.so') != native.read_bytes():
            raise RuntimeError('APK PTY library does not match the native build')
        dex = apk.read('classes2.dex')
        for name in [b'UbuntuRuntimeService;', b'PtySession;', b'PtyNative;', b'TerminalServer;', b'TerminalSessions;', b'FileWorkspace;', b'MachineEngine;', b'http://127.0.0.1:8766/terminal', b'startIfBare']:
            if name not in dex:
                raise RuntimeError('APK runtime class missing: ' + str(name))
print(json.dumps({'runtime_process': ':ubuntu', 'native_abi': 'arm64-v8a', 'activity_exit_removed': True, 'apk_checked': len(sys.argv) > 1}))
