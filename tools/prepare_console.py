from pathlib import Path
import hashlib
import io
import json
import os
import re
import shutil
import subprocess
import tarfile

root = Path(__file__).resolve().parent.parent
project = root.parent
pad = project / 'ayrvokan-pad-rust'
subprocess.run(['python', pad / 'tools/package_lab.py'], check=True, stdout=subprocess.DEVNULL)
assets = root / 'assets/console'
assets.mkdir(exist_ok=True)
shutil.copyfile(pad / 'dist/ayrvokan-pad-lab.pyz', assets / 'ayrvokan-pad-lab.pyz')
game = assets / 'games/asciiinvaders-live.zip'
game.parent.mkdir(exist_ok=True)
shutil.copyfile('/storage/emulated/0/Download/asciiinvaders-live-game-20261109.zip', game)
debian = project / 'nomone-debian-embedded/embedded-rootfs/DebianBookworm'
emulator = project / 'rust-dos-review/runtime/v1.8.2/rust-dos'
environment = dict(os.environ)
environment.pop('LD_PRELOAD', None)
command = ['proot', '-0', '--link2symlink', '-r', str(debian), '-b', '/dev', '-b', '/proc', '-b', str(emulator) + ':/opt/console-emulator', '-w', '/', '/usr/bin/env', '-i', 'PATH=/usr/bin:/bin', '/usr/bin/ldd', '/opt/console-emulator/rust-dos']
listing = subprocess.check_output(command, env=environment, text=True)
if 'not found' in listing:
    raise RuntimeError(listing)
paths = re.findall(r'=> (/[^ ]+)', listing)
excluded = {'libc.so.6', 'libm.so.6', 'libpthread.so.0', 'libgcc_s.so.1'}
files = []
archive = assets / 'emulator-libs.tar.gz'
with tarfile.open(archive, 'w:gz') as output:
    for guest in paths:
        name = Path(guest).name
        if name in excluded:
            continue
        path = debian / guest.lstrip('/')
        data = path.read_bytes()
        entry = tarfile.TarInfo(name)
        entry.size = len(data)
        entry.mode = 0o644
        entry.mtime = 0
        output.addfile(entry, io.BytesIO(data))
        files.append({'name': name, 'sha256': hashlib.sha256(data).hexdigest()})
    for path in sorted((debian / 'usr/share/doc').glob('*/copyright')):
        if any(part in path.parent.name.lower() for part in ['sdl2', 'asound', 'pulse', 'samplerate', 'wayland', 'x11', 'xext', 'xcursor', 'xfixes', 'xrandr', 'xss', 'drm', 'gbm', 'xkb', 'decor', 'dbus', 'xcb', 'xrender', 'expat', 'ffi', 'sndfile', 'systemd', 'asyncns', 'xau', 'xdmcp', 'flac', 'vorbis', 'opus', 'ogg', 'mpg123', 'mp3lame', 'cap2', 'gcrypt', 'lzma', 'zstd', 'lz4', 'bsd', 'gpg-error', 'libmd', 'libxi']):
            output.add(path, arcname='LICENSES/' + path.parent.name + '.txt', recursive=False)
report = {'version': '0.6.4', 'sha256': hashlib.sha256((assets / 'ayrvokan-pad-lab.pyz').read_bytes()).hexdigest(), 'libraries_sha256': hashlib.sha256(archive.read_bytes()).hexdigest(), 'libraries': files, 'emulator': 'Unmodified official Rust-DOS 1.8.2 Linux ARM64 compat', 'game_bundled': True, 'game_sha256': hashlib.sha256(game.read_bytes()).hexdigest(), 'game_path': '/opt/ayrvokan/console/games/asciiinvaders-live.zip', 'termux_included': False}
(assets / 'version.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({'console': report['version'], 'libraries': len(files)}))
