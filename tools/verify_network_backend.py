from pathlib import Path
import copy
import json
import os
import queue
import shlex
import socket
import subprocess
import threading
import time
import urllib.request

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
report = {'checks': {}, 'execution': 'Real processes inside installed app Kali, isolated owned acceptance state; system sockets read by Android shell collector'}
process = None


def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=25).strip()


app = shell('run-as ' + package + ' pwd')
files = app + '/files'
native = shell('run-as ' + package + ' readlink files/runtime/lib/libtalloc.so.2').rsplit('/', 1)[0]
kernel = shell('uname -r')
state = '/root/.ayrvokan-network-check'
fixture_app_path = files + '/KaliMinimal/root/workspace/.network-hq-fixture.py'
fixture_linux_path = '/root/workspace/.network-hq-fixture.py'
fixture = (root / 'tests/network_fixture.py').read_text()
argv = ['run-as', package, '/system/bin/sh', '-c', 'cat > "$1"', 'ayrvokan-fixture', fixture_app_path]
subprocess.run(base + ['shell', shlex.join(argv)], input=fixture, text=True, env=environment, check=True, timeout=20)
with socket.socket() as probe:
    probe.bind(('127.0.0.1', 0))
    port = probe.getsockname()[1]


def launch():
    argv = ['run-as', package, '/system/bin/env', '-i', 'PATH=/system/bin', 'HOME=' + files, 'TMPDIR=' + files + '/runtime/tmp', 'PROOT_TMP_DIR=' + files + '/runtime/tmp', 'PROOT_LOADER=' + native + '/libprootloader.so', 'LD_LIBRARY_PATH=' + files + '/runtime/lib', 'ANDROID_ROOT=/system', 'ANDROID_DATA=/data', '/system/bin/sh', '-c', 'exec "$@"', 'ayrvokan-native', native + '/libproot.so', '-0', '-r', files + '/KaliMinimal', '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '-b', files + '/runtime/tmp:/tmp', '--sysvipc', '-H', '-L', '-p', '--ashmem-memfd', '--kernel-release=' + kernel, '--link2symlink', '--kill-on-exit', '-w', '/root', '/usr/bin/env', '-i', 'HOME=/root', 'USER=root', 'LOGNAME=root', 'LANG=C.UTF-8', 'LC_ALL=C.UTF-8', 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', 'AYRVOKAN_NETWORK_HOME=' + state, '/usr/bin/python3', '-u', '/opt/ayrvokan/network_hq.py']
    child = subprocess.Popen(base + ['shell', shlex.join(argv)], env=environment, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, bufsize=1)
    output = queue.Queue()
    def reader():
        try:
            for line in child.stdout:
                output.put(json.loads(line))
        except Exception as error:
            output.put({'reader_error': str(error)})
    threading.Thread(target=reader, daemon=True).start()
    while True:
        value = output.get(timeout=20)
        if value.get('type') == 'ready':
            break
    return child, output


sequence = 0


def request(method, params=None):
    global sequence
    sequence += 1
    identifier = 'test-' + str(sequence)
    process.stdin.write(json.dumps({'id': identifier, 'method': method, 'params': params or {}}) + '\n')
    process.stdin.flush()
    deadline = time.monotonic() + 40
    while True:
        value = messages.get(timeout=max(0.1, deadline - time.monotonic()))
        if value.get('id') == identifier:
            assert value['ok'], value
            return value['result']


def stop():
    process.stdin.close()
    process.wait(timeout=20)
    assert process.returncode == 0, process.stderr.read()


def http():
    with urllib.request.urlopen('http://127.0.0.1:' + str(port), timeout=3) as response:
        return json.load(response)


