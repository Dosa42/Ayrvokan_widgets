from pathlib import Path
from collections import Counter
import json
import re
import statistics
import sys

root = Path(__file__).resolve().parent.parent
metadata = json.loads((root / 'evidence/current-agent-experiment.json').read_text())
folder = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(metadata['output'])
run = json.loads((folder / 'run.json').read_text())
events = [json.loads(line) for line in (folder / 'events.jsonl').read_text().splitlines() if line.strip()]
frames = [e for e in events if e['type'] == 'spectator_screen']
finished = [e for e in events if e['type'] == 'agent_rpc' and e['message'].get('event', {}).get('type') == 'tool.finished']
started = [e for e in events if e['type'] == 'agent_rpc' and e['message'].get('event', {}).get('type') == 'tool.started']
provider = [e for e in events if e['type'] == 'agent_rpc' and e['message'].get('event', {}).get('type') == 'provider.usage']
file = folder / 'calls.jsonl'
calls = [json.loads(line) for line in file.read_text().splitlines() if line.strip()] if file.is_file() else []


def distribution(values):
    if not values:
        return {'samples': 0}
    values = sorted(values)
    def percentile(p):
        index = (len(values) - 1) * p
        low = int(index)
        high = min(len(values) - 1, low + 1)
        return values[low] + (values[high] - values[low]) * (index - low)
    return {'samples': len(values), 'min': values[0], 'p50': statistics.median(values), 'p95': percentile(.95), 'max': values[-1], 'mean': statistics.mean(values)}


controls = {'dpad_up', 'dpad_down', 'dpad_left', 'dpad_right', 'dpad_up_left', 'dpad_up_right', 'dpad_down_left', 'dpad_down_right', 'start', 'select', 'button_x', 'button_circle', 'button_diamond', 'button_square', 'l1', 'r1'}
valid = [call for call in calls if call['tool'] in controls and call.get('observation_to_call_ms') is not None]
phases = {}
for revision in [1, 2]:
    subset = [call for call in valid if call.get('instrumentation_revision', 1) == revision]
    phases[str(revision)] = {'observation_return_to_next_control_start_ms': distribution([call['observation_to_call_ms'] for call in subset]), 'mcp_request_to_reply_ms': distribution([(int(call['mcp_returned_ns']) - int(call['mcp_request_ns'])) / 1e6 for call in subset if call.get('mcp_returned_ns')]), 'under_500ms': sum(call['observation_to_call_ms'] <= 500 for call in subset)}
observations = []
for event in finished:
    value = event['message']['event']['data'].get('response', {}).get('result', {})
    observation = value.get('observation')
    if observation:
        observations.append(observation)
scores = []
lives = []
for event in frames:
    lines = event['frame'].get('lines', [])
    if not lines:
        continue
    line = lines[0]
    match = re.search(r'\d+', line)
    if match and len(line) > 16:
        scores.append({'observed_ns': event['observed_ns'], 'score': int(match.group()), 'lives': line.count('☺')})
        lives.append(line.count('☺'))
wall = (int(frames[-1]['observed_ns']) - int(frames[0]['observed_ns'])) / 1e9 if len(frames) > 1 else 0
emulated = (frames[-1]['emulator']['emulated_ns'] - frames[0]['emulator']['emulated_ns']) / 1e9 if wall else 0
intervals = [(int(frames[i]['observed_ns']) - int(frames[i - 1]['observed_ns'])) / 1e6 for i in range(1, len(frames))]
raw_gaps = []
for index in range(1, len(observations)):
    before, after = observations[index - 1], observations[index]
    advanced = max(0, (after.get('crt_last_seq') or 0) - (before.get('crt_last_seq') or 0))
    raw_gaps.append(max(0, advanced - len(after.get('crt_events', []))))
