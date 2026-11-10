from pathlib import Path
import argparse
import json
import os
import queue
import shlex
import shutil
import subprocess
import threading
import time
from urllib.request import Request, urlopen
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
parser = argparse.ArgumentParser()
parser.add_argument('--seconds', type=int, default=600)
args = parser.parse_args()
base = ['adb', '-s', '192.168.1.58:45155']
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
package = 'com.ayrvokan.widgets'
run_id = 'native-agent-' + time.strftime('%Y%m%dT%H%M%SZ', time.gmtime())
output = root / 'evidence' / run_id
output.mkdir()
plugin_id = 'dos-console-live'
guest_plugin = '/root/.ayrvokan-agent/plugins/' + plugin_id
private_plugin = 'files/KaliMinimal' + guest_plugin
plugin = output / 'plugin'
plugin.mkdir()
shutil.copyfile(root / 'tools/console_agent_link.py', plugin / 'bridge.py')


def shell(command, timeout=25):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=timeout).strip()


def private(path):
    return shell('run-as ' + package + ' cat ' + shlex.quote(path))


def http(url, value=None):
    with urlopen(Request(url, data=None if value is None else json.dumps(value).encode(), headers={'Content-Type': 'application/json'}), timeout=12) as stream:
        return json.load(stream)


def write(value):
    with open(output / 'events.jsonl', 'a') as stream:
        stream.write(json.dumps(value, ensure_ascii=False, separators=(',', ':')) + '\n')


def record(kind, **values):
    value = {'type': kind, 'observed_ns': str(time.monotonic_ns()), **values}
    write(value)
    return value


layout_xml = ET.fromstring(private('shared_prefs/MainActivity.xml'))
layout = json.loads(next(n.text for n in layout_xml if n.get('name') == 'layout'))
widget = next(row for row in layout if row['plugin'] == 'console')
run_root = 'files/KaliMinimal/root/.local/share/ayrvokan-console/' + widget['id'] + '/runs'
latest = sorted(shell('run-as ' + package + ' ls ' + shlex.quote(run_root)).split())[-1]
ui = json.loads(private(run_root + '/' + latest + '/ui.json'))
engine = json.loads(private(run_root + '/' + latest + '/engine.json'))
console = ui['console_mcp_url'].removesuffix('/mcp')
assert http(console + '/health')['ok']
tools = http(console + '/mcp', {'jsonrpc': '2.0', 'id': 1, 'method': 'tools/list'})['result']['tools']
definitions = []
for tool in tools:
    definition = {'name': tool['name'], 'description': tool['description'], 'input_schema': tool['inputSchema']}
    if tool['name'] != 'console_observe':
        definition['input_schema'].setdefault('properties', {})['observation_id'] = {'type': 'string', 'description': 'ID of the actual observation on which this decision was based'}
        definition['input_schema'].setdefault('required', []).append('observation_id')
    definitions.append(definition)
(plugin / 'plugin.json').write_text(json.dumps({'schema': 'ayrvokan.agent.plugin/1', 'id': plugin_id, 'command': ['/usr/bin/python3', guest_plugin + '/bridge.py'], 'timeout_ms': 30000, 'tools': definitions}, indent=2) + '\n')
exists = subprocess.run(base + ['shell', 'run-as ' + package + ' test -e ' + shlex.quote(private_plugin)], env=environment, capture_output=True).returncode == 0
if exists:
    raise RuntimeError('Experiment plugin already exists; inspect its recorded owner before reuse')
shell('run-as ' + package + ' mkdir -p ' + shlex.quote(private_plugin))
for name in ['bridge.py', 'plugin.json']:
    remote = '/data/local/tmp/' + run_id + '-' + name
    subprocess.run(base + ['push', str(plugin / name), remote], env=environment, check=True, capture_output=True)
    shell('run-as ' + package + ' cp ' + shlex.quote(remote) + ' ' + shlex.quote(private_plugin + '/' + name))
    shell('rm -f ' + shlex.quote(remote))