try:
    process, messages = launch()
    configuration = request('config.get')
    original = copy.deepcopy(configuration)
    fixture_definition = {'id': 'acceptance-http', 'label': 'Network acceptance fixture', 'command': '/usr/bin/python3 -u ' + fixture_linux_path + ' ' + str(port), 'cwd': '/root/workspace', 'autostart': False}
    configuration['services'] = [fixture_definition]
    configuration['targets'] = [{'id': 'fixture', 'label': 'Fixture endpoint', 'url': 'http://127.0.0.1:' + str(port)}]
    configuration['mcpServers']['http-fixture'] = {'url': 'http://127.0.0.1:' + str(port) + '/mcp'}
    request('config.save', {'config': configuration})
    started = request('service.start', {'id': 'acceptance-http'})
    deadline = time.monotonic() + 10
    while True:
        try:
            assert http()['marker'] == 'NETWORK_SERVICE_OK'
            break
        except OSError:
            assert time.monotonic() < deadline
            time.sleep(0.2)
    report['checks']['real_linux_service_start_and_http_endpoint'] = True
    resolved = request('network.dns', {'host': 'localhost'})
    assert '127.0.0.1' in resolved['addresses'], resolved
    assert request('network.tcp', {'host': '127.0.0.1', 'port': port})['open']
    assert request('network.http', {'url': 'http://127.0.0.1:' + str(port)})['status'] == 200
    report['checks']['dns_tcp_http_inspector_tools_execute'] = True
    tls = request('network.tls', {'host': 'api.openai.com', 'port': 443})
    assert tls['version'].startswith('TLS') and tls['certificate']
    report['checks']['live_tls_handshake_and_peer_certificate'] = True
    snapshot = request('snapshot')
    assert snapshot['collector']['ok'] and snapshot['collector']['uid'] == 2000
    assert snapshot['collector']['tables_read'] == 4
    assert any(value['local']['port'] == port and value['state'] == 'LISTEN' for value in snapshot['collector']['connections'])
    assert snapshot['targets'][0]['status'] == 'UP'
    report['checks']['system_tcp_udp_ipv4_ipv6_collector_observes_real_service'] = True
    discovered = request('network.discover', {'host': '127.0.0.1', 'first': port - 1, 'last': port + 1})
    assert any(value['port'] == port for value in discovered['open'])
    report['checks']['custom_port_discovery_finds_real_listener'] = True
    connected = request('mcp.connect', {'id': 'inspector'})
    assert len(connected['tools']) == 5
    called = request('mcp.call', {'id': 'inspector', 'name': 'network.tcp', 'arguments': {'host': '127.0.0.1', 'port': port}})
    assert json.loads(called['content'][0]['text'])['open']
    request('mcp.ping', {'id': 'inspector'})
    request('mcp.disconnect', {'id': 'inspector'})
    report['checks']['real_stdio_mcp_initialize_tools_call_ping_disconnect'] = True
    connected = request('mcp.connect', {'id': 'http-fixture'})
    assert [value['name'] for value in connected['tools']] == ['echo', 'second']
    called = request('mcp.call', {'id': 'http-fixture', 'name': 'echo', 'arguments': {'text': 'NETWORK_HQ_OK'}})
    assert called['content'][0]['text'] == 'HTTP_MCP_OK NETWORK_HQ_OK'
    request('mcp.ping', {'id': 'http-fixture'})
    assert request('mcp.resources', {'id': 'http-fixture'})['resources'][0]['uri'] == 'test://network'
    assert request('mcp.prompts', {'id': 'http-fixture'})['prompts'][0]['name'] == 'network-check'
    request('mcp.disconnect', {'id': 'http-fixture'})
    history = http()['history']
    assert any(value['method'] == 'notifications/initialized' for value in history)
    assert any(value['method'] == 'DELETE' and value['session'] == 'ayrvokan-fixture-session' for value in history)
    report['checks']['streamable_http_mcp_json_sse_pagination_session_and_negotiated_protocol'] = True
    report['checks']['http_mcp_tools_calls_resources_prompts_ping_disconnect'] = True
    report['http_mcp_history'] = history
    exported = request('report.export')
    assert exported['saved']
    report['checks']['persistent_report_export'] = True
    assert request('file.read', {'name': 'hosts'})['path'] == '/etc/hosts'
    assert request('file.read', {'name': 'resolver'})['path'] == '/etc/resolv.conf'
    report['checks']['actual_linux_hosts_and_resolver_readable'] = True
    request('service.stop', {'id': 'acceptance-http'})
    assert not request('network.tcp', {'host': '127.0.0.1', 'port': port})['open']
    down = request('snapshot')
    assert down['targets'][0]['status'] == 'DOWN'
    assert any(value['kind'] == 'HOST' and 'DOWN' in value['message'] for value in down['events'])
    assert any(value['kind'] == 'PORT' and str(port) in value['message'] and 'closed' in value['message'] for value in down['events'])
    report['checks']['live_host_and_listener_transitions_recorded_in_event_history'] = True
    assert any('NETWORK_FIXTURE_PORT=' in value for value in request('service.log', {'id': 'acceptance-http'})['lines'])
    report['checks']['service_stop_closes_listener_host_changes_down_and_logs_persist'] = True
    stop()
    process, messages = launch()
    assert request('config.get') == configuration
    snapshot = request('snapshot')
    assert not snapshot['services'][0]['running']
    assert request('service.log', {'id': 'acceptance-http'})['lines']
    report['checks']['registry_events_and_logs_survive_daemon_restart'] = True
    request('config.save', {'config': original})
    stop()
    process = None
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    if process is not None:
        try:
            stop()
        except Exception:
            process.kill()
            process.wait()
    (root / 'evidence/network-backend-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report))
    shell('run-as ' + package + ' rm -rf files/KaliMinimal/root/.ayrvokan-network-check files/KaliMinimal/root/workspace/.network-hq-fixture.py')
