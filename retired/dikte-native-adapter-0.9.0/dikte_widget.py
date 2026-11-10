from pathlib import Path
import json
import math
import os
import shutil
import sys
import time
import urllib.request
import uuid
import wave

sys.path.insert(0, '/opt/ayrvokan/dikte-2.4.0')
from dikte import api, config, dictionary, profiles, vad

directory = Path('/root/.config/dikte')
accounts_file = directory / 'accounts.json'
settings_file = directory / 'widget.json'


def stored(path, default):
    return json.loads(path.read_text()) if path.is_file() else default


def save(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temp = path.with_suffix('.tmp')
    temp.write_text(json.dumps(value, ensure_ascii=False, indent=2))
    temp.replace(path)


def configuration():
    value = config.Config()
    value['transcribe_provider'] = 'groq'
    value['groq_base_url'] = 'https://api.groq.com/openai/v1'
    value['groq_transcribe_model'] = 'whisper-large-v3'
    value['local_preload'] = False
    value['local_llm_preload'] = False
    value['auto_paste'] = False
    value['ui_language'] = 'tr'
    value['cleanup_enabled'] = False
    return value


def selected():
    accounts = stored(accounts_file, {'accounts': []})
    settings = stored(settings_file, {})
    chosen = settings.get('account', accounts.get('selectedAccountId', 'groq-original'))
    account = next((a for a in accounts['accounts'] if a['id'] == chosen), None)
    if account is None:
        raise ValueError('Groq hesabı bulunamadı; hesapları içe aktarın')
    return account


def state():
    accounts = stored(accounts_file, {'accounts': []})
    settings = stored(settings_file, {})
    conf = configuration()
    return {'engine': 'Dikte 2.4.0 · Kali ARM64', 'provider': 'Groq', 'model': 'whisper-large-v3', 'accounts': [{'id': a['id'], 'label': a['label']} for a in accounts['accounts']], 'settings': settings, 'selected': settings.get('account', accounts.get('selectedAccountId', 'groq-original')), 'dictionary': conf['transcribe_prompt'], 'history': list(reversed(config.read_history(40))), 'offline': False, 'android_recognition': False}


def target(conf, account):
    conf['groq_api_key'] = account['apiKey']
    value = conf.transcribe_target()
    if value.base_url != 'https://api.groq.com/openai/v1' or value.model != 'whisper-large-v3' or value.preset != 'groq':
        raise ValueError('Groq Whisper Large v3 yapılandırması geçersiz')
    return value


def probe(account):
    req = urllib.request.Request('https://api.groq.com/openai/v1/models', headers={'Authorization': 'Bearer ' + account['apiKey'], 'User-Agent': 'ayrvokan-dikte/0.1'})
    with urllib.request.urlopen(req, timeout=25) as reply:
        data = json.load(reply)
        return {'account': account['id'], 'http': reply.status, 'whisper_large_v3': any(x.get('id') == 'whisper-large-v3' for x in data.get('data', []))}


def pipeline(conf, account, settings, path, duration, levels):
    from PyQt6.QtCore import QCoreApplication
    from dikte import paste, worker
    application = QCoreApplication([])
    conf['skip_silent'] = bool(levels)
    conf['filter_hallucinations'] = duration > 0
    model = settings.get('cleanup_model', '').strip()
    conf['cleanup_enabled'] = bool(model)
    conf['cleanup_provider'] = 'groq'
    conf['cleanup_groq_model'] = model
    conf['profile_default'] = {'instruction': settings.get('style', '')}
    conf['profile_by_app'] = False
    paste.copy = lambda text: None
    source = Path('/root/.local/share/dikte/working')
    source.mkdir(parents=True, exist_ok=True)
    staged = source / (uuid.uuid4().hex + path.suffix)
    shutil.copyfile(path, staged)
    outcome = {}
    engine = worker.Pipeline(conf)
    def finished(raw, text, warning, language):
        history = config.read_history(1)
        record = history[-1] if history else {}
        record.update({'raw': raw, 'text': text, 'cleanup_error': warning, 'speech_language': language, 'account': account['id'], 'path': str(path), 'provider': 'Groq'})
        if history:
            config.amend_history(history[-1], account=account['id'], provider='Groq', path=str(path))
        outcome['result'] = record
        application.quit()
    def failed(message):
        outcome['error'] = message
        application.quit()
    engine.finished.connect(finished)
    engine.failed.connect(failed)
    engine.cancelled.connect(lambda: failed('Dikte işlemi iptal edildi'))
    engine.stage.connect(lambda message: print(message, file=sys.stderr, flush=True))
    engine.run(str(staged), duration, levels, paste=False, profile=profiles.choose(conf))
    application.exec()
    if 'error' in outcome:
        raise ValueError(outcome['error'])
    return outcome['result']


def transcribe(params):
    conf = configuration()
    account = selected()
    settings = stored(settings_file, {})
    conf['language'] = settings.get('language', 'auto')
    path = Path(params['path']).expanduser()
    start = time.monotonic()
    duration = 0.0
    levels = []
    if path.suffix.lower() == '.wav':
        import array
        with wave.open(str(path), 'rb') as stream:
            duration = stream.getnframes() / stream.getframerate()
            if stream.getsampwidth() == 2:
                levels = []
                while True:
                    raw = stream.readframes(1024)
                    if not raw:
                        break
                    samples = array.array('h', raw)
                    levels.append(math.sqrt(sum(s * s for s in samples) / len(samples)) / 32768)
                stats = vad.analyse(levels, 1024 / stream.getframerate())
                if vad.is_silent(stats):
                    raise ValueError('Dikte: konuşma algılanmadı')
    endpoint = target(conf, account)
    language = conf['language']
    if not params.get('subtitles'):
        return pipeline(conf, account, settings, path, duration, levels)
    if params.get('subtitles'):
        segments = api.transcribe_segments(endpoint, str(path), language=language, prompt=conf.dictionary_hint())
        raw = ' '.join(s[2] for s in segments)
        def stamp(seconds):
            milliseconds = round(max(0, seconds) * 1000)
            return f'{milliseconds//3600000:02}:{milliseconds//60000%60:02}:{milliseconds//1000%60:02},{milliseconds%1000:03}'
        subtitle = '\n\n'.join(f'{i+1}\n{stamp(s[0])} --> {stamp(s[1])}\n{s[2]}' for i,s in enumerate(segments)) + '\n'
        output = path.with_suffix('.srt')
        output.write_text(subtitle)
    else:
        raw = api.transcribe(endpoint, str(path), language=language, prompt=conf.dictionary_hint())
        output = None
    if conf['filter_hallucinations'] and duration and vad.looks_like_hallucination(raw, duration):
        raise ValueError('Dikte: sessizlikten üretilen kalıp ifade ayıklandı')
    text = raw
    warning = ''
    model = settings.get('cleanup_model', '').strip()
    if model:
        try:
            style = settings.get('style', '').strip()
            system = conf.cleanup_prompt(speech=language)
            if style:
                system += '\n\n' + style
            text = api.cleanup(raw, account['apiKey'], model, system, provider='custom', base_url='https://api.groq.com/openai/v1', preset='groq')
        except Exception as error:
            warning = 'Metin düzenlenemedi; ham metin korundu: ' + str(error)
    record = {'ts': time.strftime('%Y-%m-%d %H:%M:%S'), 'duration': round(duration, 1), 'elapsed': round(time.monotonic()-start, 2), 'model': 'whisper-large-v3', 'provider': 'Groq', 'account': account['id'], 'raw': raw, 'text': text, 'cleanup_error': warning, 'speech_language': language, 'path': str(path)}
    if output:
        record['srt'] = str(output)
    config.append_history(record)
    config.trim_history(200)
    return record


def handle(method, params):
    if method == 'status':
        return state()
    if method == 'settings':
        current = stored(settings_file, {})
        for name in ['account', 'language', 'cleanup_model', 'style']:
            if name in params:
                current[name] = params[name]
        if current.get('account') not in [a['id'] for a in stored(accounts_file, {'accounts': []})['accounts']]:
            raise ValueError('Bilinmeyen Groq hesabı')
        save(settings_file, current)
        if 'dictionary' in params:
            conf = configuration()
            conf['transcribe_prompt'] = params['dictionary']
            conf.save()
        return state()
    if method == 'probe':
        return probe(selected())
    if method == 'transcribe':
        return transcribe(params)
    if method == 'export':
        path = Path(params.get('path', '/root/workspace/dikte.txt')).expanduser()
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(params['text'])
        return {'path': str(path)}
    raise ValueError('Bilinmeyen Dikte işlemi')


try:
    request = json.load(sys.stdin)
    result = handle(request['method'], request.get('params', {}))
    print(json.dumps({'ok': True, 'result': result}, ensure_ascii=False))
except Exception as error:
    print(json.dumps({'ok': False, 'error': str(error)}, ensure_ascii=False))
    raise SystemExit(1)
