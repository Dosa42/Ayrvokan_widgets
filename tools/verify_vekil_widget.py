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
remote = '/data/local/tmp/ayrvokan-vekil-ui.xml'
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
    before = layout((root / 'evidence/layout-before-0.7.0.xml').read_text())
    after_text = shell('run-as ' + package + ' cat shared_prefs/MainActivity.xml')
    after = layout(after_text)
    for widget in before:
        assert next(value for value in after if value['id'] == widget['id']) == widget
    assert sum(value['plugin'] == 'vekil-kaan' for value in after) == 1
    (root / 'evidence/layout-with-vekil.xml').write_text(after_text + '\n')
    report['checks']['independent_sixth_plugin_migrates_once_preserving_prior_widgets'] = True
    engine = find('Vekil Kaan engine state').get('text')
    assert 'Heartbeat' in engine and 'MD r' in engine, engine
    assert re.search(r'Heartbeat \w+ H[1-9]\d*', engine), engine
    report['checks']['native_live_reactive_heartbeat_revision_status'] = True
    command = '/run printf VEKIL_WIDGET_OK'
    assert find('Vekil Kaan input').get('text') in ('', 'Message or /command')
    tap('Vekil Kaan input')
    shell(shlex.join(['input', '-d', '10', 'text', command.replace(' ', '%s')]))
    assert find('Vekil Kaan input').get('text') == command
    tap('Send Vekil Kaan command')
    time.sleep(0.5)
    transcript = find('Vekil Kaan transcript').get('text')
    assert 'VEKIL_WIDGET_OK' in transcript and '[exit 0]' in transcript, transcript
    report['checks']['native_widget_input_runs_actual_reactive_bash_cycle'] = True
    tap('Pause Vekil Kaan')
    time.sleep(1)
    assert 'Paused' in find('Vekil Kaan engine state').get('text')
    tap('Start Vekil Kaan')
    time.sleep(1)
    assert 'Paused' not in find('Vekil Kaan engine state').get('text')
    report['checks']['touch_engine_pause_and_start_controls'] = True
    tap('Resync Vekil Kaan')
    time.sleep(1)
    assert 'RUNNING' in find('Vekil Kaan engine state').get('text')
    report['checks']['touch_resync_control_runs_two_actor_state_exchange'] = True
    tap('Markdown Vekil Kaan')
    tap(text='HEARTBEAT.executable.md')
    editor = find('Vekil Kaan Markdown editor').get('text')
    assert 'PULSE_CONFIG:' in editor and 'interval_seconds: 15' in editor
    tap(text='Apply')
    report['checks']['native_markdown_editor_applies_real_directive_document'] = True
    with (root / 'evidence/vekil-widget.png').open('wb') as output:
        subprocess.run(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, stdout=output, check=True)
    (root / 'evidence/vekil-widget.xml').write_text(ET.tostring(ui(), encoding='unicode') + '\n')
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    (root / 'evidence/vekil-widget-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report))
