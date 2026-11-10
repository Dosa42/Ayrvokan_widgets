from pathlib import Path
import json
import os
import re
import shlex
import subprocess
import sys
import time
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
env = dict(os.environ, LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
base = ['adb', '-s', '192.168.1.58:45155']
remote = '/data/local/tmp/ayrvokan-dikte-check.xml'
report = {'checks': {}, 'execution': 'Installed Android Dikte widget on DeX, actual touch inputs, actual Linux Dikte Pipeline and Groq Whisper Large v3'}


def shell(command):
    return subprocess.check_output(base + ['shell', command], env=env, text=True, timeout=35).strip()


def ui():
    shell('uiautomator dump --compressed ' + remote)
    return ET.fromstring(shell('cat ' + remote))


def find(description=None, text=None, tree=None):
    tree = tree if tree is not None else ui()
    values = [n for n in tree.iter('node') if (description is None or n.get('content-desc') == description) and (text is None or n.get('text', '').casefold() == text.casefold())]
    assert len(values) == 1, (description, text, len(values))
    return values[0]


def tap(description=None, text=None, node=None):
    node = node if node is not None else find(description, text)
    left,top,right,bottom = map(int, re.findall(r'\d+',node.get('bounds')))
    assert node.get('enabled') == 'true' and right > left and bottom > top
    shell('input -d 10 tap ' + str((left+right)//2) + ' ' + str((top+bottom)//2))


def until(call, timeout=35):
    end = time.monotonic() + timeout
    while True:
        result = call()
        if result:
            return result
        assert time.monotonic() < end, 'Timed out'
        time.sleep(.1)


def screen(name):
    if 'mInputShown=true' in shell('dumpsys input_method'):
        shell('input -d 10 keyevent 4')
    (root/'evidence'/name).write_bytes(subprocess.check_output(base+['exec-out','screencap','-p','-d','4637127821722458117'],env=env,timeout=20))


def mark(name):
    report['checks'][name] = True
    print(json.dumps({'check':name,'passed':True}),flush=True)


try:
    if '--capture-only' in sys.argv:
        report['checks'].update(json.loads((root/'evidence/dikte-widget-verification.json').read_text())['checks'])
    else:
        tap('Focus Dikte widget')
        assert 'Hazır' in find('Dikte status').get('text')
        assert find('Dikte record').get('enabled') == 'true'
        assert find('Dikte stop').get('enabled') == 'false'
        mark('installed_widget_ready_without_automatic_microphone_start')
        tap('Dikte account')
        find(text='Original Groq')
        find(text='Groq 2')
        find(text='Groq 3')
        tap(text='Groq 2')
        until(lambda: find('Dikte account').get('text','').startswith('Groq 2'))
        tap('Dikte account')
        tap(text='Original Groq')
        until(lambda: find('Dikte account').get('text','').startswith('Original Groq'))
        mark('three_existing_groq_accounts_can_be_explicitly_selected_and_restored')
        tap('Dikte settings')
        find('Dil: auto / tr / en')
        find('Sözlük: özel isimler ve terimler')
        find('Yazım profili / düzenleme talimatı')
        tap(text='Vazgeç')
        mark('dictionary_language_optional_cleanup_and_writing_profile_settings_present')
        tap('Dikte history')
        tree = ui()
        item = next(n for n in tree.iter('node') if 'ask not what' in n.get('text',''))
        tap(node=item)
        assert 'country' in find('Dikte transcript').get('text','')
        mark('original_dikte_persistent_history_opens_real_transcription')
        tap('Dikte file')
        tap(text="Linux'tan ses aç")
        tree = ui()
        field = next(n for n in tree.iter('node') if n.get('class') == 'android.widget.EditText' and n.get('text') == '/root/workspace/audio.wav')
        tap(node=field)
        shell('input -d 10 keycombination 113 29')
        shell('input -d 10 text /root/.local/share/dikte/test/jfk.wav')
        tap(text='Tamam')
        until(lambda: find('Dikte status').get('text','').startswith('Tamamlandı'))
        assert 'country' in find('Dikte transcript').get('text','')
        screen('dikte-widget-transcribed.png')
        mark('touch_file_action_executes_linux_dikte_and_real_groq_whisper_large_v3')
    shell('run-as com.ayrvokan.widgets mkdir -p files/KaliMinimal/root/.local/share/dikte/recordings')
    recordings_before = shell('run-as com.ayrvokan.widgets ls files/KaliMinimal/root/.local/share/dikte/recordings')
    shell('pm grant com.ayrvokan.widgets android.permission.RECORD_AUDIO')
    tap('Dikte record')
    until(lambda: find('Dikte status').get('text','') == 'Dinleniyor')
    assert find('Dikte pause').get('enabled') == 'true'
    assert find('Dikte record').get('enabled') == 'false'
    tap('Dikte pause')
    assert find('Dikte status').get('text') == 'Kayıt duraklatıldı'
    screen('dikte-widget-paused.png')
    tap('Dikte pause')
    assert find('Dikte status').get('text') == 'Dinleniyor'
    tap('Dikte cancel')
    until(lambda: find('Dikte status').get('text') == 'Kayıt iptal edildi')
    assert find('Dikte record').get('enabled') == 'true'
    assert shell('run-as com.ayrvokan.widgets ls files/KaliMinimal/root/.local/share/dikte/recordings') == recordings_before
    mark('physical_android_pcm_capture_pause_resume_and_cancel_work_without_stt_upload')
    parse = lambda s: json.loads(ET.fromstring(s).find("string[@name='layout']").text)
    before = parse((root/'evidence/dikte-before-layout.xml').read_text())
    after = parse(shell('run-as com.ayrvokan.widgets cat shared_prefs/MainActivity.xml'))
    current = {x['id']:x for x in after}
    assert all(current[x['id']] == x for x in before)
    assert len(after) == len(before)+1 and sum(x['plugin']=='dikte' for x in after)==1
    mark('all_original_widget_ids_geometry_and_paths_preserved_with_one_new_dikte_widget')
    screen('dikte-widget-verified.png')
    report['passed'] = True
except Exception as error:
    report['passed'] = False
    report['error'] = repr(error)
    screen('dikte-widget-failure.png')
    raise
finally:
    shell('rm -f ' + remote)
    (root/'evidence/dikte-widget-verification.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report),flush=True)
