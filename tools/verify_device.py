import asyncio
import json
import os
from pathlib import Path
import re
import shlex
import subprocess
import time
from urllib.request import urlopen
import xml.etree.ElementTree as ET
from websockets.asyncio.client import connect

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ)
environment['LD_LIBRARY_PATH'] = '/data/data/com.termux/files/usr/lib'
serial = '192.168.1.58:45155'
package = 'com.ayrvokan.widgets'
base = ['adb', '-s', serial]
port = 39225
fixture = '/root/workspace/.ayrvokan-widget-check-20261108.txt'
report = {'checks': {}, 'fixture': fixture}

def adb(*arguments):
    result = subprocess.run(base + list(arguments), env=environment, capture_output=True, text=True, timeout=30)
    if result.returncode:
        raise RuntimeError(result.stdout + result.stderr)
    return result.stdout

def shell(command):
    return adb('shell', command)

def private(path):
    return shell('run-as ' + package + ' cat ' + shlex.quote(path))

def layout():
    tree = ET.fromstring(private('shared_prefs/MainActivity.xml'))
    return json.loads(next(node.text for node in tree.findall('string') if node.attrib.get('name') == 'layout'))

def hierarchy():
    shell('uiautomator dump --compressed /data/local/tmp/ayrvokan-widgets-ui.xml')
    value = shell('cat /data/local/tmp/ayrvokan-widgets-ui.xml')
    return ET.fromstring(value)

def find(tree, text=None, kind=None, contains=None):
    for node in tree.iter('node'):
        if node.attrib.get('package') != package:
            continue
        if text is not None and node.attrib.get('text') != text:
            continue
        if contains is not None and contains not in node.attrib.get('text', ''):
            continue
        if kind is not None and node.attrib.get('class') != kind:
            continue
        return node
    raise RuntimeError('UI element not found: ' + str((text, kind, contains)))

