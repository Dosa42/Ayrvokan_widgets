import hashlib
import json
from pathlib import Path
import subprocess
import sys
import zipfile

root = Path(__file__).resolve().parents[2]
paths = [name for name in subprocess.check_output(['git', 'ls-files', '-z', '--', 'assets'], cwd=root, text=True).split('\0') if name]
paths = sorted(set(paths) | {'assets/terminal/' + name for name in ['index.html', 'app.js', 'files.js', 'control.js', 'style.css', 'xterm.js', 'xterm.css', 'addon-fit.js', 'vendor.json', 'LICENSE-xterm.txt', 'LICENSE-addon-fit.txt']})
paths = sorted(set(paths) | {'assets/linux/' + name for name in ['ssh-runtime-arm64.tar.gz', 'ssh-runtime.json', 'ssh-authorized-key.pub']})
missing = [name for name in paths if not (root / name).is_file()]
if missing:
    raise RuntimeError('Incomplete asset checkout: ' + ', '.join(missing))
vendor = json.loads((root / 'assets/terminal/vendor.json').read_text())
for name, expected in vendor['files'].items():
    if hashlib.sha256((root / 'assets/terminal' / name).read_bytes()).hexdigest() != expected:
        raise RuntimeError('Terminal vendor identity mismatch: ' + name)
if len(sys.argv) > 1:
    with zipfile.ZipFile(sys.argv[1]) as apk:
        packaged = set(apk.namelist())
        missing = [name for name in paths if name not in packaged]
        if missing:
            raise RuntimeError('APK is missing assets: ' + ', '.join(missing))
        for name in paths:
            if hashlib.sha256(apk.read(name)).digest() != hashlib.sha256((root / name).read_bytes()).digest():
                raise RuntimeError('APK asset differs from source: ' + name)
print(json.dumps({'tracked_assets': len(paths), 'checkout_complete': True, 'apk_checked': len(sys.argv) > 1}))
