from pathlib import Path
import os
import shlex
import subprocess
import sys

environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'


def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=30).strip()


def guest(arguments, data=None, timeout=120):
    files = shell('run-as ' + package + ' pwd') + '/files'
    native = shell('run-as ' + package + ' readlink files/runtime/lib/libtalloc.so.2').rsplit('/', 1)[0]
    kernel = shell('uname -r')
    argv = ['run-as', package, '/system/bin/env', '-i', 'PATH=/system/bin', 'HOME=' + files, 'TMPDIR=' + files + '/runtime/tmp', 'PROOT_TMP_DIR=' + files + '/runtime/tmp', 'PROOT_LOADER=' + native + '/libprootloader.so', 'LD_LIBRARY_PATH=' + files + '/runtime/lib', 'ANDROID_ROOT=/system', 'ANDROID_DATA=/data', '/system/bin/sh', '-c', 'exec "$@"', 'dikte-linux', native + '/libproot.so', '-0', '-r', files + '/KaliMinimal', '-b', '/dev', '-b', '/proc', '-b', '/sys', '-b', '/system', '-b', '/apex', '-b', files + '/runtime/tmp:/tmp', '--sysvipc', '-H', '-L', '-p', '--ashmem-memfd', '--kernel-release=' + kernel, '--link2symlink', '--kill-on-exit', '-w', '/root', '/usr/bin/env', '-i', 'HOME=/root', 'USER=root', 'LOGNAME=root', 'LANG=C.UTF-8', 'LC_ALL=C.UTF-8', 'PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin', *arguments]
    return subprocess.run(base + ['shell', shlex.join(argv)], input=data, env=environment, text=True, capture_output=True, timeout=timeout)


if __name__ == '__main__':
    result = guest(sys.argv[1:], sys.stdin.read() if not sys.stdin.isatty() else None, timeout=1200)
    print(result.stdout, end='')
    print(result.stderr, end='', file=sys.stderr)
    raise SystemExit(result.returncode)
