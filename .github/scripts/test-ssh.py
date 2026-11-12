import json
import os
from pathlib import Path
import platform
import selectors
import shutil
import socket
import subprocess
import tempfile
import time

root = Path(__file__).resolve().parents[2]
if not Path('/system/bin/linker64').is_file() or platform.machine() != 'aarch64':
    print(json.dumps({'ssh_runtime_test': 'requires ARM64 Android host; APK and payload checks run separately'}))
    raise SystemExit(0)
with tempfile.TemporaryDirectory(prefix='nomone-ssh-test-') as temporary:
    work = Path(temporary)
    native = work / 'native'
    native.mkdir()
    for name in ['lib_bin_busybox.so', 'lib_bin_proot.so', 'lib_bin_loader.so', 'lib_bin_loader32.so', 'lib_lib_libtalloc.so.2.so']:
        shutil.copy2(root / 'lib/arm64-v8a' / name, native / name)
        (native / name).chmod(0o755)
    for path in (root / 'lib/arm64-v8a').glob('lib_proot_*'): shutil.copy2(path, native / path.name)
    shutil.copy2(root / 'lib/arm64-v8a/libnomone_pty.so', work / 'libnomone_pty.so')
    files = work / 'files'
    (files / 'common/bin').mkdir(parents=True)
    (files / 'common/lib').mkdir()
    for name in ['busybox', 'loader', 'loader32']:
        (files / 'common/bin' / name).symlink_to(native / ('lib_bin_' + name + '.so'))
    (files / 'common/lib/libtalloc.so.2').symlink_to(native / 'lib_lib_libtalloc.so.2.so')
    for name in ['client', 'existing']:
        subprocess.run(['ssh-keygen', '-q', '-t', 'ed25519', '-N', '', '-f', work / name], check=True)
    runtime = root / 'server-java/com/nomone/vr_desktop/runtime'
    subprocess.run(['javac', '--release', '8', '-Xlint:-options', '-d', work, *[runtime / name for name in ['UbuntuImage.java', 'UbuntuSsh.java', 'ProotCommand.java', 'PtyNative.java', 'PtySession.java']], root / 'tests/pty/SshRuntimeTestMain.java'], check=True)
    with socket.socket() as probe:
        probe.bind(('127.0.0.1', 0))
        port = probe.getsockname()[1]
    process = subprocess.Popen(['java', '-Djava.library.path=' + str(work), '-cp', work, 'SshRuntimeTestMain', files, native,
                                root / 'assets/linux/ubuntu-base-22.04.5-base-arm64.tar.gz', root / 'assets/linux/ssh-runtime-arm64.tar.gz',
                                work / 'client.pub', work / 'existing.pub', str(port)], stdout=subprocess.PIPE, text=True)
    try:
        line = process.stdout.readline().strip()
        if line != 'READY=' + str(port): raise RuntimeError('SSH fixture did not start: ' + line)
        for attempt in range(60):
            try:
                with socket.create_connection(('127.0.0.1', port), timeout=.2) as connection:
                    assert connection.recv(256).startswith(b'SSH-2.0-dropbear_')
                break
            except OSError: time.sleep(.05)
        else: raise RuntimeError('SSH listener did not become ready')
        command = ['ssh', '-F', '/dev/null', '-o', 'BatchMode=yes', '-o', 'StrictHostKeyChecking=accept-new', '-o', 'LogLevel=ERROR',
                   '-o', 'IgnoreUnknown=WarnWeakCrypto', '-o', 'WarnWeakCrypto=no', '-o', 'UserKnownHostsFile=' + str(work / 'known_hosts'),
                   '-i', str(work / 'client'), '-p', str(port)]
        result = subprocess.run([*command, 'root@127.0.0.1', 'id; cat /etc/os-release; pwd; exit 7'], capture_output=True, text=True, timeout=15)
        assert result.returncode == 7 and 'uid=0(root)' in result.stdout and 'Ubuntu 22.04.5 LTS' in result.stdout and '/root' in result.stdout, result
        interactive = subprocess.Popen([*command, '-tt', 'root@127.0.0.1', "test -t 0 && printf 'SSH_PTY_OK\\n'"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        try:
            interactive.wait(timeout=15)
            output, errors = interactive.communicate()
            assert interactive.returncode == 0 and 'SSH_PTY_OK' in output, (interactive.returncode, output, errors)
        finally:
            if interactive.poll() is None: interactive.kill(); interactive.wait()
            if interactive.stdin and not interactive.stdin.closed: interactive.stdin.close()
        interactive = subprocess.Popen([*command, '-tt', 'root@127.0.0.1'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        selector = selectors.DefaultSelector()
        selector.register(interactive.stdout, selectors.EVENT_READ)
        def until(marker):
            result = b''
            deadline = time.monotonic() + 10
            while marker not in result and time.monotonic() < deadline:
                for key, event in selector.select(.2):
                    part = os.read(key.fileobj.fileno(), 8192)
                    if not part: raise RuntimeError('Interactive SSH ended: ' + repr(result))
                    result += part
            if marker not in result: raise RuntimeError('SSH output missing: ' + repr(marker))
            return result
        try:
            interactive.stdin.write(b"stty -echo; printf '%s%s\\n' SSH_ READY\r")
            interactive.stdin.flush()
            until(b'SSH_READY')
            interactive.stdin.write(b"printf 'INT_BEGIN\\n'; sleep 30; printf 'INT_END\\n'\r")
            interactive.stdin.flush()
            until(b'INT_BEGIN')
            time.sleep(.15)
            interactive.stdin.write(b"\x03printf 'INT_DONE\\n'\r")
            interactive.stdin.flush()
            assert b'INT_END' not in until(b'INT_DONE')
            interactive.stdin.write(b'exit\r')
            interactive.stdin.flush()
            interactive.wait(timeout=5)
        finally:
            selector.close()
            if interactive.poll() is None: interactive.kill(); interactive.wait()
            interactive.stdin.close()
        result = subprocess.run([*command, 'root@127.0.0.1', "printf 'SECOND_LOGIN_OK\\n'"], capture_output=True, text=True, timeout=15)
        assert result.returncode == 0 and 'SECOND_LOGIN_OK' in result.stdout, result
        print(json.dumps({'archive_rejection': True, 'key_preservation': True, 'warm_hostkey_preserved': True,
                          'key_login_root': True, 'ubuntu_identity': True, 'remote_exit7': True, 'remote_pty': True, 'interactive_ctrl_c': True, 'second_login': True}))
    finally:
        process.terminate()
        try: process.wait(timeout=6)
        except subprocess.TimeoutExpired: process.kill(); process.wait()
