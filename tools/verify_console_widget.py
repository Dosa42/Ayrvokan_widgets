from pathlib import Path
import asyncio
import hashlib
import json
import os
import shlex
import subprocess
import xml.etree.ElementTree as ET
from urllib.request import Request, urlopen
from websockets.asyncio.client import connect

root = Path(__file__).resolve().parent.parent
base = ['adb', '-s', '192.168.1.58:45155']
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
package = 'com.ayrvokan.widgets'
port = '39226'
report = {'checks': {}, 'scope': 'Installed Android widget startup, passive rendering, real CRT data and endpoints; no autonomous play or latency campaign'}


def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=30)


def private(path):
    return shell('run-as ' + package + ' cat ' + shlex.quote(path))


def data(url, value=None):
    request = Request(url, data=None if value is None else json.dumps(value).encode(), headers={'Content-Type': 'application/json'})
    with urlopen(request, timeout=12) as stream:
        return json.load(stream)


def layout(text):
    tree = ET.fromstring(text)
    return json.loads(next(n.text for n in tree if n.get('name') == 'layout'))


async def view():
    pid = shell('pidof ' + package).strip().split()[0]
    subprocess.run(base + ['forward', 'tcp:' + port, 'localabstract:webview_devtools_remote_' + pid], env=environment, check=True, capture_output=True)
    pages = data('http://127.0.0.1:' + port + '/json/list')
    page = next(p for p in pages if p['url'] == 'file:///android_asset/console/index.html')
    expression = '({cols:term.cols,rows:term.rows,passive:term.options.disableStdin,pointerEvents:getComputedStyle(element).pointerEvents,screen:[element.querySelector(".xterm-screen").getBoundingClientRect().width,element.querySelector(".xterm-screen").getBoundingClientRect().height],viewport:[document.body.clientWidth,document.body.clientHeight],text:Array.from({length:term.buffer.active.length},(_,i)=>term.buffer.active.getLine(i).translateToString(true)).join("\\n")})'
    async with connect(page['webSocketDebuggerUrl']) as connection:
        await connection.send(json.dumps({'id': 1, 'method': 'Runtime.evaluate', 'params': {'expression': expression, 'returnByValue': True}}))
        while True:
            message = json.loads(await connection.recv())
            if message.get('id') == 1:
                if message['result'].get('exceptionDetails'):
                    raise RuntimeError(message)
                return message['result']['result']['value']


try:
    current = layout(private('shared_prefs/MainActivity.xml'))
    before = layout((root / 'evidence/console-layout-before.xml').read_text())
    assert all(row in current for row in before)
    report['checks']['prior_widget_ids_layout_preserved'] = True
    widget = next(row for row in current if row['plugin'] == 'console')
    folder = 'files/KaliMinimal/root/.local/share/ayrvokan-console/' + widget['id'] + '/runs'
    runs = shell('run-as ' + package + ' ls ' + shlex.quote(folder)).split()
    run = folder + '/' + sorted(runs)[-1]
    ui = json.loads(private(run + '/ui.json'))
    engine = json.loads(private(run + '/engine.json'))
    assert ui['ready'] and ui['mode'] == 'dos-console'
    report['checks']['app_owned_native_linux_cli_running'] = True
    endpoint = ui['console_mcp_url'].removesuffix('/mcp')
    assert data(endpoint + '/health')['ok']
    tools = data(endpoint + '/mcp', {'jsonrpc': '2.0', 'id': 1, 'method': 'tools/list'})['result']['tools']
    assert len(tools) == 22
    native = data('http://' + ui['bind'] + '/api/tools')['tools']
    assert len(native) == 18
    report['checks']['native_18_tools_and_console_22_tools_reachable'] = True
    tap = json.loads(private(run + '/crt-install.json'))
    assert tap['original_prologue'] == '518bcf2bce' and not tap['gameplay_or_video_routine_changes']
    report['checks']['actual_verified_crt_entry_hook_installed'] = True
    crt_path = 'files/KaliMinimal' + engine['crt_json']
    snapshot = json.loads(private(crt_path + '/snapshot.json'))
    assert snapshot['available'] and snapshot['last_seq'] > 0 and snapshot['dropped'] == 0
    crt = data(endpoint + '/crt')
    assert crt['source'] == 'crt_output_buffer' and crt['event_fields'] == ['seq', 'x', 'y', 'byte', 'attr']
    assert crt['last_seq'] > 0
    records = [json.loads(line) for line in private(crt_path + '/crt-output.jsonl').splitlines()]
    assert records and all(r['type'] == 'crt_output' for r in records)
    assert all(records[i]['seq'] + 1 == records[i + 1]['seq'] for i in range(len(records) - 1))
    report['checks']['real_crt_jsonl_contiguous_no_drops'] = True
    report['crt_records'] = len(records)
    guest = engine['game']['mount']
    digest = shell('run-as ' + package + ' sha256sum ' + shlex.quote('files/KaliMinimal' + guest + '/ASCINV.EXE')).split()[0]
    assert digest == '4996fc37ff93f271d5834f96c8dea4f02eb7def3486c00ac63fe37539d74b2b5'
    report['checks']['original_exe_unchanged'] = True
    expected = json.loads((root / 'assets/console/version.json').read_text())
    actual = shell('run-as ' + package + ' sha256sum files/KaliMinimal/opt/ayrvokan/console/ayrvokan-pad-lab.pyz').split()[0]
    assert actual == expected['sha256']
    report['checks']['installed_cli_equals_packaged_cli'] = True
    screen = asyncio.run(view())
    assert screen['cols'] == 90 and screen['rows'] == 46 and screen['passive'] and screen['pointerEvents'] == 'none'
    assert screen['screen'][0] <= screen['viewport'][0] + 1 and screen['screen'][1] <= screen['viewport'][1] + 1
    assert all(label in screen['text'] for label in ['DOS CONSOLE', 'L2 HELP', 'R2 CHAT', 'SELECT', 'START'])
    report['checks']['real_cli_canvas_fits_passive_controller'] = True
    (root / 'evidence/console-widget-terminal.txt').write_text(screen.pop('text'))
    status = data(engine['emulator_url'] + '/api/status')
    assert status['breakpoints'] == 0 and not status['trace']['active']
    report['checks']['no_steady_breakpoints_or_trace'] = True
    report.update({'widget_id': widget['id'], 'ui': ui, 'engine': engine, 'view': screen, 'game_paused': status['paused'], 'passed': True})
except Exception as error:
    report.update({'passed': False, 'error': str(error)})
    raise
finally:
    (root / 'evidence/console-widget-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report))
