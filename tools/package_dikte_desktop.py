from pathlib import Path
import subprocess
from dikte_guest import base, environment, guest, package

root = Path(__file__).resolve().parent.parent
source = '''from pathlib import Path
import subprocess,re,tarfile,json
q=Path('/usr/lib/python3/dist-packages/PyQt6')
roots=[q/'__init__.py',*q.glob('sip.*314*.so')]
for name in ['QtCore','QtGui','QtWidgets','QtNetwork']:
    roots.extend(q.glob(name+'.*.so'))
roots.extend(Path('/usr/lib/aarch64-linux-gnu/qt6/plugins/platforms').glob('libqxcb.so'))
roots.extend(Path('/usr/bin')/name for name in ['Xtigervnc','openbox','xdotool','xclip','xprop','xwininfo','xdpyinfo','xkbcomp','ffmpeg','ffprobe','dbus-daemon','dbus-launch','fc-cache','fc-match','websockify'])
files={str(p) for p in roots if p.is_file() or p.is_symlink()}
for path in list(files):
    if Path(path).read_bytes()[:4]!=b'\\x7fELF':
        continue
    reply=subprocess.run(['ldd',path],capture_output=True,text=True)
    if 'not found' in reply.stdout:
        raise RuntimeError(reply.stdout)
    for item in re.findall(r'=> (/[^ ]+)',reply.stdout):
        if '/libc.so' not in item and '/libm.so' not in item and 'ld-linux' not in item:
            files.update([item,str(Path(item).resolve())])
for folder in ['/usr/lib/python3/dist-packages/websockify','/usr/share/fonts/truetype/dejavu','/usr/share/X11','/etc/fonts','/etc/xdg/openbox','/usr/share/openbox','/usr/share/themes/Clearlooks/openbox-3']:
    for path in Path(folder).rglob('*'):
        if (path.is_file() or path.is_symlink()) and '__pycache__' not in path.parts:
            files.add(str(path))
owners={'python3-pyqt6','python3-pyqt6.sip','python3-websockify'}
for log in ['/opt/ayrvokan/dikte-dependencies-install.log','/opt/ayrvokan/dikte-desktop-install.log']:
    if Path(log).is_file():
        owners.update(name.split(':')[0] for name in re.findall(r'Unpacking ([A-Za-z0-9+.:_-]+) ',Path(log).read_text()))
for owner in owners:
    path=Path('/usr/share/doc')/owner/'copyright'
    if path.is_file():
        files.add(str(path.resolve()))
dest=Path('/opt/ayrvokan/dikte-desktop-runtime.tar.gz')
with tarfile.open(dest,'w:gz') as out:
    for path in sorted(files):
        out.add(path,arcname=path.lstrip('/'),recursive=False)
info={'runtime':'Original Linux Dikte graphical application: Qt Widgets, Xvnc, Openbox, websockify, fonts, clipboard, FFmpeg','files':sorted(files),'bytes':dest.stat().st_size,'offline_speech_model':False}
Path('/opt/ayrvokan/dikte-desktop-runtime.json').write_text(json.dumps(info))
print(json.dumps({'files':len(files),'bytes':dest.stat().st_size}))
'''
result = guest(['/usr/bin/python3', '-c', source], timeout=300)
assert result.returncode == 0, result.stderr
for name in ['desktop-runtime.tar.gz', 'desktop-runtime.json']:
    data = subprocess.check_output(base + ['exec-out', 'run-as', package, 'cat', 'files/KaliMinimal/opt/ayrvokan/dikte-' + name], env=environment, timeout=90)
    (root / 'assets/dikte' / name).write_bytes(data)
print(result.stdout.strip())
