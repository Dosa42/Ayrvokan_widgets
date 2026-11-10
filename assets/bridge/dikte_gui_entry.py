import os
import sys
import json
import socket
import threading

sys.path.insert(0, '/opt/ayrvokan/dikte-2.4.0')
from dikte import audio, hotkey, paste
from dikte.app import main
from PyQt6.QtCore import QObject, QEvent, pyqtSignal
from PyQt6.QtGui import QKeySequence
from PyQt6.QtWidgets import QApplication


class WidgetHotkeys(QObject):
    triggered = pyqtSignal(str)
    failed = pyqtSignal(str)

    def __init__(self, parent=None):
        super().__init__(parent)
        self.running = False
        self.bindings = {}

    def start(self, bindings):
        self.stop()
        self.bindings = {name: QKeySequence(value) for name, value in bindings.items() if value}
        QApplication.instance().installEventFilter(self)
        self.running = True

    def stop(self):
        if self.running:
            QApplication.instance().removeEventFilter(self)
        self.running = False

    def eventFilter(self, watched, event):
        if event.type() == QEvent.Type.KeyPress and not event.isAutoRepeat():
            pressed = QKeySequence(event.modifiers().value | event.key())
            for name, sequence in self.bindings.items():
                if sequence.matches(pressed) == QKeySequence.SequenceMatch.ExactMatch:
                    self.triggered.emit(name)
                    return True
        return False


hotkey.listener = WidgetHotkeys

def platform_event(kind, text):
    with socket.create_connection(('127.0.0.1', int(os.environ['DIKTE_ANDROID_AUDIO_PORT'])), timeout=20) as connection:
        connection.sendall((json.dumps({'type':kind,'text':text})+'\n').encode())
        with connection.makefile('r') as response:
            result = json.loads(response.readline())
        if not result.get('ok'):
            raise paste.PasteError(result.get('error', 'Android metin aktarımı başarısız'))


if os.environ.get('DIKTE_ANDROID_AUDIO_PORT'):
    audio.recording_command = lambda target='': ['/usr/bin/python3', '/opt/ayrvokan/dikte_audio.py']
    original_copy = paste.copy
    local_text = threading.local()

    def android_copy(text):
        original_copy(text)
        local_text.value = text
        platform_event('clipboard', text)

    def android_press(shortcut='', delay=0.12, focus=None):
        platform_event('paste', getattr(local_text, 'value', ''))

    paste.copy = android_copy
    paste.press = android_press

raise SystemExit(main())
