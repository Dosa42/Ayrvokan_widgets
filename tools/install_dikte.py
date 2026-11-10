from pathlib import Path
import hashlib
import json
import re
import shlex
import subprocess
from dikte_guest import base, environment, guest, package, shell

root = Path(__file__).resolve().parent.parent
pool_path = Path('/data/data/com.termux/files/home/ai-projects/meta-hub/voice-lab/data/groq-tts-accounts.json')
bootstrap = Path('/storage/emulated/0/Download/jarvis-chrome-extension-v0.1.0-mv3/browser/groq-bootstrap.js')
pool = json.loads(pool_path.read_text())
original = re.search(r'gsk_[A-Za-z0-9_-]+', bootstrap.read_text()).group(0)
accounts = [{'id': a['id'], 'label': a['label'], 'apiKey': original if a.get('credential') == 'bootstrap' else a['apiKey']} for a in pool['accounts']]
for name, destination in [('assets/dikte/source.zip', 'files/KaliMinimal/opt/ayrvokan/dikte-source.zip')]:
    command = ['run-as', package, '/system/bin/sh', '-c', 'cat > "$1"', 'dikte-install', destination]
    subprocess.run(base + ['shell', shlex.join(command)], env=environment, input=(root / name).read_bytes(), check=True, timeout=45)
setup = "from pathlib import Path; import sys,json,zipfile; d=Path('/root/.config/dikte'); d.mkdir(parents=True,exist_ok=True); p=d/'accounts.json'; p.write_text(sys.stdin.read()); p.chmod(0o600); zipfile.ZipFile('/opt/ayrvokan/dikte-source.zip').extractall('/opt/ayrvokan/dikte-2.4.0'); print(json.dumps({'installed':True,'accounts':len(json.loads(p.read_text())['accounts'])}))"
reply = guest(['/usr/bin/python3', '-c', setup], json.dumps({'selectedAccountId': pool.get('selectedAccountId', 'groq-original'), 'accounts': accounts}))
assert reply.returncode == 0, reply.stderr
print(reply.stdout.strip())
script = "import sys,json;sys.path.insert(0,'/opt/ayrvokan/dikte-2.4.0');from dikte.config import Config;c=Config();c['transcribe_provider']='groq';c['groq_transcribe_model']='whisper-large-v3';c['local_preload']=False;c['local_llm_preload']=False;c['groq_api_key']=json.loads(open('/root/.config/dikte/accounts.json').read())['accounts'][0]['apiKey'];c.save();print(json.dumps({'model':c.transcribe_target().model,'preset':c.transcribe_target().preset}))"
reply = guest(['/usr/bin/python3', '-c', script])
assert reply.returncode == 0, reply.stderr
print(reply.stdout.strip())
