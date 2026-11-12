import gzip
import hashlib
import io
import json
from pathlib import Path
import tarfile
import tempfile
import urllib.request

root = Path(__file__).resolve().parents[1]
packages = [
    {'name': 'dropbear-bin', 'version': '2020.81-5ubuntu0.1', 'file': 'pool/universe/d/dropbear/dropbear-bin_2020.81-5ubuntu0.1_arm64.deb', 'sha256': '0c10216a285c2e1608824ea5b45f070c94f120167d5882010caea776a13aabb4'},
    {'name': 'libtomcrypt1', 'version': '1.18.2-5', 'file': 'pool/universe/libt/libtomcrypt/libtomcrypt1_1.18.2-5_arm64.deb', 'sha256': '27fec2d868789cc52b61313f8ae46d1f2e30fe176ae51957939038526cf06629'},
    {'name': 'libtommath1', 'version': '1.2.0-6build3', 'file': 'pool/main/libt/libtommath/libtommath1_1.2.0-6build3_arm64.deb', 'sha256': '87e2fc4d2ac7b03338ac47cf340d599b75a0ca66620cdefff3ae12cb0f443067'}
]
destination = root / 'assets/linux/ssh-runtime-arm64.tar.gz'
with tempfile.TemporaryDirectory(prefix='nomone-ssh-vendor-') as temporary:
    payload = Path(temporary) / 'payload'
    payload.mkdir()
    for package in packages:
        package['url'] = 'https://ports.ubuntu.com/ubuntu-ports/' + package['file']
        data = urllib.request.urlopen(package['url'], timeout=30).read()
        if hashlib.sha256(data).hexdigest() != package['sha256']:
            raise RuntimeError('Ubuntu package hash mismatch: ' + package['name'])
        if data[:8] != b'!<arch>\n': raise RuntimeError('Invalid Debian archive')
        offset = 8
        found = False
        while offset < len(data):
            header = data[offset:offset + 60]
            size = int(header[48:58])
            name = header[:16].decode().strip().rstrip('/')
            body = data[offset + 60:offset + 60 + size]
            offset += 60 + size + size % 2
            if name.startswith('data.tar'):
                with tarfile.open(fileobj=io.BytesIO(body)) as archive:
                    archive.extractall(payload, filter='fully_trusted')
                found = True
        if not found: raise RuntimeError('Debian payload missing')
    with destination.open('wb') as file:
        with gzip.GzipFile(filename='', mode='wb', fileobj=file, mtime=0) as compressed:
            with tarfile.open(fileobj=compressed, mode='w', format=tarfile.GNU_FORMAT) as archive:
                for path in sorted(payload.rglob('*')):
                    info = archive.gettarinfo(str(path), str(path.relative_to(payload)))
                    info.uid = info.gid = info.mtime = 0
                    info.uname = info.gname = 'root'
                    if info.isfile():
                        with path.open('rb') as source: archive.addfile(info, source)
                    else: archive.addfile(info)
record = {'schema': 'nomone.ssh-runtime/1', 'distribution': 'Ubuntu22.04 ARM64', 'installation': 'bundled runtime payload; not dpkg installation',
          'asset': 'linux/ssh-runtime-arm64.tar.gz', 'sha256': hashlib.sha256(destination.read_bytes()).hexdigest(), 'packages': packages}
(root / 'assets/linux/ssh-runtime.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps({'asset': str(destination), 'bytes': destination.stat().st_size, 'sha256': record['sha256']}))