bridge_path = folder / 'bridge.jsonl'
bridge = [json.loads(line) for line in bridge_path.read_text().splitlines() if line.strip()] if bridge_path.is_file() else []
forwarded = [e for e in bridge if e.get('kind') == 'forwarded' and (e.get('trace') or {}).get('run') == run['id']]
replies = [e for e in bridge if e.get('kind') == 'dos_reply' and (e.get('origin', {}).get('trace') or {}).get('run') == run['id']]
usage = [e['message']['event']['data'].get('usage', {}) for e in provider]
report = {'run': run['id'], 'session_id': run['session_id'], 'requested_seconds': run['duration_seconds_requested'], 'run_window_completed': run.get('window_completed', False), 'agent': {'binary': '/usr/local/bin/ayrvokan-agent', 'version': run['agent_version'], 'transport': run['provider_transport'], 'configured_model': run['configured_model'], 'plugin': run['plugin_role']}, 'tools_started': len(started), 'tools_finished': len(finished), 'tool_counts': dict(Counter(e['message']['event']['data']['name'] for e in started)), 'model_rounds_with_usage': len(provider), 'usage': {'input_tokens_sum': sum(u.get('input_tokens', 0) for u in usage), 'output_tokens_sum': sum(u.get('output_tokens', 0) for u in usage)}, 'control_calls_linked_to_actual_observation': len(valid), 'control_calls_unlinked': sum(call['tool'] in controls and not call.get('observation_id') for call in calls), 'latency_ms_by_instrumentation_revision': phases, 'mcp_emit_to_bridge_receive_ms': distribution([(int(e['received_ns']) - int(e['source_emit_ns'])) / 1e6 for e in forwarded]), 'bridge_receive_to_socket_send_ms': distribution([(int(e['send_end_ns']) - int(e['received_ns'])) / 1e6 for e in forwarded]), 'bridge_socket_send_to_emulator_ack_ms': distribution([(int(e['bridge_ns']) - int(e['origin']['send_end_ns'])) / 1e6 for e in replies]), 'actual_forwarded_key_events': len(forwarded), 'emulator_acknowledgements': len(replies), 'spectator': {'samples': len(frames), 'wall_seconds_covered': wall, 'emulated_seconds_advanced': emulated, 'emulated_wall_ratio': emulated / wall if wall else None, 'console_screen_poll_hz': (frames[-1]['frame']['frame_id'] - frames[0]['frame']['frame_id']) / wall if wall else None, 'external_poll_interval_ms': distribution(intervals), 'read_request_ms': distribution([(int(e['read_completed_ns']) - int(e['read_started_ns'])) / 1e6 for e in frames]), 'highest_observed_score': max((s['score'] for s in scores), default=None), 'last_observed_hud': scores[-1] if scores else None, 'minimum_observed_lives': min(lives) if lives else None, 'life_decrements_observed': sum(max(0, lives[i - 1] - lives[i]) for i in range(1, len(lives))), 'game_over_visible_samples': sum(any('GAME OVER' in l.upper() for l in e['frame'].get('lines', [])) for e in frames)}, 'raw_observation': {'observations_returned': len(observations), 'undelivered_raw_writes_between_observations': sum(raw_gaps), 'max_raw_writes_not_in_next_model_observation': max(raw_gaps, default=0), 'native_dropped_counter_max': max((o.get('crt_dropped') or 0 for o in observations), default=0)}, 'instrumentation_corrections': [e for e in events if e['type'] == 'instrumentation_correction'], 'turn_boundaries': [e for e in events if e['type'] == 'turn_boundary'], 'limitations': ['Observation-to-control starts at timestamp immediately before plugin result serialization, not a measurement inside model attention; provider network, model reasoning and tool scheduling are combined.', 'Native bridge timing ends at socket send or emulator input acknowledgement, not game logic execution or Android pixels.', 'External spectator polling is approximately4Hz; game screen producer is approximately20Hz. PNG screenshots are separate actual DeX observations.', 'CRT compact endpoint exposes only recent256 writes; revision1 adapter forwarded at most128, revision2 forwards all available. Full native JSONL remains separate. Missing observation writes differ from native ring drops.', 'Revision1 omitted native MCP success detail; revision2 preserves it. Compare phases separately.', 'Game /sp=4 is its documented slowest setting; emulator cycles5000 and screen20Hz were not changed during this run.', 'Highest score and life changes are those actually sampled from visible HUD; skipped screen states can be missed.']}
report['agent']['plugin_implementation'] = 'Python3 stdio transport adapter; native Rust agent/model selects every control, native Rust MCP/controller/bridge execute it'
report['usage']['cached_input_tokens_sum'] = sum(u.get('input_tokens_details', {}).get('cached_tokens', 0) for u in usage)
report['usage']['first_round_input_tokens'] = usage[0].get('input_tokens') if usage else None
report['usage']['last_round_input_tokens'] = usage[-1].get('input_tokens') if usage else None
report['usage']['interpretation'] = 'Sum of input tokens presented over94 rounds includes replayed/cached history; this is not a unique-token count or a billing estimate'
report['source_findings'] = [{'path': str(root.parent / 'ayrvokan-agent/src/chatgpt.rs'), 'line': 12, 'finding': 'With configured model null, every model round calls Auth.models(), which performs a network catalog GET before Responses. Its separate duration was not instrumented.'}, {'path': str(root.parent / 'ayrvokan-agent/src/chatgpt.rs'), 'line': 26, 'finding': 'The full relevant session history is rebuilt into every Responses request; no context compaction was active during this run.'}, {'path': str(root.parent / 'ayrvokan-agent/src/agent.rs'), 'line': 232, 'finding': 'Core stops at configured24 rounds. The host reissued the same continue instruction after each limit; no host gameplay strategy selected inputs.'}]
for name, key in [('crt-integrity.json', 'native_crt_integrity'), ('end-verification.json', 'end_verification')]:
    if (folder / name).is_file():
        report[key] = json.loads((folder / name).read_text())
(folder / 'report.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report))
