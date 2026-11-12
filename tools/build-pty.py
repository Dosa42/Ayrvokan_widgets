import hashlib
import json
import os
from pathlib import Path
import platform
import subprocess

root = Path(__file__).resolve().parents[1]
ndk = os.environ.get('ANDROID_NDK_HOME') or os.environ.get('ANDROID_NDK_ROOT')
if ndk:
    compiler = str(Path(ndk) / 'toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android24-clang')
elif Path('/data/data/com.termux/files/usr/include/jni.h').is_file() and platform.machine() == 'aarch64':
    compiler = 'clang'
else:
    raise RuntimeError('Set ANDROID_NDK_HOME to Android NDK 27.2.12479018')
output = root / 'lib/arm64-v8a/libnomone_pty.so'
subprocess.run([compiler, '-shared', '-fPIC', '-O2', '-Wall', '-Wextra', '-Werror', '-Wl,-z,max-page-size=16384', root / 'native/pty.c', '-o', output], check=True)
if not ndk:
    subprocess.run(['patchelf', '--remove-rpath', output], check=True)
record = {'schema': 'nomone.pty-native/1', 'abi': 'arm64-v8a', 'minimum_api': 24, 'page_alignment': 16384,
          'source_sha256': hashlib.sha256((root / 'native/pty.c').read_bytes()).hexdigest(),
          'binary_sha256': hashlib.sha256(output.read_bytes()).hexdigest()}
(root / 'native/build.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record))
