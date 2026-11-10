from pathlib import Path
import hashlib
import json
import zipfile

root = Path(__file__).resolve().parent.parent
source = root / 'vendor/dikte-2.4.0'
target = root / 'assets/dikte'
target.mkdir(parents=True, exist_ok=True)
archive = target / 'source.zip'
with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as out:
    for path in sorted((source / 'dikte').rglob('*')):
        if path.is_file() and '__pycache__' not in path.parts:
            out.write(path, str(path.relative_to(source)))
    for name in ['LICENSE', 'README.md', 'README.tr.md']:
        out.write(source / name, name)
version = {'upstream': 'yusufipk/dikte', 'version': '2.4.0', 'commit': '8d40d6686e8b549c87ae0c34db4b3690311e6d3a', 'sha256': hashlib.sha256(archive.read_bytes()).hexdigest(), 'speech_provider': 'Groq', 'speech_model': 'whisper-large-v3', 'offline_recognition': False, 'android_recognition': False, 'application': 'Original unmodified Dikte app.py, HomeWindow and SettingsWindow', 'presentation': 'Actual Linux Qt application on Xvnc, embedded via unmodified noVNC', 'adapters': 'Android PCM microphone, focused-widget hotkeys, clipboard and display only'}
if (target / 'desktop-runtime.tar.gz').is_file():
    version['desktop_runtime_sha256'] = hashlib.sha256((target / 'desktop-runtime.tar.gz').read_bytes()).hexdigest()
(target / 'version.json').write_text(json.dumps(version, indent=2) + '\n')
print(json.dumps(version))