files = shell('run-as ' + package + ' pwd') + '/files'
native = shell('run-as ' + package + ' readlink files/runtime/lib/libtalloc.so.2').rsplit('/', 1)[0]
kernel = shell('uname -r')
argv = ['run-as', package, '/system/bin/env', '-i', 'PATH=/system/bin', 'HOME=' + files, 'TMPDIR=' + files + '/runtime/tmp', 'PROOT_TMP_DIR=' + files + '/runtime/tmp', 'PROOT_LOADER=' + native + '/libprootloader.so', 'LD_LIBRARY_PATH=' + files + '/runtime/lib', 'ANDROID_ROOT=/system', 'ANDROID_DATA=/data', '/system/bin/sh', '-c', 'exec "$@"', 'ayrvokan-measured-agent', native + '/libproot.so', '-0', '-r', files + '/KaliMinimal', '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '-b', files + '/runtime/tmp:/tmp', '--sysvipc', '-H', '-L', '-p', '--ashmem-memfd', '--kernel-release=' + kernel, '--link2symlink', '--kill-on-exit', '-w', '/root', '/usr/bin/env', '-i', 'HOME=/root', 'USER=root', 'LOGNAME=root', 'LANG=C.UTF-8', 'LC_ALL=C.UTF-8', 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', '/usr/local/bin/ayrvokan-agent', 'serve']
errors = open(output / 'agent-stderr.log', 'wb')
process = subprocess.Popen(base + ['shell', '-T', shlex.join(argv)], env=environment, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=errors, text=True, bufsize=1)
messages = queue.Queue()
sequence = 0


def reader():
    for line in process.stdout:
        try:
            value = json.loads(line)
            messages.put(value)
            record('agent_rpc', message=value)
        except ValueError:
            record('agent_invalid_line', line=line)
    messages.put({'type': 'eof'})


threading.Thread(target=reader, daemon=True).start()


def send(method, params):
    global sequence
    sequence += 1
    identifier = 'measure-' + str(sequence)
    process.stdin.write(json.dumps({'id': identifier, 'method': method, 'params': params}) + '\n')
    process.stdin.flush()
    record('rpc_sent', id=identifier, method=method, params=params)
    return identifier


def wait_result(identifier, timeout=30):
    deadline = time.monotonic() + timeout
    while True:
        value = messages.get(timeout=max(.01, deadline - time.monotonic()))
        if value.get('id') == identifier and value.get('type') == 'result':
            if not value.get('ok'):
                raise RuntimeError(value.get('error'))
            return value['result']
        if value.get('type') == 'eof':
            raise RuntimeError('Native agent exited')


