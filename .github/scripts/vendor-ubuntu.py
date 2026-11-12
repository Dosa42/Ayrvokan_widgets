import hashlib
import json
import os
from pathlib import Path
import subprocess
import urllib.request

root = Path(__file__).resolve().parents[2]
manifest = json.loads((root / 'assets/linux/ubuntu-base.json').read_text())
archive = root / 'assets' / manifest['asset']
archive.parent.mkdir(parents=True, exist_ok=True)
if not archive.exists():
    with urllib.request.urlopen(manifest['url'], timeout=60) as source, archive.open('wb') as target:
        while chunk := source.read(1024 * 1024):
            target.write(chunk)
with archive.open('rb') as source:
    digest = hashlib.file_digest(source, 'sha256').hexdigest()
if digest != manifest['sha256']:
    raise RuntimeError('Ubuntu Base archive does not match the pinned source')
if os.environ.get('GITHUB_ACTIONS') == 'true':
    subprocess.run(['git', 'config', 'user.name', 'github-actions[bot]'], cwd=root, check=True)
    subprocess.run(['git', 'config', 'user.email', '41898282+github-actions[bot]@users.noreply.github.com'], cwd=root, check=True)
    subprocess.run(['git', 'add', '--force', str(archive.relative_to(root))], cwd=root, check=True)
    changed = subprocess.run(['git', 'diff', '--cached', '--quiet'], cwd=root).returncode
    if changed == 1:
        subprocess.run(['git', 'commit', '-m', 'Bundle official Ubuntu Base 22.04.5 ARM64 rootfs'], cwd=root, check=True)
        subprocess.run(['git', 'push', 'origin', 'HEAD:linux-runtime-rework'], cwd=root, check=True)
    elif changed != 0:
        raise RuntimeError('Cannot inspect Ubuntu archive staging')
print(json.dumps({'asset': manifest['asset'], 'bytes': archive.stat().st_size, 'sha256': digest}))
