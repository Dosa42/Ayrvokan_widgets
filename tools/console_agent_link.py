from pathlib import Path
import json
import sys
import time
from urllib.request import Request, urlopen

folder = Path(__file__).resolve().parent
config = json.loads((folder / 'run.json').read_text())
request = json.load(sys.stdin)
started = time.monotonic_ns()
name = request['tool']
arguments = dict(request.get('arguments') or {})
observation_id = arguments.pop('observation_id', None)
state_path = folder / 'observations.json'
state = json.loads(state_path.read_text()) if state_path.is_file() else {'next': 0, 'last_seq': 0, 'observations': {}}
record = {'instrumentation_revision': 2, 'type': 'plugin_call', 'tool': name, 'arguments': arguments, 'started_ns': str(started), 'observation_id': observation_id}
anchor = state['observations'].get(observation_id or '')
if anchor:
    record['observation_returned_ns'] = anchor['returned_ns']
    record['observation_captured_ns'] = anchor.get('captured_ns')
    record['observation_to_call_ms'] = (started - int(anchor['returned_ns'])) / 1e6


def get(route):
    with urlopen(config['console'] + route, timeout=8) as stream:
        return json.load(stream)


def append(value):
    with open(folder / 'calls.jsonl', 'a') as stream:
        stream.write(json.dumps(value, separators=(',', ':')) + '\n')


def observe():
    crt = get('/crt')
    frame = get('/screen')
    events = [event for event in crt.get('events', []) if event[0] > state['last_seq']]
    state['next'] += 1
    identifier = str(state['next'])
    stamp = time.monotonic_ns()
    result = {'id': identifier, 'returned_ns': str(stamp), 'captured_ns': crt.get('captured_ns'), 'crt_last_seq': crt.get('last_seq'), 'crt_fields': crt.get('event_fields'), 'crt_events': events, 'crt_window_omitted': 0, 'crt_missing_since_last_observation': max(0, int(crt.get('window_first_seq') or 1) - int(state['last_seq']) - 1) if state['last_seq'] else 0, 'crt_dropped': crt.get('dropped'), 'coverage': crt.get('coverage'), 'visible_rows': [[index, line.rstrip()] for index, line in enumerate(frame.get('lines', [])) if line.strip()], 'remaining_seconds': max(0, (int(config['deadline_ns']) - stamp) / 1e9)}
    state['last_seq'] = crt.get('last_seq', state['last_seq'])
    state['observations'][identifier] = {'returned_ns': str(stamp), 'captured_ns': crt.get('captured_ns')}
    state['observations'] = dict(list(state['observations'].items())[-256:])
    state_path.write_text(json.dumps(state))
    return result


try:
    result = None
    if name != 'console_observe':
        if started >= int(config['deadline_ns']):
            raise RuntimeError('The authorized 600-second measurement window has ended')
        payload = {'jsonrpc': '2.0', 'id': str(started), 'method': 'tools/call', 'params': {'name': name, 'arguments': arguments, '_meta': {'ayrvokan_trace': {'run': config['id'], 'observation_id': observation_id, 'agent_plugin_start_ns': str(started)}}}}
        ingress = time.monotonic_ns()
        record['mcp_request_ns'] = str(ingress)
        with urlopen(Request(config['console'] + '/mcp', json.dumps(payload).encode(), headers={'Content-Type': 'application/json'}), timeout=20) as stream:
            reply = json.load(stream)
        record['mcp_returned_ns'] = str(time.monotonic_ns())
        record['mcp_error'] = reply.get('error')
        record['is_error'] = reply.get('result', {}).get('isError', False)
        result = {'ok': not record['mcp_error'] and not record['is_error'], 'mcp_result': reply.get('result')}
        if result.get('mcp_result'):
            content = []
            for block in result['mcp_result'].get('content', []):
                try:
                    value = json.loads(block.get('text', ''))
                except ValueError:
                    value = None
                if not isinstance(value, dict) or set(value) != {'console_screen'}:
                    content.append(block)
            result['mcp_result']['content'] = content
        if not result['ok']:
            result['detail'] = reply
    observation = observe()
    record['new_observation_id'] = observation['id']
    record['returned_ns'] = observation['returned_ns']
    record['crt_last_seq'] = observation['crt_last_seq']
    append(record)
    print(json.dumps({'result': result, 'observation': observation}, ensure_ascii=False, separators=(',', ':')))
except Exception as error:
    record.update({'error': str(error), 'ended_ns': str(time.monotonic_ns())})
    append(record)
    print(json.dumps({'error': str(error)}))
    raise SystemExit(1)
