from pathlib import Path
import hashlib
import json
import os
import shutil
import subprocess
import zipfile
from dikte_guest import guest

root = Path(__file__).resolve().parent.parent
metadata = json.loads((root / 'evidence/current-agent-experiment.json').read_text())
folder = Path(metadata['output'])
report = json.loads((folder / 'report.json').read_text())
assert report['end_verification']['passed'] and report['run_window_completed']
note = '10-minute actual gameplay experiment complete:94tools/88controls. Highest observed first-game score14400; retried via Start; second game7500points/5lives. Post-correction observation-to-control median6.849s,p958.936s;500ms target unmet. MCP emit-to-bridge median0.844ms; emulator input acknowledgement22.608ms. Game paused. Report: ' + str(folder / 'report.json')
request = {'id': 'experiment-summary', 'method': 'session.note', 'params': {'session_id': metadata['session_id'], 'role': 'assistant', 'text': note}}
response = guest(['/usr/local/bin/ayrvokan-agent', 'serve'], data=json.dumps(request) + '\n', timeout=20)
messages = [json.loads(line) for line in response.stdout.splitlines() if line.strip()]
assert any(m.get('id') == 'experiment-summary' and m.get('ok') for m in messages), response.stderr
(folder / 'session-summary-receipt.json').write_text(json.dumps({'recorded': True, 'session_id': metadata['session_id'], 'method': 'session.note', 'text': note}, indent=2) + '\n')
base = ['adb', '-s', '192.168.1.58:45155']
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
pid = metadata['session_id'].split('-')[-2]
alive = subprocess.run(base + ['shell', 'run-as com.ayrvokan.widgets kill -0 ' + pid], env=environment, capture_output=True).returncode == 0
assert not alive
run = json.loads((folder / 'run.json').read_text())
run['plugin_implementation'] = 'Python3 stdio adapter; native Rust agent unchanged'
(folder / 'run.json').write_text(json.dumps(run, indent=2) + '\n')
for name in ['report.json', 'SUMMARY.txt']:
    shutil.copyfile(folder / name, Path('/storage/emulated/0/Download') / ('ayrvokan-agent-10min-' + name))
archive = Path('/storage/emulated/0/Download') / ('ayrvokan-agent-10min-' + metadata['id'].removeprefix('native-agent-') + '.zip')
with zipfile.ZipFile(archive, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=4) as output:
    for path in sorted(folder.rglob('*')):
        if path.is_file():
            output.write(path, path.relative_to(folder))
receipt = {'report': str(folder / 'report.json'), 'download_report': '/storage/emulated/0/Download/ayrvokan-agent-10min-report.json', 'archive': str(archive), 'bytes': archive.stat().st_size, 'sha256': hashlib.sha256(archive.read_bytes()).hexdigest(), 'window_completed': True, 'native_agent_stopped': not alive, 'app_version': '0.12.0 unchanged', 'controls_bridge': 'Experimental plugin remains installed with elapsed deadline; observations available, controls require a new authorized run'}
(root / 'evidence/agent-experiment-delivery.json').write_text(json.dumps(receipt, indent=2) + '\n')
print(json.dumps(receipt))
