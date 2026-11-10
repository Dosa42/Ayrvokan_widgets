from pathlib import Path
import hashlib
import json
import shlex
import sys
from urllib.request import Request, urlopen
import xml.etree.ElementTree as ET

from dikte_guest import guest, shell

root = Path(__file__).resolve().parent.parent
evidence = root / 'evidence/live-input-dispatch-20261109'
evidence.mkdir(exist_ok=True)
package = 'com.ayrvokan.widgets'
base = 'run-as ' + package + ' '
staged = sys.argv[1]
binary = root.parent / 'ayrvokan-agent/dist/ayrvokan-agent'
digest = hashlib.sha256(binary.read_bytes()).hexdigest()


def read(path):
    return shell(base + 'cat ' + shlex.quote(path))


def http(address, payload=None):
    with urlopen(Request(address, None if payload is None else json.dumps(payload).encode(), headers={'Content-Type': 'application/json', 'Accept': 'application/json, text/event-stream'}), timeout=5) as stream:
        return json.load(stream)


layout_text = read('shared_prefs/MainActivity.xml')
layout_xml = ET.fromstring(layout_text)
layout = json.loads(next(node.text for node in layout_xml if node.get('name') == 'layout'))
widget = next(item for item in layout if item['plugin'] == 'console')
runs = 'files/KaliMinimal/root/.local/share/ayrvokan-console/' + widget['id'] + '/runs'
latest = sorted(shell(base + 'ls ' + shlex.quote(runs)).split())[-1]
run = runs + '/' + latest
ui = json.loads(read(run + '/ui.json'))
engine = json.loads(read(run + '/engine.json'))
before = http(engine['emulator_url'] + '/api/status')
remote = http(ui['console_mcp_url'], {'jsonrpc': '2.0', 'id': 'native-link-tools', 'method': 'tools/list'})['result']['tools']
tools = []
for tool in remote:
    definition = {'name': tool['name'], 'description': tool.get('description', ''), 'input_schema': tool['inputSchema']}
    if not tool['name'].startswith('console_'):
        definition['url'] = ui['mcp_url']
    tools.append(definition)
manifest = {'schema': 'ayrvokan.agent.plugin/1', 'id': 'dos-console-live', 'transport': 'mcp_http', 'url': ui['console_mcp_url'], 'tools': tools}
if engine.get('crt_json'):
    manifest['observation_source'] = {'jsonl_path': engine['crt_json'] + '/crt-output.jsonl'}
plugin = 'files/KaliMinimal/root/.ayrvokan-agent/plugins/dos-console-live'
if not (evidence / 'installed-plugin-before.json').exists():
    (evidence / 'installed-plugin-before.json').write_text(read(plugin + '/plugin.json') + '\n')
(evidence / 'plugin.json').write_text(json.dumps(manifest, indent=2) + '\n')
shell(base + 'cp ' + shlex.quote(staged) + ' files/KaliMinimal/usr/local/bin/.ayrvokan-agent-new')
shell(base + 'chmod 755 files/KaliMinimal/usr/local/bin/.ayrvokan-agent-new')
actual = shell(base + 'sha256sum files/KaliMinimal/usr/local/bin/.ayrvokan-agent-new').split()[0]
assert actual == digest
shell(base + 'mv files/KaliMinimal/usr/local/bin/.ayrvokan-agent-new files/KaliMinimal/usr/local/bin/ayrvokan-agent')
manifest_code = 'from pathlib import Path\np=Path("/root/.ayrvokan-agent/plugins/dos-console-live/plugin.json.new")\np.write_text(' + repr(json.dumps(manifest)) + ')\np.replace(p.with_name("plugin.json"))\n'
result = guest(['/usr/bin/python3', '-c', manifest_code])
assert result.returncode == 0, result.stderr
shell('rm -f ' + shlex.quote(staged))
verification = '''import json
import subprocess
import time
p=subprocess.Popen(['/usr/local/bin/ayrvokan-agent','serve'],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True,bufsize=1)
try:
 ready=json.loads(p.stdout.readline())
 assert ready['type']=='ready' and ready['agent']['version']=='0.2.1'
 sequence=0
 def call(method,params):
  global sequence
  sequence+=1
  identifier=str(sequence)
  p.stdin.write(json.dumps({'id':identifier,'method':method,'params':params})+'\\n')
  p.stdin.flush()
  while True:
   value=json.loads(p.stdout.readline())
   if value.get('id')==identifier and value['type']=='result':
    assert value['ok'],value
    return value['result']
 from pathlib import Path
 manifest=json.loads(Path('/root/.ayrvokan-agent/plugins/dos-console-live/plugin.json').read_text())
 source=Path(manifest['observation_source']['jsonl_path'])
 with source.open('rb') as stream:
  stream.seek(max(0,source.stat().st_size-8192))
  last=json.loads(stream.read().splitlines()[-1])
 deadline=time.monotonic()+25
 while True:
  state=call('observations.status',{})['dos-console-live']
  if state['last_seq']==last['seq'] and state['caught_up']:break
  assert time.monotonic()<deadline,{'received':state['last_seq'],'expected':last['seq']}
  time.sleep(.05)
 session=call('session.create',{'cwd':'/root/workspace','title':'Native MCP transport verification; no gameplay'})['id']
 receipt=call('tool.call',{'session_id':session,'name':'plugin:dos-console-live/help','arguments':{'topic':'protocol'}})
 assert not receipt.get('isError'),receipt
 print(json.dumps({'version':ready['agent']['version'],'provider_transport':ready['agent']['provider']['transport'],'provider_configured':ready['agent']['provider']['configured'],'background_records':state['records'],'last_seq':state['last_seq'],'source_last_seq':last['seq'],'missing_records':state['missing_records'],'source_connected':state['connected'],'caught_up':state['caught_up'],'source_capture_age_ms':state['capture_age_ms'],'reader_receive_age_ms':state['receive_age_ms'],'actual_native_mcp_help_succeeded_without_observation_id_or_deadline':True,'verification_session':session,'gameplay_commands_sent':0}))
finally:
 p.stdin.close()
 p.wait(timeout=10)
 assert p.returncode==0,p.stderr.read()
'''
result = guest(['/usr/bin/python3', '-c', verification], timeout=65)
assert result.returncode == 0, result.stderr + result.stdout
verified = json.loads(result.stdout)
after = http(engine['emulator_url'] + '/api/status')
report = {'binary_sha256': digest, 'bytes': binary.stat().st_size, 'native_core_installed': True, 'apk_installed_version_unchanged': '0.12.0', 'manifest': manifest, 'verified': verified, 'game_paused_before': before['paused'], 'game_paused_after': after['paused'], 'same_emulator_instance': before['instance'] == after['instance'], 'layout_unchanged': hashlib.sha256(layout_text.encode()).hexdigest() == hashlib.sha256(read('shared_prefs/MainActivity.xml').encode()).hexdigest()}
(evidence / 'installed-native-verification.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({key: value for key, value in report.items() if key != 'manifest'}))
