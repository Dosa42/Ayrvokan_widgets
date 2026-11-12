import asyncio
import json
import os
from pathlib import Path
import platform
import shutil
import struct
import subprocess
import tempfile
import urllib.request
import websockets

root = Path(__file__).resolve().parents[2]
android = Path('/system/bin/linker64').is_file() and platform.machine() == 'aarch64'

async def check(port):
    url = 'http://127.0.0.1:' + str(port)
    for name in ['', '/terminal', '/terminal/', '/terminal/app.js', '/terminal/xterm.js', '/terminal/xterm.css', '/terminal/addon-fit.js', '/terminal/style.css']:
        with urllib.request.urlopen(url + name) as response:
            assert response.status == 200 and len(response.read()) > 20, name
    with urllib.request.urlopen(urllib.request.Request(url + '/terminal', method='HEAD')) as response:
        assert response.read() == b''
    with urllib.request.urlopen(url + '/health') as response:
        initial = json.load(response)
        assert initial['running']
        session_id = initial['session']
    position = 0

    async def until(client, marker):
        nonlocal position
        output = ''
        while marker not in output:
            message = await asyncio.wait_for(client.recv(), 10)
            if isinstance(message, bytes):
                position = struct.unpack('>Q', message[:8])[0]
                output += message[8:].decode('utf-8', errors='replace')
                await client.send('ack:' + str(position))
        return output

    endpoint = 'ws://127.0.0.1:' + str(port) + '/ws'
    async with websockets.connect(endpoint) as client:
        await until(client, 'WEB_PROMPT>')
        await client.send(b'stty -echo\n')
        await until(client, 'WEB_PROMPT>')
        await client.send(b"printf 'WEB_OK\\n'\n")
        await until(client, 'WEB_OK')
        await client.send('resize:37:111')
        await client.send(b'stty size\n')
        await until(client, '37 111')
        await client.send("printf 'unicode ✓\\n'\n".encode())
        await until(client, 'unicode ✓')
        await client.send(b"printf 'INT_BEGIN\\n'; sleep 30; printf 'INT_END\\n'\n")
        await until(client, 'INT_BEGIN')
        await asyncio.sleep(.15)
        await client.send(b'\x03')
        await until(client, 'WEB_PROMPT>')
        await client.send(b"export NOMONE_WEB_TEST=kept; printf 'SAVED\\n'\n")
        await until(client, 'SAVED')
    resumed = endpoint + '?session=' + session_id + '&cursor=' + str(position)
    async with websockets.connect(resumed) as client:
        await client.send(b"printf '%s\\n' \"$NOMONE_WEB_TEST\"\n")
        await until(client, 'kept')
        await client.send([b"printf 'FRAG", b"MENT_OK\\n'\n"])
        await until(client, 'FRAGMENT_OK')
        pong = await client.ping(b'live')
        await asyncio.wait_for(pong, 5)
        async with websockets.connect(endpoint + '?session=' + session_id + '&cursor=' + str(position)) as observer:
            await client.send(b"printf 'SHARED_OK\\n'\n")
            await until(client, 'SHARED_OK')
            await until(observer, 'SHARED_OK')
    async with websockets.connect(endpoint) as reloaded:
        await until(reloaded, 'WEB_OK')
    with urllib.request.urlopen(url + '/health') as response:
        assert json.load(response)['running']
    def api(path, method='GET'):
        with urllib.request.urlopen(urllib.request.Request(url + path, method=method)) as response:
            return json.load(response)
    first = api('/sessions', 'POST')
    second = api('/sessions', 'POST')
    assert len({first['session'], second['session'], session_id}) == 3
    assert len({first['pid'], second['pid'], initial['pid']}) == 3
    async with websockets.connect(endpoint + '?session=' + first['session']) as left, websockets.connect(endpoint + '?session=' + second['session']) as right:
        await until(left, 'WEB_PROMPT>')
        await until(right, 'WEB_PROMPT>')
        await left.send(b'stty -echo\n')
        await until(left, 'WEB_PROMPT>')
        await right.send(b'stty -echo\n')
        await until(right, 'WEB_PROMPT>')
        await left.send(b"export NOMONE_ISOLATED=left; cd /tmp; printf 'BLOCK_BEGIN\\n'; sleep 30; printf 'BLOCK_END\\n'\n")
        await until(left, 'BLOCK_BEGIN')
        await right.send(b"printf 'RIGHT_OK:%s:%s\\n' \"${NOMONE_ISOLATED-unset}\" \"$PWD\"\n")
        await until(right, 'RIGHT_OK:unset:/')
        await right.send('resize:41:97')
        await right.send(b'stty size\n')
        await until(right, '41 97')
        api('/sessions/' + first['session'] + '/close', 'POST')
        await right.send(b"printf 'RIGHT_AFTER_CLOSE\\n'\n")
        await until(right, 'RIGHT_AFTER_CLOSE')
    async with websockets.connect(endpoint + '?session=' + second['session']) as resumed_right:
        await until(resumed_right, 'RIGHT_AFTER_CLOSE')
    listed = api('/sessions')['sessions']
    assert {first['session'], second['session']} <= {item['session'] for item in listed}
    api('/sessions/' + second['session'] + '/close', 'POST')
    print(json.dumps({'http_assets': True, 'real_pty_io': True, 'resize': True, 'unicode': True, 'ctrl_c': True,
                      'reconnect_same_shell': True, 'reload_replay': True, 'parallel_clients': True, 'fragmentation': True, 'ping': True, 'distinct_ids_and_pids': True, 'busy_shell_isolation': True, 'environment_cwd_isolation': True, 'close_isolation': True, 'selective_reconnect': True}))

with tempfile.TemporaryDirectory(prefix='nomone-web-test-') as temporary:
    work = Path(temporary)
    runtime = root / 'server-java/com/nomone/vr_desktop/runtime'
    subprocess.run(['javac', '--release', '8', '-Xlint:-options', '-d', work, *[runtime / name for name in ['PtyNative.java', 'PtySession.java', 'TerminalServer.java', 'TerminalSessions.java', 'FileWorkspace.java']], root / 'tests/pty/TerminalServerTestMain.java'], check=True)
    if android:
        shutil.copy2(root / 'lib/arm64-v8a/libnomone_pty.so', work / 'libnomone_pty.so')
    else:
        java_home = Path(shutil.which('javac')).resolve().parents[1]
        subprocess.run(['cc', '-shared', '-fPIC', '-O2', '-I' + str(java_home / 'include'), '-I' + str(java_home / 'include/linux'), root / 'native/pty.c', '-o', work / 'libnomone_pty.so'], check=True)
    shell = '/data/data/com.termux/files/usr/bin/bash' if android else '/bin/bash'
    process = subprocess.Popen(['java', '-Djava.library.path=' + str(work), '-cp', work, 'TerminalServerTestMain', root / 'assets', shell, '--noprofile', '--norc', '-i'], stdout=subprocess.PIPE, text=True)
    try:
        line = process.stdout.readline().strip()
        if not line.startswith('PORT='): raise RuntimeError('Terminal server did not start: ' + line)
        asyncio.run(check(int(line.split('=')[1])))
    finally:
        process.terminate()
        try: process.wait(timeout=5)
        except subprocess.TimeoutExpired: process.kill(); process.wait()
