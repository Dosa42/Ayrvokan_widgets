import json
import os
import pathlib
import shutil
import sys

action = sys.argv[1]
path = pathlib.Path(sys.argv[2])
try:
    if action == 'list':
        entries = []
        for item in path.iterdir():
            try:
                info = item.stat()
                entries.append({'name': item.name, 'path': str(item), 'directory': item.is_dir(), 'link': item.is_symlink(), 'bytes': info.st_size})
            except OSError:
                entries.append({'name': item.name, 'path': str(item), 'directory': False, 'link': item.is_symlink(), 'bytes': 0})
        entries.sort(key=lambda item: (not item['directory'], item['name'].casefold()))
        result = {'path': str(path.resolve()), 'entries': entries}
    elif action == 'read':
        if path.stat().st_size > 1048576:
            raise ValueError('This file is too large for the text editor')
        result = {'path': str(path), 'text': path.read_text(encoding='utf-8')}
    elif action == 'create':
        with path.open('x', encoding='utf-8') as output:
            output.write(sys.stdin.read())
        result = {'path': str(path), 'created': True}
    elif action == 'write':
        path.write_text(sys.stdin.read(), encoding='utf-8')
        result = {'path': str(path), 'written': True}
    elif action == 'mkdir':
        path.mkdir()
        result = {'path': str(path), 'created': True}
    elif action == 'rename':
        destination = path.with_name(sys.argv[3])
        if destination.exists():
            raise FileExistsError(destination)
        path.rename(destination)
        result = {'path': str(destination)}
    elif action == 'delete':
        if path.is_dir() and not path.is_symlink():
            shutil.rmtree(path)
        else:
            path.unlink()
        result = {'deleted': str(path)}
    else:
        raise ValueError('Unknown filesystem operation')
    print(json.dumps({'ok': True, 'result': result}, ensure_ascii=False))
except Exception as error:
    print(json.dumps({'ok': False, 'error': str(error)}, ensure_ascii=False))
    sys.exit(1)
