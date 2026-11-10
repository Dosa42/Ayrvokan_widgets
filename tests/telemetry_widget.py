from pathlib import Path
import asyncio
import hashlib
import json
import os
import subprocess
import time
from urllib.request import Request, urlopen
from websockets.asyncio.client import connect

root = Path(__file__).resolve().parent.parent
output = root/'evidence/telemetry-correction-20261109'
ui = json.loads((output/'ui.json').read_text())
engine = json.loads((output/'engine.json').read_text())
base = ui['console_mcp_url'].removesuffix('/mcp')
adb = ['adb','-s','192.168.1.58:37665']
environment = dict(os.environ,LD_LIBRARY_PATH='/data/data/com.termux/files/usr/lib')
port = '39228'

def fetch(url,value=None):
    request = Request(url,data=json.dumps(value).encode() if value is not None else None,headers={'Content-Type':'application/json'})
    with urlopen(request,timeout=5) as response:
        return json.load(response)

def shell(*args):
    return subprocess.check_output(adb+['shell',*args],env=environment,text=True,timeout=10).strip()

async def terminal():
    page = next(p for p in fetch('http://127.0.0.1:'+port+'/json/list') if p['url']=='file:///android_asset/console/index.html')
    async with connect(page['webSocketDebuggerUrl']) as connection:
        await connection.send(json.dumps({'id':1,'method':'Runtime.evaluate','params':{'expression':'Array.from({length:term.buffer.active.length},(_,i)=>term.buffer.active.getLine(i).translateToString(true)).join("\\n")','returnByValue':True}}))
        while True:
            result = json.loads(await connection.recv())
            if result.get('id')==1:
                return result['result']['result']['value']

report = {}
try:
    before = fetch(base+'/health')
    report['before_pause'] = before
    assert before['ok'] and before['emulator']['connected']
    response = fetch(base+'/mcp',{'jsonrpc':'2.0','id':1,'method':'tools/call','params':{'name':'console_pause','arguments':{}}})
    assert 'error' not in response and not response['result'].get('isError')
    deadline = time.monotonic()+5
    while True:
        health = fetch(base+'/health')
        if health['emulator'].get('state',{}).get('paused') is True:
            break
        assert time.monotonic()<deadline
        time.sleep(.1)
    first = fetch(base+'/screen')
    time.sleep(1)
    second = fetch(base+'/screen')
    assert first['frame_id']==second['frame_id']
    assert first['captured_ns']==second['captured_ns']
    assert second['poll_id']>first['poll_id']
    assert second['screen_change_age_ms']>first['screen_change_age_ms']+800
    crt = fetch(base+'/crt')
    assert crt['dropped'] is None and crt['drop_measurement']=='unavailable'
    assert 'published_ns' in crt and 'captured_ns' not in crt
    pid = shell('pidof','com.ayrvokan.widgets').split()[0]
    subprocess.run(adb+['forward','tcp:'+port,'localabstract:webview_devtools_remote_'+pid],env=environment,check=True,capture_output=True)
    text = asyncio.run(terminal())
    (output/'console.txt').write_text(text)
    assert 'PAUSED' in text and 'screen read' in text and 'change' in text
    assert 'ms old' not in text and 'LIVE ·' not in text
    assert '0 WS events' in text and 'MCP→TTY write —' in text
    installed = subprocess.check_output(adb+['exec-out','run-as','com.ayrvokan.widgets','cat','files/KaliMinimal/opt/ayrvokan/console/ayrvokan-pad-lab.pyz'],env=environment,timeout=30)
    expected = json.loads((root/'assets/console/version.json').read_text())['sha256']
    assert hashlib.sha256(installed).hexdigest()==expected
    report.update(passed=True,health=health,installed_console_sha256=expected,screen_samples=[{k:v[k] for k in ['frame_id','poll_id','captured_ns','screen_poll_age_ms','screen_change_age_ms']} for v in [first,second]],crt={k:crt[k] for k in ['last_seq','published_ns','dropped','drop_measurement','age_meaning']},terminal_labels=[line.strip() for line in text.splitlines() if any(token in line for token in ['PAUSED','screen read','WS events'])],gameplay_controls_sent=0,pause_requests_sent=1,game_left_paused=True)
    (output/'installed-runtime.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k not in ['before_pause','health']}))
finally:
    subprocess.run(adb+['forward','--remove','tcp:'+port],env=environment,capture_output=True)
