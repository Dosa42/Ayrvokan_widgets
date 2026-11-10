from pathlib import Path
import json
import subprocess
from dikte_guest import base, environment, guest, package

root = Path(__file__).resolve().parent.parent
source = '''import pathlib,subprocess,re,tarfile,json
q=pathlib.Path('/usr/lib/python3/dist-packages/PyQt6')
core=next(q.glob('QtCore.*.so'))
output=subprocess.check_output(['ldd',str(core)],text=True)
roots=[core,q/'__init__.py',*q.glob('sip.*314*.so')]
libs=set(re.findall(r'=> (/[^ ]+)',output))
files={str(x) for x in roots if x.exists()}
for path in libs:
    if '/libc.so' not in path and '/libm.so' not in path and 'ld-linux' not in path:
        files.update([path,str(pathlib.Path(path).resolve())])
owners={'python3-pyqt6','python3-pyqt6.sip'}
for path in list(files):
    reply=subprocess.run(['dpkg-query','-S',path],capture_output=True,text=True)
    for line in reply.stdout.splitlines():
        if ': /' in line:
            owners.add(line.rsplit(': /',1)[0].split(':')[0])
for owner in owners:
    copyright=pathlib.Path('/usr/share/doc')/owner/'copyright'
    if copyright.is_file():
        files.add(str(copyright.resolve()))
dest=pathlib.Path('/opt/ayrvokan/dikte-dependencies.tar.gz')
with tarfile.open(dest,'w:gz') as out:
    for path in sorted(files):
        out.add(path,arcname=path.lstrip('/'),recursive=False)
info={'kind':'QtCore and its actual ELF dependencies, with package copyright notices','files':sorted(files),'bytes':dest.stat().st_size,'no_local_speech_models':True}
pathlib.Path('/opt/ayrvokan/dikte-dependencies.json').write_text(json.dumps(info))
print(json.dumps({'files':len(files),'bytes':dest.stat().st_size}))
'''
result = guest(['/usr/bin/python3', '-c', source], timeout=180)
assert result.returncode == 0, result.stderr
for name in ['dependencies.tar.gz', 'dependencies.json']:
    data = subprocess.check_output(base + ['exec-out', 'run-as', package, 'cat', 'files/KaliMinimal/opt/ayrvokan/dikte-' + name], env=environment, timeout=60)
    (root / 'assets/dikte' / name).write_bytes(data)
print(result.stdout.strip())
