from pathlib import Path
import hashlib
import json
import os
import re
import subprocess
import time
import urllib.error
import urllib.request
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
remote = '/data/local/tmp/ayrvokan-cliproxy-ui.xml'
report = {'checks': {}, 'upstream_inference': 'Not configured; no provider account was imported or signed in'}

def shell(command, timeout=20):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=timeout).strip()

def ui():
    shell('uiautomator dump --compressed ' + remote, 30)
    value = shell('cat ' + remote)
    return ET.fromstring(value)

def node(description):
    nodes = [value for value in ui().iter('node') if value.get('content-desc') == description]
    assert len(nodes) == 1, (description, len(nodes))
    return nodes[0]

def tap(description):
    value = node(description)
    assert value.get('enabled') == 'true', description
    left, top, right, bottom = map(int, re.findall(r'\d+', value.get('bounds')))
    shell('input -d 10 tap ' + str((left + right) // 2) + ' ' + str((top + bottom) // 2))

def http(path='/', management=False):
    headers = {'Authorization': 'Bearer ' + management_key} if management else {}
    with urllib.request.urlopen(urllib.request.Request('http://127.0.0.1:8317' + path, headers=headers), timeout=5) as response:
        return response.status, response.read()

def wait_api(running):
    deadline = time.monotonic() + 20
    while time.monotonic() < deadline:
        try:
            code, data = http()
            if running and code == 200 and json.loads(data)['message'] == 'CLI Proxy API Server':
                return
        except (urllib.error.URLError, TimeoutError, ConnectionError):
            if not running:
                return
        time.sleep(0.3)
    raise AssertionError('API running=' + str(running))

def layout(text):
    return json.loads(ET.fromstring(text).find("string[@name='layout']").text)

try:
    before = layout((root / 'evidence/layout-before-cliproxy.xml').read_text())
    after_text = shell('run-as ' + package + ' cat shared_prefs/MainActivity.xml')
    (root / 'evidence/layout-with-cliproxy.xml').write_text(after_text + '\n')
    after = layout(after_text)
    for widget in before:
        assert next(value for value in after if value['id'] == widget['id']) == widget
    assert sum(value['plugin'] == 'cliproxy' for value in after) == 1
    report['checks']['existing_widgets_geometry_paths_and_ids_preserved'] = True
    report['checks']['fourth_plugin_added_once'] = True
    wait_api(True)
    report['checks']['packaged_arm64_server_running_in_app_kali'] = True
    deadline = time.monotonic() + 20
    while True:
        status = node('CLIProxyAPI status').get('text')
        if 'API ready' in status:
            break
        assert time.monotonic() < deadline, status
        time.sleep(1)
    report['checks']['native_widget_observes_live_server_readiness'] = True
    config_before = shell('run-as ' + package + ' cat files/KaliMinimal/root/.ayrvokan-cliproxy/config.yaml')
    management_key = shell('run-as ' + package + ' cat files/KaliMinimal/root/.ayrvokan-cliproxy/management-key')
    code, body = http('/v0/management/auth-files', True)
    accounts = json.loads(body).get('files', [])
    report['checks']['authenticated_management_api_reachable'] = code == 200
    report['proxy_upstream_accounts'] = len(accounts)
    code, models = http('/v1/models')
    report['checks']['openai_compatible_models_endpoint_live'] = code == 200 and isinstance(json.loads(models)['data'], list)
    code, panel = http('/management.html')
    assert hashlib.sha256(panel).hexdigest() == json.loads((root / 'assets/cliproxy/version.json').read_text())['panel_sha256']
    report['checks']['bundled_official_management_panel_served'] = True
    tap('Stop CLIProxyAPI')
    wait_api(False)
    report['checks']['touch_stop_shuts_down_real_server'] = True
    time.sleep(1)
    tap('Start CLIProxyAPI')
    wait_api(True)
    report['checks']['touch_start_restarts_real_server'] = True
    assert config_before == shell('run-as ' + package + ' cat files/KaliMinimal/root/.ayrvokan-cliproxy/config.yaml')
    report['checks']['configuration_persists_across_stop_start'] = True
    logs = shell('run-as ' + package + ' cat files/KaliMinimal/root/.ayrvokan-cliproxy/widget.log')
    assert '[exit ' in logs and logs.count('API server started successfully') >= 2, 'Missing persisted process exit/start log'
    report['checks']['live_logs_persist_and_capture_stop_start'] = True
    tap('Panel CLIProxyAPI')
    time.sleep(2)
    panel_ui = ui()
    assert any(value.get('class') == 'android.webkit.WebView' for value in panel_ui.iter('node'))
    report['checks']['touch_panel_opens_embedded_webview'] = True
    (root / 'evidence/cliproxy-panel.xml').write_text(ET.tostring(panel_ui, encoding='unicode') + '\n')
    with (root / 'evidence/cliproxy-panel.png').open('wb') as output:
        subprocess.run(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, stdout=output, check=True)
    tap('Logs CLIProxyAPI')
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    (root / 'evidence/cliproxy-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report))
