import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import tempfile

root = Path(__file__).resolve().parents[1]
sdk = Path(os.environ.get('ANDROID_HOME', str(Path.home() / 'android-sdk')))
android = sdk / 'platforms/android-35/android.jar'
with tempfile.TemporaryDirectory(prefix='nomone-java-') as temporary:
    work = Path(temporary)
    (work / 'classes').mkdir()
    (work / 'dex').mkdir()
    sources = sorted((root / 'server-java').rglob('*.java'))
    subprocess.run(['javac', '--release', '8', '-Xlint:-options', '-cp', android, '-d', work / 'classes', *sources], check=True)
    subprocess.run(['jar', 'cf', work / 'server.jar', '-C', work / 'classes', '.'], check=True)
    subprocess.run(['d8', '--min-api', '24', '--lib', android, '--output', work / 'dex', work / 'server.jar'], check=True)
    subprocess.run(['d2j-baksmali', '-f', '-o', work / 'smali', work / 'dex/classes.dex'], check=True)
    destination = root / 'smali_classes2/com/nomone/vr_desktop/runtime'
    destination.mkdir(parents=True, exist_ok=True)
    for old in destination.glob('Ubuntu*.smali'):
        old.unlink()
    outputs = []
    for path in sorted((work / 'smali').rglob('*.smali')):
        text = '\n'.join(line for line in path.read_text().splitlines() if not line.lstrip().startswith('#')) + '\n'
        text = re.sub(r'(const/high16\s+[vp]\d+,\s*)(-?(?:0x[\da-fA-F]+|\d+))', lambda match: match[1] + str(int(match[2], 0) << 16), text)
        target = root / 'smali_classes2' / path.relative_to(work / 'smali')
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(text)
        outputs.append(target)
    record = {'schema': 'nomone.ubuntu-java-build/1', 'java_release': 8, 'android_min_api': 24, 'sources': {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest() for path in sources}, 'smali': {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest() for path in outputs}}
    (root / 'server-java/build.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps({'java_sources': len(sources), 'smali_classes': len(outputs)}))
