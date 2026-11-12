import hashlib
import json
from pathlib import Path
import zipfile
import sys

root = Path(__file__).resolve().parents[2]
record = json.loads((root / 'server-java/build.json').read_text())
for group in ['sources', 'smali']:
    for name, expected in record[group].items():
        if hashlib.sha256((root / name).read_bytes()).hexdigest() != expected:
            raise RuntimeError('Java/Smali build identity mismatch: ' + name)
manifest = json.loads((root / 'assets/linux/ubuntu-base.json').read_text())
archive = root / 'assets' / manifest['asset']
with archive.open('rb') as source:
    if hashlib.file_digest(source, 'sha256').hexdigest() != manifest['sha256']:
        raise RuntimeError('Bundled Ubuntu archive identity mismatch')
if len(sys.argv) > 1:
    with zipfile.ZipFile(sys.argv[1]) as apk:
        if hashlib.sha256(apk.read('assets/' + manifest['asset'])).hexdigest() != manifest['sha256']:
            raise RuntimeError('APK Ubuntu archive does not match the pinned source')
        dex = apk.read('classes2.dex')
        for name in [b'Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;', b'Lcom/nomone/vr_desktop/runtime/UbuntuImage;', b'ensureInstalled']:
            if name not in dex:
                raise RuntimeError('APK Java bootstrap is missing: ' + str(name))
        boot = apk.read('lib/arm64-v8a/lib_proot_boot.sh.so')
        if b'/NOMone/UbuntuBase22.04' not in boot:
            raise RuntimeError('APK bare Ubuntu boot path is missing')
print(json.dumps({'java_smali_identity': True, 'ubuntu_archive': manifest['asset'], 'apk_checked': len(sys.argv) > 1}))
