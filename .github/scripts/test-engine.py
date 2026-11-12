import json
import os
from pathlib import Path
import subprocess
import tempfile
import time
import urllib.error
import urllib.parse
import urllib.request

root = Path(__file__).resolve().parents[2]
with tempfile.TemporaryDirectory(prefix='nomone-engine-test-') as temporary:
    work = Path(temporary)
    runtime = root / 'server-java/com/nomone/vr_desktop/runtime'
    names = ['PtyNative.java', 'PtySession.java', 'TerminalServer.java', 'FileWorkspace.java', 'MachineEngine.java']
    subprocess.run(['javac', '--release', '8', '-Xlint:-options', '-d', work, *[runtime / name for name in names], root / 'tests/pty/MachineEngineTestMain.java'], check=True)
    directory = work / 'persistent'
    shell = str(Path(os.environ['PREFIX']) / 'bin/bash') if Path('/system/bin/linker64').exists() else '/bin/bash'
    process = None
    def start():
        global process, base
        process = subprocess.Popen(['java', '-cp', work, 'MachineEngineTestMain', directory], stdout=subprocess.PIPE, text=True)
        line = process.stdout.readline().strip()
        assert line.startswith('PORT='), line
        base = 'http://127.0.0.1:' + line.split('=')[1]
    def stop():
        process.terminate()
        process.wait(timeout=10)
    def api(path='/status', form=None):
        data = urllib.parse.urlencode(form, doseq=True).encode() if form is not None else None
        with urllib.request.urlopen(base + '/control' + path, data, timeout=15) as response:
            return json.load(response)
    def order(name):
        return next(item for item in api()['orders'] if item['id'] == name)
    def submit(name, args):
        return api('/orders', {'id': name, 'source': 'codex-test', 'cwd': str(work), 'arg': args})
    def done(name):
        for attempt in range(300):
            result = order(name)
            if result['status'] in ['done', 'failed', 'interrupted']: return result
            time.sleep(.02)
        raise RuntimeError(name + ' did not finish')
    try:
        start()
        assert api()['adapter'] == 'not_configured'
        literal = "literal ; $(touch INJECTED) ' ✓\nline"
        submit('exact', [shell, '-c', 'printf "%s\\n" "$PWD" "$1"; printf stderr >&2', 'engine-test', literal])
        result = done('exact')
        assert result['stdout'] == str(work) + '\n' + literal + '\n', result
        assert result['stderr'] == 'stderr' and result['exit'] == '0', result
        assert not (work / 'INJECTED').exists()
        try: submit('exact', [shell, '-c', 'touch DUPLICATE'])
        except urllib.error.HTTPError as error: assert error.code == 500
        else: raise AssertionError('Duplicate order accepted')
        assert not (work / 'DUPLICATE').exists()
        submit('blocked', [shell, '-c', 'while test ! -f release; do sleep .05; done; printf released'])
        submit('parallel', [shell, '-c', 'printf independent; exit 7'])
        assert done('parallel')['exit'] == '7'
        assert order('blocked')['status'] == 'running'
        (work / 'release').touch()
        assert done('blocked')['stdout'] == 'released'
        api('/settings', {'mode': 'mechanical', 'model': 'example-metadata', 'hooks': 'later'})
        api('/checklist', {'id': 'exact', 'state': 'true'})
        submit('interrupt', [shell, '-c', 'while test ! -f stop; do sleep .05; done'])
        for attempt in range(100):
            if order('interrupt')['status'] == 'running': break
            time.sleep(.02)
        stop()
        (work / 'stop').touch()
        start()
        result = order('exact')
        assert result['checklist'] == 'true' and result['stdout'].endswith(literal + '\n'), result
        assert order('interrupt')['status'] == 'interrupted'
        assert api()['settings']['model'] == 'example-metadata'
        print(json.dumps({'engine_http': True, 'exact_argv_and_cwd': True, 'stdout_stderr_exit': True, 'independent_orders': True, 'duplicate_id_not_executed': True, 'persistent_history_settings_checklist': True, 'interrupted_not_replayed': True}))
    finally:
        (work / 'release').touch()
        (work / 'stop').touch()
        if process is not None and process.poll() is None: stop()
