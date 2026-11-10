from pathlib import Path
import json
import os
import re
import subprocess
import time
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
remote = '/data/local/tmp/ayrvokan-network-ui.xml'
report = {'checks': {}}


def shell(command, timeout=25):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=timeout).strip()


def ui():
    shell('uiautomator dump --compressed ' + remote, 35)
    return ET.fromstring(shell('cat ' + remote))


def find(description=None, text=None):
    values = [node for node in ui().iter('node') if node.get('package') == package and (description is None or node.get('content-desc') == description) and (text is None or node.get('text', '').casefold() == text.casefold())]
    assert len(values) == 1, (description, text, len(values))
    return values[0]


def tap(description=None, text=None):
    value = find(description, text)
    assert value.get('enabled') == 'true'
    left, top, right, bottom = map(int, re.findall(r'\d+', value.get('bounds')))
    assert right > left and bottom > top
    shell('input -d 10 tap ' + str((left + right) // 2) + ' ' + str((top + bottom) // 2))


def layout(text):
    return json.loads(ET.fromstring(text).find("string[@name='layout']").text)


try:
    initial = ui()
    if any(value.get('package') == package and value.get('text', '').casefold() == 'cancel' for value in initial.iter('node')):
        tap(text='Cancel')
    tap('Overview Network HQ')
    before = layout((root / 'evidence/layout-before-network.xml').read_text())
    after_text = shell('run-as ' + package + ' cat shared_prefs/MainActivity.xml')
    after = layout(after_text)
    (root / 'evidence/layout-with-network.xml').write_text(after_text + '\n')
    for widget in before:
        assert next(value for value in after if value['id'] == widget['id']) == widget
    assert sum(value['plugin'] == 'network' for value in after) == 1
    report['checks']['fifth_plugin_added_once_preserving_existing_layout_ids_geometry_paths'] = True
    status = find('Network HQ status').get('text')
    assert 'Android TCP/UDP' in status, status
    report['checks']['native_widget_receives_live_system_socket_collector'] = True
    overview = ui()
    assert any('Wi-Fi' in value.get('text', '') for value in overview.iter('node'))
    assert any('DNS ' in value.get('text', '') for value in overview.iter('node'))
    report['checks']['manifest_network_permission_enables_live_ip_dns_network_info'] = True
    tap('Connections Network HQ')
    connections = ui()
    assert any('UID ' in value.get('text', '') for value in connections.iter('node'))
    assert any('ESTABLISHED' in value.get('text', '') or 'LISTEN' in value.get('text', '') or 'TIME_WAIT' in value.get('text', '') for value in connections.iter('node'))
    report['checks']['touch_connections_tab_shows_actual_protocol_state_uid_and_endpoints'] = True
    tap('MCP Network HQ')
    server = next(value for value in ui().iter('node') if value.get('content-desc', '').startswith('Network row: inspector · CONNECTED'))
    tap(server.get('content-desc'))
    tap(text='Tools / call tool')
    tap(text='network.dns')
    assert find('Network HQ editor').get('text').find('localhost') >= 0
    tap(text='Run')
    time.sleep(0.5)
    result = find('Network HQ result').get('text')
    assert '127.0.0.1' in result, result
    report['checks']['touch_real_mcp_tool_list_argument_editor_and_native_dns_tool_call'] = True
    (root / 'evidence/network-mcp-result.xml').write_text(ET.tostring(ui(), encoding='unicode') + '\n')
    with (root / 'evidence/network-mcp-result.png').open('wb') as output:
        subprocess.run(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, stdout=output, check=True)
    tap(text='Close')
    tap('Registry Network HQ')
    registry = find('Network HQ editor').get('text')
    assert 'mcpServers' in registry and 'targets' in registry and 'services' in registry
    tap(text='Cancel')
    report['checks']['touch_persistent_registry_editor_opens_real_configuration'] = True
    tap('Connections Network HQ')
    with (root / 'evidence/network-live-connections.png').open('wb') as output:
        subprocess.run(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, stdout=output, check=True)
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    (root / 'evidence/network-widget-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report))
