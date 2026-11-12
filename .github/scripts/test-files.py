import asyncio
import hashlib
import json
import os
from pathlib import Path
import platform
import shutil
import subprocess
import tempfile
import time
import urllib.parse
import urllib.request
import websockets

root = Path(__file__).resolve().parents[2]
android = Path('/system/bin/linker64').is_file() and platform.machine() == 'aarch64'
with tempfile.TemporaryDirectory(prefix='nomone-files-test-') as temporary:
    work = Path(temporary)
    runtime = root / 'server-java/com/nomone/vr_desktop/runtime'
    names = ['PtyNative.java', 'PtySession.java', 'TerminalServer.java', 'TerminalSessions.java', 'FileWorkspace.java']
    subprocess.run(['javac', '--release', '8', '-Xlint:-options', '-d', work, *[runtime / name for name in names], root / 'tests/pty/TerminalServerTestMain.java'], check=True)
    if android:
        shutil.copy2(root / 'lib/arm64-v8a/libnomone_pty.so', work / 'libnomone_pty.so')
    else:
        java_home = Path(shutil.which('javac')).resolve().parents[1]
        subprocess.run(['cc', '-shared', '-fPIC', '-O2', '-I' + str(java_home / 'include'), '-I' + str(java_home / 'include/linux'), root / 'native/pty.c', '-o', work / 'libnomone_pty.so'], check=True)
    files = work / 'file-work'
    source = files / 'android-host/Downloads'
    target = files / 'ubuntu'
    source.mkdir(parents=True)
    target.mkdir()
    filename = "voorbeeld ' ; $ literal ✓.bin"
    content = bytes(range(256)) * 10003
    (source / filename).write_bytes(content)
    (source / 'nested/child').mkdir(parents=True)
    (source / 'nested/child/info.txt').write_text('directory content\n')
    (source / 'line\nbreak.txt').write_text('newline filename')
    (source / 'link').symlink_to(filename)
    shell = '/data/data/com.termux/files/usr/bin/bash' if android else '/bin/bash'
    environment = dict(os.environ, NOMONE_FILE_TEST_ROOT=str(files))
    process = subprocess.Popen(['java', '-Djava.library.path=' + str(work), '-cp', work, 'TerminalServerTestMain', root / 'assets', shell, '--noprofile', '--norc', '-i'], stdout=subprocess.PIPE, text=True, env=environment)
    try:
        line = process.stdout.readline().strip()
        assert line.startswith('PORT='), line
        base = 'http://127.0.0.1:' + line.split('=')[1]
        def api(path, form=None):
            data = urllib.parse.urlencode(form, doseq=True).encode() if form is not None else None
            with urllib.request.urlopen(urllib.request.Request(base + path, data=data), timeout=15) as response:
                return json.load(response)
        def listing(side, path): return api('/files/list?' + urllib.parse.urlencode({'side': side, 'path': str(path)}))
        def action(operation, origin, destination, selected, target_path):
            job = api('/files/jobs', {'operation': operation, 'from': origin, 'to': destination, 'target': str(target_path), 'source': selected})
            for attempt in range(200):
                state = next(item for item in api('/files/jobs')['jobs'] if item['id'] == job['id'])
                if state['status'] in ['done', 'failed']: return state
                time.sleep(.025)
            raise RuntimeError('File job did not finish')
        result = listing('android', '/Downloads')
        assert result['error'] == '' and {item['name'] for item in result['entries']} == {filename, 'nested', 'line\nbreak.txt', 'link'}, result
        assert next(item for item in result['entries'] if item['name'] == filename)['bytes'] == len(content)
        job = action('copy', 'android', 'ubuntu', ['/Downloads/' + filename, '/Downloads/nested', '/Downloads/line\nbreak.txt', '/Downloads/link'], target)
        assert job['status'] == 'done' and job['completed'] == 4, job
        assert hashlib.sha256((target / filename).read_bytes()).digest() == hashlib.sha256(content).digest()
        assert (target / 'nested/child/info.txt').read_text() == 'directory content\n'
        assert (target / 'link').is_symlink()
        (target / filename).write_bytes(b'replace')
        assert action('copy', 'android', 'ubuntu', ['/Downloads/' + filename], target)['status'] == 'done'
        assert (target / filename).read_bytes() == content
        (target / 'return.txt').write_text('ubuntu to android')
        assert action('move', 'ubuntu', 'android', [str(target / 'return.txt')], '/Downloads')['status'] == 'done'
        assert not (target / 'return.txt').exists() and (source / 'return.txt').read_text() == 'ubuntu to android'
        assert action('remove', 'android', 'android', ['/Downloads/return.txt'], '')['status'] == 'done'
        assert not (source / 'return.txt').exists()
        assert action('remove', 'ubuntu', 'ubuntu', [str(target / 'nested')], '')['status'] == 'done'
        assert not (target / 'nested').exists()
        error = listing('ubuntu', target / 'not-a-folder')
        assert error['error'] and not error['entries'], error
        error = action('copy', 'android', 'ubuntu', ['/Downloads/missing-file'], target)
        assert error['status'] == 'failed' and error['error'], error
        async def terminal_alive():
            async with websockets.connect(base.replace('http:', 'ws:') + '/ws') as client:
                await client.send(b"printf '%s%s\\n' FILES_ TERMINAL_OK\n")
                output = b''
                while b'FILES_TERMINAL_OK' not in output:
                    message = await asyncio.wait_for(client.recv(), 10)
                    if isinstance(message, bytes):
                        output += message[8:]
                        await client.send('ack:' + str(int.from_bytes(message[:8], 'big')))
        asyncio.run(terminal_alive())
        print(json.dumps({'real_file_api': True, 'binary_hash_preserved': True, 'recursive_copy': True, 'unicode_quotes_metacharacters_newlines': True, 'symlink_preserved': True, 'existing_file_replaced': True, 'move_to_android': True, 'recursive_remove': True, 'job_errors_visible': True, 'terminal_independent': True}))
    finally:
        process.terminate()
        try: process.wait(timeout=8)
        except subprocess.TimeoutExpired: process.kill(); process.wait()
