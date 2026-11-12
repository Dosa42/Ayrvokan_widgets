import os
from pathlib import Path
import platform
import shutil
import subprocess
import tempfile
import tarfile

root = Path(__file__).resolve().parents[2]
android = Path('/system/bin/linker64').is_file() and platform.machine() == 'aarch64'
guest_mode = android and not os.environ.get('NOMONE_PTY_TEST_HOST_SHELL')
with tempfile.TemporaryDirectory(prefix='nomone-pty-') as temporary:
    work = Path(temporary)
    classes = work / 'classes'
    classes.mkdir()
    runtime = root / 'server-java/com/nomone/vr_desktop/runtime'
    subprocess.run(['javac', '--release', '8', '-d', classes, runtime / 'PtyNative.java', runtime / 'PtySession.java', root / 'tests/pty/PtyIntegrationTest.java'], check=True)
    compiler = ['clang' if android else 'cc', '-shared', '-fPIC', '-O2', '-Wall', '-Wextra', '-Werror']
    if not android:
        java_home = Path(shutil.which('javac')).resolve().parents[1]
        compiler += ['-I' + str(java_home / 'include'), '-I' + str(java_home / 'include/linux')]
    if android:
        shutil.copy2(root / 'lib/arm64-v8a/libnomone_pty.so', work / 'libnomone_pty.so')
    else:
        subprocess.run([*compiler, root / 'native/pty.c', '-o', work / 'libnomone_pty.so'], check=True)
    environment = os.environ.copy()
    environment.pop('LD_PRELOAD', None)
    environment['TERM'] = 'xterm-256color'
    environment['PATH'] = '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' if guest_mode else environment['PATH']
    if guest_mode:
        guest = work / 'ubuntu'
        guest.mkdir()
        with tarfile.open(root / 'assets/linux/ubuntu-base-22.04.5-base-arm64.tar.gz') as archive:
            archive.extractall(guest, filter='fully_trusted')
        for name in ['dev', 'proc', 'sys', 'root', 'tmp']:
            (guest / name).mkdir(exist_ok=True)
        native = root / 'lib/arm64-v8a'
        for source, destination in [('lib_bin_proot.so', 'proot'), ('lib_bin_loader.so', 'loader'), ('lib_bin_loader32.so', 'loader32'), ('lib_lib_libtalloc.so.2.so', 'libtalloc.so.2')]:
            shutil.copy2(native / source, work / destination)
            (work / destination).chmod(0o755)
        environment.update({'PROOT_TMP_DIR': str(work), 'PROOT_LOADER': str(work / 'loader'), 'PROOT_LOADER_32': str(work / 'loader32'), 'LD_LIBRARY_PATH': str(work), 'HOME': '/root'})
        command = [str(work / 'proot'), '--kill-on-exit', '--root-id', '--sysvipc', '--ashmem-memfd', '-r', str(guest), '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '--cwd=/root', '/bin/bash', '--noprofile', '--norc', '-i']
    else:
        command = [os.environ.get('NOMONE_PTY_TEST_HOST_SHELL', '/bin/bash'), '--noprofile', '--norc', '-i']
    subprocess.run(['java', '-Djava.library.path=' + str(work), '-cp', classes, 'PtyIntegrationTest', *command], env=environment, check=True, timeout=90)
