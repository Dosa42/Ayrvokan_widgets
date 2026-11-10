import concurrent.futures
import copy
import json
import os
from pathlib import Path
import queue
import signal
import socket
import ssl
import subprocess
import sys
import threading
import time
import urllib.error
import urllib.parse
import urllib.request

ROOT = Path(os.environ.get('AYRVOKAN_NETWORK_HOME', '/root/.ayrvokan-network'))
OUTPUT = threading.Lock()
PROTOCOL = '2025-06-18'


def emit(value):
    with OUTPUT:
        print(json.dumps(value, ensure_ascii=False), flush=True)


def atomic(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_name('.' + path.name + '.new')
    temporary.write_text(json.dumps(value, indent=2, ensure_ascii=False) + '\n')
    temporary.replace(path)


def tcp(host, port, timeout=2):
    started = time.monotonic()
    try:
        with socket.create_connection((host, int(port)), timeout=timeout) as connection:
            return {'host': host, 'port': int(port), 'open': True, 'address': connection.getpeername()[0], 'latency_ms': round((time.monotonic() - started) * 1000, 2)}
    except OSError as error:
        return {'host': host, 'port': int(port), 'open': False, 'error': str(error), 'latency_ms': round((time.monotonic() - started) * 1000, 2)}


def inspect_http(params):
    started = time.monotonic()
    request = urllib.request.Request(params['url'], headers=params.get('headers', {}), method=params.get('method', 'GET'))
    try:
        response = urllib.request.urlopen(request, timeout=8)
    except urllib.error.HTTPError as error:
        response = error
    with response:
        data = response.read(65537)
        return {'url': response.url, 'status': response.status, 'headers': dict(response.headers), 'body': data[:65536].decode('utf-8', 'replace'), 'truncated': len(data) > 65536, 'latency_ms': round((time.monotonic() - started) * 1000, 2)}


def inspect_tls(params):
    host = params['host']
    port = int(params.get('port', 443))
    with socket.create_connection((host, port), timeout=5) as connection:
        with ssl.create_default_context().wrap_socket(connection, server_hostname=host) as wrapped:
            return {'host': host, 'port': port, 'version': wrapped.version(), 'cipher': wrapped.cipher(), 'certificate': wrapped.getpeercert()}


class MCP:
    def __init__(self, definition):
        self.definition = definition
        self.lock = threading.RLock()
        self.sequence = 0
        self.pending = {}
        self.process = None
        self.session = None
        self.version = PROTOCOL
        self.info = {}
        self.tools = []
        self.logs = []
        self.connected = False
        self.last_ping = 0
        if 'command' in definition:
            environment = dict(os.environ, **definition.get('env', {}))
            self.process = subprocess.Popen([definition['command'], *definition.get('args', [])], cwd=definition.get('cwd', '/root/workspace'), env=environment, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, bufsize=1, start_new_session=True)
            threading.Thread(target=self.reader, daemon=True).start()
            threading.Thread(target=self.errors, daemon=True).start()
        try:
            self.info = self.request('initialize', {'protocolVersion': PROTOCOL, 'capabilities': {}, 'clientInfo': {'name': 'Ayrvokan Network HQ', 'version': '0.4.0'}})
            self.version = self.info.get('protocolVersion', PROTOCOL)
            self.request('notifications/initialized', notification=True)
            self.connected = True
            self.last_ping = time.time()
        except Exception:
            self.close()
            raise

    def errors(self):
        for line in self.process.stderr:
            self.logs.append(line.rstrip())
            del self.logs[:-80]

    def reader(self):
        try:
            for line in self.process.stdout:
                message = json.loads(line)
                identifier = message.get('id')
                if 'method' in message and identifier is not None:
                    self.process.stdin.write(json.dumps({'jsonrpc': '2.0', 'id': identifier, 'error': {'code': -32601, 'message': 'Client method not supported'}}) + '\n')
                    self.process.stdin.flush()
                elif identifier in self.pending:
                    self.pending[identifier].put(message)
        except Exception as error:
            self.logs.append(str(error))
        finally:
            self.connected = False
            for pending in list(self.pending.values()):
                pending.put({'error': {'message': 'MCP process disconnected'}})

    def request(self, method, params=None, notification=False):
        with self.lock:
            self.sequence += 1
            message = {'jsonrpc': '2.0', 'method': method}
            if params is not None:
                message['params'] = params
            if not notification:
                message['id'] = self.sequence
            if self.process is not None:
                if self.process.poll() is not None:
                    raise RuntimeError('MCP process exited ' + str(self.process.returncode))
                pending = queue.Queue()
                if not notification:
                    self.pending[self.sequence] = pending
                try:
                    self.process.stdin.write(json.dumps(message) + '\n')
                    self.process.stdin.flush()
                    response = {} if notification else pending.get(timeout=12)
                finally:
                    self.pending.pop(self.sequence, None)
            else:
                headers = dict(self.definition.get('headers', {}))
                headers.update({'Content-Type': 'application/json', 'Accept': 'application/json, text/event-stream'})
                if self.session:
                    headers['Mcp-Session-Id'] = self.session
                    headers['MCP-Protocol-Version'] = self.version
                request = urllib.request.Request(self.definition['url'], data=json.dumps(message).encode(), headers=headers, method='POST')
                with urllib.request.urlopen(request, timeout=12) as result:
                    if result.headers.get('Mcp-Session-Id'):
                        self.session = result.headers['Mcp-Session-Id']
                    if notification:
                        return {}
                    if 'text/event-stream' in result.headers.get('Content-Type', ''):
                        chunks = []
                        response = None
                        for raw in result:
                            line = raw.decode().rstrip('\r\n')
                            if line.startswith('data:'):
                                chunks.append(line[5:].lstrip())
                            elif not line and chunks:
                                value = json.loads('\n'.join(chunks))
                                chunks = []
                                if value.get('id') == message['id']:
                                    response = value
                                    break
                        if response is None:
                            raise RuntimeError('MCP SSE ended without the matching response')
                    else:
                        response = json.load(result)
            if 'error' in response:
                raise RuntimeError(json.dumps(response['error'], ensure_ascii=False))
            return response.get('result', {})

    def list(self, method, key):
        values = []
        cursor = None
        for _ in range(50):
            result = self.request(method, {'cursor': cursor} if cursor else {})
            values.extend(result.get(key, []))
            cursor = result.get('nextCursor')
            if not cursor:
                break
        return {key: values, 'nextCursor': cursor}

    def close(self):
        self.connected = False
        if self.process is not None and self.process.poll() is None:
            try:
                os.killpg(self.process.pid, signal.SIGTERM)
                self.process.wait(timeout=3)
            except subprocess.TimeoutExpired:
                os.killpg(self.process.pid, signal.SIGKILL)
                self.process.wait()
            except ProcessLookupError:
                pass
        elif self.session:
            headers = dict(self.definition.get('headers', {}), **{'Mcp-Session-Id': self.session, 'MCP-Protocol-Version': self.version})
            try:
                with urllib.request.urlopen(urllib.request.Request(self.definition['url'], headers=headers, method='DELETE'), timeout=3):
                    pass
            except urllib.error.HTTPError as error:
                if error.code not in (404, 405):
                    self.logs.append(str(error))
            except OSError as error:
                self.logs.append(str(error))
        self.session = None


class Engine:
    def __init__(self, live=True):
        ROOT.mkdir(parents=True, exist_ok=True)
        self.lock = threading.RLock()
        self.config_path = ROOT / 'config.json'
        self.clients = {}
        self.processes = {}
        self.events = []
        self.ports = {}
        self.latest = {}
        self.stopped = threading.Event()
        self.live = live
        self.scanning = False
        if not self.config_path.exists():
            atomic(self.config_path, {'refresh_seconds': 5, 'targets': [{'id': 'cliproxy', 'label': 'CLIProxyAPI', 'url': 'http://127.0.0.1:8317/'}], 'services': [], 'mcpServers': {'inspector': {'command': '/usr/bin/python3', 'args': ['/opt/ayrvokan/network_hq.py', 'mcp'], 'autoconnect': True}}})
        self.config = json.loads(self.config_path.read_text())
        events_path = ROOT / 'events.json'
        if events_path.is_file():
            self.events = json.loads(events_path.read_text())[-100:]
        if live:
            threading.Thread(target=self.monitor, daemon=True).start()
            threading.Thread(target=self.autostart, daemon=True).start()

    def event(self, kind, message):
        with self.lock:
            self.events.append({'time': time.time(), 'kind': kind, 'message': message})
            del self.events[:-100]
            atomic(ROOT / 'events.json', self.events)

    def autostart(self):
        for identifier, definition in self.config.get('mcpServers', {}).items():
            if definition.get('autoconnect'):
                try:
                    self.dispatch('mcp.connect', {'id': identifier})
                except Exception as error:
                    self.event('MCP', identifier + ': ' + str(error))
        for definition in self.config.get('services', []):
            if definition.get('autostart'):
                try:
                    self.dispatch('service.start', {'id': definition['id']})
                except Exception as error:
                    self.event('SERVICE', str(error))

    def collector(self, operation='snapshot'):
        path = Path(os.environ.get('AYRVOKAN_NETWORK_SHELL', '/opt/ayrvokan/network-shell.json'))
        try:
            config = json.loads(path.read_text())
            with socket.create_connection(('127.0.0.1', config['port']), timeout=2) as connection:
                connection.settimeout(3)
                connection.sendall((json.dumps({'token': config['token'], 'op': operation}) + '\n').encode())
                return json.loads(connection.makefile('r').readline())
        except Exception as error:
            return {'ok': False, 'source': 'App connection probes', 'error': str(error), 'connections': [], 'interfaces': []}

    def watch(self, target):
        value = dict(target, checked_at=time.time())
        try:
            if target.get('url'):
                result = inspect_http({'url': target['url'], 'headers': target.get('headers', {})})
                value.update(status='UP' if result['status'] < 400 else 'HTTP ' + str(result['status']), http_status=result['status'], latency_ms=result['latency_ms'])
            else:
                result = tcp(target['host'], target['port'])
                value.update(status='UP' if result['open'] else 'DOWN', latency_ms=result['latency_ms'])
                if not result['open']:
                    value['error'] = result['error']
        except Exception as error:
            value.update(status='DOWN', error=str(error))
        value.pop('headers', None)
        return value

    def snapshot(self):
        with self.lock:
            configuration = copy.deepcopy(self.config)
        collector = self.collector()
        targets = []
        with concurrent.futures.ThreadPoolExecutor(max_workers=8) as pool:
            targets = list(pool.map(self.watch, configuration.get('targets', [])))
        ports = []
        if collector.get('ok'):
            for connection in collector['connections']:
                if connection['state'] == 'LISTEN' or connection['protocol'].startswith('UDP'):
                    ports.append(dict(connection, source='Kernel socket table'))
        else:
            with self.lock:
                watched = list(self.ports)
            if not watched:
                watched = [22, 80, 443, 3000, 4000, 5000, 5013, 5173, 8000, 8080, 8081, 8317, 8765, 8787, 8788, 9000, 9222, 11434]
            with concurrent.futures.ThreadPoolExecutor(max_workers=12) as pool:
                found = list(pool.map(lambda port: tcp('127.0.0.1', port, 0.2), watched))
            ports = [{'protocol': 'TCP', 'local': {'host': '127.0.0.1', 'port': value['port']}, 'state': 'OPEN', 'source': 'TCP connect probe'} for value in found if value['open']]
        clients = []
        with self.lock:
            current_clients = list(self.clients.items())
        for identifier, client in current_clients:
            if client.connected and time.time() - client.last_ping > 15:
                try:
                    client.request('ping')
                    client.last_ping = time.time()
                except Exception as error:
                    client.connected = False
                    self.event('MCP', identifier + ': ' + str(error))
            clients.append({'id': identifier, 'connected': client.connected, 'server': client.info.get('serverInfo', {}), 'protocol': client.version, 'tools': len(client.tools), 'pid': client.process.pid if client.process else None, 'last_ping': client.last_ping})
        present = {value['id'] for value in clients}
        clients.extend({'id': identifier, 'connected': False, 'transport': 'stdio' if 'command' in definition else 'HTTP'} for identifier, definition in configuration.get('mcpServers', {}).items() if identifier not in present)
        services = []
        with self.lock:
            for definition in configuration.get('services', []):
                process = self.processes.get(definition['id'])
                code = process['process'].poll() if process else None
                services.append({'id': definition['id'], 'label': definition.get('label', definition['id']), 'running': process is not None and code is None, 'pid': process['process'].pid if process and code is None else None, 'exit_code': code, 'command': definition['command']})
            previous = self.latest
            old_collector = previous.get('collector', {})
            if previous and bool(old_collector.get('ok')) != bool(collector.get('ok')):
                self.event('COLLECTOR', 'Android shell socket collector ' + ('connected' if collector.get('ok') else 'disconnected'))
            old_targets = {entry['id']: entry.get('status') for entry in previous.get('targets', [])}
            for target in targets:
                if target['id'] in old_targets and old_targets[target['id']] != target['status']:
                    self.event('HOST', target.get('label', target['id']) + ': ' + old_targets[target['id']] + ' → ' + target['status'])
            if old_collector.get('ok') and collector.get('ok'):
                old_ports = {(entry['protocol'], entry['local']['host'], entry['local']['port']) for entry in previous.get('ports', []) if entry.get('state') == 'LISTEN'}
                new_ports = {(entry['protocol'], entry['local']['host'], entry['local']['port']) for entry in ports if entry.get('state') == 'LISTEN'}
                for label, changes in [('opened', new_ports - old_ports), ('closed', old_ports - new_ports)]:
                    for protocol, host, port in sorted(changes):
                        self.event('PORT', protocol + ' ' + host + ':' + str(port) + ' ' + label)
            value = {'time': time.time(), 'collector': collector, 'targets': targets, 'ports': ports, 'mcp': clients, 'services': services, 'events': self.events[-40:], 'refresh_seconds': configuration.get('refresh_seconds', 5), 'scanning': self.scanning}
            self.latest = value
        return value

    def monitor(self):
        while not self.stopped.is_set():
            try:
                value = self.snapshot()
                atomic(ROOT / 'snapshot.json', value)
                emit({'type': 'snapshot', 'snapshot': value})
            except Exception as error:
                self.event('ERROR', str(error))
            self.stopped.wait(max(2, int(self.config.get('refresh_seconds', 5))))

    def service_output(self, identifier, record):
        for line in record['process'].stdout:
            with self.lock:
                record['log'].append(line.rstrip())
                del record['log'][:-300]
        code = record['process'].wait()
        self.event('SERVICE', identifier + ' exited ' + str(code))
        with self.lock:
            atomic(ROOT / 'logs' / (identifier + '.json'), record['log'])

    def dispatch(self, method, params):
        if method == 'snapshot':
            return self.snapshot()
        if method == 'report.export':
            path = ROOT / 'export.json'
            atomic(path, self.snapshot())
            return {'path': str(path), 'saved': True}
        if method == 'config.get':
            return copy.deepcopy(self.config)
        if method == 'config.save':
            value = params['config']
            if not isinstance(value.get('mcpServers', {}), dict) or not isinstance(value.get('services', []), list) or not isinstance(value.get('targets', []), list):
                raise ValueError('targets/services must be lists and mcpServers an object')
            refresh = int(value.get('refresh_seconds', 5))
            if refresh < 2 or refresh > 3600:
                raise ValueError('refresh_seconds must be 2..3600')
            for category in ('targets', 'services'):
                identifiers = [entry['id'] for entry in value.get(category, [])]
                if len(identifiers) != len(set(identifiers)):
                    raise ValueError('Duplicate ' + category + ' id')
            for identifier in [entry['id'] for entry in value.get('services', [])] + list(value.get('mcpServers', {})):
                if not identifier or any(character not in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.' for character in identifier) or identifier in ('.', '..'):
                    raise ValueError('Use letters, digits, dash, dot or underscore in server/service ids')
            with self.lock:
                for identifier, client in list(self.clients.items()):
                    if self.config.get('mcpServers', {}).get(identifier) != value.get('mcpServers', {}).get(identifier):
                        client.close()
                        del self.clients[identifier]
                for identifier, record in self.processes.items():
                    if record['process'].poll() is None:
                        old = next(entry for entry in self.config['services'] if entry['id'] == identifier)
                        new = next((entry for entry in value.get('services', []) if entry['id'] == identifier), None)
                        if old != new:
                            raise ValueError('Stop service ' + identifier + ' before changing its definition')
                atomic(self.config_path, value)
                self.config = value
            self.event('CONFIG', 'Configuration saved')
            return {'saved': True}
        if method == 'config.import':
            value = json.loads(Path(params['path']).read_text())
            imported = value.get('mcpServers', value.get('servers', {}))
            if not isinstance(imported, dict):
                raise ValueError('No mcpServers object found')
            configuration = copy.deepcopy(self.config)
            for identifier, definition in imported.items():
                if identifier in configuration['mcpServers']:
                    raise ValueError('MCP id already exists: ' + identifier)
                configuration['mcpServers'][identifier] = definition
            self.dispatch('config.save', {'config': configuration})
            return {'imported': list(imported)}
        if method == 'network.dns':
            values = socket.getaddrinfo(params['host'], params.get('port', 0), type=socket.SOCK_STREAM)
            return {'host': params['host'], 'addresses': sorted({entry[4][0] for entry in values})}
        if method == 'network.tcp':
            return tcp(params['host'], params['port'])
        if method == 'network.http':
            return inspect_http(params)
        if method == 'network.tls':
            return inspect_tls(params)
        if method == 'network.discover':
            host = params.get('host', '127.0.0.1')
            first, last = int(params.get('first', 1)), int(params.get('last', 10000))
            if first < 1 or last > 65535 or first > last:
                raise ValueError('Port range must be within 1..65535')
            with self.lock:
                if self.scanning:
                    raise ValueError('Port discovery is already running')
                self.scanning = True
            try:
                found = []
                with concurrent.futures.ThreadPoolExecutor(max_workers=32) as pool:
                    for result in pool.map(lambda port: tcp(host, port, 0.15), range(first, last + 1)):
                        if result['open']:
                            found.append(result)
                if host == '127.0.0.1':
                    with self.lock:
                        self.ports.update({entry['port']: entry for entry in found})
                self.event('DISCOVERY', host + ': ' + str(len(found)) + ' open TCP ports')
                return {'host': host, 'first': first, 'last': last, 'open': found, 'method': 'TCP connect'}
            finally:
                self.scanning = False
        if method == 'shell.stop':
            return self.collector('stop')
        if method == 'service.start':
            identifier = params['id']
            with self.lock:
                existing = self.processes.get(identifier)
                if existing and existing['process'].poll() is None:
                    return {'pid': existing['process'].pid, 'running': True}
                definition = next(entry for entry in self.config.get('services', []) if entry['id'] == identifier)
                process = subprocess.Popen(['/bin/bash', '--noprofile', '--norc', '-c', definition['command']], cwd=definition.get('cwd', '/root/workspace'), env=dict(os.environ, **definition.get('env', {})), stdin=subprocess.DEVNULL, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, bufsize=1, start_new_session=True)
                record = {'process': process, 'log': []}
                self.processes[identifier] = record
            threading.Thread(target=self.service_output, args=(identifier, record), daemon=True).start()
            self.event('SERVICE', identifier + ' started PID ' + str(process.pid))
            return {'pid': process.pid, 'running': True}
        if method == 'service.stop':
            with self.lock:
                record = self.processes.get(params['id'])
            if record and record['process'].poll() is None:
                process = record['process']
                try:
                    os.killpg(process.pid, signal.SIGTERM)
                    process.wait(timeout=4)
                except subprocess.TimeoutExpired:
                    os.killpg(process.pid, signal.SIGKILL)
                    process.wait()
                except ProcessLookupError:
                    pass
            return {'stopped': True}
        if method == 'service.log':
            record = self.processes.get(params['id'])
            path = ROOT / 'logs' / (params['id'] + '.json')
            return {'lines': record['log'] if record else json.loads(path.read_text()) if path.is_file() else []}
        if method.startswith('mcp.'):
            identifier = params['id']
            if method == 'mcp.connect':
                with self.lock:
                    previous = self.clients.get(identifier)
                    if previous:
                        previous.close()
                    client = MCP(self.config['mcpServers'][identifier])
                    self.clients[identifier] = client
                if client.info.get('capabilities', {}).get('tools') is not None:
                    client.tools = client.list('tools/list', 'tools')['tools']
                self.event('MCP', identifier + ' connected')
                return {'server': client.info, 'tools': client.tools}
            client = self.clients.get(identifier)
            if client is None:
                raise ValueError('Connect this MCP server first')
            if method == 'mcp.disconnect':
                client.close()
                self.event('MCP', identifier + ' disconnected')
                return {'disconnected': True}
            if not client.connected:
                raise ValueError('MCP server is disconnected')
            if method == 'mcp.tools':
                result = client.list('tools/list', 'tools')
                client.tools = result['tools']
                return result
            if method == 'mcp.call':
                return client.request('tools/call', {'name': params['name'], 'arguments': params.get('arguments', {})})
            if method == 'mcp.resources':
                return client.list('resources/list', 'resources')
            if method == 'mcp.prompts':
                return client.list('prompts/list', 'prompts')
            if method == 'mcp.ping':
                value = client.request('ping')
                client.last_ping = time.time()
                return value
            if method == 'mcp.log':
                return {'lines': client.logs}
            if method == 'mcp.request':
                return client.request(params['method'], params.get('params', {}))
        if method in ('file.read', 'file.write'):
            path = {'hosts': Path('/etc/hosts'), 'resolver': Path('/etc/resolv.conf')}[params['name']]
            if method == 'file.read':
                return {'path': str(path), 'text': path.read_text()}
            path.write_text(params['text'])
            self.event('FILES', str(path) + ' updated')
            return {'saved': True}
        raise ValueError('Unknown Network HQ method: ' + method)

    def close(self):
        self.stopped.set()
        for client in list(self.clients.values()):
            client.close()
        for identifier in list(self.processes):
            self.dispatch('service.stop', {'id': identifier})


TOOLS = [
    {'name': 'network.dns', 'description': 'Resolve a host using this Linux workspace resolver', 'inputSchema': {'type': 'object', 'properties': {'host': {'type': 'string'}}, 'required': ['host']}},
    {'name': 'network.tcp', 'description': 'Check a TCP endpoint and measure connection latency', 'inputSchema': {'type': 'object', 'properties': {'host': {'type': 'string'}, 'port': {'type': 'integer'}}, 'required': ['host', 'port']}},
    {'name': 'network.http', 'description': 'Inspect HTTP status, headers and response preview', 'inputSchema': {'type': 'object', 'properties': {'url': {'type': 'string'}}, 'required': ['url']}},
    {'name': 'network.tls', 'description': 'Inspect the negotiated TLS version, cipher and peer certificate', 'inputSchema': {'type': 'object', 'properties': {'host': {'type': 'string'}, 'port': {'type': 'integer'}}, 'required': ['host']}},
    {'name': 'snapshot', 'description': 'Read live network sockets, listeners, targets and counters', 'inputSchema': {'type': 'object', 'properties': {}}}
]


def main():
    mcp = len(sys.argv) > 1 and sys.argv[1] == 'mcp'
    engine = Engine(live=not mcp)
    pool = concurrent.futures.ThreadPoolExecutor(max_workers=4)
    if not mcp:
        emit({'type': 'ready', 'version': '0.4.0'})
    def handle(request):
        identifier = request.get('id')
        try:
            method = request['method']
            params = request.get('params', {})
            if mcp:
                if method == 'initialize':
                    result = {'protocolVersion': PROTOCOL, 'capabilities': {'tools': {}}, 'serverInfo': {'name': 'Ayrvokan Network Inspector', 'version': '0.4.0'}}
                elif method.startswith('notifications/'):
                    return
                elif method == 'ping':
                    result = {}
                elif method == 'tools/list':
                    result = {'tools': TOOLS}
                elif method == 'tools/call':
                    if params['name'] not in {value['name'] for value in TOOLS}:
                        raise ValueError('Unknown inspector tool')
                    value = engine.dispatch(params['name'], params.get('arguments', {}))
                    result = {'content': [{'type': 'text', 'text': json.dumps(value, ensure_ascii=False)}], 'isError': False}
                else:
                    raise ValueError('MCP method not supported')
                if identifier is not None:
                    emit({'jsonrpc': '2.0', 'id': identifier, 'result': result})
            else:
                result = engine.dispatch(method, params)
                emit({'id': identifier, 'ok': True, 'result': result})
        except Exception as error:
            if mcp:
                if identifier is not None:
                    emit({'jsonrpc': '2.0', 'id': identifier, 'error': {'code': -32603, 'message': str(error)}})
            else:
                emit({'id': identifier, 'ok': False, 'error': str(error)})
    try:
        for line in sys.stdin:
            try:
                pool.submit(handle, json.loads(line))
            except ValueError as error:
                emit({'error': str(error)})
    finally:
        pool.shutdown(wait=True)
        engine.close()


if __name__ == '__main__':
    main()