ready = messages.get(timeout=30)
assert ready['type'] == 'ready' and ready['agent']['implementation'] == 'standalone-native-rust'
assert ready['agent']['provider']['configured']
opened = wait_result(send('session.create', {'cwd': '/root/workspace', 'title': 'ASCII Invaders: actual 10-minute native agent experiment'}))
session = opened['id']
wait_result(send('session.note', {'session_id': session, 'role': 'user', 'text': 'Samet: Play the live DOS Console continuously for ten minutes; we will spectate and measure real model observations and inputs.'}))
started_ns = time.monotonic_ns()
deadline_ns = started_ns + args.seconds * 1000000000
config = {'id': run_id, 'console': console, 'started_ns': str(started_ns), 'deadline_ns': str(deadline_ns)}
(plugin / 'run.json').write_text(json.dumps(config, indent=2) + '\n')
remote = '/data/local/tmp/' + run_id + '-run.json'
subprocess.run(base + ['push', str(plugin / 'run.json'), remote], env=environment, check=True, capture_output=True)
shell('run-as ' + package + ' cp ' + shlex.quote(remote) + ' ' + shlex.quote(private_plugin + '/run.json'))
shell('rm -f ' + shlex.quote(remote))
initial_status = http(engine['emulator_url'] + '/api/status')
http(console + '/mcp', {'jsonrpc': '2.0', 'id': 'experiment-resume', 'method': 'tools/call', 'params': {'name': 'console_resume', 'arguments': {}}})
prompt = f'''Samet requests that YOU, the existing native Rust Ayrvokan Agent, play the currently loaded ASCII Invaders game continuously for {args.seconds} seconds. We are spectating the actual Android DOS Console. The experiment ends at monotonic_ns {deadline_ns}; plugin observations show remaining_seconds. Start NOW by calling plugin:{plugin_id}/console_observe. Then play, observe, choose actions and keep trying until time expires, even if you lose. If the game ends, use the normal controls to retry, or console_load with the same selected game path {engine['game']['source']} if needed. Use the plugin:{plugin_id} MCP control tools for every game input. Each action must include observation_id copied from the observation that informed that decision. Tools return a fresh observation after each call. Use actual CRT x/y/byte/attribute writes and visible screen rows; direct video clears are outside the raw hook. Button names match the visible controller; tool descriptions show arguments. Make your OWN decisions each model round. Do not write any game-playing script, automatic firing/movement loop, bot, or extra policy. Do not change game/emulator files, guest memory, clocks, speed or measurement code. Do not use terminal.exec or other tools to bypass the MCP game tools. You may press/release or tap controls yourself, based on observations. Prefer short tool calls over narration. Continue playing through the whole authorized interval; do not end merely to explain. When the plugin says time expired, stop. Existing provider/model choices are preserved.'''
active = send('agent.turn', {'session_id': session, 'message': prompt})
metadata = {'id': run_id, 'output': str(output), 'session_id': session, 'started_ns': str(started_ns), 'deadline_ns': str(deadline_ns), 'duration_seconds_requested': args.seconds, 'console': console, 'ui': ui, 'engine': engine, 'agent_version': ready['agent']['version'], 'provider_transport': ready['agent']['provider']['transport'], 'configured_model': ready['agent']['provider'].get('model'), 'native_agent_process_location': 'Installed APK Kali ARM64, same /usr/local/bin/ayrvokan-agent serve binary, direct stdio; dedicated experiment session', 'plugin_role': 'Thin MCP request/response adapter and timestamp recorder; no input choices or game-playing algorithm', 'observer_role': 'External host records screen/state and watches Android DeX; does not choose inputs', 'initial_emulator': {'paused': initial_status['paused'], 'instance': initial_status['instance']}}
(output / 'run.json').write_text(json.dumps(metadata, indent=2) + '\n')
(root / 'evidence/current-agent-experiment.json').write_text(json.dumps(metadata, indent=2) + '\n')
print(json.dumps({'started': True, 'run': run_id, 'session': session, 'seconds': args.seconds, 'console': console}), flush=True)
next_snapshot = 0
turns = 1
try:
    while time.monotonic_ns() < deadline_ns:
        now = time.monotonic()
        if now >= next_snapshot:
            begin = time.monotonic_ns()
            try:
                frame = http(console + '/screen')
                status = http(engine['emulator_url'] + '/api/status')
                record('spectator_screen', read_started_ns=str(begin), read_completed_ns=str(time.monotonic_ns()), frame=frame, emulator={'paused': status['paused'], 'program': status['program'], 'icount': status['icount'], 'emulated_ns': status['activity']['emulated_ns']})
            except Exception as error:
                record('spectator_error', error=str(error))
            next_snapshot = now + .25
        try:
            message = messages.get(timeout=.05)
        except queue.Empty:
            continue
        if message.get('type') == 'eof':
            raise RuntimeError('Native agent stopped during the experiment')
        if message.get('id') == active and message.get('type') == 'result':
            record('turn_boundary', result=message, turns=turns)
            remaining = (deadline_ns - time.monotonic_ns()) / 1e9
            if remaining > 0:
                active = send('agent.turn', {'session_id': session, 'message': f'The same user-authorized run is still active; {remaining:.1f} seconds remain. Continue playing now using the last observations and MCP tools. No scripts or fixed input loop. Stop when remaining_seconds reaches zero.'})
                turns += 1
    record('window_ended', deadline_ns=str(deadline_ns), turns=turns)
finally:
    if process.poll() is None:
        send('agent.cancel', {'request_id': active})
    try:
        http(console + '/mcp', {'jsonrpc': '2.0', 'id': 'experiment-pause', 'method': 'tools/call', 'params': {'name': 'console_pause', 'arguments': {}}})
        record('end_pause', ok=True)
    except Exception as error:
        record('end_pause', error=str(error))
    for name in ['calls.jsonl', 'observations.json']:
        try:
            (output / name).write_text(private(private_plugin + '/' + name) + '\n')
        except Exception as error:
            record('export_error', file=name, error=str(error))
    process.stdin.close()
    try:
        process.wait(timeout=20)
    except subprocess.TimeoutExpired:
        process.terminate()
    errors.close()
    metadata.update({'ended_ns': str(time.monotonic_ns()), 'turns_started': turns, 'window_completed': time.monotonic_ns() >= deadline_ns, 'game_paused_at_end': True})
    (output / 'run.json').write_text(json.dumps(metadata, indent=2) + '\n')
    print(json.dumps({'finished': True, 'run': run_id, 'output': str(output)}), flush=True)
