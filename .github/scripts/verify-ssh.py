import hashlib
import json
from pathlib import Path
import sys
import tarfile
import zipfile

root = Path(__file__).resolve().parents[2]
record = json.loads((root / 'assets/linux/ssh-runtime.json').read_text())
payload = root / 'assets' / record['asset']
if hashlib.sha256(payload.read_bytes()).hexdigest() != record['sha256']:
    raise RuntimeError('SSH runtime asset hash mismatch')
if record['sha256'] not in (root / 'server-java/com/nomone/vr_desktop/runtime/UbuntuSsh.java').read_text():
    raise RuntimeError('Java SSH payload identity mismatch')
with tarfile.open(payload) as archive:
    for name in ['usr/sbin/dropbear', 'usr/bin/dropbearkey']:
        binary = archive.extractfile(name).read()
        if binary[:4] != b'\x7fELF' or int.from_bytes(binary[18:20], 'little') != 183:
            raise RuntimeError('SSH binary is not ARM64 ELF: ' + name)
public_key = (root / 'assets/linux/ssh-authorized-key.pub').read_bytes()
if not public_key.startswith(b'ssh-ed25519 '): raise RuntimeError('SSH public key asset missing')
if len(sys.argv) > 1:
    with zipfile.ZipFile(sys.argv[1]) as apk:
        if apk.read('assets/' + record['asset']) != payload.read_bytes():
            raise RuntimeError('APK SSH payload differs from source')
        if apk.read('assets/linux/ssh-authorized-key.pub') != public_key:
            raise RuntimeError('APK SSH public key differs from source')
        for name in [b'UbuntuSsh;', b'ProotCommand;', b'startSsh']:
            if name not in apk.read('classes2.dex'): raise RuntimeError('APK SSH Java integration missing')
print(json.dumps({'ssh_payload': True, 'abi': 'arm64-v8a', 'public_key': True, 'apk_checked': len(sys.argv) > 1}))
