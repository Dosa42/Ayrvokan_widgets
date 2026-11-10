from pathlib import Path
import importlib.util
import json
import sys
import xml.etree.ElementTree as ET

root = Path(__file__).resolve().parent.parent
path = Path('/data/data/com.termux/files/home/.codex/goal-core/comment-policy/scanner.py')
specification = importlib.util.spec_from_file_location('managed_scanner', path)
scanner = importlib.util.module_from_spec(specification)
specification.loader.exec_module(scanner)
scanner.load_rule('/data/data/com.termux/files/home/.codex/RULES/no-comments.json')
paths = sorted((root / 'src').rglob('*.java')) + sorted((root / 'src').glob('*.c')) + sorted((root / 'tools').glob('*.py')) + sorted((root / 'tests').glob('*.py')) + sorted((root / 'assets/bridge').glob('*.py')) + [*sorted((root / 'assets/console').glob('*.js')), root / 'assets/terminal/terminal.js', *sorted((root / 'assets/dikte/viewer').glob('*.js'))]
results = []
for path in paths:
    value = scanner.scan(str(path), path.read_text())
    value['path'] = str(path.relative_to(root))
    results.append(value)
for path in [root / 'AndroidManifest.xml', *sorted((root / 'res').rglob('*.xml')), *sorted((root / 'assets/console').glob('*.html')), root / 'assets/terminal/index.html', *sorted((root / 'assets/dikte/viewer').glob('*.html'))]:
    source = path.read_text()
    errors = []
    if path.suffix == '.xml':
        try:
            ET.fromstring(source)
        except Exception as error:
            errors.append(str(error))
    results.append({'path': str(path.relative_to(root)), 'findings': ['XML comment'] if '<!--' in source else [], 'errors': errors})
report = {'policy': 'ayrvokan.code-rule/1', 'files': results, 'findings': sum(len(value['findings']) for value in results), 'errors': sum(len(value['errors']) for value in results), 'third_party': 'Unmodified xterm.js, CLIProxyAPI binary, official management HTML, upstream YAML examples, vendor source and licenses excluded from authored-source scan; Rust source has its own receipt'}
(root / 'evidence/code-policy.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({'files': len(results), 'findings': report['findings'], 'errors': report['errors']}))
sys.exit(bool(report['findings'] or report['errors']))
