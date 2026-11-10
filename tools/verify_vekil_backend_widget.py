from pathlib import Path
import json
import os
import re
import shlex
import subprocess
import time
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
remote = '/data/local/tmp/ayrvokan-vekil-backend-ui.xml'
report = {'checks': {}}


def shell(command, timeout=25):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=timeout).strip()


def ui():
    shell('uiautomator dump --compressed ' + remote, 35)
    return ET.fromstring(shell('cat ' + remote))


def find(description=None, text=None):
    values = [value for value in ui().iter('node') if value.get('package') == package and (description is None or value.get('content-desc') == description) and (text is None or value.get('text', '').casefold() == text.casefold())]
    assert len(values) == 1, (description, text, len(values))
    return values[0]


def tap(description=None, text=None):
    node = find(description, text)
    left, top, right, bottom = map(int, re.findall(r'\d+', node.get('bounds')))
    assert node.get('enabled') == 'true' and right > left and bottom > top
    shell('input -d 10 tap ' + str((left + right) // 2) + ' ' + str((top + bottom) // 2))


def layout(text):
    return json.loads(ET.fromstring(text).find("string[@name='layout']").text)


try:
    before = layout((root / 'evidence/layout-before-cliproxy-backend.xml').read_text())
    after = layout(shell('run-as ' + package + ' cat shared_prefs/MainActivity.xml'))
    assert before == after
    assert sum(widget['plugin'] == 'vekil-kaan' for widget in after) == 1
    report['checks']['existing_six_widgets_and_user_layout_preserved'] = True
    def send(command):
        assert find('Vekil Kaan input').get('text') in ('', 'Message or /command')
        tap('Vekil Kaan input')
        shell(shlex.join(['input', '-d', '10', 'text', command.replace(' ', '%s')]))
        assert find('Vekil Kaan input').get('text') == command
        tap('Send Vekil Kaan command')
        time.sleep(1)
        return find('Vekil Kaan transcript').get('text')
    assert find('Vekil Kaan CLIProxyAPI backend').get('text') == 'CLIProxyAPI'
    backend = send('/backend')
    assert 'CLIProxyAPI' in backend and 'http://127.0.0.1:8317/v1' in backend and 'API reachable' in backend
    report['checks']['native_widget_uses_actual_running_local_cliproxy_backend'] = True
    models = send('/models')
    assert 'CLIProxyAPI has no models' in models and 'Management Center' in models
    report['checks']['empty_live_proxy_catalog_is_shown_explicitly_without_direct_login'] = True
    status = send('/status')
    assert 'Vekil Kaan 0.1.1' in status and 'CLIProxyAPI · auto' in status
    report['checks']['native_status_reports_proxy_backend_and_independent_rust_version'] = True
    report['live_inference'] = 'Not executed: actual CLIProxyAPI model catalog is empty. No fallback backend or account import.'
    with (root / 'evidence/vekil-cliproxy-widget.png').open('wb') as output:
        subprocess.run(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, stdout=output, check=True)
    (root / 'evidence/vekil-cliproxy-widget.xml').write_text(ET.tostring(ui(), encoding='unicode') + '\n')
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    (root / 'evidence/vekil-cliproxy-widget-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    shell('rm -f ' + remote)
    print(json.dumps(report))
