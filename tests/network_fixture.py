from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
import json
import sys

history = []


class Handler(BaseHTTPRequestHandler):
    protocol_version = 'HTTP/1.1'

    def log_message(self, template, *values):
        print(template % values, file=sys.stderr, flush=True)

    def answer(self, status, data, content_type='application/json', session=False):
        body = data.encode() if isinstance(data, str) else json.dumps(data).encode()
        self.send_response(status)
        self.send_header('Content-Type', content_type)
        self.send_header('Content-Length', str(len(body)))
        if session:
            self.send_header('Mcp-Session-Id', 'ayrvokan-fixture-session')
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        self.answer(200, {'marker': 'NETWORK_SERVICE_OK', 'history': history})

    def do_DELETE(self):
        history.append({'method': 'DELETE', 'session': self.headers.get('Mcp-Session-Id')})
        self.answer(204, '')

    def do_POST(self):
        request = json.loads(self.rfile.read(int(self.headers['Content-Length'])))
        method = request['method']
        history.append({'method': method, 'session': self.headers.get('Mcp-Session-Id'), 'protocol': self.headers.get('MCP-Protocol-Version')})
        if method != 'initialize' and (self.headers.get('Mcp-Session-Id') != 'ayrvokan-fixture-session' or self.headers.get('MCP-Protocol-Version') != '2025-06-18'):
            self.answer(400, {'error': 'Missing negotiated session or protocol'})
            return
        if method == 'notifications/initialized':
            self.answer(202, '')
            return
        if method == 'initialize':
            result = {'protocolVersion': '2025-06-18', 'capabilities': {'tools': {}, 'resources': {}, 'prompts': {}}, 'serverInfo': {'name': 'Network HQ HTTP acceptance fixture', 'version': '1'}}
        elif method == 'ping':
            result = {}
        elif method == 'tools/list':
            second = request.get('params', {}).get('cursor') == 'next-page'
            result = {'tools': [{'name': 'second' if second else 'echo', 'inputSchema': {'type': 'object'}}]}
            if not second:
                result['nextCursor'] = 'next-page'
        elif method == 'tools/call':
            result = {'content': [{'type': 'text', 'text': 'HTTP_MCP_OK ' + request.get('params', {}).get('arguments', {}).get('text', '')}], 'isError': False}
        elif method == 'resources/list':
            result = {'resources': [{'uri': 'test://network', 'name': 'Network fixture'}]}
        elif method == 'prompts/list':
            result = {'prompts': [{'name': 'network-check'}]}
        else:
            self.answer(200, {'jsonrpc': '2.0', 'id': request['id'], 'error': {'code': -32601, 'message': 'Not supported'}})
            return
        response = {'jsonrpc': '2.0', 'id': request['id'], 'result': result}
        if method == 'initialize':
            self.answer(200, response, session=True)
        else:
            self.answer(200, 'event: message\ndata: ' + json.dumps(response) + '\n\n', 'text/event-stream')


if __name__ == '__main__':
    port = int(sys.argv[1])
    print('NETWORK_FIXTURE_PORT=' + str(port), flush=True)
    ThreadingHTTPServer(('127.0.0.1', port), Handler).serve_forever()
