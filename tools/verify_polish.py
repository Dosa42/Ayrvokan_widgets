from pathlib import Path
from screen_pixels import Pixels
import struct
import json
import os
import re
import shlex
import subprocess
import sys
import time
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
environment = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
package = 'com.ayrvokan.widgets'
remote = '/data/local/tmp/ayrvokan-polish-check.xml'
fixture = '/root/workspace/.polish-ui-' + str(os.getpid())
stage = 'files/KaliMinimal' + fixture
owned = []
created = False
resume = '--from-files' in sys.argv
report = {'checks': {}, 'execution': 'Actual installed native Android UI, real DeX touchscreen input, actual Bash and file operations; no model inference fixture or live AI request'}

if resume:
    previous = json.loads((root/'evidence/polish-ui-verification.json').read_text())
    report['checks'].update(previous['checks'])
    report['resumed_previous_checks'] = list(previous['checks'])
    for key in ['ready','working','interrupted']:
        if key in previous:
            report[key] = previous[key]


def mark(name):
    report['checks'][name] = True
    print(json.dumps({'check':name,'passed':True}),flush=True)


def shell(command, timeout=30):
    return subprocess.check_output(base + ['shell', command], env=environment, text=True, timeout=timeout).strip()


def ui():
    shell('uiautomator dump --compressed ' + remote, 40)
    return ET.fromstring(shell('cat ' + remote))


def bounds(node):
    return tuple(map(int, re.findall(r'\d+', node.get('bounds'))))


def find(description=None, text=None, tree=None, editable=False):
    tree = tree if tree is not None else ui()
    found = [node for node in tree.iter('node') if node.get('package') == package and (description is None or node.get('content-desc') == description) and (text is None or node.get('text', '').casefold() == text.casefold()) and (not editable or node.get('class') == 'android.widget.EditText')]
    if editable and len(found) > 1:
        found = [node for node in found if node.get('focused') == 'true']
    assert len(found) == 1, (description, text, 'count', len(found))
    return found[0]


