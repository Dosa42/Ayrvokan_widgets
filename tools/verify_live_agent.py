from pathlib import Path
import json
import os
import queue
import shlex
import subprocess
import threading
import time

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ)
environment['LD_LIBRARY_PATH'] = '/data/data/com.termux/files/usr/lib'
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
report = {'checks': {}, 'route': 'Native Rust in installed Android app Kali; direct public Responses using user-authorized ChatGPT plan'}
process = None

def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=20).strip()

try:
    app = shell('run-as ' + package + ' pwd')
    files = app + '/files'
    native = shell('run-as ' + package + ' readlink files/runtime/lib/libtalloc.so.2').rsplit('/', 1)[0]
    kernel = shell('uname -r')
    argv = ['run-as', package, '/system/bin/env', '-i', 'PATH=/system/bin', 'HOME=' + files, 'TMPDIR=' + files + '/runtime/tmp', 'PROOT_TMP_DIR=' + files + '/runtime/tmp', 'PROOT_LOADER=' + native + '/libprootloader.so', 'LD_LIBRARY_PATH=' + files + '/runtime/lib', 'ANDROID_ROOT=/system', 'ANDROID_DATA=/data', '/system/bin/sh', '-c', 'exec "$@"', 'ayrvokan-native', native + '/libproot.so', '-0', '-r', files + '/KaliMinimal', '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '-b', files + '/runtime/tmp:/tmp', '--sysvipc', '-H', '-L', '-p', '--ashmem-memfd', '--kernel-release=' + kernel, '--link2symlink', '--kill-on-exit', '-w', '/root', '/usr/bin/env', '-i', 'HOME=/root', 'USER=root', 'LOGNAME=root', 'LANG=C.UTF-8', 'LC_ALL=C.UTF-8', 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', '/usr/local/bin/ayrvokan-agent', 'serve']
    process = subprocess.Popen(base + ['shell', shlex.join(argv)], env=environment, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, bufsize=1)
    output = queue.Queue()
    def read():
        for line in process.stdout:
            output.put(json.loads(line))
    threading.Thread(target=read, daemon=True).start()
    ready = output.get(timeout=20)
    assert ready['type'] == 'ready', ready
    account = ready['agent']['provider']['account']
    assert account['connected'] and account['sharing'], account
    report['checks']['chatgpt_verified_identity_and_plan_permission_live'] = True
    def request(identifier, method, params):
        process.stdin.write(json.dumps({'id': identifier, 'method': method, 'params': params}) + '\n')
        process.stdin.flush()
    def wait(identifier, timeout=90):
        events = []
        deadline = time.monotonic() + timeout
        while True:
            value = output.get(timeout=max(0.1, deadline - time.monotonic()))
            if value.get('id') != identifier:
                continue
            if value['type'] == 'result':
                assert value['ok'], value
                return value['result'], events
            events.append(value['event'])
    request('catalog', 'auth.models', {})
    models, _ = wait('catalog')
    assert models
    report['checks']['live_account_model_catalog'] = True
    report['available_models'] = [value['slug'] for value in models]
    request('new', 'session.create', {'cwd': '/root/workspace', 'title': 'Ayrvokan live provider verification'})
    session, _ = wait('new')
    report['session_id'] = session['id']
    request('turn', 'agent.turn', {'session_id': session['id'], 'message': 'Verify the native Bash tool once: execute printf AYRVOKAN_NATIVE_BASH_OK using the available Bash execution tool. After the tool completes, reply with exactly AYRVOKAN_LIVE_OK.'})
    result, events = wait('turn', 120)
    assert 'AYRVOKAN_LIVE_OK' in result['text'], result
    calls = [event for event in events if event['type'] == 'tool.finished']
    assert any(event['data']['name'] == 'terminal.exec' and 'AYRVOKAN_NATIVE_BASH_OK' in event['data']['response']['result']['stdout'] for event in calls), calls
    report['checks']['live_responses_stream_completed'] = True
    report['checks']['live_model_called_native_bin_bash_tool_and_continued'] = True
    report['result'] = result
    report['events'] = events
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    if process is not None:
        process.stdin.close()
        try:
            process.wait(timeout=10)
        except subprocess.TimeoutExpired:
            process.kill()
            process.wait()
        errors = process.stderr.read()
        if errors:
            report['process_errors'] = errors
    (root / 'evidence/live-agent-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps({key: value for key, value in report.items() if key != 'events'}))
