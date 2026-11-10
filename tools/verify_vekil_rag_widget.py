from pathlib import Path
import hashlib
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
remote = '/data/local/tmp/ayrvokan-vekil-rag-ui.xml'
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


linux_path = '/root/workspace/.vekil-rag-ui-check.txt'
source_path = 'files/KaliMinimal' + linux_path
identifier = hashlib.sha256(linux_path.encode()).hexdigest()[:32]
created = False
try:
    before = layout((root / 'evidence/layout-before-rag.xml').read_text())
    after = layout(shell('run-as ' + package + ' cat shared_prefs/MainActivity.xml'))
    assert before == after
    report['checks']['six_existing_widgets_and_user_geometry_preserved'] = True
    shell('run-as ' + package + ' test ! -e ' + source_path)
    command = ['run-as', package, '/system/bin/sh', '-c', 'cat > "$1"', 'vekil-rag-ui', source_path]
    subprocess.run(base + ['shell', shlex.join(command)], input='Vekil Kaan connects to CLIProxyAPI using local port 8317. VEKIL_RAG_WIDGET_OK', text=True, env=environment, check=True, timeout=20)
    created = True
    def enter(description, value):
        tap(description)
        shell(shlex.join(['input', '-d', '10', 'text', value.replace(' ', '%s')]))
        assert find(description).get('text') == value
    def command(text):
        assert find('Vekil Kaan input').get('text') in ('', 'Message or /command')
        enter('Vekil Kaan input', text)
        tap('Send Vekil Kaan command')
        time.sleep(1)
        return find('Vekil Kaan transcript').get('text')
    controls = find('Vekil Kaan engine controls')
    left, top, right, bottom = map(int, re.findall(r'\d+', controls.get('bounds')))
    shell('input -d 10 swipe ' + str(right-20) + ' ' + str((top+bottom)//2) + ' ' + str(left+20) + ' ' + str((top+bottom)//2) + ' 350')
    tap('Add docs Vekil Kaan')
    enter('Vekil RAG document path', linux_path)
    tap(text='Index')
    time.sleep(2)
    transcript = find('Vekil Kaan transcript').get('text')
    assert linux_path in transcript and '"complete": true' in transcript, transcript
    report['checks']['touch_add_documents_runs_actual_native_gemma_indexing'] = True
    tap('Search Vekil Kaan')
    enter('Vekil RAG search query', 'CLIProxyAPI port')
    tap(text='Search')
    time.sleep(2)
    transcript = find('Vekil Kaan transcript').get('text')
    assert 'VEKIL_RAG_WIDGET_OK' in transcript and linux_path + ':1' in transcript
    report['checks']['touch_semantic_search_shows_real_document_text_and_source_citation'] = True
    status = command('/rag')
    assert 'RAG · EmbeddingGemma-2 · 768d' in status
    report['checks']['native_widget_reports_real_rag_corpus_status'] = True
    with (root / 'evidence/vekil-rag-widget.png').open('wb') as output:
        subprocess.run(base + ['exec-out', 'screencap', '-p', '-d', '4637127821722458117'], env=environment, stdout=output, check=True)
    (root / 'evidence/vekil-rag-widget.xml').write_text(ET.tostring(ui(), encoding='unicode') + '\n')
    forgotten = command('/rag forget ' + identifier)
    assert '"removed": true' in forgotten
    report['checks']['native_forget_removes_only_owned_test_document_from_index'] = True
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['failure'] = repr(error)
    raise
finally:
    if created:
        shell('run-as ' + package + ' rm -f ' + source_path)
    shell('rm -f ' + remote)
    (root / 'evidence/vekil-rag-widget-verification.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps(report))
