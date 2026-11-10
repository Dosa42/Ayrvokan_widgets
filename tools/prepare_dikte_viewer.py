from pathlib import Path
import json
import zipfile

root = Path(__file__).resolve().parent.parent
source = root / 'vendor/novnc-1.6.0'
target = root / 'assets/dikte/novnc.zip'
with zipfile.ZipFile(target, 'w', zipfile.ZIP_DEFLATED) as output:
    for folder in ['core', 'vendor']:
        for path in sorted((source/folder).rglob('*')):
            if path.is_file():
                output.write(path, 'novnc/'+str(path.relative_to(source)))
    for name in ['LICENSE.txt', 'AUTHORS', 'README.md']:
        path = source/name
        if path.is_file():
            output.write(path, 'novnc/'+name)
print(json.dumps({'viewer':'Unmodified noVNC 1.6.0','bytes':target.stat().st_size}))
