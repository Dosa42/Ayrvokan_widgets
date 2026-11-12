import os
from pathlib import Path
import shutil
import subprocess
import tempfile

root = Path(__file__).resolve().parents[2]
native_source = root / 'lib/arm64-v8a'
with tempfile.TemporaryDirectory(prefix='nomone-ubuntu-') as temporary:
    work = Path(temporary)
    native = work / 'native'
    native.mkdir()
    for source in native_source.glob('lib_proot_*'):
        shutil.copy2(source, native / source.name)
    busybox = os.environ.get('NOMONE_TEST_BUSYBOX') or shutil.which('busybox')
    if not busybox:
        raise RuntimeError('BusyBox is required for the Java installer integration test')
    shutil.copy2(busybox, native / 'lib_bin_busybox.so')
    (native / 'lib_bin_busybox.so').chmod(0o755)
    for name in ['image-files', 'bootstrap-files']:
        files = work / name
        (files / 'common/bin').mkdir(parents=True)
        (files / 'common/bin/busybox').symlink_to(native / 'lib_bin_busybox.so')
    classes = work / 'classes'
    classes.mkdir()
    sources = [root / 'server-java/com/nomone/vr_desktop/runtime' / name for name in ['UbuntuImage.java', 'UbuntuRootfs.java']] + sorted((root / 'tests/java').rglob('*.java'))
    subprocess.run(['javac', '--release', '8', '-Xlint:-options', '-d', classes, *sources], check=True)
    archive = root / 'assets/linux/ubuntu-base-22.04.5-base-arm64.tar.gz'
    subprocess.run(['java', '-cp', classes, 'UbuntuImageTest', work / 'image-files', native, archive], check=True)
    subprocess.run(['java', '-cp', classes, 'UbuntuBootstrapTest', work / 'bootstrap-files', root / 'assets', native], check=True)
