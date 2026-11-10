from pathlib import Path
import json
import os
import re
import shlex
import subprocess
import time
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ)
environment['LD_LIBRARY_PATH'] = '/data/data/com.termux/files/usr/lib'
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
fixture = '/root/workspace/.agent-widget-check'
report = {'checks': {}, 'widget_name': 'Ayrvokan Agent', 'frontend': 'Dedicated native TUI-style widget', 'backend': 'Standalone Rust process, direct /bin/bash stdio'}

def shell(command):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=30)

def private(path):
    return shell('run-as ' + package + ' cat ' + shlex.quote(path))

def layout(value=None):
    xml = ET.fromstring(value if value is not None else private('shared_prefs/MainActivity.xml'))
    return json.loads(next(node.text for node in xml.findall('string') if node.attrib.get('name') == 'layout'))

def hierarchy():
    shell('uiautomator dump --compressed /data/local/tmp/ayrvokan-agent-ui.xml')
    return ET.fromstring(shell('cat /data/local/tmp/ayrvokan-agent-ui.xml'))

def node(tree, description=None, text=None):
    for value in tree.iter('node'):
        if value.attrib.get('package') != package:
            continue
        if description is not None and value.attrib.get('content-desc') != description:
            continue
        if text is not None and value.attrib.get('text') != text:
            continue
        return value
    raise RuntimeError('UI element unavailable: ' + str((description, text)))

def tap(value):
    left, top, right, bottom = map(int, re.findall(r'\d+', value.attrib['bounds']))
    shell('input -d 10 tap ' + str((left + right) // 2) + ' ' + str((top + bottom) // 2))

def wait_for(token, timeout=20):
    deadline = time.monotonic() + timeout
    while True:
        tree = hierarchy()
        text = node(tree, description='Ayrvokan Agent transcript').attrib.get('text', '')
        if token in text and node(tree, description='Send Ayrvokan Agent command').attrib.get('enabled') == 'true':
            return tree
        if time.monotonic() >= deadline:
            raise RuntimeError('Agent UI output missing: ' + token + '\n' + text)
        time.sleep(0.2)

def send(command):
    tree = hierarchy()
    tap(node(tree, description='Ayrvokan Agent input'))
    shell('input -d 10 text ' + shlex.quote(command.replace(' ', '%s')))
    shell('input -d 10 keyevent 66')

try:
    initial = layout()
    agents = [item for item in initial if item['plugin'] == 'agent']
    assert len(agents) == 1, agents
    agent_id = agents[0]['id']
    original = layout((root / 'evidence/layout-before-agent.xml').read_text())
    current = {item['id']: item for item in initial}
    for item in original:
        assert current[item['id']] == item
    report['checks']['dedicated_agent_widget_added_without_replacing_existing_widgets'] = True
    tree = wait_for('Ayrvokan Agent')
    agent_panel = node(tree, description='widget:' + agent_id)
    assert not any(value.attrib.get('class') == 'android.webkit.WebView' for value in agent_panel.iter('node'))
    report['checks']['agent_widget_has_native_console_and_own_input_no_terminal_webview'] = True
    send('/run echo AGENT_WIDGET_OK')
    wait_for('AGENT_WIDGET_OK\n\n[exit 0]')
    report['checks']['native_prompt_enter_executes_real_bash_and_displays_exit_code'] = True
    tap(node(hierarchy(), text='/skills'))
    wait_for('workspace')
    report['checks']['touch_shortcut_loads_skills_from_rust_process'] = True
    send('/run echo WIDGET_FILE > ' + fixture)
    wait_for('WIDGET_FILE > ' + fixture)
    assert private('files/KaliMinimal' + fixture).strip() == 'WIDGET_FILE'
    report['checks']['agent_uses_same_embedded_linux_filesystem'] = True
    send('/run sleep 30')
    time.sleep(0.2)
    tap(node(hierarchy(), description='Stop Ayrvokan Agent command'))
    wait_for('cancelled')
    report['checks']['touch_stop_cancels_running_bash'] = True
    send('/run rm -f ' + fixture)
    wait_for('rm -f ' + fixture)
    before = layout()
    binding_before = json.loads(private('files/KaliMinimal/root/.ayrvokan-agent/widget-sessions.json'))[agent_id]
    shell('am force-stop ' + package)
    shell('am start -W -n ' + package + '/.MainActivity')
    tree = wait_for('AGENT_WIDGET_OK')
    assert layout() == before
    assert json.loads(private('files/KaliMinimal/root/.ayrvokan-agent/widget-sessions.json'))[agent_id] == binding_before
    report['checks']['agent_widget_layout_session_and_console_history_survive_process_restart'] = True
    tap(node(tree, text='/help'))
    tree = wait_for('Shift+Enter')
    (root / 'evidence/agent-widget-final.xml').write_text(ET.tostring(tree, encoding='unicode'))
    report['session_id'] = binding_before
    report['widget_id'] = agent_id
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    (root / 'evidence/agent-widget-acceptance.json').write_text(json.dumps(report, indent=2) + '\n')
    shell('rm -f /data/local/tmp/ayrvokan-agent-ui.xml')
    print(json.dumps(report))
