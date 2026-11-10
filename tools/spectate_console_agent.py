from pathlib import Path
import json
import os
import subprocess
import time

root = Path(__file__).resolve().parent.parent
metadata = json.loads((root / 'evidence/current-agent-experiment.json').read_text())
folder = Path(metadata['output'])
base = ['adb', '-s', '192.168.1.58:45155']
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
started = time.monotonic_ns()
elapsed = (started - int(metadata['started_ns'])) / 1e9
image = folder / ('spectator-' + str(round(elapsed)) + '.png')
image.write_bytes(subprocess.check_output(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, timeout=20))
record = {'path': str(image), 'elapsed_seconds': elapsed, 'read_started_ns': str(started), 'read_completed_ns': str(time.monotonic_ns()), 'source': 'Actual Android DeX screencap via ADB; REA screenshot provider returned unreadable_output'}
with open(folder / 'spectator-captures.jsonl', 'a') as stream:
    stream.write(json.dumps(record) + '\n')
for name, source in [('calls.jsonl', 'files/KaliMinimal/root/.ayrvokan-agent/plugins/dos-console-live/calls.jsonl'), ('bridge.jsonl', 'files/KaliMinimal' + metadata['ui']['runtime'] + '/bridge.jsonl')]:
    value = subprocess.check_output(base + ['shell', 'run-as com.ayrvokan.widgets cat ' + source], env=environment, text=True, timeout=15)
    (folder / name).write_text(value)
events = [json.loads(line) for line in (folder / 'events.jsonl').read_text().splitlines() if line.strip()]
frames = [e for e in events if e['type'] == 'spectator_screen']
tools = [e for e in events if e['type'] == 'agent_rpc' and e['message'].get('event', {}).get('type') == 'tool.started']
record.update({'tool_calls': len(tools), 'hud': frames[-1]['frame'].get('lines', [''])[0] if frames else ''})
print(json.dumps(record))
