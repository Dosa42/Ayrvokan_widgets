from pathlib import Path
import argparse
import ctypes
import json
import os
import signal
import socket
import subprocess
import sys
import threading
import time

parser = argparse.ArgumentParser()
parser.add_argument('--rfb', type=int, required=True)
parser.add_argument('--web', type=int, required=True)
parser.add_argument('--audio', type=int, default=0)
parser.add_argument('--preflight', action='store_true')
args = parser.parse_args()
directory = Path('/root/.local/share/dikte/desktop')
directory.mkdir(parents=True, exist_ok=True)
environment = dict(os.environ, DISPLAY=':47', PYTHONPATH='/opt/ayrvokan/dikte-2.4.0', QT_QPA_PLATFORM='xcb', QT_XCB_GL_INTEGRATION='none', QT_OPENGL='software', LIBGL_ALWAYS_SOFTWARE='1', XDG_SESSION_TYPE='x11', XDG_CURRENT_DESKTOP='Openbox', XDG_RUNTIME_DIR=str(directory/'run'), DIKTE_ANDROID_AUDIO_PORT=str(args.audio) if args.audio else '')
Path(environment['XDG_RUNTIME_DIR']).mkdir(exist_ok=True, mode=0o700)
processes = []
stop = threading.Event()
signal.signal(signal.SIGTERM, lambda signum, frame: stop.set())
signal.signal(signal.SIGINT, lambda signum, frame: stop.set())


def launch(arguments, name):
    log = open(directory/(name+'.log'), 'a')
    process = subprocess.Popen(arguments, env=environment, stdout=log, stderr=subprocess.STDOUT)
    log.close()
    processes.append(process)
    return process


def control(command):
    try:
        with socket.socket(socket.AF_UNIX) as connection:
            connection.settimeout(2)
            connection.connect('/tmp/dikte-0')
            connection.sendall((json.dumps({'cmd':command})+'\n').encode())
            return json.loads(connection.recv(1048576))
    except Exception as error:
        return {'ok':False,'error':str(error)}


def maximize(window):
    class Data(ctypes.Union):
        _fields_ = [('b',ctypes.c_char*20),('s',ctypes.c_short*10),('l',ctypes.c_long*5)]
    class Message(ctypes.Structure):
        _fields_ = [('type',ctypes.c_int),('serial',ctypes.c_ulong),('send_event',ctypes.c_int),('display',ctypes.c_void_p),('window',ctypes.c_ulong),('message_type',ctypes.c_ulong),('format',ctypes.c_int),('data',Data)]
    class Event(ctypes.Union):
        _fields_ = [('message',Message),('pad',ctypes.c_long*24)]
    x = ctypes.CDLL('libX11.so.6')
    x.XOpenDisplay.argtypes=[ctypes.c_char_p]
    x.XOpenDisplay.restype=ctypes.c_void_p
    x.XDefaultRootWindow.argtypes=[ctypes.c_void_p]
    x.XDefaultRootWindow.restype=ctypes.c_ulong
    x.XInternAtom.argtypes=[ctypes.c_void_p,ctypes.c_char_p,ctypes.c_int]
    x.XInternAtom.restype=ctypes.c_ulong
    x.XSendEvent.argtypes=[ctypes.c_void_p,ctypes.c_ulong,ctypes.c_int,ctypes.c_long,ctypes.POINTER(Event)]
    x.XFlush.argtypes=[ctypes.c_void_p]
    x.XCloseDisplay.argtypes=[ctypes.c_void_p]
    display=x.XOpenDisplay(b':47')
    if not display:
        return
    event=Event()
    event.message.type=33
    event.message.send_event=1
    event.message.display=display
    event.message.window=int(window)
    event.message.message_type=x.XInternAtom(display,b'_NET_WM_STATE',0)
    event.message.format=32
    event.message.data.l[0]=1
    event.message.data.l[1]=x.XInternAtom(display,b'_NET_WM_STATE_MAXIMIZED_VERT',0)
    event.message.data.l[2]=x.XInternAtom(display,b'_NET_WM_STATE_MAXIMIZED_HORZ',0)
    event.message.data.l[3]=2
    x.XSendEvent(display,x.XDefaultRootWindow(display),0,(1<<19)|(1<<20),ctypes.byref(event))
    x.XFlush(display)
    x.XCloseDisplay(display)