def tap(node):
    left, top, right, bottom = map(int, re.findall(r'\d+', node.attrib['bounds']))
    shell('input -d 10 tap ' + str((left + right) // 2) + ' ' + str((top + bottom) // 2))

def attach():
    pid = shell('pidof ' + package).strip().split()[0]
    adb('forward', 'tcp:' + str(port), 'localabstract:webview_devtools_remote_' + pid)
    deadline = time.monotonic() + 15
    while True:
        try:
            with urlopen('http://127.0.0.1:' + str(port) + '/json/list', timeout=2) as stream:
                pages = json.load(stream)
            return next(page['webSocketDebuggerUrl'] for page in pages if page['url'] == 'file:///android_asset/terminal/index.html')
        except Exception:
            if time.monotonic() >= deadline:
                raise
            time.sleep(0.25)

async def evaluate(socket, expression):
    async with connect(socket) as connection:
        await connection.send(json.dumps({'id': 1, 'method': 'Runtime.evaluate', 'params': {'expression': expression, 'returnByValue': True}}))
        while True:
            result = json.loads(await connection.recv())
            if result.get('id') == 1:
                if 'exceptionDetails' in result.get('result', {}):
                    raise RuntimeError(str(result))
                return result['result']['result'].get('value')

async def transcript(socket):
    return await evaluate(socket, 'typeof term === "undefined" ? "" : Array.from({length:term.buffer.active.length},(_,i)=>term.buffer.active.getLine(i).translateToString(true)).join("\\n")')

async def wait_text(socket, marker):
    deadline = time.monotonic() + 15
    while True:
        text = await transcript(socket)
        if marker in [line.strip() for line in text.splitlines()]:
            return text
        if time.monotonic() >= deadline:
            raise RuntimeError('Terminal marker missing: ' + marker + '\n' + text)
        await asyncio.sleep(0.2)

async def main():
    socket = attach()
    initial = await transcript(socket)
    assert 'bash-5.3#' in initial
    assert 'Function not implemented' not in initial
    command = "cd /root/workspace; pwd; printf 'widget-native-kali-ok\\n' > '" + fixture + "'; cat '" + fixture + "'; printf '\\n__WIDGET_TERMINAL_OK__\\n'\r"
    await evaluate(socket, 'Native.input(' + json.dumps(command) + ')')
    text = await wait_text(socket, '__WIDGET_TERMINAL_OK__')
    assert '/root/workspace' in [line.strip() for line in text.splitlines()]
    assert 'Function not implemented' not in text
    assert private('files/KaliMinimal' + fixture) == 'widget-native-kali-ok\n'
    report['checks']['terminal_linux_cd_and_file_creation'] = True
    (root / 'evidence/terminal-acceptance.txt').write_text(text)
    shell('am start -W --activity-reorder-to-front -n ' + package + '/.MainActivity')
    tree = hierarchy()
    tap(find(tree, text='↻'))
    await asyncio.sleep(0.7)
    tree = hierarchy()
    row = find(tree, contains=Path(fixture).name)
    report['checks']['native_files_widget_lists_terminal_file'] = True
    tap(row)
    await asyncio.sleep(0.4)
    tree = hierarchy()
    editor = find(tree, kind='android.widget.EditText')
    assert editor.attrib.get('text') == 'widget-native-kali-ok\n'
    tap(editor)
    shell('input -d 10 keyevent 123')
    shell('input -d 10 text from-files-widget')
    tree = hierarchy()
    tap(find(tree, text='SAVE'))
    deadline = time.monotonic() + 10
    while 'from-files-widget' not in private('files/KaliMinimal' + fixture):
        if time.monotonic() >= deadline:
            raise RuntimeError('File edit did not persist')
        await asyncio.sleep(0.2)
    report['checks']['native_files_editor_writes_shared_linux_file'] = True
    before = layout()
    marker_before = shell('run-as ' + package + ' stat -c %Y files/KaliMinimal/.widget-ready').strip()
    shell('am force-stop ' + package)
    shell('am start -W -n ' + package + '/.MainActivity')
    socket = attach()
    deadline = time.monotonic() + 15
    while 'bash-5.3#' not in await transcript(socket):
        if time.monotonic() >= deadline:
            raise RuntimeError('Terminal did not return after restart')
        await asyncio.sleep(0.25)
    assert layout() == before
    assert 'from-files-widget' in private('files/KaliMinimal' + fixture)
    assert shell('run-as ' + package + ' stat -c %Y files/KaliMinimal/.widget-ready').strip() == marker_before
    report['checks']['layout_survives_process_restart'] = True
    report['checks']['linux_files_survive_process_restart_without_reinstallation'] = True
    await evaluate(socket, 'Native.input(' + json.dumps("cat '" + fixture + "'; printf '\\n__WIDGET_RESTART_OK__\\n'\r") + ')')
    text = await wait_text(socket, '__WIDGET_RESTART_OK__')
    assert 'from-files-widget' in text
    report['checks']['terminal_reads_file_widget_edit_after_restart'] = True
    (root / 'evidence/restart-terminal-acceptance.txt').write_text(text)
    await evaluate(socket, 'Native.input(' + json.dumps("rm -f '" + fixture + "'; printf '\\n__WIDGET_CLEAN__\\n'\r") + ')')
    await wait_text(socket, '__WIDGET_CLEAN__')
    tree = hierarchy()
    tap(find(tree, text='↻'))
    report['checks']['owned_fixture_removed'] = True
    report['touchscreen'] = {'source': 'User physically tested the live Samsung DeX touchscreen and reported that it worked as desired', 'synthetic_clicks': 'ADB touchscreen source on display 10 for native file listing and editing'}
    report['passed'] = True

try:
    asyncio.run(main())
except Exception as error:
    report['passed'] = False
    report['failure'] = str(error)
    raise
finally:
    (root / 'evidence/device-acceptance.json').write_text(json.dumps(report, indent=2) + '\n')
    shell('rm -f /data/local/tmp/ayrvokan-widgets-ui.xml')
    adb('forward', '--remove', 'tcp:' + str(port))
    print(json.dumps(report))