def tap(description=None, text=None, node=None):
    node = node if node is not None else find(description, text)
    left, top, right, bottom = bounds(node)
    assert node.get('enabled') == 'true' and right > left and bottom > top, (description, text)
    shell('input -d 10 tap ' + str((left + right) // 2) + ' ' + str((top + bottom) // 2))


def type_text(text):
    shell(shlex.join(['input', '-d', '10', 'text', text.replace(' ', '%s')]))


def replace(node, text):
    tap(node=node)
    shell('input -d 10 keycombination 113 29')
    shell('input -d 10 keyevent 67')
    if text:
        type_text(text)


def screenshot(name):
    if 'mInputShown=true' in shell('dumpsys input_method'):
        shell('input -d 10 keyevent 4')
        time.sleep(.15)
    data = subprocess.check_output(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, timeout=20)
    (root / 'evidence' / name).write_bytes(data)
    raw = subprocess.check_output(base + ['exec-out', 'screencap', '-d', '4637127821722458117'], env=environment, timeout=20)
    width,height,format,color_space = struct.unpack_from('<4I',raw)
    assert format == 1 and len(raw) == 16 + width * height * 4
    return Pixels(width,height,4,raw[16:])


def color_check(description, rgb, name):
    node = find(description)
    image = screenshot(name)
    area = image.crop(bounds(node))
    count = sum(1 for pixel in area.getdata() if pixel == rgb)
    assert count >= 4, (description, rgb, count)
    return {'text': node.get('text'), 'rgb': rgb, 'matching_pixels': count}


def until(predicate, timeout=25):
    deadline = time.monotonic() + timeout
    while True:
        value = predicate()
        if value:
            return value
        assert time.monotonic() < deadline, 'Condition timed out'
        time.sleep(.15)


def focus(title):
    tap('Focus ' + title + ' widget')


def send(title, command, expected=None):
    focus(title)
    prompt = find(title + ' input')
    assert prompt.get('text') in ('', 'Message or /command'), 'Existing user draft is present'
    tap(node=prompt)
    type_text(command)
    assert find(title + ' input').get('text') == command
    tap('Send ' + title + ' command')
    if expected:
        until(lambda: expected in find(title + ' transcript').get('text', ''))
        until(lambda: find('Stop ' + title + ' command').get('enabled') == 'false')


def read_fixture(name):
    reply = subprocess.run(base + ['shell', 'run-as ' + package + ' cat ' + stage + '/' + name], env=environment, text=True, capture_output=True)
    return reply.stdout.strip() if reply.returncode == 0 else ''


def layout(source=None):
    value = source if source is not None else shell('run-as ' + package + ' cat shared_prefs/MainActivity.xml')
    return json.loads(ET.fromstring(value).find("string[@name='layout']").text)


def add(title, plugin):
    initial = {value['id'] for value in layout()}
    tap('Add workspace widget')
    tap('Add ' + title + ' widget')
    item = until(lambda: next((value for value in layout() if value['id'] not in initial and value['plugin'] == plugin), None))
    owned.append((title, item['id']))
    report['owned_widgets'] = list(owned)
    (root/'evidence/polish-owned-widgets.json').write_text(json.dumps(owned))
    return item


try:
    before = layout((root / 'evidence/polish-before-layout.xml').read_text())
    current = {value['id']: value for value in layout()}
    assert all(current[item['id']] == item for item in before)
    tree = ui()
    for item in before:
        title = {'terminal': 'Terminal', 'agent': 'Ayrvokan Agent', 'vekil-kaan': 'Vekil Kaan', 'files': 'Files', 'cliproxy': 'CLIProxyAPI', 'network': 'Network HQ'}[item['plugin']]
        find('Focus ' + title + ' widget', tree=tree)
    mark('existing_widget_ids_geometry_paths_and_touch_dock_preserved')
    assert shell('run-as ' + package + ' test ! -e ' + stage + '; echo $?') == '0'
    shell('run-as ' + package + ' mkdir -p ' + stage + '/folder')
    created = True
    for name, value in [('alpha.md', 'POLISH_DOCUMENT_OK\n'), ('beta.rs', 'fn main() {}\n'), ('gamma.json', '{"ready":true}\n')]:
        command = ['run-as', package, '/system/bin/sh', '-c', 'cat > "$1"', 'polish-fixture', stage + '/' + name]
        subprocess.run(base + ['shell', shlex.join(command)], env=environment, input=value, text=True, check=True)
    if not resume:
        send('Ayrvokan Agent', '/run printf POLISH_AGENT_OK', 'POLISH_AGENT_OK\n[exit 0]')
        assert find('Send Ayrvokan Agent command').get('enabled') == 'false'
        report['ready'] = color_check('Ayrvokan Agent status', (93, 220, 180), 'polish-agent-ready.png')
        send('Ayrvokan Agent', '/run exit 7', '[exit 7]')
        report['failed_state_color'] = color_check('Ayrvokan Agent status', (255, 129, 146), 'polish-agent-error.png')
        send('Ayrvokan Agent', '/run sleep 30')
        until(lambda: find('Stop Ayrvokan Agent command').get('enabled') == 'true')
        report['working'] = color_check('Ayrvokan Agent status', (129, 187, 255), 'polish-agent-working.png')
        tap('Stop Ayrvokan Agent command')
        until(lambda: find('Stop Ayrvokan Agent command').get('enabled') == 'false')
        report['interrupted'] = color_check('Ayrvokan Agent status', (244, 193, 107), 'polish-agent-interrupted.png')
        send('Ayrvokan Agent', '/run printf POLISH_READY', 'POLISH_READY\n[exit 0]')
        mark('real_bash_success_failure_working_cancel_states_have_distinct_actual_rendered_colors')
        send('Vekil Kaan', '/run printf POLISH_VEKIL_OK', 'POLISH_VEKIL_OK\n[exit 0]')
        state = find('Vekil Kaan engine state').get('text', '')
        assert all(value in state for value in ['Reactive', 'Heartbeat', 'RUNNING', 'MD r'])
        assert find('Vekil Kaan provider state').get('text') in ('CLIProxyAPI', 'Backend not ready', 'Backend error', 'Backend pending')
        screenshot('polish-vekil.png')
        mark('vekil_actual_queue_bash_engine_pulses_and_separate_backend_badge_work')
    files_widget = add('Files', 'files')
    focus('Files')
    tap('Files current path')
    replace(find(editable=True), fixture)
    tap(text='OK')
    until(lambda: find('Files current path').get('text') == fixture)
    replace(find('Files name filter'), 'not-found-polish')
    assert 'No matching names' in find('Files empty state').get('text', '')
    replace(find('Files name filter'), '')
    tap('Linux file: alpha.md')
    assert find(editable=True).get('text') == 'POLISH_DOCUMENT_OK\n'
    tap(text='Cancel')
    entry = find('Linux file: alpha.md')
    left, top, right, bottom = bounds(entry)
    shell('input -d 10 swipe ' + ' '.join(map(str, [(left + right)//2, (top + bottom)//2, (left + right)//2, (top + bottom)//2, 700])))
    find(text='Copy path')
    find(text='Open terminal here')
    if 'mInputShown=true' in shell('dumpsys input_method'):
        shell('input -d 10 keyevent 4')
    shell('input -d 10 keyevent 4')
    screenshot('polish-files.png')
    mark('files_filter_empty_state_real_editor_and_context_actions_work')
    panel = find('widget:' + files_widget['id'])
    left,top,right,bottom = bounds(panel)
    handle = find('Resize Files')
    l,t,r,b = bounds(handle)
    shell('input -d 10 swipe ' + ' '.join(map(str,[(l+r)//2,(t+b)//2,left+340-(right-(l+r)//2),(t+b)//2,650])))
    compact = find('widget:' + files_widget['id'])
    assert bounds(compact)[2]-bounds(compact)[0] <= 350
    find('Files name filter')
    screenshot('polish-files-compact.png')
    tap('Expand Files')
    expanded = find('widget:' + files_widget['id'])
    assert bounds(expanded)[2]-bounds(expanded)[0] > 1500
    tap('Expand Files')
    assert bounds(find('widget:' + files_widget['id']))[2]-bounds(find('widget:' + files_widget['id']))[0] <= 350
    mark('touch_resize_expand_and_restore_keep_owned_widget_usable_at_compact_width')
    add('CLIProxyAPI', 'cliproxy')
    focus('CLIProxyAPI')
    until(lambda: 'API ready' in find('CLIProxyAPI status').get('text', ''))
    color_check('CLIProxyAPI status', (93, 220, 180), 'polish-proxy.png')
    assert find('Panel CLIProxyAPI').get('enabled') == 'true'
    assert find('Stop CLIProxyAPI').get('enabled') == 'true'
    mark('proxy_api_readiness_and_contextual_management_controls_match_real_service')
    add('Network HQ', 'network')
    focus('Network HQ')
    until(lambda: 'Live' in find('Network HQ status').get('text', ''))
    tap('Ports Network HQ')
    replace(find('Network HQ filter'), '8317')
    listing = find('Network HQ Ports list')
    assert any('8317' in node.get('text', '') for node in listing.iter('node'))
    screenshot('polish-network-ports.png')
    replace(find('Network HQ filter'), '')
    tap('MCP Network HQ')
    find('Network HQ MCP list')
    tap('Overview Network HQ')
    screenshot('polish-network.png')
    mark('network_active_tabs_filter_and_real_proxy_port_and_mcp_views_work')
    focus('Terminal')
    tree = ui()
    panel = find('widget:' + next(value['id'] for value in before if value['plugin'] == 'terminal'), tree=tree)
    web = next(node for node in panel.iter('node') if node.get('class') == 'android.webkit.WebView')
    tap(node=web)
    type_text('echo POLISH_TERMINAL_OK > ' + fixture + '/terminal-proof.txt')
    shell('input -d 10 keyevent 66')
    until(lambda: read_fixture('terminal-proof.txt') == 'POLISH_TERMINAL_OK')
    web_before = screenshot('polish-terminal.png').crop(bounds(web)).tobytes()
    tap('Terminal larger text')
    time.sleep(.2)
    assert screenshot('polish-terminal-larger.png').crop(bounds(web)).tobytes() != web_before
    tap('Terminal smaller text')
    mark('terminal_touch_input_executes_real_bash_and_font_controls_change_rendered_terminal')
    for title, identifier in reversed(owned):
        focus(title)
        tap('Close ' + title)
    until(lambda: {value['id'] for value in layout()} == {value['id'] for value in before})
    owned.clear()
    after = {value['id']: value for value in layout()}
    assert set(after) == {value['id'] for value in before}
    assert all(after[value['id']] == value for value in before)
    mark('temporary_review_widgets_removed_without_changing_user_geometry_or_saved_paths')
    for item in before:
        focus({'terminal':'Terminal','agent':'Ayrvokan Agent','vekil-kaan':'Vekil Kaan','files':'Files','cliproxy':'CLIProxyAPI','network':'Network HQ'}[item['plugin']])
    screenshot('polish-workspace.png')
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    screenshot('polish-failure.png')
    raise
finally:
    if owned:
        try:
            if any(node.get('resource-id') == 'android:id/alertTitle' for node in ui().iter('node')):
                if 'mInputShown=true' in shell('dumpsys input_method'):
                    shell('input -d 10 keyevent 4')
                shell('input -d 10 keyevent 4')
        except Exception:
            pass
    for title, identifier in reversed(owned):
        try:
            if any(item['id'] == identifier for item in layout()):
                focus(title)
                tap('Close ' + title)
        except Exception:
            pass
    if created:
        shell('run-as ' + package + ' rm -rf ' + stage)
    shell('rm -f ' + remote)
    (root/'evidence/polish-ui-verification.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({'passed':report.get('passed'), 'checks':report['checks'], 'failure':report.get('failure')}))