try:
    sys.path.insert(0, '/opt/ayrvokan/dikte-2.4.0')
    from dikte.config import Config
    config = Config()
    accounts = json.loads(Path('/root/.config/dikte/accounts.json').read_text())
    settings_path = Path('/root/.config/dikte/widget.json')
    settings = json.loads(settings_path.read_text()) if settings_path.is_file() else {}
    selected = settings.get('account', accounts.get('selectedAccountId', 'groq-original'))
    account = next(a for a in accounts['accounts'] if a['id'] == selected)
    config['transcribe_provider'] = 'groq'
    config['groq_api_key'] = account['apiKey']
    config['groq_transcribe_model'] = 'whisper-large-v3'
    config['local_preload'] = False
    config['local_llm_preload'] = False
    config['evdev_hotkey'] = False
    if not settings.get('androidPasteInitialized'):
        config['auto_paste'] = True
        settings['androidPasteInitialized'] = True
        settings_path.write_text(json.dumps(settings))
    config.save()
    from dikte.hotkey import SHORTCUTS

    def bindings():
        current = Config()
        return {name: current[spec.setting] or spec.fallback for name, spec in SHORTCUTS.items()}

    for name in ['/tmp/.X47-lock', '/tmp/.X11-unix/X47']:
        path = Path(name)
        if path.exists():
            if name.endswith('lock'):
                pid = int(path.read_text().strip())
                if Path('/proc/'+str(pid)).exists():
                    raise RuntimeError('Dikte görüntü oturumu zaten çalışıyor')
            path.unlink()
    display = launch(['/usr/bin/Xtigervnc', ':47', '-geometry', '960x720', '-depth', '24', '-SecurityTypes', 'None', '-localhost', 'yes', '-AlwaysShared', '-rfbport', str(args.rfb), '-nolisten', 'tcp'], 'display')
    deadline = time.monotonic()+20
    while not Path('/tmp/.X11-unix/X47').exists():
        if display.poll() is not None or time.monotonic()>deadline:
            raise RuntimeError('Dikte görüntü sunucusu açılamadı')
        time.sleep(.1)
    launch(['/usr/bin/openbox', '--sm-disable'], 'windows')
    viewer = launch(['/usr/bin/websockify', '--web', '/opt/ayrvokan/dikte-desktop/web', '--heartbeat', '30', '127.0.0.1:'+str(args.web), '127.0.0.1:'+str(args.rfb)], 'viewer')
    application = launch(['/usr/bin/python3', '/opt/ayrvokan/dikte_gui_entry.py', '--gui', 'home'], 'application')
    deadline = time.monotonic()+35
    while not Path('/tmp/dikte-0').exists():
        if application.poll() is not None or time.monotonic()>deadline:
            raise RuntimeError('Orijinal Dikte açılamadı; application.log dosyasına bakın')
        time.sleep(.2)
    deadline = time.monotonic()+10
    while time.monotonic()<deadline:
        windows = subprocess.run(['/usr/bin/xdotool','search','--onlyvisible','--name','^Dikte$'],env=environment,capture_output=True,text=True)
        if windows.returncode==0 and windows.stdout.strip():
            window = windows.stdout.strip().splitlines()[0]
            maximize(window)
            break
        time.sleep(.2)
    print(json.dumps({'type':'ready','web':args.web,'rfb':args.rfb,'application':'Original Dikte 2.4.0','pid':application.pid,'bindings':bindings()}), flush=True)
    if args.preflight:
        time.sleep(4)
        code="from PyQt6.QtWidgets import QApplication; import sys; a=QApplication([]);a.primaryScreen().grabWindow(0).save('/root/.local/share/dikte/desktop/original-dikte.png')"
        subprocess.run(['/usr/bin/python3','-c',code], env=environment, check=True)
        print(json.dumps({'type':'preflight','status':control('status'),'screenshot':str(directory/'original-dikte.png')}), flush=True)
    else:
        def read_commands():
            for line in sys.stdin:
                try:
                    request=json.loads(line)
                    command=request.get('cmd','status')
                    if command=='shutdown':
                        stop.set()
                        return
                    print(json.dumps({'type':'control','id':request.get('id'),'result':control(command)}), flush=True)
                except Exception as error:
                    print(json.dumps({'type':'error','error':str(error)}),flush=True)
            stop.set()
        threading.Thread(target=read_commands,daemon=True).start()
        previous = None
        while not stop.wait(.5):
            state = control('status')
            snapshot = {key:state.get(key) for key in ('running','dictation','paused','ask','meeting')}
            current = {'state':snapshot,'bindings':bindings()}
            if current != previous:
                print(json.dumps(dict(type='state', **current)), flush=True)
                previous = current
            if application.poll() is not None or viewer.poll() is not None or display.poll() is not None:
                raise RuntimeError('Dikte uygulaması veya görüntü bağlantısı kapandı')
except Exception as error:
    print(json.dumps({'type':'error','error':str(error)}),flush=True)
    raise SystemExit(1)
finally:
    control('quit')
    for process in reversed(processes):
        if process.poll() is None:
            process.terminate()
    for process in reversed(processes):
        try:
            process.wait(timeout=4)
        except subprocess.TimeoutExpired:
            process.kill()
